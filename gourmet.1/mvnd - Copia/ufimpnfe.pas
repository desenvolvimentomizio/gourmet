unit ufimpnfe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFuncoes, Data.DB, MemDS, DBAccess, Uni, Vcl.ExtDlgs, Vcl.ComCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ExtCtrls, ACBrBase,
  ACBrValidador;

type
  Tfimpnfe = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    edArquivo: TEdit;
    btLocalizar: TButton;
    texto: TMemo;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    mostra: TProgressBar;
    OpenTextFileDialog: TOpenTextFileDialog;
    ete: TUniQuery;
    eteetecodigo: TIntegerField;
    eteetdcodigo: TIntegerField;
    eteetecontato: TStringField;
    eteetedepartamento: TStringField;
    eteeteemail: TStringField;
    eteeteenvianfe: TIntegerField;
    etf: TUniQuery;
    etfetfcodigo: TIntegerField;
    etfetdcodigo: TIntegerField;
    etfetfcontato: TStringField;
    etfetfdepartamento: TStringField;
    etfttfcodigo: TIntegerField;
    etfetftelefone: TStringField;
    edr: TUniQuery;
    edredrcodigo: TIntegerField;
    edretdcodigo: TIntegerField;
    edrtedcodigo: TIntegerField;
    edredrrua: TStringField;
    edredrnumero: TStringField;
    edredrcxpostal: TStringField;
    edredrcomple: TStringField;
    edredrbairro: TStringField;
    edrcddcodigo: TStringField;
    edrufscodigo: TStringField;
    edredrobs: TStringField;
    edredrinscest: TStringField;
    edredrcep: TStringField;
    edredrinscmun: TStringField;
    edredritem: TIntegerField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdetdapelido: TStringField;
    etdetddeletar: TIntegerField;
    etdtpecodigo: TIntegerField;
    etdetddatacad: TDateField;
    etdetddataalt: TDateField;
    etdetddoc1: TStringField;
    etdetdativo: TIntegerField;
    etdtsecodigo: TIntegerField;
    etdetdobs: TStringField;
    etdetdsuframa: TStringField;
    etdtcbcodigo: TIntegerField;
    etdetdcarga: TIntegerField;
    etdetdsped: TIntegerField;
    cdd: TUniQuery;
    dpf: TUniQuery;
    dpfdpfcodigo: TIntegerField;
    dpfetdcodigo: TIntegerField;
    dpfdpfdtnasc: TDateField;
    Naturalidade: TStringField;
    dpfdpfrg: TStringField;
    dpfdpfssp: TStringField;
    dpfdpfnomemae: TStringField;
    dpfdpfdtnascmae: TDateField;
    dpfdpfnomepai: TStringField;
    dpfdpfdtnascpai: TDateField;
    dpfetccodigo: TIntegerField;
    dpfdpfconjuge: TStringField;
    dpfdpfdtnasccon: TDateField;
    dpfdpfdtcas: TDateField;
    dpfdpftrabconj: TStringField;
    dpfdpffoneconj: TStringField;
    dpfdpfnudepend: TIntegerField;
    dpfdpfpessoaautori1: TStringField;
    dpfdpfpessoaautori2: TStringField;
    dpfdpfpessoaautori3: TStringField;
    dpfdpflocaltrabalho: TStringField;
    dpfdpfcargotrabalho: TStringField;
    dpfdpfcontatotrabalho: TStringField;
    dpfdpfrendamensal: TFloatField;
    dpfdpfedrcodigo: TIntegerField;
    dpfdpfetfcodigo: TIntegerField;
    dpfdpfdataadmissaotrabalho: TDateField;
    etv: TUniQuery;
    etvetdcodigo: TIntegerField;
    etvtvicodigo: TIntegerField;
    consulta: TUniQuery;
    ACBrValidador: TACBrValidador;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    propronomereduzido: TStringField;
    promarcodigo: TIntegerField;
    progrpcodigo: TIntegerField;
    protrbcodigo: TIntegerField;
    proicmcodigo: TStringField;
    prounicodigo: TIntegerField;
    protpocodigo: TIntegerField;
    proprominimo: TFloatField;
    proproproprio: TStringField;
    propronumserie: TStringField;
    proproncm: TStringField;
    proprocomposto: TStringField;
    proprobalanca: TStringField;
    proprotecla: TStringField;
    proprovalidade: TIntegerField;
    proproestoque: TStringField;
    proproobs: TStringField;
    proproreferencia: TStringField;
    proprounitrib: TIntegerField;
    proproqtdtrib: TFloatField;
    prosipcodigo: TIntegerField;
    proproanpcodigo: TIntegerField;
    proenpcodigo: TIntegerField;
    propropedecomple: TIntegerField;
    propropededescrserv: TIntegerField;
    propropedetecnicoserv: TIntegerField;
    progracodigo: TIntegerField;
    prodprcodigo: TIntegerField;
    proprousagrade: TIntegerField;
    procstcodigo: TStringField;
    pun: TUniQuery;
    punprocodigo: TIntegerField;
    punpunquantidade: TFloatField;
    pununicodigo: TIntegerField;
    punpunmultiplicador: TFloatField;
    punpunidentificacao: TStringField;
    pundgrcodigo: TIntegerField;
    punpuncusto: TFloatField;
    punpunmargem: TFloatField;
    punpunprecoav: TFloatField;
    punpunprecoap: TFloatField;
    pununicodigobase: TIntegerField;
    punpunbarra: TStringField;
    puntuncodigo: TIntegerField;
    punpununitrib: TIntegerField;
    punpunqtdtrib: TFloatField;
    punpunbarrasistema: TIntegerField;
    punpunmargemap: TFloatField;
    punpunpercacresavap: TFloatField;
    grp: TUniQuery;
    grpgrpcodigo: TIntegerField;
    grpgrpidentificacao: TStringField;
    grptgrcodigo: TIntegerField;
    tgr: TUniQuery;
    tgrtgrcodigo: TIntegerField;
    tgrtgridentificacao: TStringField;
    Uni: TUniQuery;
    uniunicodigo: TIntegerField;
    uniunisimbolo: TStringField;
    uniuninome: TStringField;
    unituncodigo: TIntegerField;
    mar: TUniQuery;
    marmarcodigo: TIntegerField;
    marmaridentificacao: TStringField;
    cpb: TUniQuery;
    cpbcpbcodigo: TIntegerField;
    cpbprocodigo: TIntegerField;
    cpbcpbcodbalanca: TIntegerField;
    registro: TUniQuery;
    registromeschave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registromesemissao: TDateField;
    registromesregistro: TDateField;
    registrotdfcodigo: TStringField;
    registrosdecodigo: TStringField;
    registromesserie: TStringField;
    registromesnumero: TIntegerField;
    registromeschavenfe: TStringField;
    registrotoecodigo: TIntegerField;
    registrotfpcodigo: TIntegerField;
    registromesvalor: TFloatField;
    registromesdesconto: TFloatField;
    registromestotal: TFloatField;
    registrorefcodigo: TIntegerField;
    registromesfrete: TFloatField;
    registromesseguro: TFloatField;
    registromesoutras: TFloatField;
    registromesbicm: TFloatField;
    registromesicm: TFloatField;
    registromesbicms: TFloatField;
    registromesicms: TFloatField;
    registromesipi: TFloatField;
    registromespis: TFloatField;
    registromescofins: TFloatField;
    registromespiss: TFloatField;
    registromescofinss: TFloatField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    registrotrfcodigo: TStringField;
    registrotemcodigo: TIntegerField;
    registromesreclassicacao: TIntegerField;
    registroflacodigo: TIntegerField;
    registromesoutroscustos: TFloatField;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmcstcodigo: TStringField;
    itmprocodigoori: TStringField;
    itmpronomeori: TStringField;
    itmitmdesccomple: TStringField;
    itmitmquantidade: TFloatField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmitmmovifisico: TStringField;
    itmtoecodigo: TIntegerField;
    itmcfocfop: TStringField;
    itmitmbicm: TFloatField;
    itmicmcodigo: TStringField;
    itmitmaliqicm: TStringField;
    itmitmicm: TFloatField;
    itmitmbicms: TFloatField;
    itmitmaliqicms: TFloatField;
    itmitmicms: TFloatField;
    itmitmapuipi: TStringField;
    itmcsicodigo: TStringField;
    itmceicodigo: TStringField;
    itmitmbipi: TFloatField;
    itmitmaliqipi: TFloatField;
    itmitmipi: TFloatField;
    itmcspcodigo: TStringField;
    itmitmbpis: TFloatField;
    itmitmaliqpis: TFloatField;
    itmitmpis: TFloatField;
    itmitmquantpis: TFloatField;
    itmitmaliqpisvalor: TFloatField;
    itmcsfcodigo: TStringField;
    itmitmbcofins: TFloatField;
    itmitmaliqcofins: TFloatField;
    itmitmquantcofins: TFloatField;
    itmitmaliqcofinsvalor: TFloatField;
    itmitmcofins: TFloatField;
    itmpcccodigo: TStringField;
    itmunicodigo: TIntegerField;
    itmpuncodigo: TIntegerField;
    itmprogtin: TStringField;
    itmitmcontendo: TFloatField;
    itmcfocfopdestinacao: TStringField;
    itmunicodigobase: TIntegerField;
    itmitmfrete: TFloatField;
    itmitmcusto: TFloatField;
    itmitmoutras: TFloatField;
    itmitmseguro: TFloatField;
    itmitmoutroscustos: TFloatField;
    punpuncodigo: TIntegerField;
    tof: TUniQuery;
    tom: TUniQuery;
    toftofcodigo: TIntegerField;
    toftofidentificacao: TStringField;
    tomtomchave: TIntegerField;
    tomtofcodigo: TIntegerField;
    tommeschave: TIntegerField;
    dfr: TUniQuery;
    dfrdfrchave: TIntegerField;
    dfretdcodigo: TIntegerField;
    dfrtdfcodigo: TStringField;
    dfrdfrchavenfe: TStringField;
    dfrdfrserie: TStringField;
    dfrdfrnumero: TIntegerField;
    dfrdfremissao: TDateField;
    dfredritem: TIntegerField;
    dfrmeschave: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure btLocalizarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    FZCone: TUniConnection;
    procedure SetZCone(const Value: TUniConnection);
    procedure importaedr(vedretdcodigo, vedrtedcodigo: Integer; vedredrrua, vedredrnumero, vedredrcxpostal, vedredrcomple, vedredrbairro, vedrcddcodigo,
      vedrufscodigo, vedredrobs, vedredrinscest, vedredrcep, vedredrinscmun: String; vedredritem: Integer);
    procedure importaetd(vetdetdcodigo: Integer; vetdetdidentificacao, vetdetdapelido: string; vetdtpecodigo: Integer; vetdetddatacad, vetdetddataalt: tdate;
      vetdetddoc1, vetdetdobs, vetdetdsuframa: string; vetdtcbcodigo: Integer);
    procedure importaete(veteetdcodigo: Integer; veteetecontato, veteetedepartamento, veteeteemail: String; veteeteenvianfe: Integer);
    procedure importaetf(vetfetdcodigo: Integer; vetfetfcontato, vetfetfdepartamento: String; vetfttfcodigo: Integer; vetfetftelefone: String);
    procedure processartexto;
    { Private declarations }
  public
    { Public declarations }
    { Public declarations }
  published
    property ZCone: TUniConnection read FZCone write SetZCone;

  end;

