unit ufrainf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, uPegaBase, ufuncoes, Vcl.DBCtrls, Vcl.Mask,
  System.ImageList, Vcl.ImgList;

type
  Tfrainf = class(Tfrabase)
    plResumo: TPanel;
    gbVencido: TGroupBox;
    plVencido: TPanel;
    gbDescontos: TGroupBox;
    plDescontos: TPanel;
    gbTotalComJuros: TGroupBox;
    plTotalComJuros: TPanel;
    gbTotalJaPago: TGroupBox;
    plTotalJaPago: TPanel;
    gbJuros: TGroupBox;
    plJuros: TPanel;
    gbTotalEmAberto: TGroupBox;
    plTotalEmAberto: TPanel;
    gbClienteDesde: TGroupBox;
    plClienteDesde: TPanel;
    gbAtrazoMedio: TGroupBox;
    plAtrazoMedio: TPanel;
    gbTotalTitulos: TGroupBox;
    plTotalTitulos: TPanel;
    gbUltimaCompra: TGroupBox;
    plUltimaCompra: TPanel;
    gbLimiteTotal: TGroupBox;
    plLimiteTotal: TPanel;
    gbLimiteDisponivel: TGroupBox;
    plLimiteDisponivel: TPanel;
    etl: TUniQuery;
    etletdcodigo: TIntegerField;
    etletllimitetotal: TFloatField;
    cfg: TUniQuery;
    cfgcfgdtinictb: TDateField;
    cfgcfgdtfinctb: TDateField;
    cfgcfgusabol: TIntegerField;
    cfgcfgdatapadrao: TDateField;
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
    itmtoecodigo: TIntegerField;
    itmproncm: TStringField;
    Ditm: TUniDataSource;
    plItens: TPanel;
    listaitm: TDBGrid;
    plMes: TPanel;
    rfm: TUniQuery;
    rfmrfmchave: TIntegerField;
    rfmmeschave: TIntegerField;
    rfmrfichave: TIntegerField;
    mes: TUniQuery;
    Dmes: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    meschave: TDBText;
    mesmeschave: TIntegerField;
    mesmesregistro: TDateField;
    mesclbidentificacao: TStringField;
    mesregistro: TDBText;
    clbidentificacao: TDBText;
    uqtabelarfichave: TIntegerField;
    uqtabelarfinumero: TStringField;
    uqtabelarfiemissao: TDateField;
    uqtabelarfivencimento: TDateField;
    uqtabelarfivalor: TFloatField;
    uqtabelaRegistroCapital: TFloatField;
    uqtabelaPagamentosCapital: TFloatField;
    uqtabelaSaldoCapital: TFloatField;
    uqtabelaRegistroJurosMora: TFloatField;
    uqtabelaPgtosJurosMora: TFloatField;
    uqtabelaDispensaJurosMora: TFloatField;
    uqtabelaSaldoJurosMora: TFloatField;
    uqtabelaRegistroMulta: TFloatField;
    uqtabelaPgtosMulta: TFloatField;
    uqtabelaDispensaMulta: TFloatField;
    uqtabelaSaldoMulta: TFloatField;
    uqtabelaRegistroDesconto: TFloatField;
    uqtabelaDias: TIntegerField;
    uqtabelaflacodigo: TIntegerField;
    uqtabelarfibaixatotal: TFloatField;
    uqtabelasrfidentificacao: TStringField;
    uqtabelasrfcodigo: TIntegerField;
    uqtabelaDataUltBaixa: TDateField;
    Ddtl: TDataSource;
    dtl: TUniQuery;
    dtlmdaidentificacao: TStringField;
    dtldtlvalor: TFloatField;
    dtldtlchave: TIntegerField;
    dtlrfihistorico: TStringField;
    dtlltechave: TIntegerField;
    dtldtlflacodigo: TIntegerField;
    dtlrfiflacodigo: TIntegerField;
    dtlrfmflacodigo: TIntegerField;
    dtlrfmchave: TIntegerField;
    dtlmfiflacodigo: TIntegerField;
    dtlmfichave: TIntegerField;
    dtllteflacodigo: TIntegerField;
    dtlrfichave: TIntegerField;
    dtlmltflacodigo: TIntegerField;
    dtlmltchave: TIntegerField;
    dtlmdacodigo: TIntegerField;
    uqtabelaparcelas: TStringField;
    plGrupoItens: TPanel;
    plTituloItens: TPanel;
    pdetalhe: TPanel;
    plTituloFinaliazdores: TPanel;
    listapor: TDBGrid;
    pvalordetalhe: TPanel;
    cco: TUniQuery;
    DBGridcco: TDBGrid;
    Dcco: TDataSource;
    ccoccochave: TIntegerField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccocconatureza: TStringField;
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  frainf: Tfrainf;

