unit ufccx;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Forms, VirtualTable, Data.DB, MemDS, DBAccess, Uni,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Buttons, Vcl.Controls, Vcl.ExtCtrls,
  Vcl.Dialogs, System.Classes, System.SysUtils, uFuncoes, uPegaBase, jPeg, Vcl.Graphics;

type
  Tfccx = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    Dcta: TUniDataSource;
    cta: TUniQuery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    ccx: TUniQuery;
    ccxccxchave: TIntegerField;
    ccxclbcodigo: TIntegerField;
    ccxclbidentificacao: TStringField;
    ccxctacodigo: TIntegerField;
    ccxctaidentificacao: TStringField;
    ccxccxturno: TIntegerField;
    ccxccxdataber: TDateField;
    ccxccxhoraaber: TTimeField;
    ccxccxsaldoaber: TFloatField;
    ccxccxdatafecha: TDateField;
    ccxccxhorafecha: TTimeField;
    ccxccxsaldofecha: TFloatField;
    ccxccxsangrias: TFloatField;
    ccxccxsuprimentos: TFloatField;
    cco: TUniQuery;
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
    Dccx: TUniDataSource;
    lvalor: TLabel;
    valor: TDBEdit;
    Label2: TLabel;
    clbcodigo: TDBEdit;
    clbidentificacao: TDBEdit;
    trm: TUniQuery;
    trmtrmcodigo: TIntegerField;
    trmtrmidentificacao: TStringField;
    Label3: TLabel;
    trmcodigo: TDBEdit;
    trmidentificacao: TDBEdit;
    lccxdataber: TLabel;
    ccxdataber: TDBEdit;
    lccxhoraaber: TLabel;
    ccxhoraaber: TDBEdit;
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
    registro: TUniQuery;
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
    consulta: TUniQuery;
    cfg: TUniQuery;
    cfgcfgctacaixa: TIntegerField;
    clt: TUniQuery;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    vlr: TVirtualTable;
    vlrvalor: TFloatField;
    Dvalor: TUniDataSource;
    PlTitulo: TPanel;
    dtl: TUniQuery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtldtlvalor: TFloatField;
    dtlmdacodigo: TIntegerField;
    ccd: TUniQuery;
    ccdccdchave: TIntegerField;
    ccddtlchave: TIntegerField;
    ccdccochave: TIntegerField;
    lteclbcodigo: TIntegerField;
    ltectacodigo: TIntegerField;
    ccxtrmcodigo: TIntegerField;
    ccxtrmidentificacao: TStringField;
    ccxccxhistorico: TStringField;
    lccxhistorico: TLabel;
    ccxhistorico: TDBEdit;
    plccx: TPanel;
    qagora: TUniQuery;
    qagoraqagora: TDateField;
    ccxccxinicio: TDateTimeField;
    ccxccxfinal: TDateTimeField;
    ltelteregistro: TDateTimeField;
    ajulte: TUniQuery;
    ajustacaixas: TUniQuery;
    linhas: TUniQuery;
    cfgcfgusagou: TIntegerField;
    dtlccxchave: TIntegerField;
    lteccxchave: TIntegerField;
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Acesso: TAcesso;
    vpRetorno: string;
    Fzcone: TUniConnection;
    FOperacao: Integer;
    FDataAtual: TDate;
    function Finaliza(Vchave: String): String;
    procedure SetOperacao(const Value: Integer);
    function GetHoraAtual: TTime;
    procedure SetDataAtual(const Value: TDate);
    procedure RegistraCCOOrigem;
    procedure RegistraCCODestino;

  public
    { Public declarations }
    vpUsrCodigo: string;
    vpCtaCodigo: string;
    vpTrmCodigo: string;
    vpTurno: string;
    vpCcxChave: String;

    vpLteChave: string;
    vpCtaTesouraria: string;

    Pack: Integer;

  published
    property zcone: TUniConnection read Fzcone write Fzcone;
    property Operacao: Integer read FOperacao write SetOperacao;
    property DataAtual: TDate read FDataAtual write SetDataAtual;
    property HoraAtual: TTime read GetHoraAtual;
  end;

var
  fccx: Tfccx;

implementation

{$R *.dfm}

