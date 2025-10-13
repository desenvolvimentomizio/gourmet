unit ufcle;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Forms, ufrmbase, ACBrBase, ACBrValidador,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.Graphics, Vcl.Dialogs,
  System.SysUtils, System.StrUtils, ufrabase, uFuncoes, uPegaBase, System.ImageList;

type
  Tfcle = class(Tfrmbase)
    plTelefone: TPanel;
    Label1: TLabel;
    spClientes: TSpeedButton;
    nrTelefone: TMaskEdit;
    plNome: TPanel;
    tpe: TUniQuery;
    tpetpecodigo: TIntegerField;
    tpetpeidentificacao: TStringField;
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
    registroetdsuframa: TStringField;
    eetdidentificacao: TLabel;
    etdidentificacao: TDBEdit;
    Label6: TLabel;
    tpecodigo: TDBEdit;
    Label7: TLabel;
    etddoc1: TDBEdit;
    Bvalidar: TBitBtn;
    Spt1: TSplitter;
    PledrCle: TPanel;
    Pletf: TPanel;
    Spt2: TSplitter;
    ACBrValidador: TACBrValidador;
    cfgcfgcodigo: TIntegerField;
    cfgcfgcontrolalimite: TIntegerField;
    cfgcfgmclivalidacpf: TIntegerField;
    etv: TUniQuery;
    etvetvcodigo: TIntegerField;
    etvtvicodigo: TIntegerField;
    etvetdcodigo: TIntegerField;
    nrDDD: TMaskEdit;
    Label2: TLabel;
    registrotcbcodigo: TIntegerField;
    ActClientes: TAction;
    cfgcfgeminclusao: TIntegerField;
    etf: TUniQuery;
    dpf: TUniQuery;
    dpfetdcodigo: TIntegerField;
    dpfdpfdtnasc: TDateField;
    dsdpf: TUniDataSource;
    Label3: TLabel;
    dpfdtnasc: TDBEdit;
    dpfdpfcodigo: TIntegerField;
    ets: TUniQuery;
    etsetscodigo: TIntegerField;
    etstsecodigo: TIntegerField;
    etsetdcodigo: TIntegerField;
    etsetsdata: TDateField;
    etsetshistorico: TStringField;
    procedure FormShow(Sender: TObject);
    procedure BvalidarClick(Sender: TObject);
    function verificadocumento: Boolean;
    procedure nrTelefoneKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tpecodigoEnter(Sender: TObject);
    procedure etddoc1Exit(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure nrTelefoneEnter(Sender: TObject);
    procedure etdidentificacaoExit(Sender: TObject);
    procedure ActClientesExecute(Sender: TObject);
    procedure dpfdtnascExit(Sender: TObject);
    procedure dpfBeforePost(DataSet: TDataSet);
    procedure bcancelaClick(Sender: TObject);
    procedure nrTelefoneExit(Sender: TObject);
    procedure etdidentificacaoEnter(Sender: TObject);
  private
    function verificainclusao(nomeframe: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
    vpEtdCodigo: string;
    vpEdrCodigo: string;
    vpEtfTelefone: string;
  end;

  TtpFrameDocados = (tfEdr, tfEtf);

  TFramesDocados = array [0 .. 1] of string;

const
  FramesDocados: TFramesDocados = ('edr', 'etf');

var
  fcle: Tfcle;

  // Início ID do Módulo fcle
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo fcle

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin

  fcle := Tfcle.Create(pCargaFrame);

  if fcle.ShowModal = mrok then
  begin
    Result := fcle.vpEtdCodigo + '#' + fcle.vpEdrCodigo + '$' + fcle.vpEtfTelefone;
  end
  else
  begin
    Result := '';
  end;
  fcle.Free;
end;

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcle := Tfcle.Create(pCargaFrame);
  fcle.ShowModal;

  Result := fcle.vpEtdCodigo + '#' + fcle.vpEdrCodigo + '$' + fcle.vpEtfTelefone;
  fcle.Free;
end;

exports formulario, formu;

function Tfcle.verificadocumento: Boolean;
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
      if (copy(etddoc1.Field.AsString, 1, 6) = '00.000') or (copy(etddoc1.Field.AsString, 16, 3) = '-00') then
      begin
        ShowMessage('Tipo de Pessoa ou CNPJ inválido!');
        tpecodigo.SetFocus;
        Result := False;
      end;
    end;
  end
  else
  begin
    if (cfgcfgmclivalidacpf.AsInteger = 0) then
      if (registroetddoc1.AsFloat = 0) or (registroetdcodigo.AsInteger = registroetddoc1.AsFloat) then
      begin
        etddoc1.Color := $00F9D188;
        Exit;
      end;

    ShowMessage('Tipo de Pessoa ou CPF/CNPJ inválido!');
    tpecodigo.SetFocus;
    Result := False;
  end;
end;

procedure Tfcle.ActClientesExecute(Sender: TObject);
var
  vlEtdCodigo: string;

begin
  inherited;
  nrTelefone.Text := '';

  vlEtdCodigo := MostraLista('mcli', 'etd.etdcodigo<>0');
  if vlEtdCodigo <> '' then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select etdcodigo from etf where etdcodigo<>0 and etdcodigo=' + vlEtdCodigo;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      vlEtdCodigo := consulta.Fields[0].AsString;
      registro.Close;
      registro.Params[0].AsString := vlEtdCodigo;
      registro.Open;
      plNome.Caption := registroetdidentificacao.AsString;
      plNome.Color := clgreen;
      plNome.Font.Color := clWhite;
      registro.Edit;
      psituacao.Caption := 'Alterando';
      etf.Close;
      etf.SQL.Text := 'select etftelefone from etf where etdcodigo<>0 and ttfcodigo=1 and etdcodigo=' + vlEtdCodigo;
      etf.Open;

      nrTelefone.Text := copy(etf.Fields[0].AsString, 3, 10);
      nrDDD.Text := copy(etf.Fields[0].AsString, 1, 2);

      Bvalidar.Click;
      bconfirma.SetFocus;

    end;
  end;
end;

procedure Tfcle.bcancelaClick(Sender: TObject);

begin
  if Self.registroetdcodigo.AsInteger = 0 then
    Close
  else
    inherited;

end;

procedure Tfcle.bconfirmaClick(Sender: TObject);
{ var
  fra: Tfrabase;

  begin
  try
  vpEtdCodigo := registroetdcodigo.AsString;
  fra := Tfrabase(Application.FindComponent('fraedr'));
  vpEdrCodigo := fra.DBGLista.DataSource.DataSet.Fieldbyname('edrcodigo').AsString;

  inherited;

  finally
  FreeAndNil(fra);
  end; }

var
  fra: Tfrabase;
  fraetf: Tfrabase;

  vlEtfNumero: string;
  vledrativo: integer;
  vletfativo: integer;
  vlEtdCodigo: integer;

begin
  if Self.Bvalidar.Visible then
  begin
    ShowMessage('Clique no botão Validar!');
    Exit;
  end;

  if (etdidentificacao.Field.AsString = '') or (tpecodigo.Field.AsString = '') then
  begin
    ShowMessage('O nome do cliente é necessário!');
    etdidentificacao.SetFocus;
    Exit;
  end;

  try
    vpEtdCodigo := registroetdcodigo.AsString;
    fra := Tfrabase(Application.FindComponent('fraedr'));
    fra.Aplicacao := 'Delivery';
    vledrativo := fra.DBGLista.DataSource.DataSet.Fieldbyname('edrativo').AsInteger;

    if vledrativo = 0 then
    begin
      ShowMessage('O endereço selecionado esta INATIVO, selecione outro ou REATIVE o seleciondo!');
      Exit;
    end;

    vpEdrCodigo := fra.DBGLista.DataSource.DataSet.Fieldbyname('edrcodigo').AsString;

    fraetf := Tfrabase(Application.FindComponent('fraetf'));

    vletfativo := fraetf.DBGLista.DataSource.DataSet.Fieldbyname('etfativo').AsInteger;

    if vletfativo = 0 then
    begin
      ShowMessage('O telefone selecionado esta INATIVO, selecione outro ou REATIVE o seleciondo!');
      Exit;
    end;

    vlEtfNumero := fraetf.DBGLista.DataSource.DataSet.Fieldbyname('etftelefone').AsString;

    vpEtfTelefone := SoNumeros(Self.nrDDD.Text + Self.nrTelefone.Text);

    if ((SoNumeros(nrDDD.Text) + vlEtfNumero) <> vpEtfTelefone) { and (psituacao.Caption <> 'Incluindo') } then
    begin
      nrTelefone.Text := vlEtfNumero;

      consulta.Close;
      consulta.SQL.Text := 'select etdcodigo from etf where etdcodigo<>0 and etftelefone=' + QuotedStr(SoNumeros(nrDDD.Text) + SoNumeros(nrTelefone.Text));
      consulta.Open;

      if (not consulta.IsEmpty) and (SoNumeros(nrTelefone.Text) <> '') then
      begin
        vlEtdCodigo := consulta.Fields[0].AsInteger;
        registro.Close;
        registro.Params[0].AsInteger := vlEtdCodigo;
        registro.Open;

        plNome.Caption := registroetdidentificacao.AsString;
        plNome.Color := clgreen;
        plNome.Font.Color := clWhite;
        registro.Edit;
        psituacao.Caption := 'Alterando';

        vpEtfTelefone := vlEtfNumero;
        Bvalidar.Click;

      end
      else
      begin
        vpEtfTelefone := vlEtfNumero;
      end;

    end;

    inherited;

    if psituacao.Caption = 'Incluindo' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'update etd set etddescsituacao=' + QuotedStr('Cadastro parcial para venda no Delivery') + ',tsecodigo=2  where etdcodigo =' +
        Self.registroetdcodigo.AsString;
      consulta.Execsql;

      ets.Close;

      if ets.Active = False then
      begin
        ets.Params[0].AsInteger := Self.registroetdcodigo.AsInteger;
        ets.Open;
      end;
      ets.Append;
      etstsecodigo.AsInteger := tseBloqueioParcial;
      etsetdcodigo.AsInteger := Self.registroetdcodigo.AsInteger;
      etsetsdata.AsFloat := Self.vdataatual;
      etsetshistorico.AsString := 'Cadastro parcial para venda no Delivery';
      ets.Post;

    end;

  finally
    // FreeAndNil(fra);
    // FreeAndNil(fraetf);

  end;

end;

procedure Tfcle.BvalidarClick(Sender: TObject);
Var
  vmotivo: String;
  vlEtlChave: string;

  I: integer;
  vCarregaFrame: Boolean;
Begin
  Inherited;

  { if not verificadocumento then
    Begin
    Bvalidar.Visible := True;
    tpecodigo.Enabled := True;
    etdidentificacao.Enabled := True;
    etddoc1.Enabled := True;
    Self.bconfirma.Enabled := False;
    etddoc1.Color := clYellow;
    Exit;
    End; }

  Self.bconfirma.Enabled := True;

  if Self.etddoc1.Field.AsString = '0' then
  begin
    if vpEtdCodigo <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT etd.etdcodigo, etd.etddoc1, etv.tvicodigo, etd.tsecodigo, etd.etddescsituacao, tpecodigo, etdidentificacao ';
      consulta.SQL.Add('FROM etd LEFT JOIN etv ON etd.etdcodigo = etv.etdcodigo ');
      consulta.SQL.Add('WHERE etd.etdcodigo=' + vpEtdCodigo + ' ');
      consulta.SQL.Add('ORDER BY etv.tvicodigo  LIMIT 1');
      consulta.Open;
    end;
  end
  else
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT etd.etdcodigo, etd.etddoc1, etv.tvicodigo, etd.tsecodigo, etd.etddescsituacao, tpecodigo, etdidentificacao ';
    consulta.SQL.Add('FROM etd LEFT JOIN etv ON etd.etdcodigo = etv.etdcodigo ');
    consulta.SQL.Add('WHERE (etddoc1 IN (''' + Self.etddoc1.Field.AsString + ''', ''' + SoNumeros(Self.etddoc1.Field.AsString) + ''')) limite 1');
    consulta.SQL.Add('ORDER BY etv.tvicodigo');
    consulta.Open;

  end;

  (* Verifica existência de cadastro com mesmo Documento *)
  If Not(consulta.IsEmpty) and (registroetddoc1.AsString <> '0') Then
  Begin
    case consulta.Fields[2].AsInteger of
      (* Vínculo CLIENTE *)
      tviCliente:
        if (Self.psituacao.Caption = 'Incluindo') or ((Self.psituacao.Caption = 'Alterando') and (consulta.Fields[0].AsInteger <> registroetdcodigo.AsInteger)) Then
        Begin
          Application.MessageBox(PChar('Este documento já está cadastrado para o cliente: '#13 + #13 + consulta.Fields[0].AsString + ' ' + consulta.Fields[6].AsString + '!'),
            'Informação', MB_ICONINFORMATION + MB_OK);
          registro.Cancel;
          registro.Close;
          registro.Params[0].AsInteger := consulta.Fields[0].AsInteger;
          registro.Open;

          If (consulta.Fields[3].AsInteger IN [1, 2, 3]) Then
          Begin
            If consulta.Fields[4].AsString = '' Then
              vmotivo := 'PARA VENDA A PRAZO'
            Else
              vmotivo := consulta.Fields[4].AsString;

            { If Application.MessageBox(PChar('Este cliente está BLOQUEADO! '#13 + #13 + 'Motivo:  ' + vmotivo + #13 + #13 + 'Deseja DESBLOQUEÁ-LO ?'), 'Atenção',
              MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
              Begin
              consulta.Close;
              consulta.SQL.Text := 'update etd set etddescsituacao='''', tsecodigo=0 where etdcodigo=' + registro.Fields[0].AsString;
              consulta.Execsql;
              End
              Else
              Begin }
            Self.psituacao.Caption := 'Alterando';
            Self.bcancela.Click;
            Exit;
            { End; }
          End;

          Self.psituacao.Caption := 'Alterando';
        End;

      (* Vínculo FORNECEDOR OU TRANSPORTADOR *)
      tviFornecedor, tviTransportador, tviColaborador:
        If Application.MessageBox(PChar('Esta entidade já está cadastrada como ' + IfThen(consulta.Fields[2].AsInteger = tviFornecedor, 'Fornecedor !',
          ' Colaborador ou Transportador !') + #13 + #13 + 'Deseja cadastrá-la como Cliente também ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
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
          etvetdcodigo.AsInteger := Self.registroetdcodigo.AsInteger;
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
    if psituacao.Caption = 'Incluindo' then
    begin
      if registro.State <> dsbrowse then
      begin
        consulta.Close;
        consulta.SQL.Text := 'select max(etdcodigo)+1 from etd';
        consulta.Open;
        registroetdcodigo.AsInteger := consulta.Fields[0].AsInteger;
      end;
    end;

    if registro.State <> dsbrowse then
    begin
      registro.Post;
    end;
    if dpf.State <> dsedit then
      dpf.Edit;

    dpfetdcodigo.AsInteger := registroetdcodigo.AsInteger;

    etv.Open;
    etv.Append;
    etvetdcodigo.AsInteger := Self.registroetdcodigo.AsInteger;
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

      MostraFormu('metl', Self.registroetdcodigo.AsString, vlEtlChave);

    end;

  End;

  (*
    ** Carrega Módulos "Docados" **
  *)

  for I := 0 to 1 do
  begin
    vCarregaFrame := True;

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
  ajustabotoes;

  if psituacao.Caption = 'Incluindo' then
    bconfirma.Click;
end;

procedure Tfcle.dpfBeforePost(DataSet: TDataSet);
begin
  inherited;
  dpfetdcodigo.AsInteger := registroetdcodigo.AsInteger;
end;

procedure Tfcle.dpfdtnascExit(Sender: TObject);
begin
  inherited;

  if tpecodigo.Enabled then
    tpecodigo.SetFocus;
end;

function Tfcle.verificainclusao(nomeframe: string): Boolean;
var
  fra: TObject;
  vPlDestino: TPanel;
  I: integer;
begin
  Result := True;

  vPlDestino := TPanel(Self.FindComponent('Pl' + nomeframe));
  if nomeframe = 'etf' then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fra' + nomeframe));
    if fra = nil then
    begin
      CarregaFrame('m' + nomeframe, Pletf, 'Delivery', SoNumeros(nrDDD.Text) + SoNumeros(nrTelefone.Text));
    end;
  end
  else if nomeframe = 'edr' then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fra' + nomeframe));
    if fra = nil then
    begin
      CarregaFrame('m' + nomeframe, PledrCle, 'Delivery');
    end;
  end
  else
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fra' + nomeframe));
    if fra = nil then
    begin
      CarregaFrame('m' + nomeframe, vPlDestino, 'Clientes');
    end;
  end;

  if Self.psituacao.Caption = 'Incluindo' then
    if fra <> nil then
      if (fra is Tfrabase) then
        if (fra as Tfrabase).vretorno = '0' then
        begin
          Result := False;
          Self.psituacao.Caption := 'Cancelando';
        end;

end;

procedure Tfcle.etddoc1Exit(Sender: TObject);
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
      registrotcbcodigo.AsInteger := 3;;
    End
    else
    begin
      Bvalidar.Enabled := False;
      Self.tpecodigo.SetFocus;
    end;

end;

procedure Tfcle.etdidentificacaoEnter(Sender: TObject);
begin

  if not registro.Active then
    nrTelefone.SetFocus
  else
    inherited;

end;

procedure Tfcle.etdidentificacaoExit(Sender: TObject);
begin
  { inherited; }
  if not registro.Active then
    Exit;

  if trim(etdidentificacao.Field.AsString) <> '' then
  begin
    Self.ValidaSaida(Sender);

    if Self.ActiveControl = bcancela then
      Exit;

  end
  else
  begin

    if Self.ActiveControl = bcancela then
      Exit;

    nrTelefone.SetFocus;
  end;

end;

procedure Tfcle.FormShow(Sender: TObject);
begin
  Self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfcle.nrTelefoneEnter(Sender: TObject);
begin
  inherited;
  PostMessage(nrTelefone.Handle, EM_SETSEL, 0, -1);
end;

procedure Tfcle.nrTelefoneExit(Sender: TObject);
begin
  if not registro.Active then
    Exit;

  inherited;

end;

procedure Tfcle.nrTelefoneKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  vlEtdCodigo: integer;
  vlFra: Tfrabase;
  fra: Tframe;
  I: integer;

begin
  inherited;
  try
    consulta.Close;
    consulta.SQL.Text := 'select etdcodigo from etf where etdcodigo<>0 and etftelefone=' + QuotedStr(SoNumeros(nrDDD.Text) + SoNumeros(nrTelefone.Text));
    consulta.Open;

    if (not consulta.IsEmpty) and (SoNumeros(nrTelefone.Text) <> '') then
    begin
      vlEtdCodigo := consulta.Fields[0].AsInteger;
      vpEtdCodigo := vlEtdCodigo.ToString;
      registro.Close;
      registro.Params[0].AsInteger := vlEtdCodigo;
      registro.Open;
      plNome.Caption := registroetdidentificacao.AsString;
      plNome.Color := clgreen;
      plNome.Font.Color := clWhite;
      registro.Edit;
      psituacao.Caption := 'Alterando';
      Bvalidar.Click;
      bconfirma.SetFocus;
    end
    else if (length(SoNumeros(nrDDD.Text)) = 2) and (((length(SoNumeros(nrTelefone.Text)) = 8) and (copy(nrTelefone.Text, 1, 2) = '35')) or (length(SoNumeros(nrTelefone.Text)) = 9))
    then
    begin

      if Self.FindComponent('fraedr') <> nil then
      begin
        vlFra := (Self.FindComponent('fraedr') as Tfrabase);
        FreeAndNil(vlFra);
      end;

      if Self.FindComponent('fraetf') <> nil then
      begin
        vlFra := (Self.FindComponent('fraetf') as Tfrabase);
        FreeAndNil(vlFra);
      end;

      registro.Close;
      registro.Params[0].AsString := '';
      registro.Open;
      registro.Append;
      plNome.Caption := 'INCLUINDO NOVO REGISTRO';
      plNome.Color := clYellow;
      plNome.Font.Color := clRed;
      psituacao.Caption := 'Incluindo';
      etdidentificacao.SetFocus;
      Bvalidar.Visible := True;

      bconfirma.Enabled := False;
    end
    else
    begin
      plNome.Caption := '';
      plNome.Color := clYellow;
      plNome.Font.Color := clRed;
      psituacao.Caption := 'Incluindo';

      registro.Close;
      bconfirma.Enabled := False;

      fra := nil;
      fra := Tfrabase(Application.FindComponent('fraetf'));
      if fra <> nil then
        fra.Destroy;

      fra := nil;
      fra := Tfrabase(Application.FindComponent('fraedr'));

      if fra <> nil then
        fra.Destroy;

      fra := nil;
      fra := Tfrabase(Application.FindComponent('fraedrCle'));
      if fra <> nil then
        fra.Destroy;

    end;

  except

  end;
end;

procedure Tfcle.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrotpecodigo.AsInteger := 1;
  registroetddoc1.AsString := '0';
end;

procedure Tfcle.registroBeforePost(DataSet: TDataSet);
begin
  inherited;

  If registro.State = dsInsert Then
  Begin
    Self.registroetddatacad.AsFloat := Date;
    Self.registroetddataalt.AsFloat := Date;
    Self.registroetdativo.AsInteger := 1;
    Self.registroetdapelido.AsString := Self.registroetdidentificacao.AsString;
  End
  Else
  Begin
    Self.registroetddataalt.AsFloat := Date;
    Self.registroetdativo.AsInteger := 1;
  End;
end;

procedure Tfcle.tpecodigoEnter(Sender: TObject);
begin
  inherited;
  Self.txtFiltro := ' tpecodigo<>9 ';

end;

end.