implementation

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

  // Início ID do Módulo fracli
const
  vPlIdMd = '01.01.01.001-05';
  vPlTitMdl = 'Informações de Clientes';

  // Fim ID do Módulo fracli

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frainf := Tfrainf.Create(pCargaFrame);
  Result := frainf;
end;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frainf := Tfrainf.Create(pCargaFrame);
end;

exports formuFrame, execute;

procedure Tfrainf.Carregar;
var
  vlVencido: Double;
  vlDescontos: Double;

  vlTotalComJuros: Double;
  vlTotalJaPago: Double;
  vlJuros: Double;
  vlTotalEmAberto: Double;

  vlDataPrimeira: Tdate;
  vlDataUltima: Tdate;
  vlAtrazo: Integer;
  vlQtdAtrazo: Integer;

begin
  uqtabela.ParamByName('etdcodigo').AsString := vChaveMestre;

  inherited;

  try

    vlVencido := 0;
    vlDescontos := 0;
    vlTotalComJuros := 0;
    vlTotalJaPago := 0;
    vlJuros := 0;
    vlTotalEmAberto := 0;
    vlQtdAtrazo := 0;
    vlAtrazo := 0;
    vlDataPrimeira := date + 20000;
    vlDataUltima := 0;

    uqtabela.DisableControls;
    uqtabela.First;
    while not uqtabela.Eof do
    begin

      if self.uqtabelarfiemissao.AsFloat < vlDataPrimeira then
        vlDataPrimeira := self.uqtabelarfiemissao.AsFloat;

      if self.uqtabelarfiemissao.AsFloat >= vlDataUltima then
        vlDataUltima := self.uqtabelarfiemissao.AsFloat;

      if (self.uqtabelarfivencimento.AsFloat < StrToDate(hoje(application, ZCone))) then
      begin
        if ((uqtabelasrfcodigo.AsInteger <> srfQuitado) and (uqtabelasrfcodigo.AsInteger <> srfRenegociado)) then
        begin
          if uqtabelaSaldoCapital.AsCurrency > 0 then
            vlVencido := vlVencido + uqtabelaSaldoCapital.AsCurrency;

          vlTotalComJuros := vlTotalComJuros + (uqtabelaSaldoCapital.AsCurrency + uqtabelaSaldoJurosMora.AsCurrency + uqtabelaSaldoMulta.AsCurrency);
        end;
      end;

      if (self.uqtabelaDias.AsInteger > 0) and (uqtabelasrfcodigo.AsInteger <> srfEmAberto) then
      begin
        vlQtdAtrazo := vlQtdAtrazo + 1;
        vlAtrazo := vlAtrazo + self.uqtabelaDias.AsInteger;
      end;

      if ((uqtabelasrfcodigo.AsInteger <> srfQuitado) and (uqtabelasrfcodigo.AsInteger <> srfRenegociado)) then
        vlDescontos := vlDescontos + uqtabelaRegistroDesconto.AsCurrency;

      vlTotalJaPago := vlTotalJaPago + uqtabelaPagamentosCapital.AsCurrency;
      vlJuros := vlJuros + uqtabelaPgtosJurosMora.AsCurrency;
      if ((uqtabelasrfcodigo.AsInteger <> srfQuitado) and (uqtabelasrfcodigo.AsInteger <> srfRenegociado)) then
        vlTotalEmAberto := vlTotalEmAberto + (uqtabelaSaldoCapital.AsCurrency + uqtabelaSaldoJurosMora.AsCurrency + uqtabelaSaldoMulta.AsCurrency);

      uqtabela.Next;
    end;

    { etddisp.Close;
      etddisp.Params[0].AsString := vChaveMestre;
      etddisp.Open; }

    cco.Close;
    cco.Params[0].AsString := vChaveMestre;
    cco.Open;

    if cco.IsEmpty then
      DBGridcco.Visible := false
    else
      DBGridcco.Visible := True;


    etl.Close;
    etl.Params[0].AsString := vChaveMestre;
    etl.Open;

    plVencido.Caption := formatfloat('##,###,##0.00', vlVencido);
    plDescontos.Caption := formatfloat('##,###,##0.00', vlDescontos);
    plTotalComJuros.Caption := formatfloat('##,###,##0.00', vlTotalComJuros);
    plTotalJaPago.Caption := formatfloat('##,###,##0.00', vlTotalJaPago);
    plJuros.Caption := formatfloat('##,###,##0.00', vlJuros);
    plTotalEmAberto.Caption := formatfloat('##,###,##0.00', vlTotalEmAberto);
    plTotalTitulos.Caption := formatfloat('##,###,##0.00', vlTotalEmAberto + vlTotalJaPago + vlJuros);
    plClienteDesde.Caption := DateToStr(vlDataPrimeira);

    if vlQtdAtrazo > 0 then
      plAtrazoMedio.Caption := formatfloat('####0', vlAtrazo / vlQtdAtrazo) + ' dias';

    if DateToStr(vlDataUltima) <> '30/12/1899' then
      plUltimaCompra.Caption := DateToStr(vlDataUltima);

    plLimiteTotal.Caption := formatfloat('##,###,##0.00', etletllimitetotal.AsFloat);
    plLimiteDisponivel.Caption := formatfloat('##,###,##0.00', etletllimitetotal.AsFloat - vlTotalEmAberto);

  finally
    uqtabela.EnableControls;
  end;
