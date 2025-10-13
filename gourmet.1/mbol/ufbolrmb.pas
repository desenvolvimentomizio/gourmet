unit ufbolrmb;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList, Data.DB,
  MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, PngImageList,
  ufrmbase, ufuncoes, System.ImageList,uPegaBase;

type
  Tfbolrmb = class(Tfrmbase)
    registrormbcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    registrormbnumero: TIntegerField;
    registrocarcodigo: TIntegerField;
    Label1: TLabel;
    rmbcodigo: TDBEdit;
    Label2: TLabel;
    carcodigo: TDBEdit;
    Label3: TLabel;
    clbcodigo: TDBEdit;
    bBuscaBoletos: TBitBtn;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    car: TUniQuery;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    rfi: TUniQuery;
    rfirfichave: TIntegerField;
    rfititcodigo: TIntegerField;
    rfietdcodigo: TIntegerField;
    rfietdidentificacao: TStringField;
    rfibcocodigo: TStringField;
    rfibconome: TStringField;
    rficarcodigo: TIntegerField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfidias: TIntegerField;
    rfirfinumero: TStringField;
    rfisrfidentificacao: TStringField;
    rfirfivalor: TFloatField;
    rfirfijuros: TFloatField;
    rfirfimulta: TFloatField;
    rfirfidesconto: TFloatField;
    rfirfisaldogeral: TFloatField;
    rfirfihistorico: TStringField;
    DSrfi: TUniDataSource;
    PlParcelas: TPanel;
    GBTotalParcelas: TGroupBox;
    PlTotalParcelasSel: TPanel;
    GBParcelas: TGroupBox;
    PlQtdeSel: TPanel;
    DBGParcelas: TDBGrid;
    registroclbidentificacao: TStringField;
    registrocaridentificacao: TStringField;
    procedure bBuscaBoletosClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure DBGParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure carcodigoEnter(Sender: TObject);
  private
    FQtdParcelas: Integer;
    FValorParcelas: Double;
    procedure AtualizaTotais;
    procedure BuscaBoletosRemessa(modulo: string);
    procedure ModuloBoleto;
    procedure SetQtdParcelas(const Value: Integer);
    procedure SetValorParcelas(const Value: Double);
    { Private declarations }
  published

    (* Totais das Parcelas *)
    property QtdParcelas: Integer read FQtdParcelas write SetQtdParcelas;
    property ValorParcelas: Double read FValorParcelas write SetValorParcelas;
  public
    { Public declarations }
  end;

var
  fbolrmb: Tfbolrmb;

implementation

{$R *.dfm}
{ Tfbolrmb }

procedure Tfbolrmb.AtualizaTotais;
var
  vlValorParcelas: Double;
begin
  rfi.DisableControls;
  try
    vlValorParcelas := 0;

    rfi.First;
    while not rfi.Eof do
    begin
      vlValorParcelas := vlValorParcelas + rfirfisaldogeral.AsFloat;
      rfi.Next;
    end;

    ValorParcelas := vlValorParcelas;
    QtdParcelas := rfi.RecordCount;
  finally
    rfi.EnableControls;
  end;
end;

procedure Tfbolrmb.bBuscaBoletosClick(Sender: TObject);
begin
  if (registro.State in [dsEdit, dsInsert]) then
    registro.Post;
  registro.Edit;

  BuscaBoletosRemessa('mbol');

  rfi.Params[0].AsInteger := registrormbcodigo.AsInteger;
  rfi.Params[1].AsInteger :=acesso.Filial;

  if not rfi.Active then
    rfi.Open
  else
    rfi.Refresh;

  AtualizaTotais;
end;

procedure Tfbolrmb.bconfirmaClick(Sender: TObject);
begin
  if rfi.IsEmpty then
  begin
    Application.MessageBox(PChar('Nenhum boleto selecionado para geração da remessa!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;

  if not(ModalResult = mrOk) then
    Exit;

  ModuloBoleto;

  Application.MessageBox(PChar('Arquivo de remessa gerado com sucesso!'), 'Informação', MB_ICONINFORMATION + MB_OK);
end;

procedure Tfbolrmb.BuscaBoletosRemessa(modulo: string);
type
  TBuscaBoletosRemessa = function(AOwner: TComponent; conexao: TUniConnection; vUsuario: string;Acesso:TAcesso; vRmbCodigo, vCarCodigo: Integer;
    Finalidade: TRotinasBoletos): String;
var
  Exec: TBuscaBoletosRemessa;
begin

  Pack := LoadPackage('modulos\' + modulo + '.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('BuscaBoletosRemessa'));

      if not Assigned(Exec) then
        Exit;

      Exec(Application, zcone, Acesso.Usuario.ToString,acesso, registrormbcodigo.AsInteger, registrocarcodigo.AsInteger, rblGerarRemessa);
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

procedure Tfbolrmb.carcodigoEnter(Sender: TObject);
begin
  txtFiltro := 'tctcodigo = ' + QuotedStr(IntToStr(tctContaBancaria));
end;

procedure Tfbolrmb.DBGParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfbolrmb.FormShow(Sender: TObject);
begin
  inherited;

  clbcodigo.Enabled := False;
  clbcodigo.Color := PEG_COR_VALORPADRAO;
end;

procedure Tfbolrmb.ModuloBoleto;
type
  TModuloBoleto = function(AOwner: TComponent; conexao: TUniConnection; vRotina: TRotinasBoletos; Acesso:TAcesso;vGebCodigo: Integer = 0; vBolChave: Integer = 0;
    vRmbCodigo: Integer = 0): Boolean;
var
  Exec: TModuloBoleto;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('ModuloBoleto'));

      if not Assigned(Exec) then
        Exit;

      Exec(Application, zcone, rblGerarRemessa,Acesso, 0, 0, registrormbcodigo.AsInteger);
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

procedure Tfbolrmb.registroAfterInsert(DataSet: TDataSet);
begin
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registrotrmcodigo.AsInteger := Acesso.Terminal;
end;

procedure Tfbolrmb.SetQtdParcelas(const Value: Integer);
begin
  FQtdParcelas := Value;
  PlQtdeSel.Caption := IntToStr(FQtdParcelas);
end;

procedure Tfbolrmb.SetValorParcelas(const Value: Double);
begin
  FValorParcelas := Value;
  PlTotalParcelasSel.Caption := FormatFloat('#,###,##0.00', FValorParcelas);
end;

end.