const
  MascaraBarra = '00000000000000';

var
  fimpnfe: Tfimpnfe;

implementation

{$R *.dfm}

Function GeraProdutoBarra(AOwner: TComponent; CProCodigo: Integer; CUniCodigo: Integer): String;
Var
  ACBrValidadorGtin: TACBrValidador;
  vBarra: string;
Begin
  ACBrValidadorGtin := TACBrValidador.Create(AOwner);
  try
    vBarra := FormatFloat(MascaraBarra, StrToFloat(IntToStr(CProCodigo) + FormatFloat('000', CUniCodigo) + '0'));
    ACBrValidadorGtin.TipoDocto := docGTIN;
    ACBrValidadorGtin.Documento := vBarra;
    ACBrValidadorGtin.Documento := ACBrValidadorGtin.Formatar;

    if ACBrValidadorGtin.Validar then
      vBarra := ACBrValidadorGtin.Documento
    else
      vBarra := Copy(vBarra, 1, 13) + ACBrValidadorGtin.DigitoCalculado;

    Result := vBarra;
  finally
    ACBrValidadorGtin.Free;
  end;
End;

procedure Tfimpnfe.bcancelaClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tfimpnfe.bconfirmaClick(Sender: TObject);
begin

  processartexto;

  modalresult := mrok;
end;

procedure Tfimpnfe.btLocalizarClick(Sender: TObject);
begin
  OpenTextFileDialog.Execute;
  edArquivo.Text := OpenTextFileDialog.FileName;
  if fileexists(edArquivo.Text) then
  begin
    bconfirma.Enabled := True;
    texto.Lines.LoadFromFile(edArquivo.Text);
  end
  else
    bconfirma.Enabled := False;

end;

procedure Tfimpnfe.FormShow(Sender: TObject);
begin
  SetZCone(FZCone);

end;

procedure Tfimpnfe.SetZCone(const Value: TUniConnection);
var
  i: Integer;
begin
  FZCone := Value;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TUniQuery then
      (Self.Components[i] as TUniQuery).Connection := Self.ZCone;
  end;
end;

procedure Tfimpnfe.importaetd(vetdetdcodigo: Integer; vetdetdidentificacao: string; vetdetdapelido: string; vetdtpecodigo: Integer; vetdetddatacad: tdate;
  vetdetddataalt: tdate; vetdetddoc1: String; vetdetdobs: string; vetdetdsuframa: string; vetdtcbcodigo: Integer);
