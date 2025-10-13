unit ufrafat;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, uPegaBase, Ufuncoes,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Graphics, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrafat = class(Tfrabase)
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
    PlRodapeItens: TPanel;
    pquanti: TPanel;
    pvalor: TPanel;
    pdesconto: TPanel;
    ptotal: TPanel;
    pgeral: TPanel;
    Ditm: tunidatasource;
    itm: tuniquery;
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
    listaitm: TDBGrid;
    Pnl1: TPanel;
    Pltotalvendas: TPanel;
    Pltotaldescontos: TPanel;
    Pltotalliquido: TPanel;
    extfat: tuniquery;
    uqtabelamesfaturar: TIntegerField;
    dfa: tuniquery;
    dfadfachave: TIntegerField;
    dfameschave: TIntegerField;
    dfadfameschave: TIntegerField;
    ActPrecoAVista: TAction;
    ActPrecoAPrazo: TAction;
    itmtpocodigo: TIntegerField;
    cfg: tuniquery;
    cfgcfgdoisprecos: TIntegerField;
    plTotalServicos: TPanel;
    plValTotServicos: TPanel;
    plTotalProdutos: TPanel;
    plValTotProdutos: TPanel;
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaDblClick(Sender: TObject);
    procedure ActPrecoAVistaExecute(Sender: TObject);
    procedure ActPrecoAPrazoExecute(Sender: TObject);
  private
    vatualizando: boolean;
    procedure AtualizarDetalhe;
    procedure recalculartotais;
    { Private declarations }
  public
    { Public declarations }
    vmeschave: string;

    procedure Carregar; override;
  end;

var
  frafat: Tfrafat;

  // Início ID do Módulo frafat
const
  vPlIdMd = '02.04.85.001-01';
  vPlTitMdl = 'A Faturar';

  // Fim ID do Módulo frafat

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafat := Tfrafat.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frafat := Tfrafat.Create(pCargaFrame);
  try
    frafat.CriaAcoesDeAcesso;
  finally
    frafat.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrafat.DBGListaCellClick(Column: TColumn);
begin
  if DBGLista.SelectedField.FieldName = 'mesfaturar' then
  begin
    if uqtabelamesfaturar.AsInteger = 1 then
    begin
      uqtabela.Edit;
      uqtabelamesfaturar.AsInteger := 0;
      uqtabela.Post;
    end
    else
    begin
      uqtabela.Edit;
      uqtabelamesfaturar.AsInteger := 1;
      uqtabela.Post;
    end;
    uqtabela.DisableControls;
    recalculartotais;
    uqtabela.EnableControls;
  end
  else
  begin
    inherited;
  end;
end;

procedure Tfrafat.DBGListaDblClick(Sender: TObject);
begin
  { inherited; }

end;

procedure Tfrafat.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
  i: Integer;
begin
  inherited;

  if Column.FieldName = 'mesfaturar' then
  begin

    // Desenha um checkbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    Check := 0;
    if self.uqtabelamesfaturar.AsInteger = 1 then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure Tfrafat.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  AtualizarDetalhe;
end;

procedure Tfrafat.ActAtualizarExecute(Sender: TObject);
Begin
  extfat.Close;
  extfat.SQL.Text := 'CALL extratoFAT(:vtdfcodigo)';
  extfat.Params[0].asstring := 'AF';
  extfat.ExecSQL;

  Inherited;

  vatualizando := True;

  recalculartotais;

  vatualizando := False;

  AtualizarDetalhe;
end;

procedure Tfrafat.ActPrecoAPrazoExecute(Sender: TObject);
var
  vlTotalPro: Double;
  vlTotalSer: Double;
  vlrecno: Integer;
begin
  inherited;

  itm.First;
  while not itm.Eof do
  begin
    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Text := 'update itm, pun set itmvalor=IF(punprecoap>0 ,punprecoap,itmvalor), ';
    consulta.SQL.Add('itmtotal=IF(punprecoap>0 ,punprecoap,itmvalor)*itmquantidade ');
    consulta.SQL.Add('where pun.unicodigo=itm.unicodigo and pun.procodigo=itm.procodigo and itm.itmchave=' + itmitmchave.asstring);
    consulta.ExecSQL;
    itm.Next;
  end;
  ActAtualizar.Execute;
  itm.First;
  vlTotalPro := 0;
  vlTotalSer := 0;
  while not itm.Eof do
  begin
    if itmtpocodigo.AsInteger = 9 then
      vlTotalSer := vlTotalSer + itmitmtotal.AsCurrency
    else
      vlTotalPro := vlTotalPro + itmitmtotal.AsCurrency;

    itm.Next;
  end;

  consulta.Close;
  consulta.SQL.Text := 'update mes set mestotal=' + buscatroca(format('%12.2f', [vlTotalPro + vlTotalSer]), ',', '.') + ',   mesvalor=' +
    buscatroca(format('%12.2f', [vlTotalPro + vlTotalSer]), ',', '.') + ',  mesprodutos=' + buscatroca(format('%12.2f', [vlTotalPro]), ',', '.') +
    ',  messervicos=' + buscatroca(format('%12.2f', [vlTotalSer]), ',', '.') + ' where  meschave=' + uqtabelameschave.asstring;
  consulta.ExecSQL;
  extfat.Close;
  extfat.SQL.Text := 'CALL extratoFAT(:vtdfcodigo)';
  extfat.Params[0].asstring := 'AF';
  extfat.ExecSQL;
  vlrecno := uqtabela.RecNo;
  uqtabela.Close;
  uqtabela.Open;
  uqtabela.RecNo := vlrecno;
  recalculartotais;