function formuCaixa(AOwner: TComponent; Conexao: TUniConnection; Acesso: TAcesso; vCtaCodigo: string; vTurno: string; vTrmCodigo: string; vOperacao: Integer;
  vCcxChave: String): string;
var
  I: Integer;
begin

  fccx := Tfccx.Create(AOwner);

  try
    fccx.zcone := Conexao;

    for I := 0 to fccx.ComponentCount - 1 do
      if fccx.Components[I] is TUniQuery then
        (fccx.Components[I] as TUniQuery).Connection := fccx.zcone;
    fccx.Acesso := Acesso;
    fccx.vpUsrCodigo := fccx.Acesso.Usuario.ToString;
    fccx.vpCtaCodigo := vCtaCodigo;
    fccx.vpTurno := vTurno;
    fccx.vpTrmCodigo := vTrmCodigo;

    if vCcxChave <> '' then
      fccx.vpCcxChave := vCcxChave
    else
      fccx.vpCcxChave := '0';

    fccx.clbcodigo.Color := PEG_COR_VALORPADRAO;
    fccx.clbidentificacao.Color := PEG_COR_VALORPADRAO;
    fccx.trmcodigo.Color := PEG_COR_VALORPADRAO;
    fccx.trmidentificacao.Color := PEG_COR_VALORPADRAO;
    fccx.ccxdataber.Color := PEG_COR_VALORPADRAO;
    fccx.ccxhoraaber.Color := PEG_COR_VALORPADRAO;

    (* Define a operação solicitada *)
    fccx.Operacao := vOperacao;

    fccx.ShowModal;
    Result := fccx.vpRetorno;
  finally
    fccx.Free;
  end;
end;

exports formuCaixa;

Function Tfccx.Finaliza(Vchave: String): String;
type
  TRegistraLote = function(AOwner: TComponent; Conexao: TUniConnection; Vchave: string; vTrmCodigo: string; principal: string; multa: string; juros: string;
    desconto: string; Acesso: TAcesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: double = 0;
    vPodeCartoes: Boolean = True; pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True; vControleEntrega: Boolean = False): string;
var
  Registra: TRegistraLote;

  Vpri: String;
  Vjur: String;
  vMulta: String;
  Vdes: String;
  vPodeConvenio: Boolean;
  vlTeclaFinalizador: Integer;
  vlValorFinalizador: double;
  vlNomeApp: string;
begin

  Pack := LoadPackage('modulos\mlte.bpl');
  if Pack <> 0 then
    try
      @Registra := GetProcAddress(Pack, PChar('registralote'));
      if Assigned(Registra) then
      begin
        Vpri := BuscaTroca(valor.Field.AsString, ',', '.');

        Vjur := '0';
        Vdes := '0';
        vMulta := '0';

        vPodeConvenio := False;
        vlNomeApp := Extractfilename(application.ExeName);

        // Se operação for de abertura e suprimento só é permitido dinheiro
        if Operacao in [tocAberturaCaixa, tocSuprimentoCaixa] then
        begin
          vlTeclaFinalizador := 117; (* Tecla F6 - Dinheiro *)
          vlValorFinalizador := valor.Field.AsFloat;

          if lowercase(vlNomeApp) = 'entregas.exe' then
          begin

            Result := Registra(application, zcone, Vchave, vpTrmCodigo, Vpri, vMulta, Vjur, Vdes, Acesso, IntToStr(tfdTesouraria), vPodeConvenio,
              vlTeclaFinalizador, vlValorFinalizador, False, StrToInt(vpCtaCodigo), False, True);

          end
          else
          begin
            Result := Registra(application, zcone, Vchave, vpTrmCodigo, Vpri, vMulta, Vjur, Vdes, Acesso, IntToStr(tfdTesouraria), vPodeConvenio,
              vlTeclaFinalizador, vlValorFinalizador, False, StrToInt(vpCtaCodigo));
          end;

        end
        else
        begin

          if lowercase(vlNomeApp) = 'entregas.exe' then
          begin

            Result := Registra(application, zcone, Vchave, vpTrmCodigo, Vpri, vMulta, Vjur, Vdes, Acesso, IntToStr(tfdTesouraria), vPodeConvenio, 0, 0, False,
              StrToInt(vpCtaCodigo), False, True);
          end
          else
          begin

            Result := Registra(application, zcone, Vchave, vpTrmCodigo, Vpri, vMulta, Vjur, Vdes, Acesso, IntToStr(tfdTesouraria), vPodeConvenio, 0, 0, False,
              StrToInt(vpCtaCodigo));
          end;
        end;
      End;

    finally
      DoUnLoadPackage(application, Pack);
    end;

