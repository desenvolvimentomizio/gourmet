unit ufeva;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Forms, ufrmbase, ACBrBase, ACBrExtenso,
  Data.DB, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, System.SysUtils, uFuncoes, Dialogs,
  uPegaBase, System.ImageList;

type
  Tfeva = class(Tfrmbase)
    registroevachave: TIntegerField;
    registroflhchave: TIntegerField;
    registroevfcodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroevavalor: TFloatField;
    registroclbcodigo: TIntegerField;
    registroevacriacao: TDateTimeField;
    Label1: TLabel;
    evachave: TDBEdit;
    Label2: TLabel;
    flhchave: TDBEdit;
    Label3: TLabel;
    evfcodigo: TDBEdit;
    Label4: TLabel;
    etdcodigo: TDBEdit;
    Label5: TLabel;
    evavalor: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    evf: TUniQuery;
    evfevfcodigo: TIntegerField;
    evfevfidentificacao: TStringField;
    registroevfidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    flh: TUniQuery;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    registroflhidentificacao: TStringField;
    registrotevcodigo: TIntegerField;
    registroevahistorico: TStringField;
    evahistorico: TDBEdit;
    Label6: TLabel;
    registroeflcodigo: TIntegerField;
    cco: TUniQuery;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
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
    ccophgcodigo: TIntegerField;
    registrophgcodigo: TIntegerField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    phgcodigo: TDBEdit;
    Label7: TLabel;
    ACBrExtenso: TACBrExtenso;
    efc: TUniQuery;
    efcefcchave: TIntegerField;
    efcccochave: TIntegerField;
    efcevachave: TIntegerField;
    evftevcodigo: TIntegerField;
    evfevfpelocco: TIntegerField;
    registroevadata: TDateField;
    Label8: TLabel;
    evadata: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure evfcodigoEnter(Sender: TObject);
    procedure evfcodigoExit(Sender: TObject);
    procedure flhchaveExit(Sender: TObject);
    procedure PrincipalEnter(Sender: TObject);
    procedure phgcodigoEnter(Sender: TObject);
  private
    function finaliza(vchave: string): string;
    function RegistraCco: string;
    function PodeRepetirEvento: Boolean;
    { Private declarations }
  public
    { Public declarations }
    vpCtaCodigo: string;
    vpPodeRepetir: Boolean;
  end;

var
  feva: Tfeva;

const
  vPlIdMd = '02.12.90.002-02';

implementation

{$R *.dfm}

function FormuFlh(AOwner: TComponent; conexao: tuniconnection; acesso: Tacesso; vtipolista: Integer; vmodulo: string; vfiltro: string; vmodo: string; vchave: string): string;
begin
  try
    feva := Tfeva.create(AOwner);
    feva.acesso := acesso;
    feva.vchave := vchave;
    feva.zcone := conexao;
    feva.psituacao.Caption := vmodo;
    feva.vpCtaCodigo := vfiltro;
    if feva.ShowModal = mrok then
      result := feva.vpRetorno
    else
      result := '';

  finally
    freeandnil(feva);
  end;

end;

exports FormuFlh;

