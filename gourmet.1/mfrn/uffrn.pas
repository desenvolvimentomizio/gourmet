unit uffrn;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, ACBrBase, ACBrValidador, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, ufrabase, ufuncoes, System.SysUtils, Vcl.Graphics,
  System.StrUtils, Vcl.Dialogs, System.ImageList;

type
  Tffrn = class(Tfrmbase)
    ACBrValidador: TACBrValidador;
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registroetdapelido: TStringField;
    registroetddeletar: TIntegerField;
    registrotpecodigo: TIntegerField;
    registrotpeidentificacao: TStringField;
    registroetddatacad: TDateField;
    registroetddataalt: TDateField;
    registroetddoc1: TStringField;
    registroetdobs: TStringField;
    etv: tuniquery;
    etvetvcodigo: TIntegerField;
    etvetdcodigo: TIntegerField;
    etvtvicodigo: TIntegerField;
    tpe: tuniquery;
    tpetpecodigo: TIntegerField;
    tpetpeidentificacao: TStringField;
    Label3: TLabel;
    etdcodigo: TDBEdit;
    Label4: TLabel;
    etdidentificacao: TDBEdit;
    Label6: TLabel;
    tpecodigo: TDBEdit;
    Label7: TLabel;
    etddoc1: TDBEdit;
    Label5: TLabel;
    etdapelido: TDBEdit;
    Bvalidar: TBitBtn;
    Spt3: TSplitter;
    Pletf: TPanel;
    Spt2: TSplitter;
    Plete: TPanel;
    Spt1: TSplitter;
    Pledr: TPanel;
    registroetdsuframa: TStringField;
    BvTopo: TBevel;
    referencias: TTabSheet;
    Plrfb: TPanel;
    registrotsecodigo: TIntegerField;
    tcb: tuniquery;
    tcbtcbcodigo: TIntegerField;
    tcbtcbidentificacao: TStringField;
    registrotcbcodigo: TIntegerField;
    registrotcbidentificacao: TStringField;
    etvpcgcodigo: TIntegerField;
    Detv: TDataSource;
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    etvpcgidentificacao: TStringField;
    DadosFiscais: TTabSheet;
    etdsuframa: TDBEdit;
    Label2: TLabel;
    lbpcgcodigo: TLabel;
    pcgcodigo: TDBEdit;
    tcbcodigo: TDBEdit;
    Label8: TLabel;
    procedure registroBeforePost(DataSet: TDataSet);
    procedure BvalidarClick(Sender: TObject);
    procedure etdapelidoEnter(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure etddoc1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure tpecodigoExit(Sender: TObject);
    procedure etvAfterInsert(DataSet: TDataSet);
    procedure DadosFiscaisEnter(Sender: TObject);
    procedure etdidentificacaoExit(Sender: TObject);
    procedure etdapelidoExit(Sender: TObject);
  private
    procedure salvacolunasframes;
    function verificadocumento: Boolean;
    function verificainclusao(nomeframe: string): Boolean;
  public
    { Public declarations }
  end;

  TFramesDocados = array [0 .. 6] of string;

const
  FramesDocados: TFramesDocados = ('edr', 'etf', 'ete', 'rfc', 'rfp', 'rfb', 'stc');

var
  ffrn: Tffrn;

  // Início ID do Módulo frafrn
const
  vPlIdMd = '01.01.03.001-02';

  // Fim ID do Módulo frafrn
implementation

{$R *.dfm}

procedure Tffrn.bconfirmaClick(Sender: TObject);
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
    exit;
  End;

  If consulta.RecordCount > 1 Then
  Begin
    Application.MessageBox(PChar('Atenção é PERMITIDO cadastro de apenas um endereço Principal !'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
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
    exit;
  End;

  If consulta.RecordCount > 1 Then
  Begin
    Application.MessageBox(PChar('Atenção é PERMITIDO cadastro de apenas um telefone Principal !'), 'Atenção', MB_ICONWARNING + MB_OK);
    exit;
  End;

  If Self.bconfirma.Caption = 'Confirma' Then
  begin

    if (etv.State = dsedit) or (etv.State = dsinsert) then
      etv.Post;

    salvacolunasframes;

  end;



  Inherited;

  if self.etdcodigo.Field.AsString<>'' then
  begin
  consulta.Close;
  consulta.SQL.Text:='update mfi set mfisituacao=9 where rfichave in (select rfichave from rfi where etdcodigo='+self.etdcodigo.Field.AsString+')';
  consulta.ExecSQL;
  end;


end;

procedure Tffrn.salvacolunasframes;
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

procedure Tffrn.tpecodigoExit(Sender: TObject);
begin
  Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    exit;

  if tpecodigo.Field.IsNull then
    exit;

  if tpecodigo.Field.AsInteger = 9 then
  begin
    if psituacao.Caption = 'Incluindo' then
    begin
      Self.etddoc1.Field.AsString := '0';
      Self.tcbcodigo.Field.AsString := '3';
    end;
    etddoc1.ReadOnly := True;
    etddoc1.Color := PEG_COR_VALORPADRAO;

    Bvalidar.Enabled := True;
  end
  else
  begin
    etddoc1.ReadOnly := False;
    etddoc1.Color := PEG_COR_VALORREQUERIDO;

    Bvalidar.Enabled := False;
  end;
end;

procedure Tffrn.BvalidarClick(Sender: TObject);
Var
  vmotivo: String;
  I: Integer;
  vCarregaFrame: Boolean;
  vlMensa:string;
Begin
  Inherited;

  if psituacao.Caption = 'Incluindo' then
  begin
    {
      1	Revenda
      2	Contribuinte
      3	Não Contribuinte
      4	Produtor Rural
      5	Industria
      6	Orgão Público
    }

    if Self.registrotpecodigo.AsInteger = 1 then
      registrotcbcodigo.AsInteger := 3
    else
      registrotcbcodigo.AsInteger := 2;

  end;

  if not verificadocumento then
  Begin
    Bvalidar.Visible := True;
    tpecodigo.Enabled := True;
    etdidentificacao.Enabled := True;
    etddoc1.Enabled := True;
    etdapelido.Enabled := True;

    Self.bconfirma.Enabled := False;
    etddoc1.Color := clYellow;
    exit;
  End;

  Self.bconfirma.Enabled := True;

  consulta.Close;
  consulta.SQL.Text := 'SELECT etd.etdcodigo, etd.etddoc1, etv.tvicodigo, etdidentificacao,tsecodigo ';
  consulta.SQL.Add('FROM etd LEFT JOIN etv ON etd.etdcodigo = etv.etdcodigo ');
  consulta.SQL.Add('WHERE etv.tvicodigo IS not null AND (etddoc1 IN (''' + Self.etddoc1.Field.AsString + ''', ''' + SoNumeros(Self.etddoc1.Field.AsString)
    + ''')) ');
  consulta.SQL.Add('ORDER BY etv.tvicodigo');
  consulta.Open;

  vlMensa:='';
  if consulta.FieldByName('tsecodigo').AsInteger=9 then
  begin
  vlMensa:=', o cadastro esta DESATIVADO, será REATIVADO';

  end;


  (* Verifica existência de cadastro com mesmo Documento *)
  If (Not consulta.IsEmpty) Then
  Begin
    case consulta.Fields[2].AsInteger of
      (* Vínculo FORNECEDOR *)
      tviFornecedor:
        If (Self.psituacao.Caption = 'Incluindo') or
          ((Self.psituacao.Caption = 'Alterando') and (consulta.Fields[0].AsInteger <> registroetdcodigo.AsInteger)) Then
        Begin
          Application.MessageBox(PChar('Este documento já está cadastrado para o Fornecedor: '#13 + #13 + consulta.Fields[0].AsString + ' ' +
            consulta.Fields[3].AsString + vlMensa+ '!'), 'Informação', MB_ICONINFORMATION + MB_OK);
          registro.cancel;
          registro.Close;
          registro.Params[0].AsInteger := consulta.Fields[0].AsInteger;
          registro.Open;

          registro.Edit;
          registrotsecodigo.AsInteger:=0;
          registro.Edit;


          Self.psituacao.Caption := 'Alterando';
          etv.Open;
          etv.edit;
        End
        else
        begin
          Self.psituacao.Caption := 'Alterando';
          etv.Open;
          etv.edit;
        end;

      (* Vínculo CLIENTE OU TRANSPORTADOR *)
      tviCliente, tviTransportador, tviColaborador:
        If Self.psituacao.Caption = 'Incluindo' Then
        begin
          If Application.MessageBox(PChar('Este entidade já está cadastrada como ' + IfThen(consulta.Fields[2].AsInteger = tviCliente, 'Cliente!',
            ' Transportador!') + #13 + #13 + 'Deseja cadastrá-la como Fornecedor também?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
          Begin
            registro.Close;
            registro.Params[0].AsInteger := consulta.Fields[0].AsInteger;
            registro.Open;

            registro.edit;
            registrotsecodigo.AsInteger := 0;
            registro.Post;

            Self.psituacao.Caption := 'Alterando';

            etv.Open;
            etv.Append;
            etvetdcodigo.AsInteger := etdcodigo.Field.AsInteger;
            etvtvicodigo.AsInteger := tviFornecedor;
            etv.Post;
            etv.edit;
          End
          Else
          Begin
            Self.bcancela.Click;
            exit;
          End;
        end
        else
        begin
          etv.Open;
          etv.edit;
        end;
    end;
  End
  Else
  Begin
    registro.Post;

    etv.Open;
    etv.Append;
    etvetdcodigo.AsInteger := Self.etdcodigo.Field.AsInteger;
    etvtvicodigo.AsInteger := tviFornecedor;
    etv.Post;
    etv.edit;
  End;

  (*
    ** Carrega Módulos "Docados" **
  *)

  Self.referencias.TabVisible := True;

  for I := 0 to High(FramesDocados) do
  begin
    vCarregaFrame := True;

    (* Mantive essa condição e Array com mesmos registros do cliente para compatibilidade *)
    case I of
      3, 4, 6:
        vCarregaFrame := False;
    end;

    if vCarregaFrame then
      if not verificainclusao(FramesDocados[I]) then
      begin
        bcancela.Click;
        exit;
      end;
  end;

  Bvalidar.Visible := False;
  tpecodigo.Enabled := False;
  etddoc1.Enabled := True;
  ajustabotoes;
end;

procedure Tffrn.DadosFiscaisEnter(Sender: TObject);
begin
  inherited;
  tcbcodigo.SetFocus;
  if (cfg.FieldByName('cfgctbforindiv').AsInteger = 1) and (cfg.FieldByName('cfgusactb').AsInteger = 1) and (pcgcodigo.Visible) then
  begin
    pcgcodigo.Color := PEG_COR_VALORREQUERIDO;
  end;

end;

function Tffrn.verificainclusao(nomeframe: string): Boolean;
var
  fra: TObject;
  vPlDestino: TPanel;
  I: Integer;
begin
  Result := True;

  vPlDestino := TPanel(Self.FindComponent('Pl' + nomeframe));

  CarregaFrame('m' + nomeframe, vPlDestino, 'Fornecedores');

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

procedure Tffrn.etdapelidoEnter(Sender: TObject);
begin
  inherited;
  If (Self.psituacao.Caption = 'Incluindo') Then
  Begin
    Self.etdapelido.Text := Self.etdidentificacao.Text;
  End;
end;

procedure Tffrn.etdapelidoExit(Sender: TObject);
begin
  if length(trim(etdidentificacao.Field.AsString))<3 then
  begin
      ShowMessage('Atenção: Este campo precisa no mínimo 3 letras !');
      etdidentificacao.SetFocus;
      Exit;
  end;

  inherited;

end;

procedure Tffrn.etddoc1Exit(Sender: TObject);
begin
  if tpecodigo.Field.AsInteger = 9 then
    exit;

  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    exit;

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

procedure Tffrn.etdidentificacaoExit(Sender: TObject);
begin
  if length(trim(etdidentificacao.Field.AsString))<3 then
  begin
      ShowMessage('Atenção: Este campo precisa no mínimo 3 letras !');
      etdidentificacao.SetFocus;
      Exit;
  end;

  inherited;

end;

procedure Tffrn.etvAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if Self.cfg.FieldByName('cfgctbfor').AsString <> '' then
    etvpcgcodigo.AsString := Self.cfg.FieldByName('cfgctbfor').AsString;

end;

procedure Tffrn.FormShow(Sender: TObject);
begin
 self.ActiveControl:=etdidentificacao;
  IdModulo := vPlIdMd;

  cfg.Connection := zcone;
  cfg.Open;

  if (cfg.FieldByName('cfgusactb').AsInteger = 1) {and (cfg.FieldByName('cfgctbforindiv').AsInteger = 1)} then
  begin
    lbpcgcodigo.Visible := True;
    pcgcodigo.Visible := True;
    // etvpcgcodigo.Required := True;
  end
  else
  begin
    lbpcgcodigo.Visible := False;
    pcgcodigo.Visible := False;
    // etvpcgcodigo.Required := False;
  end;

  inherited;
  Self.ajustabotoes;
  Self.bconfirma.Enabled := False;

  if psituacao.Caption = 'Alterando' then
    if verificadocumento then
    Begin
      if (tpecodigo.Field.AsInteger = 9) then
      begin
        tpecodigo.Enabled := True;
        etddoc1.ReadOnly := True;
      end
      else
      begin
        tpecodigo.Enabled := False;
        etddoc1.Enabled := True;
      end;
    End
    else
    begin
      tpecodigo.Enabled := True;
      etddoc1.Enabled := True;
      Bvalidar.Enabled := False;
      Self.tpecodigo.SetFocus;
    end;
end;

procedure Tffrn.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  If registro.State = dsinsert Then
  Begin
    Self.registroetddatacad.AsFloat := date;
    Self.registroetddataalt.AsFloat := date;
  End
  Else
  Begin
    Self.registroetddataalt.AsFloat := date;
  End;
end;

function Tffrn.verificadocumento: Boolean;
var
  vlTamCorreto: Boolean;
begin
  Result := True;

  etddoc1.Field.AsString := SoNumeros(etddoc1.Field.AsString);
  ACBrValidador.AjustarTamanho := True;
  ACBrValidador.Documento := etddoc1.Field.AsString;

  case Self.tpecodigo.Field.AsInteger of
    tpeFisica:
      begin
        ACBrValidador.TipoDocto := docCPF;
        vlTamCorreto := Length(etddoc1.Field.AsString) = 11;
      end;
    tpeJuridica:
      begin
        ACBrValidador.TipoDocto := docCNPJ;
        vlTamCorreto := Length(etddoc1.Field.AsString) = 14;
      end;
  end;

  if (vlTamCorreto) and (ACBrValidador.Validar) then
  begin
    etddoc1.Field.AsString := ACBrValidador.Formatar;
    etddoc1.Color := $00F9D188;
  end
  else
  begin
    if (Self.tpecodigo.Field.AsInteger = 9) then
    begin
      registro.Post;
      registro.edit;
      registroetddoc1.AsString := Self.registroetdcodigo.AsString;
      registrotcbcodigo.AsInteger := 3;
      etddoc1.Color := $00F9D188;
      Result := True;
    end
    else
    begin

      showmessage('Tipo de Pessoa ou CPF/CNPJ inválido!');
      tpecodigo.SetFocus;
      Result := False;
    end;

  end;
end;

end.
