unit ufrcf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  uFuncoes, uPegabase;

type
  Tfrcf = class(Tfrmbase)
    Label1: TLabel;
    rcfchave: TDBEdit;
    Label2: TLabel;
    rcfdata: TDBEdit;
    Label5: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    rcfvalor: TDBEdit;
    Label4: TLabel;
    rcfhistorico: TDBMemo;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registrorcfchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    registrorcfvalor: TFloatField;
    registrorcfdata: TDateField;
    registrorcfhistorico: TStringField;
    registrotcrcodigo: TIntegerField;
    registrotsccodigo: TIntegerField;
    registrotnccodigo: TIntegerField;
    registrorcfhora: TTimeField;
    registroetdidentificacao: TStringField;
    mce: TUniQuery;
    mcercrchave: TIntegerField;
    mcetmccodigo: TIntegerField;
    mceclbcodigo: TIntegerField;
    mcemcemotivo: TStringField;
    mcemecregistro: TDateTimeField;
    mceltechave: TIntegerField;
    lte: TUniQuery;
    lteltechave: TIntegerField;
    ltetfdcodigo: TIntegerField;
    lteltedata: TDateField;
    ltelteprincipal: TFloatField;
    lteltemulta: TFloatField;
    lteltejuros: TFloatField;
    lteltedesconto: TFloatField;
    lteltetotal: TFloatField;
    ltelteextenso: TStringField;
    let: TUniQuery;
    letletchave: TIntegerField;
    letltechave: TIntegerField;
    letetdcodigo: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
  private
    function finaliza(vchave: string): string;
    function selecionaconta: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frcf: Tfrcf;
const
  vPlIdMd = '00.00.00.000-01';

implementation

{$R *.dfm}

procedure Tfrcf.bconfirmaClick(Sender: TObject);
begin
  inherited;

  (* Identifica se o salvamento do registro NÃO está correto e abandona a rotina. *)
  if not(ModalResult = mrOk) then
    Exit;

  lte.Open;
  lte.Append;
  ltetfdcodigo.AsInteger := tfdCredito;
  lteltedata.AsFloat := Date;
  ltelteprincipal.AsCurrency := self.registrorcfvalor.AsCurrency;
  lteltejuros.AsInteger := 0;
  lteltemulta.AsInteger := 0;
  lteltedesconto.AsInteger := 0;
  lteltetotal.AsCurrency := self.registrorcfvalor.AsCurrency;
  lte.Post;

  let.Open;
  let.Append;
  letltechave.AsInteger := lteltechave.AsInteger;
  letetdcodigo.AsInteger := registroetdcodigo.AsInteger;
  let.Post;

  mce.Close;
  mce.Params[0].AsString := self.rcfchave.Field.AsString;
  mce.Open;
  if mce.IsEmpty then
    mce.Append
  else
    mce.Edit;

  mcercrchave.AsString := self.rcfchave.Field.AsString;
  mcetmccodigo.AsInteger := 1; // inclusao
  mceclbcodigo.AsInteger := Acesso.Usuario;
  mcemcemotivo.AsString := self.rcfhistorico.Field.AsString;
  mceltechave.AsInteger := lteltechave.AsInteger;
  mcemecregistro.AsFloat := now;
  mce.Post;

  if finaliza(self.letltechave.AsString) = '' then
  begin

    consulta.Close;
    consulta.sql.Text := 'delete from rcr where rcrchave=' + self.registrorcfchave.AsString;
    consulta.ExecSQL;

  end;

end;


function Tfrcf.selecionaconta: string;
var
  ExecForm: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
begin

  pack := LoadPackage('modulos\mcta.bpl');
  if pack <> 0 then
    try
      @ExecForm := GetProcAddress(pack, PChar('formu'));

      if Assigned(ExecForm) then
      begin
        vlCargaFrame := CargaFrameFormu(Application, pack, ZCone, Acesso, '', '', modoPesquisa);
        Result := ExecForm(vlCargaFrame);
      end;

    finally
      // DoUnLoadPackage(pack);
    end;
end;

function Tfrcf.finaliza(vchave: string): string;
type
  TRegistraLote = function(AOwner: TComponent; conexao: tuniconnection; vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string;
    desconto: string; Acesso: TAcesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: double = 0;
    vPodeCartoes: Boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True): string;
var
  registra: TRegistraLote;
  vMulta: String;
  vpri: string;
  vjur: string;
  vdes: string;
  vTrmCodigo: string;
begin

  vTrmCodigo := '1';
  pack := LoadPackage('modulos\mlte.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('registralote'));
      if Assigned(registra) then
      begin
        vpri := buscatroca(self.registrorcfvalor.AsString, ',', '.');
        vdes := '0';
        vjur := '0';
        vMulta := '0';
        Result := registra(Application, ZCone, vchave, vTrmCodigo, vpri, vMulta, vjur, vdes, Acesso, inttostr(tfdCredito), False);

      end;
    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfrcf.FormShow(Sender: TObject);
begin
    IdModulo := vPlIdMd;
  inherited;


end;

procedure Tfrcf.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroetdcodigo.AsString := self.vChaveMestre;
  registrorcfdata.AsFloat := Date;
  registrorcfhora.AsFloat := time;

  registrocedcodigo.AsInteger := cedcredito; // credito
  registrotcrcodigo.AsInteger := tcrCreditoAvulso; // avulso, digitado manual
  registrotsccodigo.AsInteger := tscEmAberto; // em aberto
  registrotnccodigo.AsInteger := tncCredido; // creditos

end;

end.