function Tfeva.RegistraCco: string;
begin
  cco.close;
  cco.Params[0].AsString := '0';
  cco.Open;

  cco.Append;
  ccoctacodigo.AsString := vpCtaCodigo;
  ccoccoemissao.AsFloat := Date;
  ccoccovencimento.AsFloat :=evadata.Field.AsFloat;
  ccotoccodigo.AsInteger := tocVerba;
  ccocedcodigo.AsInteger := ceddebito;
  ccoclbcodigo.AsInteger := acesso.Usuario;
  ccotficodigo.AsInteger := tfiOutros;
  ccomoecodigo.AsInteger := 1;
  ccocconumero.AsString := '';
  ccoccohistorico.AsString := self.registroevahistorico.AsString;
  ccoccovalor.AsFloat := self.registroevavalor.AsFloat;
  ccoccoconciliado.AsInteger := 0;
  ccoetdcodigo.AsInteger := registroetdcodigo.AsInteger;
  consulta.close;
  consulta.sql.Text := 'select etdidentificacao from etd where etdcodigo=' + registroetdcodigo.AsString;
  consulta.Open;

  ccoccofavorecido.AsString := consulta.fields[0].AsString;
  ccoccodatamov.AsFloat :=evadata.Field.AsFloat;
  ccoccodataregistro.AsFloat := Date;
  ccoccohoraregistro.AsFloat := time;
  ccophgcodigo.AsInteger := registrophgcodigo.AsInteger;
  ACBrExtenso.Valor := ccoccovalor.AsFloat;
  ccoccoextenso.AsString := ACBrExtenso.Texto;
  cco.Post;

  efc.Open;
  efc.Append;
  efcccochave.AsInteger := ccoccochave.AsInteger;
  efcevachave.AsInteger := registroevachave.AsInteger;
  efc.Post;

  result := ccoccochave.AsString;

end;

function Tfeva.finaliza(vchave: string): string;
type
  TRegistraLote = function(AOwner: TComponent; conexao: tuniconnection; vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string; desconto: string;
    acesso: Tacesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: double = 0; vPodeCartoes: Boolean = True;
    pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True; vControleEntrega: boolean = False): string;
var
  registra: TRegistraLote;
  vpri: string;
  vMulta: String;
  vjur: string;
  vdes: string;
  vTrmCodigo: string;
  vtfdcodigo: Integer;
