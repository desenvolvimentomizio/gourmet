unit ufravrp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.StdCtrls, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Dialogs, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Graphics,  System.ImageList, Vcl.ImgList;

type
  Tfravrp = class(Tfrabase)
    uqtabelavrpcodigo: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelavrpreferencia: TStringField;
    uqtabelavrpbarra: TStringField;
    uqtabelaviaatributos: TStringField;
    uqtabelavrpsaldo: TFloatField;
    PlProduto: TPanel;
    PlSaldoTotal: TPanel;
    uqTotais: TUniQuery;
    Label1: TLabel;
    BevelProduto: TBevel;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    FProCodigoOrig: String;
    FGraCodigo: Integer;
    procedure SetProCodigoOrig(const Value: String);
    procedure AtualizaSaldo;
    function GetGraCodigo: Integer;
    { Private declarations }
  public
    procedure Carregar; override;
    { Public declarations }
  published
    property ProCodigoOrig: String read FProCodigoOrig write SetProCodigoOrig;
    property GraCodigo: Integer read GetGraCodigo;
  end;

var
  fravrp: Tfravrp;

  // Início ID do Módulo fravrp
const
  vPlIdMd = '01.04.05.004-01';
  vPlTitMdl = 'Variações do Produto';

  // Fim ID do Módulo fravrp

implementation

{$R *.dfm}

uses
  ufvrp;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.titulo := vPlTitMdl;
  fravrp := Tfravrp.Create(pCargaFrame);
  Result := fravrp;
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.titulo := vPlTitMdl;
  fravrp := Tfravrp.Create(pCargaFrame);
  try
    fravrp.CriaAcoesDeAcesso;
  finally
    fravrp.Free;
  end;
end;

exports execute, defineacesso;

procedure Tfravrp.ActAlterarExecute(Sender: TObject);
begin
  if GraCodigo = 0 then
  begin
    Application.MessageBox(PChar('Por favor, informe a grade do produto para prosseguir.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfvrp, self.uqtabelavrpcodigo.AsString, ProCodigoOrig);
end;

procedure Tfravrp.ActAtualizarExecute(Sender: TObject);
begin
  inherited;
  AtualizaSaldo;
end;

procedure Tfravrp.ActIncluirExecute(Sender: TObject);
begin
  if GraCodigo = 0 then
  begin
    Application.MessageBox(PChar('Por favor, informe a grade do produto para prosseguir.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfvrp, '', ProCodigoOrig);
end;

procedure Tfravrp.SetProCodigoOrig(const Value: String);
begin
  FProCodigoOrig := Value;

  uqtabela.Params[0].AsString := FProCodigoOrig;

  consulta.SQL.Text := 'SELECT pro.procodigo, pro.pronome FROM pro WHERE pro.procodigo = ' + FProCodigoOrig;
  consulta.Open;

  PlProduto.Caption := 'Produto: ' + consulta.Fields[0].AsString + ' - ' + consulta.Fields[1].AsString;
  consulta.Close;
end;

procedure Tfravrp.AtualizaSaldo;
var
  vlSQLTotaisOrigem: string;
begin
  vlSQLTotaisOrigem := Copy(uqTotais.SQL.Text, 1, Pos('WHERE vrp.procodigo = :procodigo', uqTotais.SQL.Text) + 32);
  vlSQLTotaisOrigem := vlSQLTotaisOrigem + ' ' + Copy(uqtabela.SQL.Text, Pos('WHERE vrp.procodigo = :procodigo', uqtabela.SQL.Text) + 32,
    Length(uqtabela.SQL.Text));

  uqTotais.Close;
  uqTotais.SQL.Text := vlSQLTotaisOrigem;
  uqTotais.Params[0].AsString := ProCodigoOrig;
  uqTotais.Open;

  PlSaldoTotal.Caption := uqTotais.Fields[0].AsString;
end;

procedure Tfravrp.Carregar;
begin
  if vChaveMestre <> '' then
    ProCodigoOrig := vChaveMestre;

  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
      ProCodigoOrig := TxtFiltro;

  inherited Carregar;

end;

function Tfravrp.GetGraCodigo: Integer;
begin
  if FGraCodigo > 0 then
    Exit(FGraCodigo);

  consulta.Close;
  consulta.SQL.Text := 'SELECT pro.gracodigo FROM pro WHERE pro.procodigo = ' + FProCodigoOrig;
  consulta.Open;

  FGraCodigo := consulta.Fields[0].AsInteger;
  Result := FGraCodigo;
end;

end.
