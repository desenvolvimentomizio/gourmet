unit ufcli;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes, ACBrBase, ACBrValidador,
  ufrabase, ufraedr, ufraete, ufraetf, ufrarfp, ufrarfc, ufrarfb, ufrastc, MemDS,
  DBAccess, Vcl.AppEvnts, System.StrUtils, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, PngImageList;

type
  Tfcli = class(Tfrmbase)
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registroetdapelido: TStringField;
    registroetddeletar: TIntegerField;
    registrotpecodigo: TIntegerField;
    registrotpeidentificacao: TStringField;
    registroetddatacad: TDateField;
    registroetddataalt: TDateField;
    registroetddoc1: TStringField;
    registroetdativo: TIntegerField;
    registrotsecodigo: TIntegerField;
    registroetdobs: TStringField;
    Label1: TLabel;
    etddatacad: TDBEdit;
    Label2: TLabel;
    etddataalt: TDBEdit;
    eetdcodigo: TLabel;
    etdcodigo: TDBEdit;
    eetdidentificacao: TLabel;
    etdidentificacao: TDBEdit;
    Label6: TLabel;
    tpecodigo: TDBEdit;
    Label7: TLabel;
    etddoc1: TDBEdit;
    Label5: TLabel;
    etdapelido: TDBEdit;
    Label23: TLabel;
    etdobs: TDBMemo;
    Bvalidar: TBitBtn;
    referencias: TTabSheet;
    DadosPessoais: TTabSheet;
    ACBrValidador: TACBrValidador;
    Pledr: TPanel;
    etv: tuniquery;
    etvetvcodigo: TIntegerField;
    etvtvicodigo: TIntegerField;
    etvetdcodigo: TIntegerField;
    tpe: tuniquery;
    tpetpecodigo: TIntegerField;
    tpetpeidentificacao: TStringField;
    Plete: TPanel;
    Pletf: TPanel;
    Spt1: TSplitter;
    Spt2: TSplitter;
    Spt3: TSplitter;
    dpf: tuniquery;
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
    Ddpf: tunidatasource;
    Plrfc: TPanel;
    Sp4: TSplitter;
    Plrfb: TPanel;
    Sp5: TSplitter;
    Plstc: TPanel;
    etc: tuniquery;
    etcetccodigo: TIntegerField;
    etcetcidentificacao: TStringField;
    dpfetcidentificacao: TStringField;
    cfgmcli: tuniquery;
    cfgcfgmclicodigo: TIntegerField;
    cfgmclicfgmcliusarefpes: TIntegerField;
    cfgmclicfgmcliusarefecom: TIntegerField;
    cfgmclicfgmcliusarefban: TIntegerField;
    cfgmclicfgmcliusaconemp: TIntegerField;
    cfgmclicfgmcliusadapefi: TIntegerField;
    cfgcfgcodigo: TIntegerField;
    ldpfnatural: TLabel;
    dpfnatural: TDBEdit;
    ldpfdtnasc: TLabel;
    dpfdtnasc: TDBEdit;
    dpfssp: TDBEdit;
    ldpfssp: TLabel;
    dpfrg: TDBEdit;
    ldpfrg: TLabel;
    ldpfnomemae: TLabel;
    dpfnomemae: TDBEdit;
    dpfnomepai: TDBEdit;
    ldpfnomepai: TLabel;
    letccodigo: TLabel;
    etccodigo: TDBEdit;
    dpfconjuge: TDBEdit;
    dpftrabconj: TDBEdit;
    dpfnudepend: TDBEdit;
    ldpfnudepend: TLabel;
    ldpftrabconj: TLabel;
    ldpfconjuge: TLabel;
    dpfdtnasccon: TDBEdit;
    dpffoneconj: TDBEdit;
    dpfdtcas: TDBEdit;
    dpfdtnascpai: TDBEdit;
    dpfdtnascmae: TDBEdit;
    ldpfdtnascmae: TLabel;
    ldpfdtnascpai: TLabel;
    ldpfdtcas: TLabel;
    ldpfdtnasccon: TLabel;
    ldpffoneconj: TLabel;
    registroetdsuframa: TStringField;
    BvTopo: TBevel;
    cfgmclicfgmclivalidacpf: TIntegerField;
    Splitter1: TSplitter;
    Plrfp: TPanel;
    cfgcfgcontrolalimite: TIntegerField;
    tcbcodigo: TDBEdit;
    Label3: TLabel;
    tcb: tuniquery;
    tcbtcbcodigo: TIntegerField;
    tcbtcbidentificacao: TStringField;
    registrotcbcodigo: TIntegerField;
    registrotcbidentificacao: TStringField;
    cfgcfgmclivalidacpf: TIntegerField;
    procedure registroBeforePost(DataSet: TDataSet);
    procedure etdapelidoEnter(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BvalidarClick(Sender: TObject);
    procedure paginasChange(Sender: TObject);
    procedure DadosPessoaisEnter(Sender: TObject);
    procedure etddoc1Exit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure registroAfterPost(DataSet: TDataSet);
    procedure tpecodigoEnter(Sender: TObject);
  private
    { Private declarations }
    procedure salvacolunasframes;
    procedure ajustasitdadospesfis;
    function verificadocumento: Boolean;
    function verificainclusao(nomeframe: string): Boolean;
    procedure CarregaDadosPessoais;
    function DPFValidaCamposRequeridos: Boolean;
  public
    { Public declarations }
  end;

  TtpFrameDocados = (tfEdr, tfEtf, tfEte, tfRfc, tfRfp, tfRfb, tfStc);

  TFramesDocados = array [0 .. 6] of string;

const
  FramesDocados: TFramesDocados = ('edr', 'etf', 'ete', 'rfc', 'rfp', 'rfb', 'stc');

var
  fcli: Tfcli;

  // Início ID do Módulo fracli
const
  vPlIdMd = '01.01.01.001-02';

  // Fim ID do Módulo fracli

implementation

{$R *.dfm}

procedure Tfcli.bcancelaClick(Sender: TObject);
var
  vsit: string;
begin
  vsit := Self.psituacao.Caption;

  if (vsit = 'Cancelando') or (vsit = 'Incluindo') then
  begin
    If Application.MessageBox(PChar('Deseja realmente abandonar a inclusão do registro ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION)
      = IDNO Then
      Exit;

    If tpecodigo.Field.AsInteger = 1 Then
      If dpf.State <> dsBrowse Then
        dpf.Cancel;
    try
      If dsregistro.State <> dsBrowse Then
        dsregistro.DataSet.Cancel
      else
        dsregistro.DataSet.Delete;
    except
    end;

    ModalResult := mrCancel;
  end
  else
  begin
    inherited;
  end;

  If tpecodigo.Field.AsInteger = 1 Then
    If dpf.State <> dsBrowse Then
      dpf.Cancel;
end;

procedure Tfcli.bconfirmaClick(Sender: TObject);
Begin
  (* Valida cadastro de ENDEREÇO *)
  consulta.Close;
  consulta.SQL.Text := 'SELECT edrcodigo FROM edr ';
  consulta.SQL.Add('INNER JOIN ted ON ted.tedcodigo = edr.tedcodigo ');
  consulta.SQL.Add('INNER JOIN cdd ON cdd.cddcodigo = edr.cddcodigo ');
  consulta.SQL.Add('INNER JOIN ufs ON ufs.ufscodigo = cdd.ufscodigo ');
  consulta.SQL.Add('WHERE ted.tedcodigo = 1 ');
  consulta.SQL.Add('AND edr.etdcodigo = ' + Self.registroetdcodigo.AsString);
  consulta.Open;

  If consulta.IsEmpty Then
  Begin
    Application.MessageBox(PChar('Atenção é OBRIGATÓRIO cadastro do endereço Principal !'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  End;

  If consulta.RecordCount > 1 Then
  Begin
    Application.MessageBox(PChar('Atenção é PERMITIDO cadastro de apenas um endereço Principal !'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  End;

  (* Valida cadastro de TELEFONE *)
  consulta.Close;
  consulta.SQL.Text := 'SELECT etfcodigo FROM etf, ttf ';
  consulta.SQL.Add('WHERE etf.ttfcodigo = ttf.ttfcodigo ');
  consulta.SQL.Add('AND ttf.ttfcodigo = 1 ');
  consulta.SQL.Add('AND etf.etdcodigo = ' + Self.registroetdcodigo.AsString);
  consulta.Open;

  If consulta.IsEmpty Then
  Begin
    Application.MessageBox(PChar('Atenção é OBRIGATÓRIO cadastro do telefone Principal !'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  End;

  If consulta.RecordCount > 1 Then
  Begin
    Application.MessageBox(PChar('Atenção é PERMITIDO cadastro de apenas um telefone Principal !'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  End;

  If Self.bconfirma.Caption = 'Confirma' Then
  Begin
    If (tpecodigo.Field.AsInteger = 1) Then
      If dpf.State <> dsBrowse Then
        if dpfnatural.Visible then
        begin
          if DPFValidaCamposRequeridos then
            dpf.Post
          else
            Exit;
        end
        else
          dpf.Cancel;
    salvacolunasframes;
  end;

  if Self.registro.State = dsBrowse then
    registro.Edit;

  Inherited;
end;

procedure Tfcli.salvacolunasframes;
var
  fra: Tframe;
  I: Integer;
begin
  for I := 0 to High(FramesDocados) do
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fra' + FramesDocados[I]));
    if fra <> nil then
      (fra as Tfrabase).salvacolunas;
  end;
end;

procedure Tfcli.tpecodigoEnter(Sender: TObject);
begin
  inherited;
  Self.txtFiltro := ' tpecodigo<>9 ';
end;

procedure Tfcli.ajustasitdadospesfis;
begin
  { if cfgmclicfgmcliusadapefi.AsInteger = 1 then
    begin
    dpfnatural.Visible := True;
    ldpfnatural.Visible := True;
    dpfdtnasc.Visible := True;
    ldpfdtnasc.Visible := True;
    dpfrg.Visible := True;
    ldpfrg.Visible := True;
    dpfssp.Visible := True;
    ldpfssp.Visible := True;
    dpfdtnascmae.Visible := True;
    ldpfdtnascmae.Visible := True;
    dpfnomemae.Visible := True;
    ldpfnomemae.Visible := True;
    dpfnomepai.Visible := True;
    ldpfnomepai.Visible := True;
    dpfdtnascpai.Visible := True;
    ldpfdtnascpai.Visible := True;
    etccodigo.Visible := True;
    letccodigo.Visible := True;
    dpfdtcas.Visible := True;
    ldpfdtcas.Visible := True;
    dpfconjuge.Visible := True;
    ldpfconjuge.Visible := True;
    dpftrabconj.Visible := True;
    ldpftrabconj.Visible := True;
    dpffoneconj.Visible := True;
    ldpffoneconj.Visible := True;
    dpftrabconj.Visible := True;
    ldpftrabconj.Visible := True;
    dpfdtnasccon.Visible := True;
    ldpfdtnasccon.Visible := True;
    dpfnudepend.Visible := True;
    ldpfnudepend.Visible := True;
    end
    else
    begin
    dpfnatural.Visible := False;
    ldpfnatural.Visible := False;
    dpfdtnasc.Visible := False;
    ldpfdtnasc.Visible := False;
    dpfrg.Visible := False;
    ldpfrg.Visible := False;
    dpfssp.Visible := False;
    ldpfssp.Visible := False;
    dpfdtnascmae.Visible := False;
    ldpfdtnascmae.Visible := False;
    dpfnomemae.Visible := False;
    ldpfnomemae.Visible := False;
    dpfnomepai.Visible := False;
    ldpfnomepai.Visible := False;
    dpfdtnascpai.Visible := False;
    ldpfdtnascpai.Visible := False;
    etccodigo.Visible := False;
    letccodigo.Visible := False;
    dpfdtcas.Visible := False;
    ldpfdtcas.Visible := False;
    dpfconjuge.Visible := False;
    ldpfconjuge.Visible := False;
    dpftrabconj.Visible := False;
    ldpftrabconj.Visible := False;
    dpffoneconj.Visible := False;
    ldpffoneconj.Visible := False;
    dpftrabconj.Visible := False;
    ldpftrabconj.Visible := False;
    dpfdtnasccon.Visible := False;
    ldpfdtnasccon.Visible := False;
    dpfnudepend.Visible := False;
    ldpfnudepend.Visible := False;
    end; }
end;

function Tfcli.verificadocumento: Boolean;
begin
  Result := True;

  etddoc1.Field.AsString := SoNumeros(etddoc1.Field.AsString);
  ACBrValidador.AjustarTamanho := True;
  ACBrValidador.Documento := etddoc1.Field.AsString;

  if (Self.tpecodigo.Field.AsInteger = 1) then
    ACBrValidador.TipoDocto := docCPF
  else if (Self.tpecodigo.Field.AsInteger = 2) then
    ACBrValidador.TipoDocto := docCNPJ;

  if (ACBrValidador.Validar) then
  begin
    etddoc1.Field.AsString := ACBrValidador.Formatar;
    etddoc1.Color := $00F9D188;
    if (Self.tpecodigo.Field.AsInteger = 2) then
    begin
      if (copy(etddoc1.Field.AsString, 1, 6) = '00.000') or  (copy(etddoc1.Field.AsString, 16, 3) = '-00')then
      begin
        ShowMessage('Tipo de Pessoa ou CNPJ inválido!');
        tpecodigo.SetFocus;
        Result := False;
      end;
    end;
  end
  else
  begin
    if (cfgmclicfgmclivalidacpf.AsInteger = 0) then
      if (registroetddoc1.AsInteger = 0) or (registroetdcodigo.AsInteger = registroetddoc1.AsInteger) then
      begin
        etddoc1.Color := $00F9D188;
        Exit;
      end;

    ShowMessage('Tipo de Pessoa ou CPF/CNPJ inválido!');
    tpecodigo.SetFocus;
    Result := False;
  end;
end;

procedure Tfcli.BvalidarClick(Sender: TObject);
Var
  vmotivo: String;
  vlEtlChave: string;

  I: Integer;
  vCarregaFrame: Boolean;
Begin
  Inherited;

  if not verificadocumento then
  Begin
    Bvalidar.Visible := True;
    tpecodigo.Enabled := True;
    etdidentificacao.Enabled := True;
    etddoc1.Enabled := True;
    etdapelido.Enabled := True;

    Self.bconfirma.Enabled := False;
    etddoc1.Color := clYellow;
    Exit;
  End;

  Self.bconfirma.Enabled := True;

  consulta.Close;
  consulta.SQL.Text := 'SELECT etd.etdcodigo, etd.etddoc1, etv.tvicodigo, etd.tsecodigo, etd.etddescsituacao, tpecodigo, etdidentificacao ';
  consulta.SQL.Add('FROM etd LEFT JOIN etv ON etd.etdcodigo = etv.etdcodigo ');
  consulta.SQL.Add('WHERE (etddoc1 IN (''' + Self.etddoc1.Field.AsString + ''', ''' + SoNumeros(Self.etddoc1.Field.AsString) + ''')) ');
  consulta.SQL.Add('ORDER BY etv.tvicodigo');
  consulta.Open;

  (* Verifica existência de cadastro com mesmo Documento *)
  If Not(consulta.IsEmpty) and (registroetddoc1.AsString <> '0') Then
  Begin
    case consulta.Fields[2].AsInteger of
      (* Vínculo CLIENTE *)
      tviCliente:
        if (Self.psituacao.Caption = 'Incluindo') or
          ((Self.psituacao.Caption = 'Alterando') and (consulta.Fields[0].AsInteger <> registroetdcodigo.AsInteger)) Then
        Begin
          Application.MessageBox(PChar('Este documento já está cadastrado para o cliente: '#13 + #13 + consulta.Fields[0].AsString + ' ' +
            consulta.Fields[6].AsString + '!'), 'Informação', MB_ICONINFORMATION + MB_OK);
          registro.Cancel;
          registro.Close;
          registro.Params[0].AsInteger := consulta.Fields[0].AsInteger;
          registro.Open;

          If (consulta.Fields[3].AsInteger IN [1, 2]) Then
          Begin
            If consulta.Fields[4].AsString = '' Then
              vmotivo := 'PARA VENDA A PRAZO'
            Else
              vmotivo := consulta.Fields[4].AsString;

            If Application.MessageBox(PChar('Este cliente está BLOQUEADO! '#13 + #13 + 'Motivo:  ' + vmotivo + #13 + #13 + 'Deseja DESBLOQUEÁ-LO ?'),
              'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
            Begin
              consulta.Close;
              consulta.SQL.Text := 'update etd set etddescsituacao='''', tsecodigo=0 where etdcodigo=' + registro.Fields[0].AsString;
              consulta.Execsql;
            End
            Else
            Begin
              Self.psituacao.Caption := 'Alterando';
              Self.bcancela.Click;
              Exit;
            End;
          End;

          Self.psituacao.Caption := 'Alterando';
        End;

      (* Vínculo FORNECEDOR OU TRANSPORTADOR *)
      tviFornecedor, tviTransportador:
        If Application.MessageBox(PChar('Esta entidade já está cadastrada como ' + IfThen(consulta.Fields[2].AsInteger = tviFornecedor,
          'Fornecedor !', ' Transportador !') + #13 + #13 + 'Deseja cadastrá-la como Cliente também ?'), 'Atenção',
          MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
        Begin
          registro.Close;
          registro.Params[0].AsInteger := consulta.Fields[0].AsInteger;
          registro.Open;

          registro.Edit;
          registrotsecodigo.AsInteger := 0;
          registro.Post;

          Self.psituacao.Caption := 'Alterando';

          etv.Open;
          etv.Append;
          etvetdcodigo.AsInteger := Self.etdcodigo.Field.AsInteger;
          etvtvicodigo.AsInteger := 1;
          etv.Post;
        End
        Else
        Begin
          Self.bcancela.Click;
          Exit;
        End;
    end;
  End
  Else
  Begin
    registro.Post;

    etv.Open;
    etv.Append;
    etvetdcodigo.AsInteger := Self.etdcodigo.Field.AsInteger;
    etvtvicodigo.AsInteger := 1;
    etv.Post;

    { *  se houver controle de limite por cliente para o contas a receber já
      abre para definir o limite de credito d forma de faturamento * }

    if (cfgcfgcontrolalimite.AsInteger = 1) and (psituacao.Caption = 'Incluindo') then
    begin

      consulta.Close;
      consulta.SQL.Text := 'select etlchave from etl where etdcodigo=' + Self.registroetdcodigo.AsString;
      consulta.Open;
      vlEtlChave := Self.consulta.Fields[0].AsString;
      consulta.Close;
      if vlEtlChave = '' then
        vlEtlChave := '0';

      MostraLista('metl', Self.vusrcodigo, Self.registroetdcodigo.AsString, vlEtlChave);

    end;

  End;

  (*
    ** Carrega Módulos "Docados" **
  *)
  Plrfc.Visible := False;
  Plrfp.Visible := False;
  Plrfb.Visible := False;
  Plstc.Visible := False;

  if ((cfgmclicfgmcliusarefban.AsInteger) or (cfgmclicfgmcliusaconemp.AsInteger) or (cfgmclicfgmcliusarefecom.AsInteger) IN [1]) then
    Self.referencias.TabVisible := True;

  if (cfgmclicfgmcliusarefpes.AsInteger = 1) and (Self.tpecodigo.Field.AsInteger = 1) then
    Self.referencias.TabVisible := True;

  CarregaDadosPessoais;

  for I := 0 to 6 do
  begin
    vCarregaFrame := True;

    case TtpFrameDocados(I) of
      tfRfc: (* Ref. Comercial *)
        vCarregaFrame := cfgmclicfgmcliusarefecom.AsInteger = 1;
      tfRfb: (* Ref. Bancária *)
        vCarregaFrame := cfgmclicfgmcliusarefban.AsInteger = 1;
      tfStc: (* Ref. Crédito *)
        vCarregaFrame := cfgmclicfgmcliusaconemp.AsInteger = 1;
      tfRfp: (* Ref. Pessoal *)
        vCarregaFrame := (cfgmclicfgmcliusarefpes.AsInteger = 1) and (Self.tpecodigo.Field.AsInteger = 1);
    end;

    if vCarregaFrame then
      if not verificainclusao(FramesDocados[I]) then
      begin
        bcancela.Click;
        Exit;
      end;
  end;

  Bvalidar.Visible := False;
  tpecodigo.Enabled := False;
  etddoc1.Enabled := False;

  etdidentificacao.Enabled := True;
  etdapelido.Enabled := True;

  ajustabotoes;
end;

function Tfcli.verificainclusao(nomeframe: string): Boolean;
var
  fra: TObject;
  vPlDestino: TPanel;
  I: Integer;
begin
  Result := True;

  vPlDestino := TPanel(Self.FindComponent('Pl' + nomeframe));

  CarregaFrame('m' + nomeframe, vPlDestino, Self.zcone, 'Clientes');

  fra := nil;
  fra := Tfrabase(Application.FindComponent('fra' + nomeframe));

  if Self.psituacao.Caption = 'Incluindo' then
    if fra <> nil then
      if (fra is Tfrabase) then
        if (fra as Tfrabase).vretorno = '0' then
        begin
          Result := False;
          Self.psituacao.Caption := 'Cancelando';
        end;
end;

procedure Tfcli.CarregaDadosPessoais;
begin
  Self.DadosPessoais.TabVisible := False;

  If (Self.tpecodigo.Field.AsInteger <> 1) Then
    Exit;

  if (cfgmclicfgmcliusadapefi.AsInteger = 1) then
    Self.DadosPessoais.TabVisible := True;

  Self.dpf.Close;
  Self.dpf.Params[0].AsInteger := Self.etdcodigo.Field.AsInteger;
  Self.dpf.Open;

  If dpf.RecordCount = 0 Then
  Begin
    dpf.Append;
    Self.dpfetdcodigo.AsInteger := Self.etdcodigo.Field.AsInteger;
  End
  Else
  Begin
    dpf.Edit;
    If Self.dpfetdcodigo.AsString = '0' Then
      Self.dpfetdcodigo.AsString := '';
  End;
end;

procedure Tfcli.DadosPessoaisEnter(Sender: TObject);
begin
  inherited;
  if dpfnatural.Visible then
  begin
    dpfnatural.SetFocus;
  end;
end;

procedure Tfcli.etdapelidoEnter(Sender: TObject);
begin
  inherited;
  If (Self.psituacao.Caption = 'Incluindo') And (Self.tpecodigo.Text = '1') Then
  Begin
    Self.etdapelido.Text := Self.etdidentificacao.Text;
  End;
end;

procedure Tfcli.etddoc1Exit(Sender: TObject);
var
  textorig: string;
begin
  inherited;

  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if etddoc1.Text <> '' then
    if verificadocumento then
    Begin
      Bvalidar.Enabled := True;
      if tpecodigo.Field.AsInteger = 1 then
      begin
        tcbcodigo.Field.AsInteger := 3;;
        tcbcodigo.TabStop := False;
        tcbcodigo.ReadOnly := True;
      end
      else
      begin
        tcbcodigo.TabStop := True;
        tcbcodigo.ReadOnly := False;
      end;
    End
    else
    begin
      Bvalidar.Enabled := False;
      Self.tpecodigo.SetFocus;
    end;
end;

procedure Tfcli.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  if not cfg.Active then
    cfg.Open;

  cfgmcli.Close;
  cfgmcli.Params[0].AsInteger := Self.cfgcfgcodigo.AsInteger;
  cfgmcli.Open;

  ajustasitdadospesfis;

  inherited;

  ajustabotoes;

  Self.bconfirma.Enabled := False;

  if psituacao.Caption = 'Alterando' then
    if verificadocumento then
    Begin
      tpecodigo.Enabled := False;
      etddoc1.Enabled := False;
    End
    else
    begin
      tpecodigo.Enabled := True;
      etddoc1.Enabled := True;
      Bvalidar.Enabled := False;
      Self.tpecodigo.SetFocus;
    end;

  if (cfgmclicfgmclivalidacpf.AsInteger = 0) then
  begin
    if Situacao = 'Incluindo' then
      etddoc1.Field.AsString := '0';
    tpecodigo.Enabled := True;
    etddoc1.Enabled := True;
  end;
end;

procedure Tfcli.paginasChange(Sender: TObject);
begin
  { inherited }
  ajustabotoes;
end;

procedure Tfcli.registroAfterInsert(DataSet: TDataSet);
begin
  { inherited; }

end;

procedure Tfcli.registroAfterPost(DataSet: TDataSet);
begin
  inherited;
  { if (cfgmclicfgmclivalidacpf.AsInteger = 0) then
    if (etddoc1.Field.AsString = '0') then
    begin
    registro.Edit;
    registroetddoc1.AsString := registroetdcodigo.AsString;
    registro.Post;
    end; }
end;

procedure Tfcli.registroBeforePost(DataSet: TDataSet);
begin
  inherited;

  If registro.State = dsInsert Then
  Begin
    Self.registroetddatacad.AsFloat := Date;
    Self.registroetddataalt.AsFloat := Date;
    Self.registroetdativo.AsInteger := 1;
  End
  Else
  Begin
    Self.registroetddataalt.AsFloat := Date;
    Self.registroetdativo.AsInteger := 1;
  End;
end;

function Tfcli.DPFValidaCamposRequeridos: Boolean;
var
  I: Integer;
begin
  Result := True;

  for I := 0 to Self.Ddpf.DataSet.FieldCount - 1 do
    if Self.Ddpf.DataSet.Fields[I].Required then
      if Self.Ddpf.DataSet.Fields[I].AsString = '' then
      begin
        Application.MessageBox(PChar('Campo "' + Self.Ddpf.DataSet.Fields[I].DisplayLabel + '" precisa ser preenchido!'), 'Dados Pessoais',
          MB_ICONWARNING + MB_OK);
        Result := False;
        break;
      end;
end;

end.
