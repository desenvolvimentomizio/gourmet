unit ufratdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase, uFuncoes, System.ImageList, Vcl.ImgList, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfratdv = class(Tfrabase)
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
    uqtabelamesprotocolo: TStringField;
    uqtabelasdecodigo: TStringField;
    uqtabelamesdatanfe: TDateField;
    uqtabelatemcodigo: TIntegerField;
    uqtabelatdfcodigo: TStringField;
    uqtabelattocodigo: TIntegerField;
    uqtabelamesregistro: TDateField;
    uqtabelaclbvendedor: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaorcchave: TIntegerField;
    uqtabelatemidentificacao: TStringField;
    uqtabelaclboperador: TStringField;
    uqtabelameshora: TTimeField;
    uqtabelaflasigla: TStringField;
    uqtabelamesprodutos: TFloatField;
    uqtabelamesservicos: TFloatField;
    uqtabelaflacodigo: TIntegerField;
    plDetalheTroca: TPanel;
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
    plTituloItensDetalhe: TPanel;
    listaitm: TDBGrid;
    listatroca: TDBGrid;
    mdt: TUniQuery;
    mdtmdtchave: TIntegerField;
    mdtmdtregistro: TDateField;
    mdtclbcodigo: TIntegerField;
    idt: TUniQuery;
    idtidtchave: TIntegerField;
    idtmdtchave: TIntegerField;
    idtitmchave: TIntegerField;
    idtmeschave: TIntegerField;
    idtflacodigo: TIntegerField;
    idtidtquantidade: TFloatField;
    idtidtmotivo: TStringField;
    idtunicodigo: TIntegerField;
    idtidtvalor: TFloatField;
    idtidtdesconto: TFloatField;
    idtidttotal: TFloatField;
    Didt: TDataSource;
    idtprocodigo: TIntegerField;
    idtpronome: TStringField;
    idtunisimbolo: TStringField;
    PlTotal: TPanel;
    midt: TUniQuery;
    midtidtchave: TIntegerField;
    midtmdtchave: TIntegerField;
    midtitmchave: TIntegerField;
    midtmeschave: TIntegerField;
    midtflacodigo: TIntegerField;
    midtidtquantidade: TFloatField;
    midtidtmotivo: TStringField;
    midtunicodigo: TIntegerField;
    midtidtvalor: TFloatField;
    midtidtdesconto: TFloatField;
    midtidttotal: TFloatField;
    itmflacodigo: TIntegerField;
    itmunicodigo: TIntegerField;
    Dmdt: TDataSource;
    bLimpaItens: TButton;
    gbProdutoATrocar: TGroupBox;
    PlGbEdtBuscaProduto: TPanel;
    PlGbEdtCodigoBusca: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    protroca: TVirtualTable;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    protrocaprocodigo: TIntegerField;
    protrocapronome: TStringField;
    dsprotroca: TUniDataSource;
    procodigo: TDBEdit;
    Image3: TImage;
    pronome: TDBText;
    mdtmeschaveorigem: TIntegerField;
    qitm: TUniQuery;
    jitm: TUniQuery;
    qitmitmquantidade: TFloatField;
    jitmitmquantidade: TFloatField;
    Dqitm: TDataSource;
    Djitm: TDataSource;
    itmidtchave: TStringField;
    itmmeschavedestino: TIntegerField;
    procedure listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure listatrocaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listaitmDblClick(Sender: TObject);
    procedure bLimpaItensClick(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure DBGListaDblClick(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure btLimpaBuscaClick(Sender: TObject);
    procedure DitmDataChange(Sender: TObject; Field: TField);
  private
    procedure recarregaitensselecionados;
    { Private declarations }
  public
    { Public declarations }
    vpMdtChave: string;
    procedure recalculartotal;

  end;

  // Início ID do Módulo fratdv
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Troca ou Devolução';

  // Fim ID do Módulo fratdv

var
  fratdv: Tfratdv;

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratdv := Tfratdv.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratdv := Tfratdv.Create(pCargaFrame);
  try
    fratdv.CriaAcoesDeAcesso;
  finally
    fratdv.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratdv.recalculartotal;
var
  vlTotalTroca: Double;
begin
  try
    idt.DisableControls;
    idt.Close;
    idt.Open;

    idt.First;
    vlTotalTroca := 0;
    while not idt.Eof do
    begin

      vlTotalTroca := vlTotalTroca + idtidttotal.AsCurrency;

      idt.Next;
    end;
    PlTotal.Caption := 'Total Itens R$: ' + FormatFloat('##,###,##0.00', vlTotalTroca);

  finally
    idt.EnableControls;
  end;
end;

procedure Tfratdv.recarregaitensselecionados;
begin
  try
    qitm.Close;
    qitm.ParamByName('flacodigo').AsInteger := acesso.Filial;
    qitm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    qitm.ParamByName('procodigo').AsInteger := itmprocodigo.AsInteger;
    qitm.Open;
  except
  end;
  if midt.Active then
  begin
    if midtmdtchave.AsString <> '' then
    begin
      jitm.Close;
      jitm.ParamByName('flacodigo').AsInteger := acesso.Filial;
      jitm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
      jitm.ParamByName('procodigo').AsInteger := itmprocodigo.AsInteger;
      jitm.ParamByName('mdtchave').AsInteger := midtmdtchave.AsInteger;
      jitm.Open;
    end;
  end;
end;

procedure Tfratdv.ActSairExecute(Sender: TObject);
begin
  vpMdtChave := self.mdtmdtchave.AsString;
  inherited;

end;

procedure Tfratdv.bLimpaItensClick(Sender: TObject);
begin
  inherited;

  consulta.Close;
  consulta.SQL.Text := 'delete from idt where mdtchave=' + mdtmdtchave.AsString;
  consulta.ExecSQL;

  mdt.Delete;
  idt.Close;
  idt.ParamByName('mdtchave').AsInteger := mdtmdtchave.AsInteger;
  idt.Open;


  recalculartotal;

end;

procedure Tfratdv.btLimpaBuscaClick(Sender: TObject);
begin
  inherited;
  if protroca.State <> dsbrowse then
    protroca.Cancel;

  uqtabela.FilterSQL := '';
end;

procedure Tfratdv.DBGListaDblClick(Sender: TObject);
begin
  { inherited; }

end;

procedure Tfratdv.DitmDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  recarregaitensselecionados;

end;

procedure Tfratdv.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if uqtabelameschave.AsString <> '' then
    begin
      itm.Close;
      itm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
      itm.Open;
    end;
end;

procedure Tfratdv.Image3Click(Sender: TObject);
var
  vlProCodigo: string;
begin
  inherited;
  vlProCodigo := '';
  vlProCodigo := MostraLista('mpro', '', '');

  if vlProCodigo = '' then
    exit;

  if not protroca.Active then
    protroca.Open;

  protroca.Append;

  protrocaprocodigo.AsString := vlProCodigo;

  uqtabela.FilterSQL := 'i.procodigo=' + vlProCodigo;

end;

procedure Tfratdv.listaitmDblClick(Sender: TObject);

begin
  inherited;

  recarregaitensselecionados;

  if (qitmitmquantidade.AsFloat <= jitmitmquantidade.AsFloat) and (mdtmdtchave.AsString <> '')  then
  begin
    ShowMessage('Este item não pode mais ser devolvido!');
    exit;
  end;

  if itmidtchave.AsString <> 'Vendido' then
  begin
    ShowMessage('Atenção: ' + #13 + #13 + 'Este item ja foi devolvido!' + #13 + #13 + 'Chave da Venda: ' + self.itmmeschavedestino.AsString);
    exit;
  end;

  if mdt.FieldByName('mdtregistro').AsString = '' then
  begin

    mdt.Close;
    mdt.Open;

    mdt.Append;
    mdtmdtregistro.AsFloat := date; // hoje(application, ZCone);
    mdtclbcodigo.AsInteger := acesso.Usuario;
    mdtmeschaveorigem.AsInteger := uqtabelameschave.AsInteger;
    mdt.Post;
  end;



  if not midt.Active then
    midt.Open;

  idt.Close;
  idt.ParamByName('mdtchave').AsInteger := mdtmdtchave.AsInteger;
  idt.Open;

  { if idt.Locate('procodigo;itmchave', VarArrayOf([itmprocodigo.AsInteger, itmitmchave.AsInteger]), []) then
    begin
    midt.Edit;
    midtidtquantidade.AsFloat := midtidtquantidade.AsFloat+1;
    midtidttotal.AsCurrency := itmitmvalor.AsCurrency * midtidtquantidade.AsFloat;

    end
    else
    begin }
  midt.Append;

  midtmdtchave.AsInteger := mdtmdtchave.AsInteger;
  midtitmchave.AsInteger := itmitmchave.AsInteger;
  midtmeschave.AsInteger := itmmeschave.AsInteger;
  midtflacodigo.AsInteger := itmflacodigo.AsInteger;
  midtidtquantidade.AsFloat := 1;
  midtunicodigo.AsInteger := itmunicodigo.AsInteger;
  midtidtvalor.AsCurrency := itmitmvalor.AsCurrency;
  midtidtdesconto.AsCurrency := itmitmdesconto.AsCurrency / itmitmquantidade.AsFloat;
  midtidttotal.AsCurrency := (itmitmvalor.AsCurrency * midtidtquantidade.AsFloat) - midtidtdesconto.AsCurrency;
  midt.Post;

  { end; }
  recalculartotal;
  recarregaitensselecionados;
 { if midt.Active then
  begin
    if midtmdtchave.AsString <> '' then
    begin
      jitm.Close;
      jitm.ParamByName('flacodigo').AsInteger := acesso.Filial;
      jitm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
      jitm.ParamByName('procodigo').AsInteger := itmprocodigo.AsInteger;
      jitm.ParamByName('mdtchave').AsInteger := midtmdtchave.AsInteger;
      jitm.Open;
    end;
  end;  }

end;

procedure Tfratdv.listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  If Odd(Ditm.DataSet.RecNo) Then
    listaitm.Canvas.Brush.Color := PEG_COR_BASE
  Else
    listaitm.Canvas.Brush.Color := CLWHITE;

  TDBGrid(Sender).Canvas.Font.Color := clBlack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(Rect);
    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfratdv.listatrocaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;

  If Odd(Didt.DataSet.RecNo) Then
    listatroca.Canvas.Brush.Color := PEG_COR_BASE
  Else
    listatroca.Canvas.Brush.Color := CLWHITE;

  TDBGrid(Sender).Canvas.Font.Color := clBlack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(Rect);
    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

end.
