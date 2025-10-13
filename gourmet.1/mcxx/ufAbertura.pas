unit ufAbertura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, ufuncoes, uni,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, System.Actions, Vcl.ActnList, MemDS,
  DBAccess, uPegaBase, Vcl.ImgList, PngImageList, System.ImageList;

type
  TfAbertura = class(Tfrmbase)
    Dcco: tunidatasource;
    cco: tuniquery;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
    ccoctaidentificacao: TStringField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccotoccodigo: TIntegerField;
    ccocedcodigo: TIntegerField;
    ccoclbcodigo: TIntegerField;
    ccotficodigo: TIntegerField;
    ccomoecodigo: TIntegerField;
    ccocconumero: TStringField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccochaveorig: TIntegerField;
    ccoccochavedest: TIntegerField;
    ccoccoconciliado: TIntegerField;
    ccoccoextenso: TStringField;
    ccoetdcodigo: TIntegerField;
    ccoccodatamov: TDateField;
    ccoccodataregistro: TDateField;
    ccoccohoraregistro: TTimeField;
    ccoccofavorecido: TStringField;
    che: tuniquery;
    chechechave: TIntegerField;
    checcochave: TIntegerField;
    cta: tuniquery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    Dcta: tunidatasource;
    Label1: TLabel;
    ccochave: TDBEdit;
    Label5: TLabel;
    ccohistorico: TDBMemo;
    ccovalor: TDBEdit;
    Label7: TLabel;
    registroccochave: TIntegerField;
    registroctacodigo: TIntegerField;
    registroccoemissao: TDateField;
    registroccovencimento: TDateField;
    registrotoccodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotficodigo: TIntegerField;
    registromoecodigo: TIntegerField;
    registrocconumero: TStringField;
    registroccohistorico: TStringField;
    registroccovalor: TFloatField;
    registroccochaveorig: TIntegerField;
    registroccochavedest: TIntegerField;
    registroccoconciliado: TIntegerField;
    registroccoextenso: TStringField;
    registroetdcodigo: TIntegerField;
    registroccodatamov: TDateField;
    registroccodataregistro: TDateField;
    registroccohoraregistro: TTimeField;
    registroccofavorecido: TStringField;
    cxx: tuniquery;
    clb: tuniquery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    Label10: TLabel;
    ctacodigo: TDBEdit;
    clt: tuniquery;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    cxxccxchave: TIntegerField;
    cxxclbcodigo: TIntegerField;
    cxxclbidentificacao: TStringField;
    cxxctacodigo: TIntegerField;
    cxxctaidentificacao: TStringField;
    cxxcxxturno: TIntegerField;
    cxxcxxdataber: TDateField;
    cxxcxxhoraaber: TTimeField;
    cxxcxxsaldoaber: TFloatField;
    cxxcxxdatafecha: TDateField;
    cxxcxxhorafecha: TTimeField;
    cxxcxxsaldofecha: TFloatField;
    cxxcxxsangrias: TFloatField;
    cxxcxxsuprimentos: TFloatField;
    Label2: TLabel;
    clbcodigo: TDBEdit;
    DataSource1: tunidatasource;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure ccovalorEnter(Sender: TObject);
  private
    function finaliza(vchave: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

  Tregistralote = Function(AOwner: TComponent; conexao: tuniconnection; vchave: string; vtrmcodigo: string; principal: string; multa: string; juros: string;
    desconto: string; Acesso: TAcesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: Double = 0;
    vPodeCartoes: Boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True): string;

var
  fAbertura: TfAbertura;

  // Início ID do Módulo fracxx
const
  vPlIdMd = '02.02.87.001-01';

  // Fim ID do Módulo fracxx

implementation

{$R *.dfm}

function formuAbertura(AOwner: TComponent; conexao: tuniconnection; Acesso: TAcesso; vtipolista: Integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  vch: string;
begin
  try
    fAbertura := TfAbertura.Create(AOwner);
    fAbertura.cxx.Connection := conexao;
    fAbertura.cxx.Close;
    fAbertura.cxx.Params[0].AsInteger := Acesso.Usuario;
    fAbertura.cxx.Params[1].AsString := vfiltro;
    fAbertura.cxx.Open;

    fAbertura.Acesso := Acesso;
    fAbertura.vchave := '1';
    fAbertura.zcone := conexao;
    fAbertura.ShowModal;
    Result := vch;
  finally
    FreeAndNil(fAbertura);
  end;
end;

exports formuAbertura;

procedure TfAbertura.bconfirmaClick(Sender: TObject);
var
  vccoctadestino: Integer;
  vccochaveatu: Integer;
  vExtctacodigo: Integer;
  vExtccoemissao: TDate;
  vExtccovencimento: TDate;
  vExttoccodigo: Integer;
  vExtcedcodigo: Integer;
  vExtclbcodigo: Integer;
  vExttficodigo: Integer;
  vExtmoecodigo: Integer;
  vExtcconumero: String;
  vExtccohistorico: String;
  vExtccovalor: Double;
  vExtccochaveorig: Integer;
  vExtccochavedest: Integer;
  vExtccoconciliado: String;
  vExtccoextenso: String;
  vExtetdcodigo: Integer;
  vExtccodatamov: TDate;
  vExtccodatavregistro: TDate;
  vExtccohoravregistro: TTime;
  vExtccofavorecido: String;
  vchave: string;
  vretorno: string;

  vtctorigem: Integer;
  vtctdestino: Integer;
  vltechave: Integer;

begin
  { inherited; }

  if registro.State <> dsedit then
    registro.Edit;

  registroetdcodigo.AsInteger := 0;
  registroccofavorecido.AsString := '<Diversos>';
  registrotoccodigo.AsInteger := tocTransferencia;
  registro.post;

  vccochaveatu := self.ccoccochave.AsInteger;

  // trata a inclusao incompleta de um registro do cco
  if self.psituacao.Caption = 'Incluindo' then
  begin
    if vretorno = '0000000000000000' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from cco where ccochave=' + vchave;
      consulta.ExecSQL;
    end;
  end;

  vccochaveatu := self.registroccochave.AsInteger;
  vExtctacodigo := registroctacodigo.AsInteger;
  vExtccoemissao := registroccoemissao.AsFloat;
  vExtccovencimento := registroccovencimento.AsFloat;
  vExttoccodigo := registrotoccodigo.AsInteger;
  vExtcedcodigo := registrocedcodigo.AsInteger;
  vExtclbcodigo := registroclbcodigo.AsInteger;
  vExttficodigo := registrotficodigo.AsInteger;
  vExtmoecodigo := registromoecodigo.AsInteger;
  vExtcconumero := registrocconumero.AsString;
  vExtccohistorico := registroccohistorico.AsString;
  vExtccovalor := registroccovalor.AsFloat;
  vExtccochaveorig := registroccochaveorig.AsInteger;
  vExtccochavedest := registroccochavedest.AsInteger;
  vExtccoconciliado := registroccoconciliado.AsString;
  vExtccoextenso := registroccoextenso.AsString;
  vExtetdcodigo := registroetdcodigo.AsInteger;
  vExtccodatamov := registroccodatamov.AsFloat;
  vExtccodatavregistro := registroccodataregistro.AsFloat;
  vExtccohoravregistro := registroccohoraregistro.AsFloat;
  vExtccofavorecido := registroccofavorecido.AsString;

  // ccoctacodigo.AsInteger := vccoctadestino;
  ccoccoemissao.AsFloat := date;
  ccoccovencimento.AsFloat := vExtccovencimento;
  ccotoccodigo.AsInteger := tocTransferencia;
  if vExtcedcodigo = 1 then
    ccocedcodigo.AsInteger := 0
  else
    ccocedcodigo.AsInteger := 1;

  ccoclbcodigo.AsInteger := vExtclbcodigo;
  ccotficodigo.AsInteger := vExttficodigo;
  ccomoecodigo.AsInteger := vExtmoecodigo;
  ccocconumero.AsString := vExtcconumero;
  consulta.Close;
  consulta.SQL.Text := 'select ctaidentificacao from cta where ctacodigo=' + self.registroctacodigo.AsString;
  consulta.Open;

  ccoccohistorico.AsString := 'De: ' + consulta.Fields[0].AsString;
  consulta.Close;

  ccoccovalor.AsFloat := vExtccovalor;
  ccoccochaveorig.AsInteger := vccochaveatu;
  ccoccochavedest.AsInteger := vExtccochavedest;
  ccoccoconciliado.AsString := vExtccoconciliado;
  ccoccoextenso.AsString := vExtccoextenso;
  ccoetdcodigo.AsInteger := vExtetdcodigo;
  ccoccodatamov.AsFloat := vExtccodatamov;
  ccoccodataregistro.AsFloat := date;
  ccoccohoraregistro.AsFloat := time;
  ccoccofavorecido.AsString := vExtccofavorecido;
  cco.post;

  consulta.Close;
  consulta.SQL.Text := 'update cco set ccochavedest=' + registroccochave.AsString + ',toccodigo=' + inttostr(tocTransferencia) + ' where ccochave=' +
    inttostr(vccochaveatu);
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'select ltechave from clt where ccochave=' + inttostr(vccochaveatu);
  consulta.Open;

  vltechave := consulta.Fields[0].AsInteger;

  self.clt.Close;
  self.clt.Params[0].AsInteger := ccoccochave.AsInteger;
  self.clt.Params[1].AsInteger := vltechave;
  self.clt.Open;

  if clt.IsEmpty then
    clt.append
  else
    clt.Edit;

  self.cltccochave.AsInteger := ccoccochave.AsInteger;
  self.cltltechave.AsInteger := vltechave;
  clt.post;

  Close;

end;

procedure TfAbertura.ccovalorEnter(Sender: TObject);
var
  vccoctadestino: Integer;
  vccochaveatu: Integer;
  vtctorigem: Integer;
  vtctdestino: Integer;
  vretorno: string;

begin
  inherited;

  self.registroccohistorico.AsString := 'Abertura de Caixa';

  registroetdcodigo.AsInteger := 0;
  registroccofavorecido.AsString := '<Diversos>';
  registrotoccodigo.AsInteger := tocTransferencia;
  registroccovalor.AsString := '0';
  registro.post;

  // identificar os tipos de contas de origem e destino
  consulta.Close;
  consulta.SQL.Text := 'select tctcodigo from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;
  vtctorigem := consulta.Fields[0].AsInteger;

  consulta.Close;
  consulta.SQL.Text := 'select tctcodigo from cta where ctacodigo=' + self.ctactacodigo.AsString;
  consulta.Open;
  vtctdestino := consulta.Fields[0].AsInteger;
  //

  consulta.Close;

  if ((vtctorigem = tctContaBancaria) and (vtctdestino = tctContaBancaria)) or ((vtctorigem = tctContaBancaria) and (vtctdestino = tctContaCaixa)) or
    ((vtctorigem = tctContaCaixa) and (vtctdestino = tctContaBancaria)) then
  begin

    vchave := self.registroccochave.AsString;
    vretorno := finaliza(vchave);

  end
  else
  begin
    vchave := self.registroccochave.AsString;
    vretorno := finaliza(vchave);
  end;

  registro.Edit;
  self.ccovalor.Field.AsString := vretorno;

  Perform(WM_NEXTDLGCTL, 0, 0);

end;

function TfAbertura.finaliza(vchave: string): string;
var
  registra: Tregistralote;
  vMulta: String;
  vpri: string;
  vjur: string;
  vdes: string;
  vtrmcodigo: string;
begin

  vtrmcodigo := '1';
  pack := LoadPackage('modulos\mlte.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('registralote'));
      if Assigned(registra) then
      begin
        vpri := buscatroca(self.registroccovalor.AsString, ',', '.');
        vdes := '0';
        vjur := '0';
        vMulta := '0';
        Result := registra(Application, zcone, vchave, vtrmcodigo, vpri, vMulta, vjur, vdes, Acesso, inttostr(tfdContaCorrente), False);

      end;
    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure TfAbertura.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  if not fAbertura.cxx.IsEmpty then
  begin
    exit;
  end
  else
  begin
    fAbertura.cxx.append;
    fAbertura.cxxclbcodigo.AsInteger := Acesso.Usuario;
    fAbertura.cxxctacodigo.AsString := self.vchave;
    fAbertura.cxxcxxturno.AsString := '1';
    fAbertura.cxxcxxdataber.AsFloat := date;
    fAbertura.cxxcxxhoraaber.AsFloat := time;
    fAbertura.cxxcxxsaldoaber.AsString := '0';
    fAbertura.cxxcxxsangrias.AsString := '0';
    fAbertura.cxxcxxsuprimentos.AsString := '0';
    fAbertura.cxx.post;
  end;

  inherited;

end;

procedure TfAbertura.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroccoemissao.AsFloat := date;
  registroccovencimento.AsFloat := date;
  registrotoccodigo.AsInteger := 1;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registrotficodigo.AsInteger := 9;
  registromoecodigo.AsInteger := 1;
  registroccoconciliado.AsString := '1';
  consulta.Close;
  consulta.SQL.Text := 'select ctadtmovi from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;
  registroccodatamov.AsFloat := consulta.Fields[0].AsFloat;
  consulta.Close;
  registroccodataregistro.AsFloat := date;
  registroccohoraregistro.AsFloat := time;
  registroetdcodigo.AsInteger := 0;

  cco.Close;
  cco.Params[0].AsString := self.vchave;
  cco.Open;

  if cco.IsEmpty then
    cco.append
  else
    cco.Edit;

  ccoccoemissao.AsFloat := date;
  ccoccovencimento.AsFloat := date;
  ccotoccodigo.AsInteger := 1;
  ccoclbcodigo.AsInteger := Acesso.Usuario;
  ccotficodigo.AsInteger := 9;
  ccomoecodigo.AsInteger := 1;
  ccoccoconciliado.AsString := '1';
  consulta.Close;
  consulta.SQL.Text := 'select ctadtmovi from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;
  ccoccodatamov.AsFloat := consulta.Fields[0].AsFloat;
  consulta.Close;
  ccoccodataregistro.AsFloat := date;
  ccoccohoraregistro.AsFloat := time;
  ccoetdcodigo.AsInteger := 0;

end;

end.
