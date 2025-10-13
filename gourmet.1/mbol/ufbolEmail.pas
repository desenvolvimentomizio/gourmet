unit ufbolEmail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.ImgList, PngImageList,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, System.ImageList,
  uPegaBase;

type
  TfbolEmail = class(Tfrmbase)
    tit: TUniQuery;
    bol: TUniQuery;
    dsTit: TUniDataSource;
    dsBol: TUniDataSource;
    btbEnviarTodos: TBitBtn;
    btbEnviarSelecionado: TBitBtn;
    btbFechar: TBitBtn;
    tittitcodigo: TIntegerField;
    tittitnumero: TStringField;
    titetdcodigo: TIntegerField;
    titetdidentificacao: TStringField;
    titgebcodigo: TIntegerField;
    bolrfichave: TIntegerField;
    boltitcodigo: TIntegerField;
    bolrfivencimento: TDateField;
    bolrfinumero: TStringField;
    bolbolnossonumero: TStringField;
    bolrfivalor: TFloatField;
    tteb: TUniQuery;
    ttebtitcodigo: TIntegerField;
    ttebetdcodigo: TIntegerField;
    titlebcodigo: TIntegerField;
    titlebstatus: TStringField;
    titlebmensagem: TStringField;
    PnlCentral: TPanel;
    PlParcelas: TPanel;
    PlLabelParcelas: TPanel;
    DBGParcela: TDBGrid;
    PlTitulos: TPanel;
    PlLabelTitulos: TPanel;
    DBGTitulo: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure dsTitDataChange(Sender: TObject; Field: TField);
    procedure btbFecharClick(Sender: TObject);
    procedure DBGTituloDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGParcelaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btbEnviarSelecionadoClick(Sender: TObject);
    procedure btbEnviarTodosClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    FGebCodigo: Integer;

    procedure ModuloBoletoEmail;

    procedure SetGebCodigo(const Value: Integer);
    { Private declarations }

  published
    property GebCodigo: Integer read FGebCodigo write SetGebCodigo;

  public
    { Public declarations }
  end;

var
  fbolEmail: TfbolEmail;

implementation

{$R *.dfm}

procedure TfbolEmail.btbEnviarTodosClick(Sender: TObject);
begin
  if tit.IsEmpty then
    Exit;

  (* Apaga a tabela temporária *)
  consulta.SQL.Text := 'DROP TEMPORARY TABLE IF EXISTS tt_titulos_email_boleto;';
  consulta.ExecSQL;

  tteb.Open;

  tit.DisableControls;
  try
    tit.First;
    while not tit.Eof do
    begin
      tteb.Append;
      ttebtitcodigo.AsInteger := tittitcodigo.AsInteger;
      ttebetdcodigo.AsInteger := titetdcodigo.AsInteger;
      tteb.Post;

      tit.Next;
    end;

    tteb.ApplyUpdates;
    ModuloBoletoEmail;
  finally
    tteb.Close;
    tit.Refresh;
    tit.First;
    tit.EnableControls;
  end;
end;

procedure TfbolEmail.btbEnviarSelecionadoClick(Sender: TObject);
begin
  if tit.IsEmpty then
    Exit;

  (* Apaga a tabela temporária *)
  consulta.SQL.Text := 'DROP TEMPORARY TABLE IF EXISTS tt_titulos_email_boleto;';
  consulta.ExecSQL;

  tteb.Open;

  try
    tteb.Append;
    ttebtitcodigo.AsInteger := tittitcodigo.AsInteger;
    ttebetdcodigo.AsInteger := titetdcodigo.AsInteger;
    tteb.Post;

    tteb.ApplyUpdates;
    ModuloBoletoEmail;
  finally
    tteb.Close;
    tit.Refresh;
  end;
end;

procedure TfbolEmail.btbFecharClick(Sender: TObject);
begin
  bfechar.SetFocus;

  Close;
end;

procedure TfbolEmail.DBGTituloDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGTitulo.Canvas.Font.Color := clBlack;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure TfbolEmail.DBGParcelaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  DBGParcela.Canvas.Font.Color := clBlack;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure TfbolEmail.dsTitDataChange(Sender: TObject; Field: TField);
begin
  bol.Filter := 'titcodigo = ' + tit.FieldByName('titcodigo').AsString;
end;

procedure TfbolEmail.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  salvacolunas(DBGTitulo);
  salvacolunas(DBGParcela);

  inherited;

end;

procedure TfbolEmail.FormShow(Sender: TObject);
begin
  GebCodigo := StrToInt(vChaveMestre);
  vChaveMestre := '';

  registro.Open;

  inherited;

  carregacolunas(DBGTitulo);
  carregacolunas(DBGParcela);
end;

procedure TfbolEmail.ModuloBoletoEmail;
type
  TModuloBoletoEmail = function(AOwner: TComponent; pConexao: TUniConnection; Acesso: TAcesso; pGebCodigo, pUsuario: Integer): Boolean;
var
  Exec: TModuloBoletoEmail;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('ModuloBoletoEmail'));

      if not Assigned(Exec) then
        Exit;

      Exec(Application, zcone, acesso, GebCodigo, Acesso.Usuario);
    finally
      // DoUnLoadPackage(Pack);
    end;
end;

procedure TfbolEmail.SetGebCodigo(const Value: Integer);
begin
  FGebCodigo := Value;

  tit.ParamByName('gebcodigo').AsInteger := FGebCodigo;
  tit.ParamByName('flacodigo').AsInteger:=acesso.Filial;
  tit.Open;

  bol.ParamByName('gebcodigo').AsInteger := FGebCodigo;
  bol.Filtered := True;
  bol.Open;
end;

end.