end;

procedure Tfccx.bcancelaClick(Sender: TObject);

begin
  if psituacao.Caption = 'Incluindo' then
  begin
    if (vpLteChave <> '') and (vpLteChave <> '0') then
    begin
      consulta.Close;
      consulta.SQL.Text := 'delete from lte where ltechave=' + vpLteChave;
      consulta.ExecSQL;

    end;

  end;

  if ccx.State <> dsBrowse then
    ccx.Cancel;

  vpRetorno := '';

  Close;
end;

procedure Tfccx.bconfirmaClick(Sender: TObject);
var
  vccochaveatu: Integer;
  vRetornoLte: String;
begin

  qagora.Close;
  qagora.SQL.Text := 'SELECT  CURRENT_date() as qagora';
  qagora.Open;

  DataAtual := qagora.Fields[0].AsFloat;
  qagora.Close;

  if valor.Field.Text = '' then
  begin
    ShowMessage('Deve Ser informado o campo valor R$');
    exit;
  end;

  if Operacao in [tocFechamentoCaixa, tocSuprimentoCaixa, tocSangriaCaixa] then
  begin
    if valor.Field.AsFloat = 0 then
    begin
      ShowMessage('Deve Ser informado o campo valor R$');
      exit;

    end;

  end;

  if valor.Field.AsFloat >= 0 then
  begin
    lte.Close;

    if vpLteChave <> '' then
    begin
      lte.SQL.Text :=
        'SELECT ltechave, tfdcodigo, ltedata, lteprincipal, ltemulta, ltejuros, ltedesconto, ltetotal, lteextenso, clbcodigo, ctacodigo, lteregistro, ccxchave ';
      lte.SQL.Add('FROM lte WHERE ltechave = ' + vpLteChave);
    end;

    lte.Open;

    if (vpLteChave = '') or (vpLteChave = '0') then
    begin
      lte.Append;
      psituacao.Caption := 'Incluindo';
    end
    else
    begin
      lte.Edit;
      psituacao.Caption := 'Alterando';
    end;

    if Operacao in [tocAberturaCaixa, tocSuprimentoCaixa, tocFechamentoCaixa, tocSangriaCaixa] then
    begin
      ltetfdcodigo.AsInteger := tfdTesouraria;
    end
    else
      ltetfdcodigo.AsInteger := tfdContaCorrente;

    lteltedata.AsFloat := DataAtual;
    ltelteprincipal.AsFloat := valor.Field.AsFloat;
    lteltetotal.AsFloat := ltelteprincipal.AsFloat;
    lteclbcodigo.AsString := vpUsrCodigo;
    ltectacodigo.AsString := vpCtaCodigo;
    lteccxchave.AsString := vpCcxChave;
    lte.Post;

    vpLteChave := lteltechave.AsString;

    //
    //
    //

    if Operacao in [tocAberturaCaixa, tocSuprimentoCaixa] then
    begin

      vRetornoLte := vpLteChave;
      dtl.Close;
      dtl.Params[0].AsString := vpLteChave;
      dtl.Open;

      if dtl.IsEmpty then
        dtl.Append
      else
        dtl.Edit;
      dtlltechave.AsString := vpLteChave;
      dtlcedcodigo.AsInteger := cedCredito;
      dtlmdacodigo.AsInteger := mdaDinheiro;
      dtldtlvalor.AsFloat := valor.Field.AsFloat;

      if ltetfdcodigo.AsInteger <> tfdContaCorrente then
      begin
        dtlccxchave.AsString := vpCcxChave;
      end
      else
      begin
        if (ccotoccodigo.AsInteger = tocAberturaCaixa) or (ccotoccodigo.AsInteger = tocSangriaCaixa) or (ccotoccodigo.AsInteger = tocSuprimentoCaixa) or
          (ccotoccodigo.AsInteger = tocFechamentoCaixa) then
        begin
          dtlccxchave.AsString := vpCcxChave;
        end
        else
          dtlccxchave.AsInteger := 0;
      end;
      dtl.Post;

    end
    else
    begin
      vRetornoLte := Finaliza(vpLteChave);
    end;

    if (vRetornoLte = '') then
    begin
      ShowMessage('ATENÇÃO: É necessário definir finalizadores da Abertura do Caixa ,' + #13 + #13 + 'ou deixar o Saldo de Abertura com valor zero !!');
      valor.SetFocus;
      exit;
    end;

    RegistraCCOOrigem;
    if (Operacao <> tocDebito) and (Operacao <> tocCredito) then
      RegistraCCODestino;

    lte.Edit;
    ltelteregistro.AsString := agora(application, zcone);
    lteccxchave.AsString := vpCcxChave;
    lte.Post;

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('SELECT ');
    consulta.SQL.Add('DATE_FORMAT( ');
    consulta.SQL.Add('CONCAT(ccovencimento, ' + QuotedStr(' ') + ', MIN(ccohoraregistro)), ' + QuotedStr('%d/%m/%y %h:%i:%s') + ') AS ccoregistro,');
    consulta.SQL.Add('lteregistro ');
    consulta.SQL.Add('FROM clt,      cco,     lte ');
    consulta.SQL.Add('WHERE clt.ccochave = cco.ccochave ');
    consulta.SQL.Add(' and lte.ltechave=' + Self.lteltechave.AsString);
    consulta.SQL.Add(' AND lte.ltechave = clt.ltechave ');
    consulta.SQL.Add('  GROUP BY lte.ltechave');
    consulta.Open;

  end;

  if ccx.State <> dsBrowse then
  begin

    case Operacao of
      tocAberturaCaixa:
        begin
          ccxccxsaldoaber.AsFloat := vlrvalor.AsFloat;
          ccxccxinicio.AsString := agora(application, zcone);
          ccxhoraaber.Field.AsString := trim(copy(ccxccxinicio.AsString, 11, 10));
          if Self.lteltechave.AsString <> '' then
          begin

            ajulte.Close;
            ajulte.SQL.Text := 'select ltechave, lteregistro from lte where ltechave=' + Self.lteltechave.AsString;
            ajulte.Open;

            ajulte.Edit;
            ajulte.FieldByName('lteregistro').AsString := ccxccxinicio.AsString;
            ajulte.Post;


          end;
        end;
      tocSangriaCaixa:
        ccxccxsangrias.AsFloat := ccxccxsangrias.AsFloat + vlrvalor.AsFloat;
      tocSuprimentoCaixa:
        ccxccxsuprimentos.AsFloat := ccxccxsuprimentos.AsFloat + vlrvalor.AsFloat;
      tocFechamentoCaixa:
        begin
          ccxccxdatafecha.AsFloat := DataAtual;
          ccxccxhorafecha.AsFloat := HoraAtual;
          ccxccxsaldofecha.AsFloat := vlrvalor.AsFloat;
          ccxccxfinal.AsString := agora(application, zcone);
        end;
    end;

    ccx.Post;
  end;

  if not lte.Active then
  lte.Open;

  lte.Edit;
  lteccxchave.AsInteger := ccxccxchave.AsInteger;
  lte.Post;


  dtl.Close;
  dtl.ParamByName('ltechave').AsInteger:=lteltechave.AsInteger;
  dtl.Open;

  dtl.Edit;
  dtlccxchave.AsInteger := ccxccxchave.AsInteger;
  dtl.Post;

  vpRetorno := vlrvalor.AsString;

  cfg.Close;
  cfg.Open;


  Close;

end;

procedure Tfccx.FormCreate(Sender: TObject);
begin
  vpLteChave := '0';
end;

procedure Tfccx.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Sender is TDBEdit) then
    if (Sender as TDBEdit).Field.DataType = ftfloat then
    begin

      if (Key = '.') then
        Key := #0;

      If (Key = ',') Then
        if (Pos(',', (Sender as TDBEdit).Text) = 0) then
        begin
          Key := #0;
          Key := ',';
        end
        else
          Key := #0;
    end;

  If Key = ';' Then
    Key := #0;

  If Key = '\' Then
    Key := #0;

  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;

