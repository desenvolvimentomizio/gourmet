unit ufrardc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Graphics, System.SysUtils,
  System.Math, uFuncoes, Vcl.Mask, Vcl.DBCtrls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList;

type
  Tfrardc = class(Tfrabase)
    uqtabelardcchave: TIntegerField;
    uqtabelardcvalor: TFloatField;
    uqtabelardcnrauto: TStringField;
    uqtabelardcdata: TDateField;
    uqtabelaadccodigo: TIntegerField;
    uqtabelardcparcelas: TIntegerField;
    uqtabelaadcidentificacao: TStringField;
    ltr: TUniQuery;
    ltrltrchave: TIntegerField;
    ltrrdcchave: TIntegerField;
    ltrdtlchave: TIntegerField;
    uqtabeladtlchave: TIntegerField;
    GroupBox2: TGroupBox;
    PlARegistrar: TPanel;
    GroupBox7: TGroupBox;
    PlDiferenca: TPanel;
    GroupBox3: TGroupBox;
    PlRegistrado: TPanel;
    procedure Carregar; override;

    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
  private
    FDtlChave: String;
    FVlrTotal: Double;
    FVlrRegistrado: Double;
    FVlrSaldo: Double;
    procedure CalculaTotal;
    procedure SetVlrTotal(const Value: String);
    procedure SetVlrRegistrado(const Value: Double);
    procedure SetDtlChave(const Value: String);
    procedure SetVlrSaldo(const Value: Double);
    { Private declarations }
  published
    property DtlChave: String read FDtlChave write SetDtlChave;
    property VlrTotal: String write SetVlrTotal;
    property VlrRegistrado: Double read FVlrRegistrado write SetVlrRegistrado;
    property VlrSaldo: Double read FVlrSaldo write SetVlrSaldo;
  public
    { Public declarations }
  end;

var
  frardc: Tfrardc;

  // Início ID do Módulo frardc
const
  vPlIdMd = '02.02.80.001-01';
  vPlTitMdl = 'Registro de Cartões';

  // Fim ID do Módulo frardc

implementation

{$R *.dfm}

uses ufrdc;

procedure Tfrardc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfrdc, Self.uqtabelardcchave.AsString, FDtlChave);
end;

procedure Tfrardc.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.Params[0].AsString := FDtlChave;
  inherited;
  CalculaTotal;
end;

procedure Tfrardc.ActExcluirExecute(Sender: TObject);
begin
  if not uqtabela.IsEmpty then
    if Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), 'Confirmação', MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES
    then
    begin
      Self.uqtabela.Delete;
      Self.ActAtualizar.Execute;
    end;
end;

procedure Tfrardc.ActIncluirExecute(Sender: TObject);
var
  vlRdcChave: String;
begin
  inherited;


  if CriaFormulario(Tfrdc, '', FDtlChave) then
  begin
  if RegistroFrmBase<>'' then
    vlRdcChave :=RegistroFrmBase
  else
    vlRdcChave :=vChaveMestre;


    ltr.Open;
    ltr.Append;

    ltrrdcchave.AsString := vlRdcChave;
    ltrdtlchave.AsString := FDtlChave;
    ltr.Post;

    ltr.Close;

    ActAtualizar.Execute;

  end;
end;

procedure Tfrardc.ActSairExecute(Sender: TObject);
begin
  if FVlrSaldo < 0 then
  begin
    Application.MessageBox(PChar('O valor registrado não pode ser maior do que o valor a registrar!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;
end;

procedure Tfrardc.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotal: Double;
begin
  vlTotal := 0;
  vlRegistro := uqtabelardcchave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotal := vlTotal + uqtabelardcvalor.AsFloat;
    uqtabela.Next;
  end;

  uqtabela.Locate('rdcchave', vlRegistro, []);
  uqtabela.EnableControls;

  VlrRegistrado := vlTotal;
end;

procedure Tfrardc.SetDtlChave(const Value: String);
begin
  FDtlChave := Value;
end;

procedure Tfrardc.SetVlrRegistrado(const Value: Double);
begin
  FVlrRegistrado := Value;
  PlRegistrado.Caption := FormatFloat('#,##0.00', FVlrRegistrado);
  VlrSaldo := SimpleRoundTo(FVlrTotal - FVlrRegistrado, -2);
end;

procedure Tfrardc.SetVlrSaldo(const Value: Double);
begin
  FVlrSaldo := Value;

  PlDiferenca.Caption := FormatFloat('#,##0.00', FVlrSaldo);

  if FVlrSaldo < 0 then
  begin
    PlDiferenca.Color := clWhite;
    PlDiferenca.Font.Color := clRed;
  end
  else
  begin
    PlDiferenca.Color := $00C08000;
    PlDiferenca.Font.Color := clWhite;
  end;
end;

procedure Tfrardc.SetVlrTotal(const Value: String);
begin
  FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
  PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
end;

procedure Tfrardc.Carregar;
begin
  inherited Carregar;

  consulta.Close;
  consulta.SQL.Text := 'SELECT mdacodigo FROM dtl WHERE dtlchave = ' + FDtlChave;
  consulta.Open;

  if consulta.Fields[0].AsInteger = mdaCartaoDebito then
    titulo := PlTitulo.Caption + ' de Débito'
  else
    titulo := PlTitulo.Caption + ' de Crédito';

  PlTitulo.Caption := titulo;

  consulta.Close;
end;

end.