begin

  vTrmCodigo := '1';
  pack := LoadPackage('modulos\mlte.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('registralote'));
      if Assigned(registra) then
      begin
        vpri := buscatroca(self.registroevavalor.AsString, ',', '.');
        vdes := '0';
        vjur := '0';
        vMulta := '0';
        result := registra(Application, zcone, vchave, vTrmCodigo, vpri, vMulta, vjur, vdes, acesso, inttostr(tfdContaCorrente), False);
      end;
    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfeva.flhchaveExit(Sender: TObject);
begin
  { inherited; }
  // self.txtFiltro := 'eflcodigo=' + inttostr(eflCriada) + ' or ' + 'eflcodigo=' + inttostr(eflCalculada);

  if ActiveControl = bcancela then
    exit;

  self.ValidaSaida(Sender);

  consulta.close;
  consulta.sql.Text := 'select eflcodigo from flh where flhchave=' + flhchave.Field.AsString;
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    if (consulta.FieldByName('eflcodigo').AsInteger = eflLiquidada) or (consulta.FieldByName('eflcodigo').AsInteger = eflFechada) then
    begin
      ShowMessage('Não é possível efetuar lançamentos e folhas já fechadas ou liquidas!');
      flhchave.Field.Text := '';
      flhchave.SetFocus;
    end;
  end;

end;

procedure Tfeva.bconfirmaClick(Sender: TObject);
var
  vlFlhChave: Integer;
  vlpsituacao: string;
  vretorno: string;
  vlCcoChave: string;
begin
  if evavalor.Field.AsFloat <= 0 then
  begin
    ShowMessage('Valor inválido!' + #13 + 'Necessita ser um valor positivo.');
    evavalor.SetFocus;
    exit;
  end;

  if psituacao.Caption = 'Pagamento' then
  begin
    inherited;
    vlCcoChave := RegistraCco;

    vretorno := finaliza(vlCcoChave);

    if vretorno <> '' then
    begin
      vpRetorno := vlCcoChave;
      ModalResult := mrok
    end
    else
    begin
      // elimina registro de cco criado para lançamento
      consulta.close;
      consulta.sql.Text := 'delete from cco where ccochave=' + vlCcoChave;
      consulta.ExecSQL;
    end;
  end
  else
  begin
    inherited;
  end;
  { If self.bconfirma.Caption = 'Confirma' Then
    Begin
    vlpsituacao := psituacao.Caption;
    vlFlhChave := self.registroflhchave.AsInteger;
    If self.SalvaRegistro Then
    Begin
    if vlpsituacao = 'Incluindo' then
    begin
    registro.Append;
    self.registroflhchave.AsInteger := vlFlhChave;
    self.etdcodigo.SetFocus;
    end
    else
    begin
    close;
    end;
    End;
    End; }

end;

procedure Tfeva.evfcodigoEnter(Sender: TObject);
begin
  inherited;

  if vpCtaCodigo <> '' then
  begin
    self.txtFiltro := 'evf.evfpelocco=1 and evf.tevcodigo=2';
  end
  else
    self.txtFiltro := 'evf.evfpelocco=0 and evf.tevcodigo=2';

 
end;

procedure Tfeva.evfcodigoExit(Sender: TObject);
begin
  self.ValidaSaida(Sender);

  if ActiveControl = bcancela then
    exit;

  if evfcodigo.Field.AsString = '' then
    exit;

  if not PodeRepetirEvento then
    self.evfcodigo.SetFocus;

  PostMessage(ActiveControl.Handle, WM_LBUTTONUP, 0, 0);

  self.txtFiltro :='';

end;

function Tfeva.PodeRepetirEvento: Boolean;
begin
  result := True;

  if vpPodeRepetir then
    exit;

  if (self.flhchave.Field.AsString <> '') and (self.evfcodigo.Field.AsString <> '') then
  begin
    consulta.close;
    consulta.sql.Text := 'SELECT evachave FROM eva where ';
    consulta.sql.Add('flhchave=' + self.flhchave.Field.AsString + ' and ');
    consulta.sql.Add('evfcodigo=' + self.evfcodigo.Field.AsString + ' and ');
    consulta.sql.Add('etdcodigo=' + self.etdcodigo.Field.AsString);
    consulta.Open;

    if consulta.IsEmpty then
      exit;

    If Application.MessageBox(PChar('Já existe um lançamento deste evento nesta folha para este Colaborador!' + #13 + 'Deseja continuar assim mesmo ?'), 'Atenção',
      MB_YESNO { + MB_DEFBUTTON1 } + MB_ICONQUESTION) = IDNO Then
    Begin
      result := False;
    End
    else
      vpPodeRepetir := True;
  end;
end;

procedure Tfeva.PrincipalEnter(Sender: TObject);
begin
self.txtFiltro :='';
  inherited;

end;

procedure Tfeva.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;
  if vpCtaCodigo <> '' then
  begin
    psituacao.Caption := 'Pagamento';
    registroeflcodigo.AsInteger := eflLiquidada;
  end;

end;

procedure Tfeva.phgcodigoEnter(Sender: TObject);
begin
self.txtFiltro :='';
  inherited;

end;

procedure Tfeva.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registroevacriacao.AsFloat := now;
  registrotevcodigo.AsInteger := 2;
  registroeflcodigo.AsInteger := 1;
  registroevadata.Asstring:=hoje(application,ZCone);
  consulta.close;
  consulta.sql.Text := 'SELECT flhchave FROM flh WHERE CAST(flhmes AS UNSIGNED) = MONTH(CURDATE()) ';
  consulta.sql.Add('AND CAST(flhano AS UNSIGNED) = YEAR(CURDATE()) and (eflcodigo=1 or eflcodigo=2)');
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    self.registroflhchave.AsInteger := consulta.fields[0].AsInteger;
  end
  else
  begin
    consulta.close;
    consulta.sql.Text := 'SELECT flhchave FROM flh WHERE  ';
    consulta.sql.Add('(eflcodigo=1 or eflcodigo=2) order by flhchave desc limit 1');
    consulta.Open;
    if not consulta.IsEmpty then
    begin
      self.registroflhchave.AsInteger := consulta.fields[0].AsInteger;
    end
    else
    begin
      flhchave.SetFocus;
    end;

  end;

end;

end.