begin
  if not etd.Active then
  begin
    etd.Connection := ZCone;
    etd.Open;
  end;

  if etd.Locate('etdcodigo', vetdetdcodigo, []) then
    etd.Edit
  else
    etd.Append;

  etdetdcodigo.AsInteger := vetdetdcodigo;
  etdetdidentificacao.AsString := vetdetdidentificacao;
  etdetdapelido.AsString := vetdetdapelido;
  etdetddeletar.AsInteger := 0;
  etdtpecodigo.AsInteger := vetdtpecodigo;
  etdetddatacad.asFloat := vetdetddatacad;
  etdetddataalt.asFloat := vetdetddatacad;
  etdetddoc1.AsString := vetdetddoc1;
  etdetdativo.AsInteger := 1;
  etdtsecodigo.AsInteger := 0;
  etdetdobs.AsString := vetdetdobs;
  etdetdsuframa.AsString := vetdetdsuframa;
  etdtcbcodigo.AsInteger := vetdtcbcodigo;
  etdetdsped.AsInteger := 1;
  etdetdcarga.AsInteger := 1;
  etd.Post;

  if not etv.Active then
  begin
    etv.Connection := ZCone;
    etv.Open;
  end;

  if etv.Locate('etdcodigo;tvicodigo', VarArrayOf([vetdetdcodigo, 1]), []) then
    etv.Edit
  else
    etv.Append;

  etvetdcodigo.AsInteger := vetdetdcodigo;
  etvtvicodigo.AsInteger := 1;

  etv.Post;

end;

procedure Tfimpnfe.importaedr(vedretdcodigo: Integer; vedrtedcodigo: Integer; vedredrrua: String; vedredrnumero: String; vedredrcxpostal: String;
  vedredrcomple: String; vedredrbairro: String; vedrcddcodigo: String; vedrufscodigo: String; vedredrobs: String; vedredrinscest: String; vedredrcep: String;
  vedredrinscmun: String; vedredritem: Integer);
begin

  edr.Close;
  edr.ParamByName('etdcodigo').AsInteger := vedretdcodigo;
  edr.Open;

  if edr.Locate('edrrua;etdcodigo', VarArrayOf([vedredrrua, vedretdcodigo]), [locaseinsensitive]) then
    edr.Edit
  else
    edr.Append;

  edretdcodigo.AsInteger := vedretdcodigo;
  edrtedcodigo.AsInteger := 1;
  edredrrua.AsString := vedredrrua;
  edredrnumero.AsString := vedredrnumero;
  edredrcxpostal.AsString := vedredrcxpostal;
  edredrcomple.AsString := vedredrcomple;
  edredrbairro.AsString := vedredrbairro;
  edrcddcodigo.AsString := vedrcddcodigo;
  edrufscodigo.AsString := vedrufscodigo;
  edredrobs.AsString := vedredrobs;
  edredrinscest.AsString := vedredrinscest;
  edredrcep.AsString := vedredrcep;
  edredrinscmun.AsString := vedredrinscmun;
  edredritem.AsInteger := vedredritem;

  edr.Post;

end;

procedure Tfimpnfe.importaetf(vetfetdcodigo: Integer; vetfetfcontato: String; vetfetfdepartamento: String; vetfttfcodigo: Integer; vetfetftelefone: String);
begin

  if vetfetftelefone <> '' then
  begin
    etf.Close;
    etf.ParamByName('etdcodigo').AsInteger := vetfetdcodigo;
    etf.Open;

    if etf.Locate('etftelefone', vetfetftelefone, []) then
      etf.Edit
    else
      etf.Append;

    etfetdcodigo.AsInteger := vetfetdcodigo;
    etfetfcontato.AsString := vetfetfcontato;
    etfetfdepartamento.AsString := vetfetfdepartamento;
    etfttfcodigo.AsInteger := vetfttfcodigo;
    etfetftelefone.AsString := vetfetftelefone;

    etf.Post;
  end;

end;

/// <summary> Importação de Notas fiscais geradas no formato txt com layout no padrão do emissor de NFE do SEFA SP.</summary>
procedure Tfimpnfe.importaete(veteetdcodigo: Integer; veteetecontato: String; veteetedepartamento: String; veteeteemail: String; veteeteenvianfe: Integer);
begin

  ete.Close;
  ete.ParamByName('etdcodigo').AsInteger := veteetdcodigo;
  ete.Open;

  if ete.Locate('eteemail', veteeteemail, []) then
    ete.Edit
  else
    ete.Append;

  eteetdcodigo.AsInteger := veteetdcodigo;
  eteetecontato.AsString := veteetecontato;
  eteetedepartamento.AsString := veteetedepartamento;
  eteeteemail.AsString := veteeteemail;
  eteeteenvianfe.AsInteger := veteeteenvianfe;

  ete.Post;
end;

procedure Tfimpnfe.processartexto;
var
  vlLinha: String;
  i: Integer;

  // etd
  vetdetdcodigo: Integer;
  vetdetdidentificacao: string;
  vetdetdapelido: string;
  vetdtpecodigo: Integer;
  vetdetddatacad: tdate;
  vetdetddataalt: tdate;
  vetdetddoc1: String;
  vetdetdobs: string;
  vetdetdsuframa: string;
  vetdtcbcodigo: Integer;

  // edr
  vedredrcodigo: Integer;
  vedretdcodigo: Integer;
  vedrtedcodigo: Integer;
  vedredrrua: String;
  vedredrnumero: String;
  vedredrcxpostal: String;
  vedredrcomple: String;
  vedredrbairro: String;
  vedrcddcodigo: String;
  vedrufscodigo: String;
  vedredrobs: String;
  vedredrinscest: String;
  vedredrcep: String;
  vedredrinscmun: String;
  vedredritem: Integer;

  // etf
  vetfetdcodigo: Integer;
  vetfetfcontato: String;
  vetfetfdepartamento: String;
  vetfttfcodigo: Integer;
  vetfetftelefone: String;

  // ete
  veteetdcodigo: Integer;
  veteetecontato: String;
  veteetedepartamento: String;
  veteeteemail: String;
  veteeteenvianfe: Integer;

  // variaveis de validacao
  vlindIEDest: string;
  vlIE: string;
  vlISUF: string;
  vlIM: string;
  vlEmail: string;
  vlNomeCidade: String;
  vlCodPais: string;
  vlNomePaix: string;
  vlCFOP: string;
  vlEXTIPI: string;

  vlcEANTrib: string;
  vluTrib: string;
  vlqTrib: string;
  vlvUnTrib: string;
  vlvFrete: string;
  vlvSeg: string;
  vlvDesc: string;
  vlOutro: string;
  vlindTot: string;
  vlxPed: string;

  vlnItemPed: string;
  vlnFCI: string;

  // nf
  vlRegistro: String;
  vlnversao: string;
  vlnId: string;
  vlnpk_nItem: string;
  vlncUF: string;
  vlncNF: string;
  vlnnatOp: string;
  vlnindPag: string;
  vlnmod: string;
  vlnserie: string;
  vlnnNF: string;
  vlndhEmi: string;
  vlndhSaiEnt: string;
  vlntpNF: string;
  vlnidDest: string;
  vlncMunFG: string;
  vlntpImp: string;
  vlntpEmis: string;
  vlncDV: string;
  vlntpAmb: string;
  vlnfinNFe: string;
  vlnindFinal: string;
  vlnindPres: string;
  vlnprocEmi: string;
  lvnverProc: string;
  vlndhCont: string;
  vlnxJust: string;

  // O08
  vloCST: String;

  // ITEM
  vlH: string;

  // Q02

  vlqCST: string;
  vlqvBC: string;
  vlqpPIS: string;
  vlqvPIS: string;

  // S02
  vlsCST: string;
  vlsvBC: string;
  vlspCOFINS: string;
  vlsvCOFINS: string;

  // W02
  vlwvBC: string;
  vlwvICMS: string;
  vlwvICMSDeson: string;
  vlwvBCST: string;
  vlwvST: string;
  vlwvProd: string;
  vlweFrete: string;
  vlwvSeg: string;
  vlwvDesc: string;
  vlwvII: string;
  vlwvIPI: string;
  vlwvPIS: string;
  vlwvCOFINS: string;
  vlwvOutro: string;
  vlwvNF: string;
  vlwvTotTrib: string;

  // pro
  vlprocodigo: string;
  vlpronome: string;
  vlunisimbolo: string;
  vlproncm: string;
  vlpunprecoav: string;
  vlpunbarra: string;

  // itm
  vlitmValor: string;
  vlitmTotal: String;
  vlItmquantidade: string;

  // n
  vlnorig: string;
  vlnCST: string;
  vlnmodBC: string;
  vlvBC: string;
  vlpICMS: string;
  vlvICMS: string;
  vlNFErefer: String;

  vlObs: string;
  vlSerieNFErefer: TStringList;
  vlModeloNFErefer: TStringList;
  vlNumeroNFErefer: TStringList;

  vltSerieNFErefer: String;
  vltModeloNFErefer: String;
  vltNumeroNFErefer: String;

  vlQtDocRef: Integer;