end;

procedure Tfrafat.ActPrecoAVistaExecute(Sender: TObject);
var
  vlTotalPro: Double;
  vlTotalSer: Double;
  vlrecno: Integer;
begin
  inherited;
  itm.First;

  while not itm.Eof do
  begin
    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Text := 'update itm, pun set itmvalor=IF(punprecoav>0 ,punprecoav,itmvalor), ';
    consulta.SQL.Add('itmtotal=IF(punprecoav>0 ,punprecoav,itmvalor)*itmquantidade ');
    consulta.SQL.Add('where pun.unicodigo=itm.unicodigo and pun.procodigo=itm.procodigo and itm.itmchave=' + itmitmchave.asstring);
    consulta.ExecSQL;

    itm.Next;
  end;
  ActAtualizar.Execute;

  itm.First;
  vlTotalPro := 0;
  vlTotalSer := 0;
  while not itm.Eof do
  begin
    if itmtpocodigo.AsInteger = 9 then
      vlTotalSer := vlTotalSer + itmitmtotal.AsCurrency
    else
      vlTotalPro := vlTotalPro + itmitmtotal.AsCurrency;

    itm.Next;
  end;

  consulta.Close;
  consulta.SQL.Text := 'update mes set mestotal=' + buscatroca(format('%12.2f', [vlTotalPro + vlTotalSer]), ',', '.') + ',   mesvalor=' +
    buscatroca(format('%12.2f', [vlTotalPro + vlTotalSer]), ',', '.') + ',  mesprodutos=' + buscatroca(format('%12.2f', [vlTotalPro]), ',', '.') +
    ',  messervicos=' + buscatroca(format('%12.2f', [vlTotalSer]), ',', '.') + ' where  meschave=' + uqtabelameschave.asstring;
  consulta.ExecSQL;

  extfat.Close;
  extfat.SQL.Text := 'CALL extratoFAT(:vtdfcodigo)';
  extfat.Params[0].asstring := 'AF';
  extfat.ExecSQL;

  vlrecno := uqtabela.RecNo;
  uqtabela.Close;
  uqtabela.Open;
  uqtabela.RecNo := vlrecno;

  recalculartotais;
end;

procedure Tfrafat.AtualizarDetalhe;
var
  vit: Integer;
  vvl: Double;
  vdesc: Double;
  vtot: Double;
  vger: Double;
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

procedure Tfrafat.Carregar;
begin
  if TxtFiltro <> '' then
    vmeschave := TxtFiltro;
  cfg.Close;
  cfg.Params[0].AsInteger := Acesso.Filial;
  cfg.Open;

  if cfgcfgdoisprecos.AsInteger = 1 then
  begin
    ActPrecoAVista.Enabled := True;
    ActPrecoAPrazo.Enabled := True;
  end
  else
  begin
    ActPrecoAVista.Enabled := False;
    ActPrecoAPrazo.Enabled := False;
  end;

  inherited;

  CarregarColunas(listaitm);
end;

procedure Tfrafat.recalculartotais;
var
  rgi: Integer;
  vtotvnd: Double;
  vtotdes: Double;
  vlTotProdutos: Double;
  vlTotServicos: Double;

begin
  if self.uqtabela.Active then
    rgi := self.uqtabela.RecNo
  else
    rgi := 0;

 // uqtabela.DisableControls;
  uqtabela.First;
  vtotvnd := 0;
  vtotdes := 0;
  vlTotProdutos := 0;
  vlTotServicos := 0;
//  itm.DisableControls;

  while not self.uqtabela.Eof do
  begin
    if self.uqtabelamesfaturar.AsInteger = 1 then
    begin

      itm.First;
      While Not itm.Eof Do
      Begin
        consulta.Close;
        consulta.SQL.Text := 'select tpocodigo from pro where procodigo=' + itmprocodigo.asstring;
        consulta.Open;

        if consulta.Fields[0].AsInteger = 0 then
          vlTotProdutos := vlTotProdutos + itmitmtotal.AsCurrency;

        if consulta.Fields[0].AsInteger = 9 then
          vlTotServicos := vlTotServicos + itmitmtotal.AsCurrency;

        itm.Next;
      End;

      vtotvnd := vtotvnd + self.uqtabelamesvalor.AsFloat;
      vtotdes := vtotdes + self.uqtabelamesdesconto.AsFloat;

    end;
    self.uqtabela.Next;
  end;

  Pltotalvendas.Caption := 'Total a faturar: ' + formatfloat('##,###,##0.00', vtotvnd);
  Pltotaldescontos.Caption := 'Total de descontos: ' + formatfloat('##,###,##0.00', vtotdes);
  Pltotalliquido.Caption := 'Total LÍQUIDO a Faturar: ' + formatfloat('##,###,##0.00', vtotvnd - vtotdes);

  plValTotProdutos.Caption := formatfloat('##,###,##0.00', vlTotProdutos);
  plValTotServicos.Caption := formatfloat('##,###,##0.00', vlTotServicos);

//  itm.EnableControls;

//  uqtabela.EnableControls;
  uqtabela.RecNo := rgi;

end;

end.
