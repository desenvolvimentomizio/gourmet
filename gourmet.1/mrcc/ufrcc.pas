unit ufrcc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrcr, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls,
  System.SysUtils, uFuncoes, uPegaBase, System.ImageList;

type
  Tfrcc = class(Tfrcr)
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
    mceltechave: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
    function selecionaconta: string;
    function finaliza(vchave: string): string;
  public
    { Public declarations }

    vpCtaCodigo: string;
  end;

var
  frcc: Tfrcc;

  // Início ID do Módulo frarcc
const
  vPlIdMd = '02.02.87.003-02';

implementation

{$R *.dfm}

procedure Tfrcc.bconfirmaClick(Sender: TObject);
begin

  inherited;

  (* Identifica se o salvamento do registro NÃO está correto e abandona a rotina. *)
  if not(ModalResult = mrOk) then
    Exit;

  lte.Open;
  lte.Append;
  ltetfdcodigo.AsInteger := tfdCredito;
  lteltedata.AsFloat := Date;
  ltelteprincipal.AsCurrency := self.registrorcrvalor.AsCurrency;
  lteltejuros.AsInteger := 0;
  lteltemulta.AsInteger := 0;
  lteltedesconto.AsInteger := 0;
  lteltetotal.AsCurrency := self.registrorcrvalor.AsCurrency;
  lte.Post;

  let.Open;
  let.Append;
  letltechave.AsInteger := lteltechave.AsInteger;
  letetdcodigo.AsInteger := registroetdcodigo.AsInteger;
  let.Post;

  mce.Close;
  mce.Params[0].AsString := self.rcrchave.Field.AsString;
  mce.Open;
  if mce.IsEmpty then
    mce.Append
  else
    mce.Edit;

  mcercrchave.AsString := self.rcrchave.Field.AsString;
  mcetmccodigo.AsInteger := 1; // inclusao
  mceclbcodigo.AsInteger := Acesso.Usuario;
  mcemcemotivo.AsString := self.rcrhistorico.Field.AsString;
  mceltechave.AsInteger := lteltechave.AsInteger;
  mcemecregistro.AsFloat := now;
  mce.Post;

  if finaliza(self.letltechave.AsString) = '' then
  begin

    consulta.Close;
    consulta.sql.Text := 'delete from rcr where rcrchave=' + self.registrorcrchave.AsString;
    consulta.ExecSQL;

  end;

end;

procedure Tfrcc.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

function Tfrcc.selecionaconta: string;
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

function Tfrcc.finaliza(vchave: string): string;
type
  TRegistraLote = function(AOwner: TComponent; conexao: tuniconnection; vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string; desconto: string;
    Acesso: TAcesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: double = 0; vPodeCartoes: Boolean = True;
    pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True; vControleEntrega: Boolean = false): string;
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
        vpri := buscatroca(self.registrorcrvalor.AsString, ',', '.');
        vdes := '0';
        vjur := '0';
        vMulta := '0';
        Result := registra(Application, ZCone, vchave, vTrmCodigo, vpri, vMulta, vjur, vdes, Acesso, inttostr(tfdCredito), false);

      end;
    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfrcc.registroAfterInsert(DataSet: TDataSet);
begin

  inherited;
  registroetdcodigo.AsString := self.vChaveMestre;
  registrorcrdata.AsFloat := Date;
  registrorcrhora.AsFloat := time;

  registrocedcodigo.AsInteger := cedcredito; // credito
  registrotcrcodigo.AsInteger := tcrCreditoAvulso; // avulso, digitado manual
  registrotsccodigo.AsInteger := tscEmAberto; // em aberto
  registrotnccodigo.AsInteger := tncCredido; // creditos

end;

end.