end;

procedure Tfrainf.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);

var
  fixRect: TRect;
begin

  fixRect := Rect;

  If Odd(DSTabela.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  if self.uqtabelasrfcodigo.AsInteger IN [srfQuitado, srfRenegociado] then
    DBGLista.Canvas.Font.Color := $002F5E09
  else if ((uqtabelasrfcodigo.AsInteger = srfEmAberto) or (self.uqtabelasrfcodigo.AsInteger = srfBaixaParcial)) then
    if (uqtabelarfivencimento.AsFloat >= self.cfgcfgdatapadrao.AsFloat) then
      DBGLista.Canvas.Font.Color := clBlack
    else
      DBGLista.Canvas.Font.Color := clRed;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := CLBLACK;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfrainf.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if not uqtabela.IsEmpty then
      if uqtabelarfichave.AsString <> '' then
      begin
        rfm.Close;
        rfm.Params[0].AsInteger := uqtabelarfichave.AsInteger;
        rfm.Open;

        if not rfm.IsEmpty then
        begin

          dtl.Close;
          dtl.Params[0].AsInteger := rfmmeschave.AsInteger;
          dtl.Params[1].AsInteger := acesso.Filial;
          dtl.Open;

          mes.Close;
          mes.Params[0].AsInteger := rfmmeschave.AsInteger;
          mes.Open;

          itm.Close;
          itm.Params[0].AsInteger := rfmmeschave.AsInteger;
          itm.Open;
          if not itm.IsEmpty then
          begin
            plItens.Visible := True;
            listaitm.Visible := True
          end
          else
          begin
            listaitm.Visible := false;
            plItens.Visible := false;
          end;

        end
        else
        begin
          listaitm.Visible := false;
          plItens.Visible := false;
        end;

      end
      else
      begin
        listaitm.Visible := false;
        plItens.Visible := false;
      end;
end;

end.
