unit ufprinciServRest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, ZSqlMonitor, Vcl.Grids,
  Vcl.DBGrids;

Function IniciaPorta(Porta: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function FechaPorta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function BematechTX(BufTrans: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ComandoTX(BufTrans: Ansistring; TamBufTrans: Integer): Integer;
  Stdcall; Far; External 'MP2032.DLL';
Function CaracterGrafico(BufTrans: Ansistring; TamBufTrans: Integer): Integer;
  Stdcall; Far; External 'MP2032.DLL';
Function DocumentInserted: Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';
Function AutenticaDoc(Texto: Ansistring; Tempo: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function Le_Status_Gaveta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraTamanhoExtrato(NumeroLinhas: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function HabilitaExtratoLongo(Flag: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function HabilitaEsperaImpressao(Flag: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function EsperaImpressao: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraModeloImpressora(ModeloImpressora: Integer): Integer; Stdcall;
  Far; External 'MP2032.DLL';
Function AcionaGuilhotina(Modo: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function FormataTX(BufTras: Ansistring; TpoLtra: Integer; Italic: Integer;
  Sublin: Integer; Expand: Integer; Enfat: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function HabilitaPresenterRetratil(IFlag: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ProgramaPresenterRetratil(ITempo: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function VerificaPapelPresenter: Integer; Stdcall; Far; External 'MP2032.DLL';

// Função para Configuração dos Códigos de Barras

Function ConfiguraCodigoBarras(Altura: Integer; Largura: Integer;
  PosicaoCaracteres: Integer; Fonte: Integer; Margem: Integer): Integer;
  Stdcall; Far; External 'MP2032.DLL';

// Funções para impressão dos códigos de barras

Function ImprimeCodigoBarrasUPCA(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasUPCE(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasEAN13(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasEAN8(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE39(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE93(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE128(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasITF(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODABAR(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasISBN(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasMSI(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasPLESSEY(Codigo: Ansistring): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros: Integer; Altura: Integer;
  Largura: Integer; Colunas: Integer; Codigo: Ansistring): Integer; Stdcall;
  Far; External 'MP2032.DLL';
Function ImprimeCodigoQRCODE(ErrorCorrectionLevel: Integer; ModuleSize: Integer;
  CodeType: Integer; QRCodeVersion: Integer; EncodingModes: Integer;
  CodeQr: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';

// Funções para impressão de BitMap

Function ImprimeBitmap(Name: Ansistring; Mode: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function ImprimeBmpEspecial(Name: Ansistring; XScale: Integer; YScale: Integer;
  Angle: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AjustaLarguraPapel(Width: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function SelectDithering(Mode: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function PrinterReset: Integer; Stdcall; Far; External 'MP2032.DLL';
Function LeituraStatusEstendido(A: Array Of Byte): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function IoControl(Flag: Integer; Mode: Boolean): Integer; Stdcall; Far;
  External 'MP2032.DLL';

type
  TfprinciServRest = class(TForm)
    plrodape: TPanel;
    plip: TPanel;
    plbanco: TPanel;
    erros: TMemo;
    zito: TZQuery;
    zitoitoitem: TIntegerField;
    zitoprocodigo: TIntegerField;
    zitopronome: TStringField;
    zitoitoquantidade: TFloatField;
    zitoitovalor: TFloatField;
    zitoitototal: TFloatField;
    zitoitodesconto: TFloatField;
    zitoitosaldo: TFloatField;
    zitoprosaldodisp: TFloatField;
    zitoitochave: TIntegerField;
    zitounicodigo: TIntegerField;
    zitoorcchave: TIntegerField;
    zitotdecodigo: TIntegerField;
    zitoproreferencia: TStringField;
    zitoitoproservico: TStringField;
    zitoitoinfadprod: TStringField;
    zitotpocodigo: TIntegerField;
    zitoitoprocomple: TStringField;
    zitoimmhorapedido: TTimeField;
    zitoimmhoraentrega: TTimeField;
    zitogrpidentificacao: TStringField;
    zitopronomereduzido: TStringField;
    zitostocodigo: TIntegerField;
    zitoimmchave: TIntegerField;
    consulta: TZQuery;
    orc: TZQuery;
    orcorcchave: TIntegerField;
    orcorcnome: TStringField;
    orcorcobs: TStringField;
    cfg: TZQuery;
    cfgcfgidentificacao: TStringField;
    relogio: TTimer;
    plrelogio: TPanel;
    inicializar: TTimer;
    conexao: TZConnection;
    zitounisimbolo: TBytesField;
    lito: TZQuery;
    Panel1: TPanel;
    Button1: TButton;
    bfechar: TButton;
    orctrmcodigo: TIntegerField;
    orcclbcodigo: TIntegerField;
    qclb: TZQuery;
    orcclbidentificacao: TStringField;
    ioc: TZQuery;
    imm: TZQuery;
    ito: TZQuery;
    qpro: TZQuery;
    Query1: TZQuery;
    Query: TZQuery;
    unis: TZQuery;
    pro: TZQuery;
    clb: TZQuery;
    zorc: TZQuery;
    corc: TZQuery;
    corcorcchave: TIntegerField;
    corcorcnome: TStringField;
    corcorcobs: TStringField;
    corctrmcodigo: TIntegerField;
    corcclbcodigo: TIntegerField;
    corcclbidentificacao: TStringField;
    totais: TZQuery;
    cfgcfgnumepedido: TIntegerField;
    zitoimmnumepedido: TIntegerField;
    zitoclbidentificacao: TStringField;
    conexaoi: TZConnection;
    consultai: TZQuery;
    cfgi: TZQuery;
    cfgicfgidentificacao: TStringField;
    cfgicfgnumepedido: TIntegerField;
    zorci: TZQuery;
    procedure relogioTimer(Sender: TObject);
    procedure inicializarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure immAfterInsert(DataSet: TDataSet);
    procedure conexaoAfterConnect(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure corcCalcFields(DataSet: TDataSet);
  private
    procedure ImprimirCozinha(orcchave: string);
    function Imprime(Texto: TStringList; Porta: Ansistring): String;
    function Conectabanco: Boolean;
    procedure Recalculatotal(VOrcChave: string);
    function Conectabancoi: Boolean;
    { Private declarations }
  public
    { Public declarations }
    function Novoorcamento(vTrmCodigo, vIDMesa, vClbCodigo: string): string;
    function removeritem(vitochave: string): Boolean;
    function enviarparacozinha(VOrcChave: string): string;
    function CarregaUsuario(vsenha: string): string;
    function CarregaAtendimentos(VOrcChave: string; vTrmCodigo: string)
      : Boolean;
    function BuscaPro(vProCodigo: string): string;
    function BuscaqPro(vProCodigo: string): string;
    function BuscaAtendimentos(vTrmCodigo, vIDMesa, vClbCodigo: string): string;
    procedure EnviaPedido(vquantidade: double;
      vModo, vitochave, vUsrCodigo: string);
    function IncluirNovoItem(Produto: Integer; Quantidade: double;
      complemento, unidade: string; pun: Integer;
      VOrcChave, vUsrCodigo, vTrmCodigo, vIDMesa: string): string;

  end;

var
  fprinciServRest: TfprinciServRest;

implementation

{$R *.dfm}

uses uSM;

function TfprinciServRest.removeritem(vitochave: string): Boolean;
var
  retorno: Boolean;
begin
  retorno := true;
  if vitochave <> '' then
  begin
    try

      consulta.Close;
      consulta.sql.text := 'delete from imm where itochave=' + vitochave;
      consulta.execsql;

      consulta.Close;
      consulta.sql.text := 'delete from ioc where itochave=' + vitochave;
      consulta.execsql;

      consulta.Close;
      consulta.sql.text := 'delete from ito where itochave=' + vitochave;
      consulta.execsql;

      retorno := true;
    except
      retorno := false;
    end;

  end;
  result := retorno;

end;

function TfprinciServRest.enviarparacozinha(VOrcChave: string): string;
var
  retorno: string;
begin
  retorno := '';
  // self.conexaoi.Disconnect;
  if self.Conectabancoi then
  begin
    zorci.Close;
    zorci.sql.text := 'select orcchave,stocodigo from orc where orcchave=' +
      VOrcChave;
    zorci.Open;

    retorno := '';
    if zorci.fieldbyname('stocodigo').AsInteger <> 2 then
    begin
      zorci.Edit;
      zorci.fieldbyname('stocodigo').AsInteger := 2;
      zorci.Post;
    end;
    retorno := self.zorci.fieldbyname('orcchave').AsString;

    zorci.Close;

  end;
  result := retorno;

end;

procedure TfprinciServRest.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  erros.Lines.Add(datetimetostr(now) + ': Desconecout');
  application.ProcessMessages;

end;

function TfprinciServRest.CarregaUsuario(vsenha: string): string;
var
  nome: string;
begin

  clb.Close;
  clb.sql.text := 'select clbcodigo, clbidentificacao from clb where clbsenha='
    + chr(39) + vsenha + chr(39);
  clb.Open;
  if not clb.IsEmpty then
  begin
    nome := self.clb.fieldbyname('clbcodigo').AsString + '-' +
      self.clb.fieldbyname('clbidentificacao').AsString;
  end
  else
  begin
    nome := '';
  end;

  result := nome;

end;

function TfprinciServRest.CarregaAtendimentos(VOrcChave: string;
  vTrmCodigo: string): Boolean;
begin

  application.ProcessMessages;

  zorc.Close;
  zorc.sql.text :=
    'select orcchave, stocodigo,trmcodigo,tdecodigo,orcnome from orc where orcchave='
    + VOrcChave;
  zorc.Open;

  { if (zorc.fieldbyname('stocodigo').AsInteger = 1) and
    (self.zorc.fieldbyname('trmcodigo').AsString <> vTrmCodigo) then
    begin
    erros.Lines.Add(zorc.fieldbyname('stocodigo').Asstring+' '+self.zorc.FieldByName('orcnome').AsString+' '+vTrmCodigo);
    result := false;
    exit;
    end; }

  if { (zorc.fieldbyname('stocodigo').AsInteger <> 1) or }
    (zorc.fieldbyname('trmcodigo').AsString <> vTrmCodigo) then
  begin
    zorc.Edit;
    zorc.fieldbyname('stocodigo').AsInteger := 1;
    zorc.fieldbyname('trmcodigo').AsString := vTrmCodigo;
    zorc.fieldbyname('tdecodigo').AsInteger := 0;
    zorc.Post;
  end;
  result := true;

end;

function TfprinciServRest.BuscaPro(vProCodigo: string): string;
var
  vpronome: string;
begin

  pro.Close;
  pro.Connection := fprinciServRest.conexao;

  pro.sql.text := 'select procodigo, pronome from pro where procodigo=' +
    vProCodigo;
  pro.Open;
  vpronome := 'Não Localizado!';
  if not pro.IsEmpty then
  begin
    vpronome := pro.fieldbyname('pronome').AsString;
  end;
  result := vpronome;

end;

function TfprinciServRest.BuscaqPro(vProCodigo: string): string;
var
  retorno: string;
  tit1: string;
  tag1: string;

  tit2: string;
  tag2: string;

  tit3: string;
  tag3: string;

begin

  unis.Close;
  unis.Connection := fprinciServRest.conexao;

  unis.sql.text := 'SELECT   pun.puncodigo,   uni.unicodigo ' +
    ' FROM pro,     pun,     uni,     grp ' +
    ' WHERE pro.grpcodigo = grp.grpcodigo AND pro.procodigo = pun.procodigo AND pun.unicodigo = uni.unicodigo AND '
    + '((pun.tuncodigo = 1) OR (pun.tuncodigo = 9)) AND pro.procodigo = ' +
    vProCodigo;
  unis.Open;

  if unis.RecordCount > 1 then
  begin

    unis.First;
    while not unis.Eof do
    begin
      if unis.Fields[1].AsInteger = 3 then
        tit1 := 'Média';
      if unis.Fields[1].AsInteger = 4 then
        tit1 := 'Grande';
      if unis.Fields[1].AsInteger = 5 then
        tit1 := 'Gigante';
      if unis.Fields[1].AsInteger = 6 then
        tit1 := 'Com Agua';
      if unis.Fields[1].AsInteger = 7 then
        tit1 := 'Com Leite';
      tag1 := unis.Fields[0].AsString;
      unis.Next;

      if not unis.Eof then
      begin

        if unis.Fields[1].AsInteger = 3 then
          tit2 := 'Média';
        if unis.Fields[1].AsInteger = 4 then
          tit2 := 'Grande';
        if unis.Fields[1].AsInteger = 5 then
          tit2 := 'Gigante';
        if unis.Fields[1].AsInteger = 6 then
          tit2 := 'Com Agua';
        if unis.Fields[1].AsInteger = 7 then
          tit2 := 'Com Leite';
        tag2 := unis.Fields[0].AsString;
      end;

      unis.Next;
      if not unis.Eof then
      begin
        if unis.Fields[1].AsInteger = 3 then
          tit3 := 'Média';

        if unis.Fields[1].AsInteger = 4 then
          tit3 := 'Grande';

        if unis.Fields[1].AsInteger = 5 then
          tit3 := 'Gigante';

        if unis.Fields[1].AsInteger = 6 then
          tit3 := 'Com Agua';

        if unis.Fields[1].AsInteger = 7 then
          tit3 := 'Com Leite';

        tag3 := unis.Fields[0].AsString;
      end;
      break;
    end;

  end;

  retorno := tag1 + '-' + tit1 + '_' + tag2 + '-' + tit2 + '_' + tag3 + '-' +
    tit3 + '_';
  result := retorno;

end;

function TfprinciServRest.BuscaAtendimentos(vTrmCodigo: string; vIDMesa: string;
  vClbCodigo: string): string;
var
  VOrcChave: String;
begin

  Query.Close;
  Query.Connection := fprinciServRest.conexao;

  Query.sql.text :=
    'select orcchave from orc where orcdataencerr is null and orcnome=' +
    chr(39) + vIDMesa + chr(39);
  Query.Open;

  if Query.IsEmpty then
  begin
    VOrcChave := Novoorcamento(vTrmCodigo, vIDMesa, vClbCodigo);
  end
  else
    VOrcChave := Query.Fields[0].AsString;

  Query.Close;

  result := VOrcChave;

end;

Procedure TfprinciServRest.Recalculatotal(VOrcChave: string);

Begin

  if VOrcChave <> '' then
  begin
    try
      { Query.Close;
        Query.Connection := fprinciServRest.conexao;
        Query.sql.text := 'update ito, pro, pun set ';
        Query.sql.Add('itovalorav=IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav), ');
        Query.sql.Add('itototalav=IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav)*itoquantidade, ');
        Query.sql.Add
        ('itosaldoav=(IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav)*itoquantidade)-itodescontoav, ');
        Query.sql.Add('itovalorap=IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap), ');
        Query.sql.Add('itototalap=IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap)*itoquantidade, ');
        Query.sql.Add
        ('itosaldoap=(IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap)*itoquantidade)-itodescontoap ');
        Query.sql.Add
        ('where pro.procodigo=ito.procodigo and pun.procodigo=pro.procodigo and pun.unicodigo=ito.unicodigo and orcchave='
        + VOrcChave);
        Query.execsql; }

    except
      on E: Exception do
      begin
        fprinciServRest.erros.Lines.Add('454 ' + E.Message);
      end;
    end;

    try
      Query.Close;
      Query.Connection := fprinciServRest.conexao;

      Query.sql.text :=
        'SELECT SUM(itototalav), SUM(itodescontoav), SUM(itototalap), SUM(itodescontoap), SUM(itoquantidade) ';
      Query.sql.Add('FROM ito WHERE ito.stocodigo IN (1, 2) AND orcchave = ' +
        VOrcChave);
      Query.Open;
    except
      on E: Exception do
      begin
        fprinciServRest.erros.Lines.Add('468 ' + E.Message);
      end;
    end;

    try
      Query1.Close;
      Query1.Connection := fprinciServRest.conexao;

      Query1.sql.text :=
        'select orcchave, orcgeralav, orcdescontoav, orcgeralap,orcdescontoap, orctotalav, orctotalap from orc where orcchave='
        + VOrcChave;
      Query1.Open;
    except
      on E: Exception do
      begin
        fprinciServRest.erros.Lines.Add('482 ' + E.Message);
      end;
    end;

    try
      if not Query1.Active then
      begin
        try
          Query1.Close;
          Query1.Connection := fprinciServRest.conexao;

          Query1.sql.text :=
            'select orcchave, orcgeralav, orcdescontoav, orcgeralap,orcdescontoap, orctotalav, orctotalap from orc where orcchave='
            + VOrcChave;
          Query1.Open;
        except
          on E: Exception do
          begin
            fprinciServRest.erros.Lines.Add('499 ' + E.Message);
          end;
        end;

      end
      else
      begin
      end;

      if not Query1.IsEmpty then
      begin
        if (Query1.fieldbyname('orcgeralav').AsFloat <> Query.Fields[0].AsFloat)
          or (Query1.fieldbyname('orcdescontoav').AsFloat <> Query.Fields[1]
          .AsFloat) or (Query1.fieldbyname('orcgeralap').AsFloat <> Query.Fields
          [2].AsFloat) or (Query1.fieldbyname('orcdescontoap').AsFloat <>
          Query.Fields[3].AsFloat) then
        begin

          Query1.Edit;
          Query1.fieldbyname('orcgeralav').AsFloat := Query.Fields[0].AsFloat;
          Query1.fieldbyname('orcdescontoav').AsFloat :=
            Query.Fields[1].AsFloat;

          Query1.fieldbyname('orcgeralap').AsFloat := Query.Fields[2].AsFloat;
          Query1.fieldbyname('orcdescontoap').AsFloat :=
            Query.Fields[3].AsFloat;

          Query1.fieldbyname('orctotalav').AsFloat :=
            Query1.fieldbyname('orcgeralav').AsFloat -
            Query1.fieldbyname('orcdescontoav').AsFloat;
          Query1.fieldbyname('orctotalap').AsFloat :=
            Query1.fieldbyname('orcgeralap').AsFloat -
            Query1.fieldbyname('orcdescontoap').AsFloat;
          Query1.Post;
        end;
      end;

    except
      on E: Exception do
      begin
        fprinciServRest.erros.Lines.Add('524 ' + E.Message);
      end;
    end;
    Query1.Close;

  end;

End;

function TfprinciServRest.Novoorcamento(vTrmCodigo: string; vIDMesa: string;
  vClbCodigo: string): string;
Var

  VOrcChave: string;
Begin

  Query.Close;
  Query.Connection := fprinciServRest.conexao;
  Query.sql.text := 'select * from orc limit 1';
  Query.Open;

  Query.Append;
  Query.fieldbyname('stocodigo').AsInteger := 1;
  Query.fieldbyname('trmcodigo').AsString := vTrmCodigo;
  Query.fieldbyname('orcnome').AsString := vIDMesa;
  Query.fieldbyname('etdcodigo').AsInteger := 0;
  Query.fieldbyname('clbcodigo').AsString := vClbCodigo;
  Query.fieldbyname('fopcodigo').AsInteger := 1;
  Query.fieldbyname('tdecodigo').AsInteger := 0;
  Query.fieldbyname('moccodigo').AsInteger := 1;
  Query.fieldbyname('puocodigo').AsInteger := 1;
  Query.fieldbyname('orcdataabert').AsFloat := date;
  Query.fieldbyname('orchoraabert').AsFloat := Time;
  Query.fieldbyname('orcgeralav').AsFloat := 0;
  Query.fieldbyname('orcgeralap').AsFloat := 0;
  Query.fieldbyname('orcdescontoav').AsFloat := 0;
  Query.fieldbyname('orcdescontoap').AsFloat := 0;
  Query.fieldbyname('orctotalav').AsFloat := 0;
  Query.fieldbyname('orctotalap').AsFloat := 0;
  Query.fieldbyname('orcdestimpre').AsInteger := 1;
  Query.fieldbyname('edritem').AsInteger := 1;
  Query.fieldbyname('tfpcodigo').AsInteger := 0;
  Query.fieldbyname('orcpercdescav').AsFloat := 0;
  Query.fieldbyname('orcpercdescap').AsFloat := 0;
  Query.fieldbyname('trmcodigo').AsString := vTrmCodigo;

  Query.Post;

  VOrcChave := Query.fieldbyname('orcchave').AsString;

  result := VOrcChave;

End;

function TfprinciServRest.IncluirNovoItem(Produto: Integer; Quantidade: double;
  complemento: string; unidade: string; pun: Integer; VOrcChave: string;
  vUsrCodigo: string; vTrmCodigo: string; vIDMesa: string): string;
Var
  vProCodigo: Integer;
  VUniCodigo: Integer;
  vitochave: Integer;
  (* Variáveis para tratar novo item no orçamento *)
  VEstoqueDisponivel: Boolean;
  // Recebe retorno que identifica se produto tem saldo disponível
  vquantidade: double; // Recebe quantidade para ser lançada no novo item
  xquantidade: Integer; // Recebe quantidade para ser lançada no novo item

  VQuantidadeTotal: double;
  VTextoQuantidade: String;
  // Utilizada quando produto tem saldo positivo menor que um
  VPodeQuantidade: Boolean;
  // Utilizada quando produto tem saldo positivo menor que um
  VMensagem: String; // Utilizada quando produto tem saldo positivo menor que um

  vVariasUnidades: Boolean;
  vComplemento: Boolean;
  vSabores: Boolean;
  vVezes: Integer;
  vpun: Integer;

  retorno: string;

Begin

  erros.Lines.Add('Produto: ' + inttostr(Produto) + ' Quantidade: ' +
    floattostr(Quantidade) + ' complemento: ' + complemento + ' unidade: ' +
    unidade + ' pun: ' + inttostr(pun) + 'Orc: ' + VOrcChave + 'clb: ' +
    vUsrCodigo + 'Trm: ' + vTrmCodigo + ' Mesa: ' + vIDMesa);

  if self.Conectabanco then
  begin
    vVariasUnidades := false;
    vComplemento := false;
    vSabores := false;

    Try

      Try
        If (Produto <> 0) Then
        Begin

          qpro.Close;
          qpro.Connection := fprinciServRest.conexao;

          qpro.sql.text :=
            'SELECT   pun.puncodigo,   pro.procodigo,  pro.pronome,   uni.unisimbolo,  pun.punbarra, '
            + 'pun.punprecoav,   pun.punprecoap,   pro.prosaldodisp,   uni.unicodigo,   uni.uninome,   pun.punidentificacao,'
            + ' pro.tpocodigo,   pun.punmultiplicador,   pro.sipcodigo,  pro.propedecomple FROM pro,     pun,     uni,     grp '
            + ' WHERE pro.grpcodigo = grp.grpcodigo AND pro.procodigo = pun.procodigo AND pun.unicodigo = uni.unicodigo AND '
            + '((pun.tuncodigo = 1) OR (pun.tuncodigo = 9)) AND pro.procodigo = :procodigo ';
          qpro.Params[0].AsInteger := Produto;
          qpro.Open;

          if qpro.IsEmpty then
            exit;

          // Verifica se o item está inativo e avisa usuário.
          if qpro.fieldbyname('sipcodigo').AsInteger = 2 then
          begin
            retorno := 'Produto desativado não pode ser vendido.';
            exit;
          end;

          // Identifica se item tem mais de uma unidade de venda, vai pedir para selecionar no formulario de quantidade
          If (qpro.RecordCount > 1) Then
          begin
            vVariasUnidades := true;
            qpro.Locate('puncodigo', pun, []);

          end;

          vProCodigo := qpro.fieldbyname('procodigo').AsInteger;
          VUniCodigo := qpro.fieldbyname('unicodigo').AsInteger;

          Try
            if not ito.Active then
            begin
              If (VOrcChave = '0') or (VOrcChave = '') Then
              begin
                retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
              end
              else
              begin
                retorno := VOrcChave;
                consulta.Close;
                consulta.Connection := fprinciServRest.conexao;
                consulta.sql.text :=
                  'update orc set stocodigo=1 where  orcchave=' + retorno;
                consulta.execsql;
              end;

              ito.Connection := fprinciServRest.conexao;
              ito.sql.text := 'select * from ito where orcchave=' + retorno;
              ito.Open;
            end
            else
            begin
              If (VOrcChave = '0') or (VOrcChave = '') Then
              begin
                retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
              end
              else
              begin
                retorno := VOrcChave;
                consulta.Close;
                consulta.Connection := fprinciServRest.conexao;
                consulta.sql.text :=
                  'update orc set stocodigo=1 where  orcchave=' + retorno;
                consulta.execsql;
              end;

            end;

            erros.Lines.Add(' 790 orc: ' + retorno);

            ito.Append;
            ito.fieldbyname('orcchave').AsString := retorno;
            ito.fieldbyname('itoquantidade').AsFloat := Quantidade;

            vquantidade := ito.fieldbyname('itoquantidade').AsFloat;
            xquantidade := ito.fieldbyname('itoquantidade').AsInteger;

            vProCodigo := qpro.fieldbyname('procodigo').AsInteger;
            VUniCodigo := qpro.fieldbyname('unicodigo').AsInteger;

            // Soma quantidade total do item se tiver lançado no orçamento com outra unidade.

            // Verifica se produto tem saldo suficiente.
            VEstoqueDisponivel := true;

          except
            on E: Exception do
            begin
              fprinciServRest.erros.Lines.Add('695 ' + E.Message);
            end;
          end;

          if vquantidade > 0 then
          begin
            Case VEstoqueDisponivel of
              true:
                begin
                  try
                    // Caso produto tenha saldo disponível item é incluído no orçamento

                    If (VOrcChave = '0') or (VOrcChave = '') Then
                    begin
                      retorno := Novoorcamento(vTrmCodigo, vIDMesa, vUsrCodigo);
                    end
                    else
                    begin
                      retorno := VOrcChave;
                      consulta.Close;
                      consulta.Connection := fprinciServRest.conexao;
                      consulta.sql.text :=
                        'update orc set stocodigo=1 where  orcchave=' + retorno;
                      consulta.execsql;

                    end;

                    If (Not ito.Active) Then
                    Begin
                      ito.sql.text := 'select * from ito where orcchave='
                        + retorno;
                      ito.Open;
                    End;
                    // ito.fieldbyname('orcchave').AsString := retorno;
                    ito.fieldbyname('itodescontoav').AsFloat := 0;
                    ito.fieldbyname('itodescontoap').AsFloat := 0;
                    ito.fieldbyname('procodigo').AsInteger := vProCodigo;
                    ito.fieldbyname('stocodigo').AsInteger := 2;

                    ito.fieldbyname('itovalorav').AsFloat :=
                      qpro.fieldbyname('punprecoav').AsFloat;

                    ito.fieldbyname('itocontendo').AsFloat :=
                      qpro.fieldbyname('punmultiplicador').AsFloat;
                    ito.fieldbyname('puncodigo').AsInteger :=
                      qpro.fieldbyname('puncodigo').AsInteger;
                    ito.fieldbyname('unicodigo').AsInteger :=
                      qpro.fieldbyname('unicodigo').AsInteger;
                    ito.fieldbyname('itopercdescap').AsFloat := 0;
                    ito.fieldbyname('itopercdescav').AsFloat := 0;
                    ito.fieldbyname('tdecodigo').AsInteger := 0;

                    VUniCodigo := qpro.fieldbyname('unicodigo').AsInteger;

                    if (vquantidade < 1) or (vquantidade = 1) then
                      ito.fieldbyname('itoquantidade').AsFloat := vquantidade
                    else
                      ito.fieldbyname('itoquantidade').AsFloat := 1;

                    ito.fieldbyname('itototalav').AsFloat :=
                      ito.fieldbyname('itoquantidade').AsFloat *
                      ito.fieldbyname('itovalorav').AsFloat;

                    ito.fieldbyname('itosaldoav').AsFloat :=
                      ito.fieldbyname('itototalav').AsFloat;

                    ito.fieldbyname('itovalorap').AsFloat := 0;

                    ito.fieldbyname('itototalap').AsFloat :=
                      ito.fieldbyname('itoquantidade').AsFloat *
                      ito.fieldbyname('itovalorap').AsFloat;
                    ito.fieldbyname('itosaldoap').AsFloat :=
                      ito.fieldbyname('itototalap').AsFloat;
                    ito.fieldbyname('itoitem').AsInteger := ito.RecordCount + 1;
                    ito.fieldbyname('itoprocomple').AsString := complemento;
                    ito.Post;

                    vitochave := ito.fieldbyname('itochave').AsInteger;

                    if vquantidade > 1 then
                    begin

                      vitochave := ito.fieldbyname('itochave').AsInteger;
                      fprinciServRest.EnviaPedido
                        (ito.fieldbyname('itoquantidade').AsFloat, '1',
                        inttostr(vitochave), vUsrCodigo);

                      for vVezes := 1 to (xquantidade - 1) do
                      begin
                        ito.Append;

                        ito.fieldbyname('orcchave').AsString := VOrcChave;
                        erros.Lines.Add(' 904 orc: ' + VOrcChave);

                        ito.fieldbyname('itodescontoav').AsFloat := 0;
                        ito.fieldbyname('itodescontoap').AsFloat := 0;
                        ito.fieldbyname('procodigo').AsInteger := vProCodigo;
                        ito.fieldbyname('stocodigo').AsInteger := 2;

                        ito.fieldbyname('itovalorav').AsFloat :=
                          qpro.fieldbyname('punprecoav').AsFloat;

                        ito.fieldbyname('itocontendo').AsFloat :=
                          qpro.fieldbyname('punmultiplicador').AsFloat;
                        ito.fieldbyname('puncodigo').AsInteger :=
                          qpro.fieldbyname('puncodigo').AsInteger;
                        ito.fieldbyname('unicodigo').AsInteger :=
                          qpro.fieldbyname('unicodigo').AsInteger;
                        ito.fieldbyname('itopercdescap').AsFloat := 0;
                        ito.fieldbyname('itopercdescav').AsFloat := 0;
                        ito.fieldbyname('tdecodigo').AsInteger := 0;

                        VUniCodigo := qpro.fieldbyname('unicodigo').AsInteger;

                        ito.fieldbyname('itoquantidade').AsFloat := 1;

                        ito.fieldbyname('itototalav').AsFloat :=
                          ito.fieldbyname('itoquantidade').AsFloat *
                          ito.fieldbyname('itovalorav').AsFloat;

                        ito.fieldbyname('itosaldoav').AsFloat :=
                          ito.fieldbyname('itototalav').AsFloat;

                        ito.fieldbyname('itovalorap').AsFloat := 0;

                        ito.fieldbyname('itosaldoap').AsFloat :=
                          ito.fieldbyname('itototalap').AsFloat;
                        ito.fieldbyname('itoitem').AsInteger :=
                          ito.RecordCount + 1;
                        ito.fieldbyname('itoprocomple').AsString := complemento;
                        ito.Post;

                        vitochave := ito.fieldbyname('itochave').AsInteger;
                        fprinciServRest.EnviaPedido
                          (ito.fieldbyname('itoquantidade').AsFloat, '1',
                          inttostr(vitochave), vUsrCodigo);
                      end;

                    end
                    else
                    begin

                      vitochave := ito.fieldbyname('itochave').AsInteger;
                      fprinciServRest.EnviaPedido
                        (ito.fieldbyname('itoquantidade').AsFloat, '1',
                        inttostr(vitochave), vUsrCodigo);
                    end;

                    // Ito.Edit;

                    (* Identifica se tem SERVIÇO *)

                  except
                    on E: Exception do
                    begin

                      fprinciServRest.erros.Lines.Add
                        ('830 ' + 'Erro ao adicionar o produto: ' +
                        inttostr(vProCodigo) + #13 + E.Message);

                    end;
                  end;
                end;
              false:
                begin
                  ito.Cancel;
                end;

            End;
          end;

          try
            Recalculatotal(VOrcChave);
          except
            on E: Exception do
            begin
              fprinciServRest.erros.Lines.Add
                ('849 ' + 'Erro ao recalcular total do produto: ' +
                inttostr(vProCodigo) + #13 + E.Message);

            end;
          end;

        End;
      Except
        on E: Exception do
        begin
          fprinciServRest.erros.Lines.Add('859 ' + 'Erro ao incluir produto: ' +
            inttostr(vProCodigo) + #13 + E.Message);
        end;
      End;
    Finally
    End;

    result := retorno;

  end;
End;

procedure TfprinciServRest.EnviaPedido(vquantidade: double; vModo: string;
  vitochave: string; vUsrCodigo: string);
var
  vTciCodigo: string;
  vGrpCodigo: string;
  vProCodigo: string;
  vItoProComple: string;
begin

  if vModo = '1' then
  begin

    while true do
    begin

      try

        cfg.Close;
        cfg.Open;

        ioc.Close;
        ioc.Connection := fprinciServRest.conexao;
        ioc.sql.text :=
          'select clbcodigo,itochave, icopercentual from ioc where itochave=' +
          vitochave;
        ioc.Open;

        if not ioc.Locate('itochave', vitochave, []) then
        begin
          ioc.Append;
        end
        else
        begin
          if (ioc.fieldbyname('clbcodigo').AsString = '') or
            (ioc.fieldbyname('clbcodigo').AsString = '0') then
            ioc.Edit;
        end;
        if ioc.State <> dsbrowse then
        begin

          ioc.fieldbyname('clbcodigo').AsString := vUsrCodigo;
          ioc.fieldbyname('itochave').AsString := vitochave;
          ioc.fieldbyname('icopercentual').AsFloat := 100;
          ioc.Post;
          break;

        end;
      except
        on E: Exception do
        begin
          sleep(5000);
          self.Conectabanco;

          fprinciServRest.erros.Lines.Add('911 ' + 'Tabela ioc: ' + E.Message);
        end;
      end;

    end;
  end;

  consulta.Close;
  consulta.Connection := fprinciServRest.conexao;

  consulta.sql.text := 'select procodigo,itoprocomple from ito where itochave='
    + vitochave;
  consulta.Open;
  vProCodigo := consulta.Fields[0].AsString;
  vItoProComple := consulta.Fields[1].AsString;

  vGrpCodigo := '';
  consulta.Close;
  consulta.Connection := fprinciServRest.conexao;

  consulta.sql.text := 'select grpcodigo from pro where procodigo=' +
    vProCodigo;
  consulta.Open;
  vGrpCodigo := consulta.Fields[0].AsString;

  if vGrpCodigo <> '' then
  begin
    consulta.Close;
    consulta.Connection := fprinciServRest.conexao;

    consulta.sql.text := 'select tcicodigo from gri where grpcodigo=' +
      vGrpCodigo;
    consulta.Open;
    while true do
    begin
      if not consulta.IsEmpty then
      begin
        vTciCodigo := consulta.Fields[0].AsString;
        imm.Close;
        imm.Connection := fprinciServRest.conexao;

        imm.sql.text :=
          'SELECT   imm.immchave,   imm.itochave,   imm.tcicodigo,   imm.immobs, '
          + 'imm.immimpresso, imm.immentregue, imm.ccxchave, imm.immmodo, imm.immquantidade, imm.immhorapedido,'
          + 'imm.immhoraentrega,immnumepedido FROM imm limit 2';
        imm.Open;
        try
          imm.Append;
          imm.fieldbyname('itochave').AsString := vitochave;
          imm.fieldbyname('tcicodigo').AsString := vTciCodigo;
          imm.fieldbyname('immobs').AsString := vItoProComple;
          imm.fieldbyname('immimpresso').AsInteger := 0;
          imm.fieldbyname('immmodo').AsString := vModo;
          imm.fieldbyname('immentregue').AsInteger := 0;
          imm.fieldbyname('immquantidade').AsFloat := vquantidade;
          imm.fieldbyname('immhorapedido').AsFloat := Time;
          imm.fieldbyname('immnumepedido').AsInteger :=
            self.cfgcfgnumepedido.AsInteger;
          imm.fieldbyname('ccxchave').AsInteger := 0;
          imm.Post;
          break;
        except
          on E: Exception do
          begin
            sleep(1000);
            self.Conectabanco;

            fprinciServRest.erros.Lines.Add('964 ' + 'Tabela imm: ' +
              E.Message);
          end;
        end;
        imm.Close;
      end;
    end;
  end;

end;

Procedure TfprinciServRest.ImprimirCozinha(orcchave: string);
Var
  Texto: TStringList;
  Vprodu1: String;
  Vprodu2: String;
  Vprodu3: String;
  Vprodu4: String;
  Vprodu5: String;

  Vcomple1: String;
  Vcomple2: String;
  Vcomple3: String;

  vtciPorta: string;

  vgrpidenti: string;
  vfoi: string;
  vImpresso: string;
  vTitulo: string;
Begin

  conexaoi.Disconnect;

  if self.Conectabancoi then
  begin

    consultai.Close;
    consultai.sql.text := 'update cfgmsai set cfgnumepedido=cfgnumepedido+1';
    consultai.execsql;

    corc.Close;
    corc.Params[0].AsString := orcchave;
    corc.Open;

    cfgi.Close;
    cfgi.Open;

    zito.Close;
    zito.Params[0].AsString := orcchave;
    zito.Open;

    vgrpidenti := '';

    if zito.RecordCount > 0 then
    begin
      application.ProcessMessages;

      zito.First;
      While Not zito.Eof Do
      Begin

        if vgrpidenti <> zitogrpidentificacao.AsString then
        BEGIN

          Texto := TStringList.Create;

          if self.zitostocodigo.AsInteger = 88 then
          begin
            Texto.Add('* * C A N C E L A R * * *#21111');
            Texto.Add(' #10000');
          end;

          Texto.Add('' + trim(cfgicfgidentificacao.AsString) + '#20011');
          Texto.Add(' #10000');

          Texto.Add('[Trm: ' + formatfloat('00', self.corctrmcodigo.AsInteger) +
            ' - ' + self.corcorcnome.AsString + ' Ped.: ' + formatfloat('000',
            self.zitoimmnumepedido.AsInteger) + ']#10011');
          Texto.Add('[' + datetimetostr(now) + ' Op:' + format('%-7s',
            [copy(zitoclbidentificacao.AsString, 1, 7)]) + ']#10011');

          Texto.Add(
            '----------------------------------------------------------------#10000');
          Texto.Add(
            'Qtd    |           Descrição                                    #10000');
          Texto.Add(
            '----------------------------------------------------------------#10000');

          vgrpidenti := zitogrpidentificacao.AsString;

          Texto.Add(' #10000');
          Texto.Add('' + trim(vgrpidenti) + '#20011');
          Texto.Add(' #10000');

        END;

        Vprodu1 := '';
        Vprodu2 := '';

        Vprodu1 := copy(self.zitopronome.AsString, 1, 17);
        Vprodu2 := copy(self.zitopronome.AsString, 18, 17);
        Vprodu3 := copy(self.zitopronome.AsString, 35, 17);
        Vprodu4 := copy(self.zitopronome.AsString, 52, 17);
        Vprodu5 := copy(self.zitopronome.AsString, 69, 17);

        Vcomple1 := copy(self.zitoitoprocomple.AsString, 1, 25);
        Vcomple2 := copy(self.zitoitoprocomple.AsString, 26, 25);
        Vcomple3 := copy(self.zitoitoprocomple.AsString, 51, 25);

        if self.zitoimmhoraentrega.AsString = '' then
          vfoi := ''
        else
          vfoi := 'FOI';

        vTitulo := '';

        if zitounicodigo.AsInteger = 3 then
          vTitulo := 'MÉDIA';

        if zitounicodigo.AsInteger = 4 then
          vTitulo := 'GRANDE';

        if zitounicodigo.AsInteger = 5 then
          vTitulo := 'GIGANTE';

        if zitounicodigo.AsInteger = 6 then
          vTitulo := 'Com Agua';

        if zitounicodigo.AsInteger = 7 then
          vTitulo := 'Com Leite';

        if vTitulo <> '' then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [vTitulo])
            + '#20011');

        if self.zitoitoquantidade.AsFloat < 1 then
          Texto.Add(format('%2.1f', [self.zitoitoquantidade.AsFloat]) + ' ' +
            format('%-3s', [vfoi]) + ' ' + format('%-17s', [Vprodu1])
            + '#20011')
        else
          Texto.Add(format('%2.0f', [self.zitoitoquantidade.AsFloat]) + ' ' +
            format('%-3s', [vfoi]) + ' ' + format('%-17s', [Vprodu1]) +
            '#20011');

        If Vprodu2 <> '' Then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [Vprodu2])
            + '#20011');
        If Vprodu3 <> '' Then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [Vprodu3])
            + '#20011');

        If Vprodu4 <> '' Then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [Vprodu4])
            + '#20011');
        If Vprodu5 <> '' Then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [Vprodu5])
            + '#20011');

        If Vcomple1 <> '' Then
        begin
          Texto.Add(' #10000');

          Texto.Add(format('%-25s', [Vcomple1]) + '#10011');

          If Vcomple2 <> '' Then
            Texto.Add(format('%-25s', [Vcomple2]) + '#10011');

          If Vcomple3 <> '' Then
            Texto.Add(format('%-25s', [Vcomple3]) + '#10011');

        end;

        Texto.Add(
          '----------------------------------------------------------------#10000');

        zito.Next;

        IF (vgrpidenti <> zitogrpidentificacao.AsString) or (zito.Eof) THEN
        BEGIN

          // resumo
          Texto.Add(
            'QTD. TOTAL DE ITENS                                          ' +
            formatfloat('000', self.zito.RecordCount) + '#10000');
          Texto.Add(
            '----------------------------------------------------------------#10000');
          Texto.Add(' #10000');

          if self.corcorcobs.AsString <> '' then
          begin
            Texto.Add('O B E R V A Ç Ã O : #20011');
            Texto.Add(' #10000');
            Texto.Add(copy(self.corcorcobs.AsString, 1, 30) + '#20011');
            Texto.Add(copy(self.corcorcobs.AsString, 31, 30) + '#20011');
            Texto.Add(copy(self.corcorcobs.AsString, 91, 30) + '#20011');

          end;

          if pos('ENT', self.corcorcnome.AsString) > 0 then
          begin
            Texto.Add(' #10000');
            Texto.Add('Para: E N T R E G A#20011');
            Texto.Add(' #10000');

          end;

          if pos('VIA', self.corcorcnome.AsString) > 0 then
          begin
            Texto.Add(' #10000');
            Texto.Add('Para: V I A G E M#20011');
            Texto.Add(' #10000');

          end;

          consultai.Close;
          consultai.sql.text :=
            'SELECT distinct tci.tciporta FROM tci,grp,gri ';
          consultai.sql.Add
            ('WHERE grp.grpcodigo=gri.grpcodigo and gri.tcicodigo=tci.tcicodigo and grp.grpidentificacao= '
            + chr(39) + vgrpidenti + chr(39));
          consultai.Open;

          vtciPorta := consultai.Fields[0].AsString;

          consultai.Close;

          if vtciPorta <> '' then
          begin
            vImpresso := Imprime(Texto, vtciPorta);
            freeandnil(Texto);
          end;

          // vgrpidenti := zitogrpidentificacao.AsString;
        END;
      End;

      if vImpresso = '1' then
      begin
        lito.Close;
        lito.Params[0].AsString := orcchave;
        lito.Open;
        lito.First;
        While Not lito.Eof Do
        Begin
          consultai.Close;
          consultai.sql.text := 'update imm set immimpresso=1 where itochave=' +
            self.lito.fieldbyname('itochave').AsString;
          consultai.execsql;

          lito.Next;
        End;
      end;

    end;

  end;
End;

procedure TfprinciServRest.inicializarTimer(Sender: TObject);
begin
  inicializar.Enabled := false;
  relogio.Enabled := true;
end;

procedure TfprinciServRest.bfecharClick(Sender: TObject);
begin
  IF application.MessageBox
    (PChar('Fechar o servidor vai desconectar os TABLES de atendimento, deseja REALMENTE fechar o Servidor?!'),
    'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONWARNING) = IDNO then
  begin
    exit;
  end
  else
  begin
    application.Terminate;
  end;

end;

procedure TfprinciServRest.Button1Click(Sender: TObject);
begin
  self.WindowState := wsminimized;

end;

function TfprinciServRest.Conectabanco: Boolean;
Var
  Arquini: Tinifile;
  Vnomebanco: String;
  Vportabanco: String;
  Vservidor: String;
  vUsuario: String;
  vsenha: String;
Begin

  Arquini := Tinifile.Create('c:\mizio\gourmeterp.ini');
  With Arquini Do
  Begin
    Vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
    Vservidor := ReadString('posi', 'servidor', '127.0.0.1');
    vUsuario := ReadString('posi', 'usuario', 'root');
    vsenha := ReadString('posi', 'senha', 'xda973');
    Vportabanco := ReadString('posi', 'portabanco', '3306');
  End;
  Arquini.Destroy;

  if conexao.Connected = false then
  begin
    try
      conexao.Connected := false;
      conexao.Database := Vnomebanco;
      conexao.User := 'root';
      conexao.Protocol := 'mysql-5';
      conexao.LibraryLocation := 'c:\mizio\libmysql55.dll';
      conexao.Password := vsenha;
      conexao.Port := StrToInt(Vportabanco);
      conexao.Hostname := Vservidor;
      conexao.Connected := true;

    except
      while true do
      begin
        sleep(1000);
        erros.Lines.Add(datetimetostr(now) + ' - Conectando ao servidor.');
        application.ProcessMessages;

        conexao.Connected := false;
        conexao.Database := Vnomebanco;
        conexao.User := 'root';
        conexao.Protocol := 'mysql-5';
        conexao.LibraryLocation := 'c:\mizio\libmysql55.dll';
        conexao.Password := vsenha;
        conexao.Port := StrToInt(Vportabanco);
        conexao.Hostname := Vservidor;
        conexao.Connected := true;

        if conexao.Connected then
          break;

      end;
    end;

    fprinciServRest.plip.Caption := Vservidor;
    fprinciServRest.plbanco.Caption := Vnomebanco;

    result := conexao.Connected;

  end
  else
    result := conexao.Connected;
  result := true;

End;

function TfprinciServRest.Conectabancoi: Boolean;
Var
  Arquini: Tinifile;
  Vnomebanco: String;
  Vportabanco: String;
  Vservidor: String;
  vUsuario: String;
  vsenha: String;
Begin

  Arquini := Tinifile.Create('c:\mizio\gourmeterp.ini');
  With Arquini Do
  Begin
    Vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
    Vservidor := ReadString('posi', 'servidor', '127.0.0.1');
    vUsuario := ReadString('posi', 'usuario', 'root');
    vsenha := ReadString('posi', 'senha', 'xda973');
    Vportabanco := ReadString('posi', 'portabanco', '3306');
  End;
  Arquini.Destroy;

  if conexaoi.Connected = false then
  begin
    try

      conexaoi.Database := Vnomebanco;
      conexaoi.User := 'root';
      conexaoi.Protocol := 'mysql-5';
      conexaoi.LibraryLocation := 'c:\mizio\libmysql55.dll';
      conexaoi.Password := vsenha;
      conexaoi.Port := StrToInt(Vportabanco);
      conexaoi.Hostname := Vservidor;
      conexaoi.Connected := true;

    except
      while true do
      begin
        sleep(1000);
        erros.Lines.Add(datetimetostr(now) + ' - Conectando ao servidor.');
        application.ProcessMessages;

        conexaoi.Connected := false;
        conexaoi.Database := Vnomebanco;
        conexaoi.User := 'root';
        conexaoi.Protocol := 'mysql-5';
        conexaoi.LibraryLocation := 'c:\mizio\libmysql55.dll';
        conexaoi.Password := vsenha;
        conexaoi.Port := StrToInt(Vportabanco);
        conexaoi.Hostname := Vservidor;
        conexaoi.Connected := true;

        if conexaoi.Connected then
          break;

      end;
    end;

    fprinciServRest.plip.Caption := Vservidor;
    fprinciServRest.plbanco.Caption := Vnomebanco;

    result := conexaoi.Connected;

  end
  else
    result := conexaoi.Connected;

End;

procedure TfprinciServRest.conexaoAfterConnect(Sender: TObject);
begin
  erros.Lines.Add(datetimetostr(now) + ': Conectou Tablets');
  application.ProcessMessages;

end;

procedure TfprinciServRest.corcCalcFields(DataSet: TDataSet);
begin

  qclb.Close;
  qclb.sql.text := 'select clbidentificacao from clb where clbcodigo=' +
    self.corcclbcodigo.AsString;
  qclb.Open;

  if not qclb.IsEmpty then
  begin
    self.corcclbidentificacao.AsString := self.qclb.Fields[0].AsString;
  end;
  qclb.Close;

end;

procedure TfprinciServRest.relogioTimer(Sender: TObject);
var
  iorcchave: string;
begin
  relogio.Enabled := false;
  self.conexaoi.Disconnect;

  if self.Conectabancoi then
  begin
    try
      try

        plrelogio.Caption := timetostr(Time);
        while true do
        begin
          try
            orc.Close;
            orc.Open;

            while not orc.Eof do
            begin
              iorcchave := self.orcorcchave.AsString;
              ImprimirCozinha(iorcchave);
              orc.Next;
            end;

            if orc.Eof then
              break;

          except
          sleep(1000);
          end;
        end;
      finally
        relogio.Enabled := true;
      end;
    except
      sleep(2000);
      relogio.Enabled := true;
    end;

  end;
end;

procedure TfprinciServRest.FormShow(Sender: TObject);
begin
  if Conectabanco then
  begin
    inicializar.Enabled := true;

  end;
end;

procedure TfprinciServRest.immAfterInsert(DataSet: TDataSet);
begin

  consulta.Close;
  consulta.Connection := fprinciServRest.conexao;

  consulta.sql.text := 'select max(immchave)+1 as immchave from imm ';
  consulta.Open;

  imm.fieldbyname('immchave').AsInteger := self.consulta.Fields[0].AsInteger;

end;

Function TfprinciServRest.Imprime(Texto: TStringList;
  Porta: Ansistring): String;
Var
  Vch: String;
  i: Integer;
  S_linha: Ansistring;
  S_comando: String;
  S_texto: Ansistring;
  I_tipo_letra: Integer;
  I_italico: Integer;
  I_sublinhado: Integer;
  I_expandido: Integer;
  I_enfatizado: Integer;
  I_retorno: Integer;

  ErrorCorrectionLevel: Integer;
  ModuleSize: Integer;
  CodeType: Integer;
  QRCodeVersion: Integer;
  EncodingModes: Integer;
  CodeQr: String;
  IRetorno: Integer;
  sRetorno: String;

Begin
  Try

    sRetorno := '1';
    // COMANDO EXECUTADO INTERNAMENTE PELA DLL PARA
    // CONFIGURAÇÃO DO MODELO DA IMPRESSORA QUE SERÁ CONECTADA

    ConfiguraModeloImpressora(7); // MP 4200 TH

    // COMANDO DE ABERTURA DA PORTA DE COMUNICAÇÃO

    I_retorno := IniciaPorta(PAnsichar(Porta));

    If I_retorno <> 1 Then
    Begin
      while true do
      begin

        I_retorno := IniciaPorta(PAnsichar(Porta));

        If I_retorno = 1 Then
        Begin

          break;
        End
        else
        begin
          erros.Lines.Add('VERIFIQUE IMPRESSORA: ' + Porta);
          application.ProcessMessages;
          sleep(1000);
          sRetorno := '0';
          exit;
        end;
      end;
    End;

    If I_retorno = 1 Then
    Begin

      For i := 0 To Texto.Count - 1 Do
      Begin

        If pos('#', Texto[i]) > 0 Then // linha de texto
        Begin

          S_linha := copy(Texto[i], 1, pos('#', Texto[i]) - 1);
          S_texto := S_linha;
          S_comando := copy(Texto[i], pos('#', Texto[i]) + 1, 200);

          I_tipo_letra := StrToInt(copy(S_comando, 1, 1));
          // comprimido:=1;  normal:=2;  elite:=3;

          I_italico := StrToInt(copy(S_comando, 2, 1));
          // ligado:=1; desligado:=0;
          I_sublinhado := StrToInt(copy(S_comando, 3, 1));
          // ligado:=1; desligado:=0;
          I_expandido := StrToInt(copy(S_comando, 4, 1));
          // ligado:=1; desligado:=0;
          I_enfatizado := StrToInt(copy(S_comando, 5, 1));
          // ligado:=1; desligado:=0;

          I_retorno := FormataTX(PAnsichar(S_texto) + #13 + #10, I_tipo_letra,
            I_italico, I_sublinhado, I_expandido, I_enfatizado);

          If I_retorno <> 1 Then
          Begin
            while true do
            begin

              If I_retorno = 1 Then
              Begin
                erros.Lines.Add('Imprimindo ...');
                application.ProcessMessages;
                I_retorno := FormataTX(PAnsichar(S_texto) + #13 + #10,
                  I_tipo_letra, I_italico, I_sublinhado, I_expandido,
                  I_enfatizado);
                break;
              End
              else
              begin
                erros.Lines.Add('VERIFIQUE IMPRESSORA: ' + Porta);
                application.ProcessMessages;
                sleep(1000);

              end;
            end;
          End;

        End;

        If pos('&cHashQRCode', Texto[i]) > 0 Then // linha de texto
        Begin

          ErrorCorrectionLevel := 2;
          ModuleSize := 5;
          CodeType := 0;
          QRCodeVersion := 10;
          EncodingModes := 1;

          CodeQr := Texto[i];

          BematechTX(#27 + #97 + '1');

          I_retorno := ImprimeCodigoQRCODE(ErrorCorrectionLevel, ModuleSize,
            CodeType, QRCodeVersion, EncodingModes, CodeQr);

        End;

      End;
      if Porta = '192.168.5.202' then
        AcionaGuilhotina(0)
      else
        AcionaGuilhotina(1);

      sleep(200);

    End;
    // VALIDAÇÃO DE EXECUÇÃO DO COMANDO

    If I_retorno = 0 Then
      exit;

    // Result := Inttostr(Fnfce.I_retorno);
  Finally

    FechaPorta();
    // FreeAndNil(Fnfce);
    result := sRetorno;
  End;
End;

end.