end;

procedure Tfccx.FormShow(Sender: TObject);
var
  vlAgora: String;
begin
  Self.Height := 248;
  Self.Width := 500;

  (* Definição da data atual. *)

  qagora.Connection := Fzcone;

  qagora.Close;
  qagora.SQL.Text := 'SELECT  CURRENT_date() as qagora';
  qagora.Open;

  vlAgora := qagora.Fields[0].AsString;
  DataAtual := qagora.Fields[0].AsFloat;
  qagora.Close;

  cfg.Close;
  cfg.Open;
  vpCtaTesouraria := cfgcfgctacaixa.AsString;
  cfg.Close;

  consulta.Close;
  consulta.SQL.Text := 'select clbcodigo, ctacodigo from ccx where ccxchave=' + vpCcxChave;
  consulta.Open;

  ccx.Close;
  ccx.Params[0].AsString := consulta.FieldByName('clbcodigo').AsString;
  ccx.Params[1].AsString := consulta.FieldByName('ctacodigo').AsString;
  if vpCcxChave = '' then
    vpCcxChave := '0';
  ccx.Params[2].AsString := vpCcxChave;
  ccx.Open;

  plccx.Caption := 'Caixa: ' + ccxccxchave.AsString;

  if ccx.IsEmpty then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT ccx.ccxturno from ccx ';
    consulta.SQL.Add('WHERE ccx.clbcodigo  =' + vpUsrCodigo);
    consulta.SQL.Add('  AND ccx.ctacodigo  =' + vpCtaCodigo);
    consulta.SQL.Add('  AND ccx.ccxdataber = CURDATE()');
    consulta.SQL.Add('  AND ccx.ccxdatafecha IS NOT NULL ');
    consulta.SQL.Add('ORDER BY ccx.ccxturno');
    consulta.Open;

    if not consulta.IsEmpty then
      vpTurno := IntToStr(consulta.Fields[0].AsInteger + 1);

    ccx.Append;

    ccxccxdataber.AsFloat := DataAtual;
    ccxccxhoraaber.AsFloat := HoraAtual;
  end
  else
    ccx.Edit;

  ccxclbcodigo.AsString := vpUsrCodigo;
  ccxctacodigo.AsString := vpCtaCodigo;
  ccxtrmcodigo.AsString := vpTrmCodigo;
  ccxccxturno.AsString := vpTurno;
  ccxccxhistorico.AsString := '';

  vlr.Open;
