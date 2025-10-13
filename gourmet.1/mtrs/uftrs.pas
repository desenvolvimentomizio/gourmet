unit uftrs;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, ACBrBase, ACBrValidador, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, ufrabase, ufuncoes, Vcl.Graphics, System.SysUtils,
  System.StrUtils, Vcl.Dialogs, System.ImageList;

type
  Tftrs = class(Tfrmbase)
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registroetdapelido: TStringField;
    registroetddatacad: TDateField;
    registroetddataalt: TDateField;
    registrotpecodigo: TIntegerField;
    registrotpeidentificacao: TStringField;
    registroetddoc1: TStringField;
    registrotsecodigo: TIntegerField;
    Letddatacad: TLabel;
    etddatacad: TDBEdit;
    Letddataalt: TLabel;
    etddataalt: TDBEdit;
    tpe: tuniquery;
    tpetpecodigo: TIntegerField;
    tpetpeidentificacao: TStringField;
    etv: tuniquery;
    etvetdcodigo: TIntegerField;
    etvtvicodigo: TIntegerField;
    Label1: TLabel;
    etdidentificacao: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    etdapelido: TDBEdit;
    tpecodigo: TDBEdit;
    Label5: TLabel;
    etddoc1: TDBEdit;
    Bvalidar: TBitBtn;
    ACBrValidador: TACBrValidador;
    Pletf: TPanel;
    Pledr: TPanel;
    Spt1: TSplitter;
    Spt2: TSplitter;
    DadosFiscais: TTabSheet;
    lbpcgcodigo: TLabel;
    pcgcodigo: TDBEdit;
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    Detv: TDataSource;
    etvpcgcodigo: TIntegerField;
    etvpcgidentificacao: TStringField;
    procedure BvalidarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure etddoc1Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DadosFiscaisEnter(Sender: TObject);
    procedure etvAfterInsert(DataSet: TDataSet);
  private
    procedure salvacolunasframes;
    function verificadocumento: Boolean;
    function verificainclusao(nomeframe: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
    hedr: THandle;
    hetf: THandle;
  end;

  TFramesDocados = array [0 .. 6] of string;

const
  FramesDocados: TFramesDocados = ('edr', 'etf', 'ete', 'rfc', 'rfp', 'rfb', 'stc');

var
  ftrs: Tftrs;

  // Início ID do Módulo fratrs
const
  vPlIdMd = '01.01.04.001-02';

  // Fim ID do Módulo fratrs

implementation

{$R *.dfm}

procedure Tftrs.bconfirmaClick(Sender: TObject);
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
  begin
    salvacolunasframes;

    if (etv.State = dsedit) or (etv.State = dsinsert) then
      etv.Post;

  end;

  Inherited;
end;

procedure Tftrs.salvacolunasframes;
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

procedure Tftrs.BvalidarClick(Sender: TObject);
Var
  vmotivo: String;
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
  consulta.SQL.Text := 'SELECT etd.etdcodigo, etd.etddoc1, etv.tvicodigo, etdidentificacao ';
  consulta.SQL.Add('FROM etd LEFT JOIN etv ON etd.etdcodigo = etv.etdcodigo ');
  consulta.SQL.Add('WHERE etv.tvicodigo IS not null AND (etddoc1 IN (''' + Self.etddoc1.Field.AsString + ''', ''' + SoNumeros(Self.etddoc1.Field.AsString)
    + ''')) ');
  consulta.SQL.Add('ORDER BY etv.tvicodigo');
  consulta.Open;

  (* Verifica existência de cadastro com mesmo Documento *)
  If (Not consulta.IsEmpty) Then
  Begin
    case consulta.Fields[2].AsInteger of
      (* Vínculo FORNECEDOR *)
      tviTransportador:
        If (Self.psituacao.Caption = 'Incluindo') or
          ((Self.psituacao.Caption = 'Alterando') and (consulta.Fields[0].AsInteger <> registroetdcodigo.AsInteger)) Then
        Begin
          Application.MessageBox(PChar('Este documento já está cadastrado para o Fornecedor: '#13 + #13 + consulta.Fields[0].AsString + ' ' +
            consulta.Fields[3].AsString + '!'), 'Informação', MB_ICONINFORMATION + MB_OK);
          registro.Cancel;
          registro.Close;
          registro.Params[0].AsInteger := consulta.Fields[0].AsInteger;
          registro.Open;

          Self.psituacao.Caption := 'Alterando';
          etv.Open;
          etv.Edit;

        End
        Else
        Begin
          etv.Open;
          etv.Edit;
        End;

      (* Vínculo CLIENTE OU TRANSPORTADOR *)
      tviCliente, tviFornecedor:
        If Self.psituacao.Caption = 'Incluindo' Then
          If Application.MessageBox(PChar('Esta entidade já está cadastrada como ' + IfThen(consulta.Fields[2].AsInteger = tviCliente, 'Cliente !',
            ' Fornecedor !') + #13 + #13 + 'Deseja cadastrá-la como Transportador também ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION)
            = idyes Then
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
            etvetdcodigo.AsInteger := etdcodigo.Field.AsInteger;
            etvtvicodigo.AsInteger := tviTransportador;
            etv.Post;
            etv.Edit;
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
    etvtvicodigo.AsInteger := tviTransportador;
    etv.Post;
    etv.Edit;

  End;

  (*
    ** Carrega Módulos "Docados" **
  *)

  for I := 0 to High(FramesDocados) do
  begin
    vCarregaFrame := True;

    (* Mantive essa condição e Array com mesmos registros do cliente para compatibilidade *)
    case I of
      2 .. 6:
        vCarregaFrame := False;
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
  etddoc1.Enabled := True;
  ajustabotoes;
end;

procedure Tftrs.DadosFiscaisEnter(Sender: TObject);
begin
  inherited;
  if (cfg.FieldByName('cfgctbtrnindiv').AsInteger = 1) and (cfg.FieldByName('cfgusactb').AsInteger = 1) and (pcgcodigo.Visible) then
  begin
    pcgcodigo.Color := PEG_COR_VALORREQUERIDO;
    pcgcodigo.SetFocus;
  end;

end;

function Tftrs.verificainclusao(nomeframe: string): Boolean;
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

procedure Tftrs.etddoc1Exit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if etddoc1.Text <> '' then
    if verificadocumento then
      Bvalidar.Enabled := True
    else
    begin
      Bvalidar.Enabled := False;
      Self.tpecodigo.SetFocus;
    end;
end;

procedure Tftrs.etvAfterInsert(DataSet: TDataSet);
begin
  inherited;
  if Self.cfg.FieldByName('cfgctbtrn').AsString <> '' then
    etvpcgcodigo.AsString := Self.cfg.FieldByName('cfgctbtrn').AsString;

end;

procedure Tftrs.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  if not cfg.Active then
    cfg.Open;

  cfg.Connection := zcone;
  cfg.Open;

  if (cfg.FieldByName('cfgusactb').AsInteger = 1) and (cfg.FieldByName('cfgctbtrnindiv').AsInteger = 1) then
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
      tpecodigo.Enabled := False;
      etddoc1.Enabled := True;
    End
    else
    begin
      tpecodigo.Enabled := True;
      etddoc1.Enabled := True;
      Bvalidar.Enabled := False;
      Self.tpecodigo.SetFocus;
    end;
end;

procedure Tftrs.registroBeforePost(DataSet: TDataSet);
begin
  inherited;

  If registro.State = dsinsert Then
  Begin
    Self.registroetddatacad.AsFloat := Date;
    Self.registroetddataalt.AsFloat := Date;
  End
  Else
  Begin
    Self.registroetddataalt.AsFloat := Date;
  End;
end;

function Tftrs.verificadocumento: Boolean;
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
    ShowMessage('Tipo de Pessoa ou CPF/CNPJ inválido!');
    tpecodigo.SetFocus;
    Result := False;
  end;
end;

end.
