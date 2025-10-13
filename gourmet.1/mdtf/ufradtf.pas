unit ufradtf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfradtf = class(Tfrabase)
    PlRodapeItens: TPanel;
    pquanti: TPanel;
    pvalor: TPanel;
    pdesconto: TPanel;
    ptotal: TPanel;
    pgeral: TPanel;
    listaitm: TDBGrid;
    Pnl1: TPanel;
    Pltotalvendas: TPanel;
    Pltotaldescontos: TPanel;
    Pltotalliquido: TPanel;
    extdtf: TUniQuery;
    uqtabelameschave: TIntegerField;
    uqtabelamesemissao: TDateField;
    uqtabelatdfidentificacao: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesvalor: TFloatField;
    uqtabelamesdesconto: TFloatField;
    uqtabelamestotal: TFloatField;
    uqtabelasdeidentificacao: TStringField;
    uqtabelatoeidentificacao: TStringField;
    uqtabelamesserie: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelatrmcodigo: TIntegerField;
    uqtabelasdecodigo: TStringField;
    uqtabelatemcodigo: TIntegerField;
    uqtabelatdfcodigo: TStringField;
    uqtabelattocodigo: TIntegerField;
    uqtabelamesregistro: TDateField;
    uqtabelamestransferir: TIntegerField;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmunisimbolo: TStringField;
    itmitmvalor: TFloatField;
    itmitmquantidade: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmcfocfop: TStringField;
    itmitmaliqipi: TFloatField;
    itmitmtotalliq: TFloatField;
    Ditm: TUniDataSource;
    cfg: TUniQuery;
    cfgetdcodigo: TIntegerField;
    dtf: TUniQuery;
    dtfdtfchave: TIntegerField;
    dtfmeschave: TIntegerField;
    dtfdtfmeschave: TIntegerField;
    cfgcfgtoetransflainte: TIntegerField;
    cfgcfgtoetransflafora: TIntegerField;
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    vatualizando: boolean;
    procedure recalculartotais;
    procedure AtualizarDetalhe;
    { Private declarations }
  public
    { Public declarations }
    vmeschave: string;

    procedure Carregar; override;

  end;

var
  fradtf: Tfradtf;

  // Início ID do Módulo frafat
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'A Transferir';

  // Fim ID do Módulo frafat

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradtf := Tfradtf.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fradtf := Tfradtf.Create(pCargaFrame);
  try
    fradtf.CriaAcoesDeAcesso;
  finally
    fradtf.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfradtf.ActAtualizarExecute(Sender: TObject);
begin
  cfg.Close;
  cfg.Params[0].AsInteger := acesso.Filial;
  cfg.Open;

  extdtf.Close;
  extdtf.SQL.Text := 'CALL extratoDTF(:toecodigointe,:toecodigofora,:etdcodigo)';
  extdtf.Params[0].AsInteger := cfgcfgtoetransflainte.AsInteger;
  extdtf.Params[1].AsInteger := cfgcfgtoetransflainte.AsInteger;
  extdtf.Params[2].AsInteger := cfgetdcodigo.AsInteger;

  extdtf.ExecSQL;

  Inherited;

  vatualizando := True;

  recalculartotais;

  vatualizando := False;

  AtualizarDetalhe;
end;

procedure Tfradtf.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  AtualizarDetalhe;
end;

procedure Tfradtf.AtualizarDetalhe;
var
  vit: Integer;
  vvl: double;
  vdesc: double;
  vtot: double;
  vger: double;
begin
  if not vatualizando then
  begin
    itm.Close;
    itm.Params[0].AsInteger := self.uqtabelameschave.AsInteger;
    itm.Open;
    itm.DisableControls;
    vit := 0;
    vvl := 0;
    vdesc := 0;
    vger := 0;
    vtot := 0;
    itm.First;
    while not itm.Eof do
    begin
      vit := vit + 1;
      vvl := vvl + (itmitmvalor.AsFloat * itmitmquantidade.AsFloat); // multiplica o valor pela quantidade
      vdesc := vdesc + itmitmdesconto.AsFloat; // soma os descontos
      vtot := vtot + itmitmtotal.AsFloat; // soma o total
      vger := vger + (itmitmtotal.AsFloat - itmitmdesconto.AsFloat); // soma o custo
      itm.Next;
    end;

    pquanti.Caption := 'Qt.Itens :' + inttostr(vit); // mostra a quantidade de itens de cada nota.
    pvalor.Caption := ' Valor: ' + formatfloat('##,###,##0.00', vvl); // mostar o valor total dos itens
    pdesconto.Caption := 'Desconto: ' + formatfloat('##,###,##0.00', vdesc); // Mostra o total de desconto dos itens
    ptotal.Caption := 'Total: ' + formatfloat('##,###,##0.00', vtot); // Mostra o total Geral dos itens
    pgeral.Caption := 'Total Geral: ' + formatfloat('##,###,##0.00', vger); // Mostra o total Geral dos itens

    itm.First;
    itm.EnableControls;
  end;
end;

procedure Tfradtf.Carregar;
begin
  if TxtFiltro <> '' then
    vmeschave := TxtFiltro;

  inherited;

  CarregarColunas(listaitm);
end;

procedure Tfradtf.recalculartotais;
var
  rgi: Integer;
  vtotvnd: double;
  vtotdes: double;
begin
  if self.uqtabela.Active then
    rgi := self.uqtabela.RecNo
  else
    rgi := 0;

  self.uqtabela.DisableControls;
  self.uqtabela.First;
  vtotvnd := 0;
  vtotdes := 0;

  while not self.uqtabela.Eof do
  begin
    if self.uqtabelamestransferir.AsInteger = 1 then
    begin
      vtotvnd := vtotvnd + self.uqtabelamesvalor.AsFloat;
      vtotdes := vtotdes + self.uqtabelamesdesconto.AsFloat;
    end;
    self.uqtabela.Next;
  end;

  Pltotalvendas.Caption := 'Total a transferir: ' + formatfloat('##,###,##0.00', vtotvnd);
  Pltotaldescontos.Caption := 'Total de descontos: ' + formatfloat('##,###,##0.00', vtotdes);
  Pltotalliquido.Caption := 'Total LÍQUIDO a transferir: ' + formatfloat('##,###,##0.00', vtotvnd - vtotdes);

  self.uqtabela.EnableControls;
  self.uqtabela.RecNo := rgi;
end;

end.