end;

function Tfccx.GetHoraAtual: TTime;
var
  qHora: TUniQuery;
begin
  qHora := TUniQuery.Create(application);
  try
    qHora.Connection := zcone;
    qHora.SQL.Text := 'SELECT CURRENT_TIME();';
    qHora.Open;

    Result := qHora.Fields[0].AsDateTime;
  finally
    qHora.Free;
  end;
end;

procedure Tfccx.RegistraCCODestino;
var
  I: Integer;
begin
  if not cco.Active then
    cco.Open;

  cco.Append;

  for I := 1 to 20 do
    cco.Fields[I].AsString := registro.Fields[I].AsString;

  ccocedcodigo.AsInteger := cedCredito;

  case Operacao of
    tocAberturaCaixa, tocSuprimentoCaixa:
      ccoctacodigo.AsString := vpCtaCodigo;
    tocFechamentoCaixa, tocSangriaCaixa:
      ccoctacodigo.AsString := vpCtaTesouraria;
  end;

  cta.Locate('ctacodigo', registroctacodigo.AsInteger, []);
  ccoccofavorecido.AsString := 'De: ' + ctactaidentificacao.AsString;

  ccoccochaveorig.AsInteger := registroccochave.AsInteger;

  cco.Post;

  (* Atualiza informações do CCo de Origem *)
  registro.Edit;
  cta.Locate('ctacodigo', ccoctacodigo.AsInteger, []);
  registroccofavorecido.AsString := 'Para: ' + ctactaidentificacao.AsString;

  registroccochavedest.AsInteger := ccoccochave.AsInteger;
  registro.Post;

  clt.Close;
  clt.Params[0].AsInteger := ccoccochave.AsInteger;
  clt.Params[1].AsString := vpLteChave;
  clt.Open;

  if clt.IsEmpty then
    clt.Append
  else
    clt.Edit;

  cltccochave.AsInteger := ccoccochave.AsInteger;
  cltltechave.AsString := vpLteChave;
  clt.Post;
