unit ufragrdc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Graphics, System.SysUtils,
  System.Math, uFuncoes, Vcl.Mask, Vcl.DBCtrls, Vcl.Dialogs, System.ImageList,
  Vcl.ImgList;

type
  Tfragrdc = class(Tfrabase)
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
    GroupBox2: TGroupBox;
    PlARegistrar: TPanel;
    GroupBox7: TGroupBox;
    PlDiferenca: TPanel;
    GroupBox3: TGroupBox;
    PlRegistrado: TPanel;
    uqtabelabdccodigo: TIntegerField;
    procedure Carregar; override;

    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
  private
    FMdaCodigo: Integer;
    FVlrTotal: Double;
    FVlrRegistrado: Double;
    FVlrSaldo: Double;
    procedure CalculaTotal;
    procedure SetVlrTotal(const Value: String);
    procedure SetVlrRegistrado(const Value: Double);
    procedure SetMdaCodigo(const Value: Integer);
    procedure SetVlrSaldo(const Value: Double);
    { Private declarations }
  published
    property MdaCodigo: Integer read FMdaCodigo write SetMdaCodigo;
    property VlrTotal: String write SetVlrTotal;
    property VlrRegistrado: Double read FVlrRegistrado write SetVlrRegistrado;
    property VlrSaldo: Double read FVlrSaldo write SetVlrSaldo;
  public
    { Public declarations }
  end;

var
  fragrdc: Tfragrdc;

  // Início ID do Módulo frardc
const
  vPlIdMd = '02.02.80.001-01';
  vPlTitMdl = 'Registro de Cartões';

  // Fim ID do Módulo frardc

implementation

{$R *.dfm}

uses ufgrdc;

procedure Tfragrdc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgrdc, Self.uqtabelardcchave.AsString, IntToStr(FMdaCodigo));
end;

procedure Tfragrdc.ActAtualizarExecute(Sender: TObject);
var
 i:integer;
begin
i:=  MdaCodigo;

  inherited;
  CalculaTotal;
end;

procedure Tfragrdc.ActExcluirExecute(Sender: TObject);
begin
  if not uqtabela.IsEmpty then
    if Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), 'Confirmação', MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES then
    begin
      Self.uqtabela.Delete;
      Self.ActAtualizar.Execute;
    end;
end;

procedure Tfragrdc.ActIncluirExecute(Sender: TObject);
var
  vlRdcChave: String;
begin
  inherited;
  if CriaFormulario(Tfgrdc, '', IntToStr(FMdaCodigo)) then
  begin

  if RegistroFrmBase<>'' then
  vlRdcChave := RegistroFrmBase
  else
  vlRdcChave :=vChaveMestre;


  {  ltr.Open;
    ltr.Append;

    ltrrdcchave.AsString := vlRdcChave;
    ltrdtlchave.AsInteger := FMdaCodigo;
    ltr.Post;

    ltr.Close;}

    ActAtualizar.Execute;

  end;
end;

procedure Tfragrdc.ActSairExecute(Sender: TObject);
begin
  if FVlrSaldo < 0 then
  begin
    Application.MessageBox(PChar('O valor registrado não pode ser maior do que o valor a registrar!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;
end;

procedure Tfragrdc.CalculaTotal;
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

procedure Tfragrdc.SetMdaCodigo(const Value: Integer);
begin
  FMdaCodigo := Value;
end;

procedure Tfragrdc.SetVlrRegistrado(const Value: Double);
begin
  FVlrRegistrado := Value;
  PlRegistrado.Caption := FormatFloat('#,##0.00', FVlrRegistrado);
  VlrSaldo := SimpleRoundTo(FVlrTotal - FVlrRegistrado, -2);
end;

procedure Tfragrdc.SetVlrSaldo(const Value: Double);
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

procedure Tfragrdc.SetVlrTotal(const Value: String);
begin
  FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
  PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
end;

procedure Tfragrdc.Carregar;
begin
  inherited Carregar;

  if FMdaCodigo = mdaCartaoDebito then
    titulo := PlTitulo.Caption + ' de Débito'
  else
    titulo := PlTitulo.Caption + ' de Crédito';

  PlTitulo.Caption := titulo;

  consulta.Close;
end;

end.
