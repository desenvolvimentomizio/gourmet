unit ufprm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase,
  Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.DBCtrls, System.Math, uPrecificacao, uPegaBase, uFuncoes;

type
  Tfprm = class(Tfrmbase)
    registroprmcodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroprmprecocompra: TFloatField;
    registroprmpercmargemlucro: TFloatField;
    registroprmprecovenda: TFloatField;
    registroprmimpostovenda: TFloatField;
    registroprmcomissaovenda: TFloatField;
    registroprmfretevenda: TFloatField;
    registroprmcustooperacional: TFloatField;
    registroprmtaxajuros: TFloatField;
    registroprminadimplencia: TFloatField;
    Label1: TLabel;
    prmcodigo: TDBEdit;
    Label2: TLabel;
    flacodigo: TDBEdit;
    Label3: TLabel;
    procodigo: TDBEdit;
    Label4: TLabel;
    prmprecocompra: TDBEdit;
    Label5: TLabel;
    prmpercmargemlucro: TDBEdit;
    Label6: TLabel;
    prmprecovenda: TDBEdit;
    ipr: TUniQuery;
    ipriprcodigo: TIntegerField;
    iprflacodigo: TIntegerField;
    ipriprimpostovenda: TFloatField;
    ipriprcomissaovenda: TFloatField;
    ipriprcustooperacional: TFloatField;
    ipriprfretevendas: TFloatField;
    ipriprtaxajuros: TFloatField;
    ipriprinadimplenciaclientes: TFloatField;
    pro: TUniQuery;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registroflaidentificacao: TStringField;
    registropronome: TStringField;
    PnlBoxDireita: TPanel;
    GBIndices: TGroupBox;
    PnlIndices6: TPanel;
    PnlInadimplencia: TPanel;
    PnlIndices5: TPanel;
    PnlTaxaJuros: TPanel;
    PnlIndices4: TPanel;
    PnlCustoOperacional: TPanel;
    PnlIndices3: TPanel;
    PnlFreteVenda: TPanel;
    PnlIndices2: TPanel;
    PnlComissaoVenda: TPanel;
    PnlIndices1: TPanel;
    PnlImpostoVenda: TPanel;
    GBCustosProduto: TGroupBox;
    Label13: TLabel;
    prmimpostovenda: TDBEdit;
    Label8: TLabel;
    prmcomissaovenda: TDBEdit;
    Label9: TLabel;
    prmfretevenda: TDBEdit;
    Label10: TLabel;
    prmcustooperacional: TDBEdit;
    Label11: TLabel;
    prmtaxajuros: TDBEdit;
    Label12: TLabel;
    prminadimplencia: TDBEdit;
    Panel1: TPanel;
    PnlLucroLiquido: TPanel;
    Panel3: TPanel;
    PnlTotalCustos: TPanel;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure prmpercmargemlucroExit(Sender: TObject);
    procedure prmprecovendaExit(Sender: TObject);
  private
    FProduto: Integer;
    { Private declarations }
    procedure AtualizaCustos;
    procedure CarregaIndices;
  published
    property Produto: Integer read FProduto write FProduto;

  public
    { Public declarations }
  end;

var
  fprm: Tfprm;

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fprm := Tfprm.Create(pCargaFrame);
  fprm.ShowModal;
  fprm.Free;
end;

exports formulario;

{ Tfprm }

procedure Tfprm.AtualizaCustos;
begin
  registroprmimpostovenda.AsFloat := CustosMercadoria.ImpostoVenda;
  registroprmcomissaovenda.AsFloat := CustosMercadoria.ComissãoVenda;
  registroprmfretevenda.AsFloat := CustosMercadoria.FreteVenda;
  registroprmcustooperacional.AsFloat := CustosMercadoria.CustoOperacional;
  registroprmtaxajuros.AsFloat := CustosMercadoria.TaxaJuros;
  registroprminadimplencia.AsFloat := CustosMercadoria.Inadimplencia;

  PnlTotalCustos.Caption := FormatFloat('#,##0.00', CustosMercadoria.CustoTotal);
end;