begin

  vlRegistro := '';

  if not pro.Active then
    pro.Open;

  if not cpb.Active then
    cpb.Open;

  if not pun.Active then
    pun.Open;

  if not tgr.Active then
    tgr.Open;

  if not tgr.Locate('tgrcodigo', 1, []) then
  begin
    tgr.Append;
    tgrtgrcodigo.AsInteger := 1;
    tgrtgridentificacao.AsString := 'GERAL';
    tgr.Post;
  end;

  if not grp.Active then
    grp.Open;

  if not grp.Locate('grpcodigo', 1, []) then
  begin
    grp.Append;
    grpgrpcodigo.AsInteger := 1;
    grpgrpidentificacao.AsString := 'GERAL';
    grptgrcodigo.AsInteger := 1;
    grp.Post;
  end;

  if not mar.Active then
    mar.Open;

  if not mar.Locate('marcodigo', 1, []) then
  begin
    mar.Append;
    marmarcodigo.AsInteger := 1;
    marmaridentificacao.AsString := 'GERAL';
    mar.Post;
  end;

  if not Uni.Active then
    Uni.Open;

  mostra.Max := texto.Lines.Count;
  vlNFErefer := '';
  i := -1;
  vetdetdcodigo := 0;
  while True do
  begin
    i := i + 1;

    mostra.Position := mostra.Position + 1;
    application.ProcessMessages;

    vlLinha := texto.Lines[i];

    if Copy(vlLinha, 1, 5) = 'BA02|' then
    begin
      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlNFErefer := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

    end;

    if Copy(vlLinha, 1, 5) = 'BA20|' then
    begin
      if vlSerieNFErefer = nil then
        vlSerieNFErefer := TStringList.Create;

      if vlModeloNFErefer = nil then
        vlModeloNFErefer := TStringList.Create;

      if vlNumeroNFErefer = nil then
        vlNumeroNFErefer := TStringList.Create;

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vltModeloNFErefer := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
      vlModeloNFErefer.Add(vltModeloNFErefer);

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlSerieNFErefer.Add('2');
      vltSerieNFErefer := '2';

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vltNumeroNFErefer := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
      vlNumeroNFErefer.Add(vltNumeroNFErefer);

    end;

    if Copy(vlLinha, 1, 2) = 'E|' then
    begin
      // E|JEFFERSON RENATO DE QUEIROZ FOCRINK|9|||||
      // E|xNome|indIEDest|IE|ISUF|IM|email|

      vlLinha := trim((Copy(vlLinha, 3, 200)));
      vetdetdidentificacao := trim((Copy(vlLinha, 1, POS('|', vlLinha) - 1)));
      vetdetdapelido := vetdetdidentificacao;

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlindIEDest := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));

      // "1": Contribuinte de ICMS. Neste caso, deverá ser informada a Inscrição Estadual do destinatário.
      // "2": Contribuinte isento.
      // "9": Não Contribuinte, que pode ou não possuir Inscrição Estadual no Cadastro de Contribuintes do ICMS.

      if (vlindIEDest = '9') or (vlindIEDest = '2') then
      begin
        vetdtcbcodigo := 3;
        vedredrinscest := '';
      end
      else
      begin
        vetdtcbcodigo := 2;
        vedredrinscest := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
      end;

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlISUF := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlIM := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vedredrinscmun := vlIM;

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlEmail := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      if vlEmail <> '' then
      begin
        veteeteemail := vlEmail;
        veteeteenvianfe := 1;
      end
      else
      begin
        veteeteemail := 'Sem email';
        veteeteenvianfe := 0;
      end;

      i := i + 1;
      vlLinha := texto.Lines[i];

    end;

    if (Copy(vlLinha, 1, 4) = 'E03|') or (Copy(vlLinha, 1, 4) = 'E02|') then
    begin
      if Copy(vlLinha, 1, 4) = 'E03|' then
      begin
        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlLinha := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
        ACBrValidador.Documento := vlLinha;
        ACBrValidador.TipoDocto := docCPF;
        vetdetddoc1 := ACBrValidador.Formatar;
        vetdtpecodigo := 1;
      end
      else if Copy(vlLinha, 1, 4) = 'E02|' then
      begin
        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlLinha := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
        ACBrValidador.Documento := vlLinha;
        ACBrValidador.TipoDocto := docCNPJ;
        vetdetddoc1 := ACBrValidador.Formatar;
        vetdtpecodigo := 2;
      end;

      vetdetddatacad := strtodate(hoje(application, ZCone));
      vetdetddataalt := vetdetddatacad;

      consulta.Close;
      consulta.SQL.Text := 'select etdcodigo from etd where etddoc1=' + QuotedStr(vetdetddoc1);
      consulta.Open;

      if consulta.IsEmpty then
      begin
        consulta.Close;
        consulta.SQL.Text := 'select max(etdcodigo)+1 from etd ';
        consulta.Open;
      end;

      if not consulta.IsEmpty then
      begin
        vetdetdcodigo := consulta.fields[0].AsInteger
      end
      else
        vetdetdcodigo := 1;

      vedrtedcodigo := vetdetdcodigo;
      vetfetdcodigo := vetdetdcodigo;
      veteetdcodigo := vetdetdcodigo;
      vedredrcodigo := vetdetdcodigo;
      i := i + 1;
      vlLinha := texto.Lines[i];

    end;

    // endereço
    // E05|AV. CLAUDINO FRANCA|3525||SAO JOSE|5107925|SORRISO|MT|78890000|1058|BRASIL|66996722281|
    if (Copy(vlLinha, 1, 4) = 'E05|') then
    begin
      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vedredrrua := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vedredrnumero := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vedredrcomple := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vedredrbairro := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vedrcddcodigo := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlNomeCidade := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vedrufscodigo := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      consulta.Close;
      consulta.SQL.Text := 'select ufscodigo from ufs where ufssigla=' + QuotedStr(vedrufscodigo);
      consulta.Open;

      vedrufscodigo := consulta.fields[0].AsString;

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vedredrcep := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlCodPais := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlNomePaix := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vedredritem := 1;

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vetfetftelefone := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vetfttfcodigo := 1;
      i := i + 1;
      vlLinha := texto.Lines[i];

    end;

    if (Copy(vlLinha, 1, 2) = 'M|') then
    begin
      i := i + 9;
      vlLinha := texto.Lines[i];

    end;

    if (Copy(vlLinha, 1, 2) = 'H|') then
    begin
      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlH := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      i := i + 1;
      vlLinha := texto.Lines[i];

    end;

    if (Copy(vlLinha, 1, 2) = 'I|') then
    begin
      // I|23491||QUASAR DES BODY SPR 100ml PCK V5|33072010||5910|PC|1.0000|10.8900|10.89||PC|1.0000|10.8900|||||1|||
      // I|cProd|cEAN|xProd|NCM|EXTIPI|CFOP|uCom|qCom|vUnCom|vProd|cEANTrib|uTrib|qTrib|vUnTrib|vFrete|vSeg|vDesc|vOutro|indTot|xPed|nItemPed|nFCI|

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlprocodigo := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlpunbarra := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlpronome := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlproncm := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlEXTIPI := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlCFOP := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlunisimbolo := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlItmquantidade := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlitmValor := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
      vlpunprecoav := vlitmValor;

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlitmTotal := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlcEANTrib := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vluTrib := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlqTrib := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlvUnTrib := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlvFrete := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlvSeg := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlvDesc := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlOutro := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlindTot := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlxPed := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnItemPed := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnFCI := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
      i := i + 3;
      vlLinha := texto.Lines[i];
      if (Copy(vlLinha, 1, 4) = 'N|') then // ICM
      begin
        if lowercase(vedrufscodigo) = 'mt' then
        begin
          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlvBC := '0';

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlpICMS := '0';

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlvICMS := '0';

        end
        else
        begin

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlvBC := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlpICMS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
          vlpICMS := '12';

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlvICMS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        end;

      end;

      if (Copy(vlLinha, 1, 4) = 'N02|') then // ICM
      begin

        // N02|0|00|3|129.84|17.00|22.07|
        // N02|orig|CST|modBC|vBC|pICMS|vICMS|

        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlnorig := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlnCST := vlnorig + trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlnmodBC := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
        consulta.Close;
        consulta.SQL.Text := 'select ufssigla from ufs where ufscodigo=' + vedrufscodigo;
        consulta.Open;

        if lowercase(consulta.FieldByName('ufssigla').AsString) = 'mt' then
        begin
          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlvBC := '0';

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlpICMS := '0';

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlvICMS := '0';

        end
        else
        begin

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlvBC := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlpICMS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
          vlpICMS := '12';

          vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
          vlvICMS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        end;

        if vlpICMS = '0' then
        begin
          vlnCST := '090';
        end
        else
          vlnCST := '000';

        i := i + 4;
        vlLinha := texto.Lines[i];

      END;

      if (Copy(vlLinha, 1, 4) = 'Q02|') then // pis
      begin
        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlqCST := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        vlqCST := '04';

        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlqvBC := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlqpPIS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlqvPIS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        i := i + 2;
        vlLinha := texto.Lines[i];

      end;

      if (Copy(vlLinha, 1, 4) = 'S02|') then // cofins
      begin
        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlsCST := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        vlsCST := '04';

        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlsvBC := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlspCOFINS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
        vlsvCOFINS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

        i := i + 1;
        vlLinha := texto.Lines[i];

      end;

      if pro.Locate('procodigo', StrToInt(vlprocodigo), []) then
        pro.Edit
      else
        pro.Append;

      proprocodigo.AsString := vlprocodigo;
      propronome.AsString := vlpronome;
      propronomereduzido.AsString := vlpronome;
      progrpcodigo.AsInteger := 1;
      promarcodigo.AsInteger := 1;
      protrbcodigo.AsInteger := 1;
      proicmcodigo.AsString := '00';

      if vlunisimbolo = 'KG' then
      begin
        if Uni.Locate('unisimbolo', 'KG', []) then
        begin
          prounicodigo.AsInteger := uniunicodigo.AsInteger;
        end
        else
        begin
          Uni.Append;
          uniunisimbolo.AsString := 'KG';
          uniuninome.AsString := 'QUILO';
          Uni.Post;
        end;
        proprobalanca.AsString := '1';
      end
      else
      begin

        if Uni.Locate('unisimbolo', vlunisimbolo, []) then
        begin
          prounicodigo.AsInteger := uniunicodigo.AsInteger;
        end
        else
        begin
          Uni.Append;
          uniunisimbolo.AsString := 'UN';
          uniuninome.AsString := 'UNIDADE';
          Uni.Post;
        end;
        proprobalanca.AsString := '0';
        proprotecla.AsString := '';

      end;

      prounicodigo.AsInteger := uniunicodigo.AsInteger;
      protpocodigo.AsInteger := 0;
      proprominimo.asFloat := 0;
      proproproprio.AsString := '';
      propronumserie.AsString := '0';
      proproncm.AsString := vlproncm;
      proprocomposto.AsString := '0';

      proprovalidade.AsInteger := 0;
      proproestoque.AsString := '0';
      proproobs.AsString := '';
      proproreferencia.AsString := '';
      proprounitrib.AsInteger := prounicodigo.AsInteger;
      proproqtdtrib.asFloat := 1;
      prosipcodigo.AsInteger := 1;
      proproanpcodigo.AsInteger := 0;
      proenpcodigo.AsInteger := 0;
      propropedecomple.AsInteger := 0;
      propropededescrserv.AsInteger := 0;
      propropedetecnicoserv.AsInteger := 0;
      prodprcodigo.AsInteger := 1;
      proprousagrade.AsInteger := 0;
      procstcodigo.AsString := '000';

      pro.Post;

      if vlunisimbolo = 'KG' then
      begin

        if cpb.Locate('procodigo', proprocodigo.AsString, []) then
          cpb.Edit
        else
          cpb.Append;

        cpbprocodigo.AsString := proprocodigo.AsString;
        cpbcpbcodbalanca.AsString := proprocodigo.AsString;
        cpb.Post;

      end;

      if not pun.Locate('procodigo', proprocodigo.AsInteger, []) then
        pun.Append
      else
        pun.Edit;

      punprocodigo.AsInteger := proprocodigo.AsInteger;
      pununicodigo.AsInteger := prounicodigo.AsInteger;
      punpunmultiplicador.asFloat := 1;
      punpunquantidade.asFloat := 1;
      punpunidentificacao.AsString := '1x' + uniunisimbolo.AsString;
      pundgrcodigo.AsInteger := 1;
      punpuncusto.asFloat := 0;
      punpunmargem.asFloat := 0;
      punpunprecoav.AsString := buscatroca(vlpunprecoav, '.', ',');
      punpunprecoap.AsString := buscatroca(vlpunprecoav, '.', ',');
      pununicodigobase.AsInteger := prounicodigo.AsInteger;

      if vlpunbarra = '' then
      begin
        punpunbarrasistema.AsInteger := 1;
        punpunbarra.AsString := GeraProdutoBarra(application, punprocodigo.AsInteger, pununicodigo.AsInteger);
      end
      else
      begin
        punpunbarrasistema.AsInteger := 0;
        punpunbarra.AsString := vlpunbarra;
      end;
      puntuncodigo.AsInteger := 9;
      punpununitrib.AsInteger := prounicodigo.AsInteger;
      punpunqtdtrib.asFloat := 1;

      punpunmargemap.asFloat := 0;
      punpunpercacresavap.asFloat := 0;

      pun.Post;
      itm.Close;
      itm.ParamByName('meschave').AsString := registromeschave.AsString;
      itm.Open;

      // I|28928||QUASAR DES COL EVOLUTION 30ml PRM|33072010||5910|PC|7.0000|7.0700|49.49||PC|7.0000|7.0700|||||1|||
      // I|cProd|cEAN|xProd|NCM|EXTIPI|CFOP|uCom|qCom|vUnCom|vProd|cEANTrib|uTrib|qTrib|vUnTrib|vFrete|vSeg|vDesc|vOutro|indTot|xPed|nItemPed|nFCI|
      if itm.Locate('itmitem', vlH, []) then
      begin
        itm.Edit;
      end
      else
      begin
        itm.Append;
      end;

      itmmeschave.AsInteger := registromeschave.AsInteger;

      itmitmitem.AsString := vlH;

      itmprocodigo.AsString := proprocodigo.AsString;

      itmprocodigoori.AsString := proprocodigo.AsString;
      itmpronomeori.AsString := propronome.AsString;
      itmitmdesccomple.AsString := '';
      itmitmquantidade.AsString := buscatroca(vlItmquantidade, '.', ',');
      itmitmvalor.AsString := punpunprecoav.AsString;
      if vlvDesc = '' then
        vlvDesc := '0';
      itmitmdesconto.AsString := buscatroca(vlvDesc, '.', ',');
      itmitmtotal.AsString := buscatroca(vlitmTotal, '.', ',');
      itmitmmovifisico.AsString := '1';

      itmcfocfop.AsString := Copy(vlCFOP, 1, 1) + '.' + Copy(vlCFOP, 2, 3);

      consulta.Close;
      consulta.SQL.Text := 'select toecodigo,toecfopsaida from toe where lower(toeidentificacao)=' + QuotedStr(vlnnatOp);
      consulta.Open;

      itmtoecodigo.AsString := consulta.fields[0].AsString;
      itmcfocfop.AsString := consulta.fields[1].AsString;

      if lowercase(vedrufscodigo) = '51' then
      begin
        vlpICMS := '00';
        vlvBC := '0';
        vlnCST := '090';
        vlvICMS := '0';
      end
      else
      begin
        vlpICMS := '12';
        vlvBC := itmitmtotal.AsString;
        vlnCST := '000';

      end;

      itmcstcodigo.AsString := vlnCST;

      itmitmbicm.AsString := buscatroca(vlvBC, '.', ',');
      itmitmaliqicm.AsString := buscatroca(vlpICMS, '.', ',');

      consulta.Close;
      consulta.SQL.Text := 'select icmcodigo from icm where icmaliquotas=' + vlpICMS;
      consulta.Open;

      itmicmcodigo.AsString := consulta.fields[0].AsString;;

      itmitmicm.AsString := buscatroca(vlvICMS, '.', ',');

      itmitmbicms.AsString := '0';
      itmitmaliqicms.AsString := '0';
      itmitmicms.AsString := '0';
      itmitmapuipi.AsString := '0';
      itmcsicodigo.AsString := '04';
      itmceicodigo.AsString := '0';
      itmitmbipi.AsString := '0';

      itmitmaliqipi.AsString := '0';
      itmitmipi.AsString := '0';

      if vlqpPIS = '' then
        vlqpPIS := '0';

      if vlqvPIS = '' then
        vlqvPIS := '0';

      if vlqCST = '' then
        vlqCST := '04';

      itmcspcodigo.AsString := vlqCST;
      itmitmbpis.AsString := buscatroca(vlpICMS, '.', ',');
      itmitmaliqpis.AsString := buscatroca(vlqpPIS, '.', ',');
      itmitmpis.AsString := buscatroca(vlqvPIS, '.', ',');
      itmitmquantpis.AsString := '0';
      itmitmaliqpisvalor.AsString := '0';

      if vlsCST = '' then
        vlsCST := '04';

      itmcsfcodigo.AsString := vlsCST;

      if vlspCOFINS = '' then
        vlspCOFINS := '0';

      if vlsvCOFINS = '' then
        vlsvCOFINS := '0';

      if vlsvBC = '' then
        vlsvBC := '0';

      itmitmbcofins.AsString := buscatroca(vlsvBC, '.', ',');
      itmitmaliqcofins.AsString := buscatroca(vlspCOFINS, '.', ',');
      itmitmquantcofins.AsString := '0';
      itmitmaliqcofinsvalor.AsString := '0';
      itmitmcofins.AsString := buscatroca(vlsvCOFINS, '.', ',');
      itmpcccodigo.AsString := '1.01.03.01.01';
      itmunicodigo.AsString := pununicodigo.AsString;
      itmpuncodigo.AsString := punpuncodigo.AsString;
      itmprogtin.AsString := vlpunbarra;
      itmitmcontendo.AsString := '1';
      itmcfocfopdestinacao.AsString := itmcfocfop.AsString;
      itmunicodigobase.AsString := pununicodigo.AsString;
      if vlvFrete = '' then
        vlvFrete := '0';

      if vlvFrete = '' then
        vlvFrete := '0';

      itmitmfrete.AsString := buscatroca(vlvFrete, '.', ',');
      itmitmcusto.AsString := '0';
      if vlOutro = '' then
        vlOutro := '0';

      if vlOutro = '' then
        vlOutro := '0';

      itmitmoutras.AsString := buscatroca(vlOutro, '.', ',');

      itmitmseguro.AsString := '0';
      itmitmoutroscustos.AsString := '0';
      itm.Post;
      i := i - 1;
      // vlLinha := texto.Lines[i];

    end;

    if (Copy(vlLinha, 1, 4) = 'O08|') then
    begin

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vloCST := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      i := i + 1;
      vlLinha := texto.Lines[i];
    end;

    // W02|vBC|vICMS|vICMSDeson|vBCST|vST|vProd|vFrete|vSeg|vDesc|vII|vIPI|vPIS|vCOFINS|vOutro|vNF|vTotTrib|
    // W02|10.89|1.85|0.00|0.00|0.00|10.89|0.00|0.00|0.00|0.00|0.00|0.07|0.33|0.00|10.89|0.00|
    if (Copy(vlLinha, 1, 4) = 'W02|') then // pis
    begin
      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvBC := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      consulta.Close;
      consulta.SQL.Text := 'select ufssigla from ufs where ufscodigo=' + vedrufscodigo;
      consulta.Open;
      if lowercase('mt') = lowercase(consulta.FieldByName('ufssigla').AsString) then
      begin
        vlwvBC := '0';
      end;

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvICMS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));
      if lowercase('mt') = lowercase(consulta.FieldByName('ufssigla').AsString) then
      begin
        vlwvICMS := '0';
      end;

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvICMSDeson := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvBCST := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvST := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvProd := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlweFrete := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvSeg := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvDesc := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvII := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvIPI := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvPIS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvCOFINS := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvOutro := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvNF := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlwvTotTrib := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      consulta.SQL.Text :=
        'SELECT meschave FROM mes,toe where mes.mestotal=0 and mes.toecodigo=toe.toecodigo AND temcodigo=3 AND mes.tdfcodigo=55 and mesnumero=' +
        QuotedStr(IntToStr(StrToInt(vlncNF)));
      consulta.Open;

      if (consulta.IsEmpty) and (vlRegistro = '') then
      begin
        registro.Close;
        registro.Open;
        registro.Append;
      end
      else
      begin
        if vlRegistro <> '' then
        begin
          registro.Close;
          registro.Filter := 'meschave=' + vlRegistro;
          registro.Filtered := True;
          registro.Open;
          registro.Edit;
        end
        else
        begin

          registro.Close;
          registro.Filter := 'meschave=' + consulta.FieldByName('meschave').AsString;
          registro.Filtered := True;
          registro.Open;
          registro.Edit;
        end;
      end;

      registroetdcodigo.AsInteger := etdetdcodigo.AsInteger;
      registromesemissao.AsString := Copy(vlndhEmi, 9, 2) + '/' + Copy(vlndhEmi, 6, 2) + '/' + Copy(vlndhEmi, 1, 4);
      registromesregistro.AsString := registromesemissao.AsString;
      /// <remarks> 16.24.64.1 Modificação para salvar a nota importada como Movimento em Andamento </remarks>
      registrotdfcodigo.AsString := tdfMovimentoEmAndamento;
      registrosdecodigo.AsString := sdeDocRegular;
      registromesserie.AsString := vlnserie;
      registromesnumero.AsString := vlnnNF;
      consulta.Close;
      consulta.SQL.Text := 'select toecodigo from toe where lower(toeidentificacao)=' + QuotedStr(vlnnatOp);
      consulta.Open;

      registrotoecodigo.AsString := consulta.fields[0].AsString;
      registrotfpcodigo.AsString := vlntpNF;
      if vlwvNF = '' then
        vlwvNF := '0';
      registromesvalor.AsString := buscatroca(vlwvNF, '.', ',');
      if vlwvDesc = '' then
        vlwvDesc := '0';
      registromesdesconto.AsString := buscatroca(vlwvDesc, '.', ',');

      registromestotal.AsString := buscatroca(vlwvNF, '.', ',');
      registrorefcodigo.AsInteger := 9;
      registromesfrete.AsString := buscatroca(vlweFrete, '.', ',');
      registromesseguro.AsString := buscatroca(vlwvSeg, '.', ',');
      registromesoutras.AsString := buscatroca(vlwvOutro, '.', ',');
      registromesbicm.AsString := buscatroca(vlwvBC, '.', ',');
      registromesicm.AsString := buscatroca(vlwvICMS, '.', ',');
      registromesbicms.AsString := buscatroca(vlwvBCST, '.', ',');
      registromesicms.AsString := buscatroca(vlwvST, '.', ',');
      registromesipi.AsString := buscatroca(vlwvIPI, '.', ',');
      registromespis.AsString := buscatroca(vlwvPIS, '.', ',');
      registromescofins.AsString := buscatroca(vlwvCOFINS, '.', ',');
      registromespiss.asFloat := 0;
      registromescofinss.asFloat := 0;
      registrotrfcodigo.AsInteger := 1;
      registrotemcodigo.AsInteger := 3;
      registromesreclassicacao.AsInteger := 0;
      registromesoutroscustos.asFloat := 0;

      registroflacodigo.AsInteger := 1;
      registroclbcodigo.AsInteger := 1;
      registrotrmcodigo.AsInteger := 1;

      registro.Post;
      vlRegistro := registromeschave.AsString;

      registro.Close;
      registro.Filter := 'meschave=' + vlRegistro;
      registro.Filtered := True;
      registro.Open;

      if vlNFErefer <> '' then
      begin

        dfr.Close;
        dfr.ParamByName('meschave').AsString := vlRegistro;
        dfr.Open;

        if dfr.IsEmpty then
          dfr.Append
        else
          dfr.Edit;

        dfretdcodigo.AsInteger := registroetdcodigo.AsInteger;
        dfrtdfcodigo.AsString := '55';
        dfrdfrchavenfe.AsString := vlNFErefer;
        dfrdfrserie.AsString := vlnserie;
        dfrdfrnumero.AsString := registromesnumero.AsString;
        dfrdfremissao.AsString := registromesemissao.AsString;
        dfredritem.AsInteger := 1;
        dfrmeschave.AsInteger := registromeschave.AsInteger;

        dfr.Post;
      end;

      if vlNumeroNFErefer <> nil then
      begin
        dfr.Close;
        dfr.ParamByName('meschave').AsString := vlRegistro;
        dfr.Open;

        for vlQtDocRef := 0 to vlNumeroNFErefer.Count - 1 do
        begin

          if dfr.Locate('dfrnumero', vlNumeroNFErefer[vlQtDocRef], []) = False then
            dfr.Append
          else
            dfr.Edit;

          dfrmeschave.AsString := vlRegistro;
          dfretdcodigo.AsInteger := registroetdcodigo.AsInteger;
          dfrtdfcodigo.AsString := '01';
          dfrdfrchavenfe.AsString := vlNFErefer;
          dfrdfrserie.AsString := vlSerieNFErefer[vlQtDocRef];
          dfrdfrnumero.AsString := vlNumeroNFErefer[vlQtDocRef];
          dfrdfremissao.AsString := registromesemissao.AsString;
          dfredritem.AsInteger := 1;
          // dfrmeschave.AsInteger := registromeschave.AsInteger;

          dfr.Post;

        end;

      end;

      i := i + 1;
      vlLinha := texto.Lines[i];

    end;

    if (Copy(vlLinha, 1, 2) = 'A|') then
    begin
      // A|versao|Id|pk_nItem|
      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnversao := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnId := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      i := i + 1;
      vlLinha := texto.Lines[i];

      // B|51|00002393|Doacao / Brinde|0|55|55|2393|2016-11-03T17:13:36-02:00|2016-11-03T17:13:36-02:00|1|1|5107925|1|1|7|1|1|1|1|0|3.10.31|||
      // B|cUF|cNF|natOp|indPag|mod|serie|nNF|dhEmi|dhSaiEnt|tpNF|idDest|cMunFG|tpImp|tpEmis|cDV|tp Amb|finNFe|indFinal|indPres|procEmi|verProc|dhCont|xJust|

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlncUF := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlncNF := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnnatOp := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnindPag := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnmod := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnserie := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnnNF := '1000' + trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlndhEmi := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlndhSaiEnt := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlntpNF := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnidDest := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlncMunFG := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlntpImp := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlntpEmis := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlncDV := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlntpAmb := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnfinNFe := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnindFinal := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnindPres := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnprocEmi := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      lvnverProc := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlndhCont := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlnxJust := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      consulta.Close;
      consulta.SQL.Text := 'select meschave from mes where sdecodigo<>' + QuotedStr('02') + ' and messerie=' + QuotedStr(vlnserie) + ' and mesnumero=' + vlnnNF;
      consulta.Open;
      if not consulta.eof then
      begin

        Showmessage('Esta nota já foi importada!' + #13 + #13 + 'Registro: ' + consulta.FieldByName('meschave').AsString);
        exit;
      end;

      consulta.Close;
      consulta.SQL.Text := 'SELECT meschave FROM mes,toe where  mesnumero=' + QuotedStr(IntToStr(StrToInt(vlnnNF)));
      consulta.Open;

      if consulta.IsEmpty then
      begin
        registro.Close;
        registro.Open;
        registro.Append;
      end
      else
      begin
        registro.Close;
        registro.Filter := 'meschave=' + consulta.FieldByName('meschave').AsString;
        registro.Filtered := True;
        registro.Open;
        registro.Edit;
      end;

      registroetdcodigo.AsInteger := vetdetdcodigo;
      registromesemissao.AsString := Copy(vlndhEmi, 9, 2) + '/' + Copy(vlndhEmi, 6, 2) + '/' + Copy(vlndhEmi, 1, 4);
      registromesregistro.AsString := registromesemissao.AsString;
      registrotdfcodigo.AsString := vlnmod;
      registrosdecodigo.AsString := '00';
      registromesserie.AsString := vlnserie;
      registromesnumero.AsString := vlnnNF;
      consulta.Close;
      consulta.SQL.Text := 'select toecodigo from toe where lower(toeidentificacao)=' + QuotedStr(vlnnatOp);
      consulta.Open;

      registrotoecodigo.AsString := consulta.fields[0].AsString;
      registrotfpcodigo.AsString := vlntpNF;

      if vlwvNF = '' then
        vlwvNF := '0';

      registromesvalor.AsString := vlwvNF;
      if vlwvDesc = '' then
        vlwvDesc := '0';

      registromesdesconto.AsString := vlwvDesc;
      registromestotal.AsString := vlwvNF;
      registromesvalor.AsString := vlwvNF;
      registromesdesconto.AsString := vlwvDesc;
      registromestotal.AsString := vlwvNF;
      if vlwvNF = '' then
        vlwvNF := '0';

      registromesvalor.AsString := '0';
      registromesdesconto.AsString := '0';
      registromestotal.AsString := '0';
      registrorefcodigo.AsInteger := 9;
      if vlweFrete = '' then
        vlweFrete := '0';
      registromesfrete.AsString := vlweFrete;
      if vlwvSeg = '' then
        vlwvSeg := '0';

      registromesseguro.AsString := vlwvSeg;
      if vlwvOutro = '' then
        vlwvOutro := '0';
      registromesoutras.AsString := vlwvOutro;
      if vlwvBC = '' then
        vlwvBC := '0';

      registromesbicm.AsString := vlwvBC;
      if vlwvICMS = '' then
        vlwvICMS := '0';
      registromesicm.AsString := vlwvICMS;
      if vlwvBCST = '' then
        vlwvBCST := '0';

      registromesbicms.AsString := vlwvBCST;
      if vlwvST = '' then
        vlwvST := '0';

      registromesicms.AsString := vlwvST;
      if vlwvIPI = '' then
        vlwvIPI := '0';

      registromesipi.AsString := vlwvIPI;
      if vlwvPIS = '' then
        vlwvPIS := '0';

      registromespis.AsString := vlwvPIS;
      if vlwvCOFINS = '' then
        vlwvCOFINS := '0';

      registromescofins.AsString := vlwvCOFINS;
      registromesfrete.AsString := vlweFrete;
      registromesseguro.AsString := vlwvSeg;
      registromesoutras.AsString := vlwvOutro;
      registromesbicm.AsString := vlwvBC;
      registromesicm.AsString := vlwvICMS;
      registromesbicms.AsString := vlwvBCST;
      registromesicms.AsString := vlwvST;
      registromesipi.AsString := vlwvIPI;
      registromespis.AsString := vlwvPIS;
      registromescofins.AsString := vlwvCOFINS;
      registromesfrete.AsString := '0';
      registromesseguro.AsString := '0';
      registromesoutras.AsString := '0';
      registromesbicm.AsString := '0';
      registromesicm.AsString := '0';
      registromesbicms.AsString := '0';
      registromesicms.AsString := '0';
      registromesipi.AsString := '0';
      registromespis.AsString := '0';
      registromescofins.AsString := '0';

      registromespiss.asFloat := 0;
      registromescofinss.asFloat := 0;
      registrotrfcodigo.AsInteger := 1;
      registrotemcodigo.AsInteger := 3;
      registromesreclassicacao.AsInteger := 0;
      registromesoutroscustos.asFloat := 0;

      registroflacodigo.AsInteger := 1;
      registroclbcodigo.AsInteger := 1;
      registrotrmcodigo.AsInteger := 1;

      registro.Post;
      vlRegistro := registromeschave.AsString;

      registro.Close;
      registro.Filter := 'meschave=' + vlRegistro;
      registro.Filtered := True;
      registro.Open;

    end;

    if vetdetdcodigo <> 0 then
    begin
      importaetd(vetdetdcodigo, vetdetdidentificacao, vetdetdapelido, vetdtpecodigo, vetdetddatacad, vetdetddataalt, vetdetddoc1, vetdetdobs, vetdetdsuframa,
        vetdtcbcodigo);

      importaedr(vetdetdcodigo, vedrtedcodigo, vedredrrua, vedredrnumero, vedredrcxpostal, vedredrcomple, vedredrbairro, vedrcddcodigo, vedrufscodigo,
        vedredrobs, vedredrinscest, vedredrcep, vedredrinscmun, vedredritem);

      importaetf(vetdetdcodigo, vetfetfcontato, vetfetfdepartamento, vetfttfcodigo, vetfetftelefone);

      importaete(vetdetdcodigo, veteetecontato, veteetedepartamento, veteeteemail, veteeteenvianfe);

      vetdetdcodigo := 0;
    end;
    if POS('Z|', vlLinha) > 0 then
    begin
      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlObs := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      vlLinha := trim(Copy(vlLinha, POS('|', vlLinha) + 1, 2000));
      vlObs := trim(Copy(vlLinha, 1, POS('|', vlLinha) - 1));

      if vlObs <> '' then
      begin
        tof.Close;
        tof.Open;

        if not tof.Locate('tofidentificacao', vlObs, [locaseinsensitive]) then
        begin
          tof.Append;
          toftofidentificacao.AsString := uppercase(vlObs);
          tof.Post;
        end;

        tom.Close;
        tom.Open;

        tom.Append;
        tomtofcodigo.AsInteger := toftofcodigo.AsInteger;
        tommeschave.AsInteger := registromeschave.AsInteger;
        tom.Post;
      end;
      RenameFile(edArquivo.Text, ChangeFileExt(edArquivo.Text, '.ok'));
      break
    end;

  end;

end;

end.