end;

procedure Tfccx.RegistraCCOOrigem;
begin
  if not registro.Active then
    registro.Open;

  registro.Append;

  if registro.State <> dsedit then
    registro.Edit;

  registroetdcodigo.AsInteger := 0;

  case Operacao of
    tocAberturaCaixa, tocSuprimentoCaixa:
      registroctacodigo.AsString := vpCtaTesouraria;
    tocFechamentoCaixa, tocSangriaCaixa:
      registroctacodigo.AsString := vpCtaCodigo;
  end;

  case Operacao of
    tocAberturaCaixa:
      registroccohistorico.AsString := 'Abertura de Caixa ' + ccxhistorico.Field.AsString;
    tocSangriaCaixa:
      begin
        registroccohistorico.AsString := 'Retirada de Caixa ' + ccxhistorico.Field.AsString;
      end;
    tocSuprimentoCaixa:
      registroccohistorico.AsString := 'Suprimento de Caixa ' + ccxhistorico.Field.AsString;
    tocFechamentoCaixa:
      registroccohistorico.AsString := 'Fechamento de Caixa ' + ccxhistorico.Field.AsString;
    tocDebito:
      registroccohistorico.AsString := 'Pagamento: ' + ccxhistorico.Field.AsString;

  end;

  registroccofavorecido.AsString := '';

  registrotoccodigo.AsInteger := Operacao;
  registroccovalor.AsFloat := vlrvalor.AsFloat;

  registroccoemissao.AsFloat := DataAtual;
  registroccovencimento.AsFloat := DataAtual;
  registroclbcodigo.AsString := vpUsrCodigo;
  registrotficodigo.AsInteger := tfiOutros;
  registromoecodigo.AsInteger := 1;
  registroccoconciliado.AsString := '1';

  registrocedcodigo.AsInteger := cedDebito;

  registroccodatamov.AsFloat := DataAtual;
  registroccodataregistro.AsFloat := DataAtual;
  registroccohoraregistro.AsFloat := HoraAtual;
  registroetdcodigo.AsInteger := 0;

  registro.Post;

  clt.Close;
  clt.Params[0].AsInteger := registroccochave.AsInteger;
  clt.Params[1].AsString := vpLteChave;
  clt.Open;

  if clt.IsEmpty then
    clt.Append
  else
    clt.Edit;

  cltccochave.AsInteger := registroccochave.AsInteger;
  cltltechave.AsString := vpLteChave;
  clt.Post;
end;

procedure Tfccx.SetDataAtual(const Value: TDate);
begin
  FDataAtual := Value;
end;

procedure Tfccx.SetOperacao(const Value: Integer);
begin
  FOperacao := Value;

  case Operacao of
    tocAberturaCaixa:
      begin
        PlTitulo.Caption := 'ABERTURA DE CAIXA';
        lvalor.Caption := 'Saldo de Abertura R$';
      end;
    tocSangriaCaixa:
      begin
        PlTitulo.Caption := 'RETIRADA DE CAIXA';
        lvalor.Caption := 'Valor da Retirada R$';
      end;
    tocSuprimentoCaixa:
      begin
        PlTitulo.Caption := 'SUPRIMENTO DE CAIXA';
        lvalor.Caption := 'Valor do Suprimento R$';
      end;
    tocFechamentoCaixa:
      begin
        PlTitulo.Caption := 'FECHAMENTO DE CAIXA';
        lvalor.Caption := 'Saldo de Fechamento R$';
      end;
  end;

  Self.Caption := UpperNome(PlTitulo.Caption);

  case Operacao of
    tocSangriaCaixa, tocSuprimentoCaixa:
      begin
        lccxdataber.Visible := False;
        ccxdataber.Visible := False;
        lccxhoraaber.Visible := False;
        ccxhoraaber.Visible := False;
      end;
  end;

end;

END.