procedure Tfprm.CarregaIndices;
begin
  ipr.Params[0].AsInteger := Acesso.Filial;
  ipr.Open;

  with IndicesPrecificacao do
  begin
    IPV := ipriprimpostovenda.AsFloat;
    CM := ipriprcomissaovenda.AsFloat;
    FRT := ipriprfretevendas.AsFloat;
    CO := ipriprcustooperacional.AsFloat;
    TXJ := ipriprtaxajuros.AsFloat;
    IAC := ipriprinadimplenciaclientes.AsFloat;

    PnlImpostoVenda.Caption := FormatFloat('##0.00 %', IPV);
    PnlComissaoVenda.Caption := FormatFloat('##0.00 %', CM);
    PnlFreteVenda.Caption := FormatFloat('##0.00 %', FRT);
    PnlCustoOperacional.Caption := FormatFloat('##0.00 %', CO);
    PnlTaxaJuros.Caption := FormatFloat('##0.00 %', TXJ);
    PnlInadimplencia.Caption := FormatFloat('##0.00 %', IAC);
  end;
end;

procedure Tfprm.FormShow(Sender: TObject);
var
  I: Integer;
begin
  (* Definição da Largura e Altura incícial *)
  Self.Height := 340;
  Self.Width := 1024;

  Produto := StrToInt(vChaveMestre);
  vChaveMestre := ''; // Variável é apagada pois não deve ser utilizada em rotinas do form base.

  inherited;

  CarregaIndices;

  for I := 0 to GBCustosProduto.ControlCount - 1 do
    if GBCustosProduto.Controls[I] is TDBEdit then
      TDBEdit(GBCustosProduto.Controls[I]).Color := PEG_COR_VALORPADRAO;

  flacodigo.Color := PEG_COR_VALORPADRAO;
  procodigo.Color := PEG_COR_VALORPADRAO;

  AtualizaCustos;
end;

procedure Tfprm.prmpercmargemlucroExit(Sender: TObject);
var
  vlMensagem: String;
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if prmpercmargemlucro.Field.IsNull then
    Exit;

  if not InRange(prmpercmargemlucro.Field.AsFloat, 0.01, IndicesPrecificacao.LucroLiqAceitavel) then
  begin
    vlMensagem := 'Margem de Lucro Líquida inválida.' + sLineBreak;
    vlMensagem := vlMensagem + sLineBreak + 'Mínima: 0,01 %';
    vlMensagem := vlMensagem + sLineBreak + 'Máxima: ' + FormatFloat('##0.00000 %', IndicesPrecificacao.LucroLiqAceitavel);

    Application.MessageBox(PChar(vlMensagem), 'Atenção', MB_ICONWARNING + MB_OK);
    prmpercmargemlucro.SetFocus;
    Exit;
  end;

  registroprmprecovenda.AsFloat := CalculaPrecoVenda(registroprmprecocompra.AsFloat, registroprmpercmargemlucro.AsFloat);
  AtualizaCustos;

  PnlLucroLiquido.Caption := FormatFloat('#,##0.00', ((registroprmprecovenda.AsFloat * prmpercmargemlucro.Field.AsFloat) / 100));
end;

procedure Tfprm.prmprecovendaExit(Sender: TObject);
var
  vlMensagem: String;
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if prmprecovenda.Field.IsNull then
    Exit;

  registroprmpercmargemlucro.AsFloat := CalculaMargemLiquida(registroprmprecocompra.AsFloat, registroprmprecovenda.AsFloat);

  if not InRange(prmpercmargemlucro.Field.AsFloat, 0.01, IndicesPrecificacao.LucroLiqAceitavel) then
  begin
    vlMensagem := 'Margem de Lucro Líquida inválida.' + sLineBreak;
    vlMensagem := vlMensagem + sLineBreak + 'Mínima: 0,01 %';
    vlMensagem := vlMensagem + sLineBreak + 'Máxima: ' + FormatFloat('##0.00000 %', IndicesPrecificacao.LucroLiqAceitavel);

    Application.MessageBox(PChar(vlMensagem), 'Atenção', MB_ICONWARNING + MB_OK);
    prmpercmargemlucro.SetFocus;
    Exit;
  end;

  AtualizaCustos;

  PnlLucroLiquido.Caption := FormatFloat('#,##0.00', ((prmprecovenda.Field.AsFloat * prmpercmargemlucro.Field.AsFloat) / 100));
end;

procedure Tfprm.registroAfterInsert(DataSet: TDataSet);
begin
  registroprocodigo.AsInteger := Produto;
  registroflacodigo.AsInteger := Acesso.Filial;
  registroclbcodigo.AsInteger := Acesso.Usuario;
end;

end.
