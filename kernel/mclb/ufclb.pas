unit ufclb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, ufuncoes, System.ImageList;

type
  Tfclb = class(Tfrmbase)
    registroclbcodigo: TIntegerField;
    registroclbidentificacao: TStringField;
    registroclbdescmaximo: TFloatField;
    registroclbsenha: TStringField;
    registroclbativo: TStringField;
    Label1: TLabel;
    clbcodigo: TDBEdit;
    clbidentificacao: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    clbdescmaximo: TDBEdit;
    Label4: TLabel;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenativo: TStringField;
    Label5: TLabel;
    clbativo: TDBEdit;
    fnc: tuniquery;
    fncfnccodigo: TIntegerField;
    fncfncidentificacao: TStringField;
    registrofnccodigo: TIntegerField;
    registrofncidentificacao: TStringField;
    Label6: TLabel;
    fnccodigo: TDBEdit;
    Label7: TLabel;
    clbpercdispmora: TDBEdit;
    registroclbpercdispmulta: TFloatField;
    registroclbpercdispmora: TFloatField;
    registroclbpercdescrfi: TFloatField;
    registroclbliberacredito: TIntegerField;
    Label8: TLabel;
    clbpercdispmulta: TDBEdit;
    Label9: TLabel;
    clbpercdescrfi: TDBEdit;
    Label10: TLabel;
    clbliberacredito: TDBEdit;
    registrosenliberacredito: TStringField;
    TSContas: TTabSheet;
    TSFiliais: TTabSheet;
    Plfcb: TPanel;
    Plctc: TPanel;
    registroclbperccomissao: TFloatField;
    Label13: TLabel;
    clbperccomissao: TDBEdit;
    als: tuniquery;
    alsalschave: TIntegerField;
    alsalsalteracao: TDateTimeField;
    alsclbcodigo: TIntegerField;
    alsalssenhaanterior: TStringField;
    edSenha: TEdit;
    registroclbsiphost: TStringField;
    registroclbsipsenha: TStringField;
    registroclbsipusuario: TStringField;
    registroclbsipramal: TStringField;
    registroclbrelogio: TIntegerField;
    registrosenclbrelogio: TStringField;
    Label20: TLabel;
    clbrelogio: TDBEdit;
    fcb: tuniquery;
    fcbfcbchave: TIntegerField;
    fcbflacodigo: TIntegerField;
    fcbclbcodigo: TIntegerField;
    clbsuper: TDBCheckBox;
    registroclbsuper: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure clbidentificacaoExit(Sender: TObject);
    procedure edSenhaEnter(Sender: TObject);
    procedure edSenhaExit(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
  private
    procedure ProcessaSenha;
  public
    { Public declarations }
    hfcb: THandle;
    hfct: THandle;
  end;

var
  fclb: Tfclb;

  // Início ID do Módulo fraclb
const
  vPlIdMd = '01.01.02.001-02';

  // Fim ID do Módulo fraclb

implementation

{$R *.dfm}

uses ufsenha;

procedure Tfclb.bconfirmaClick(Sender: TObject);
begin
  if psituacao.Caption = 'Incluindo' then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select count(clbcodigo) from clb where  clbsuper=1';
    consulta.Open;
  end
  else
  begin
    consulta.Close;
    consulta.SQL.Text := 'select count(clbcodigo) from clb where clbcodigo<>' + clbcodigo.Field.AsString + ' and clbsuper=1';
    consulta.Open;

  end;

  if not consulta.IsEmpty then
  begin
    if psituacao.Caption = 'Incluindo' then
    begin
      if (consulta.Fields[0].AsInteger > 0) and (clbsuper.Field.AsInteger = 1) then
      begin
        Application.MessageBox(PChar('Atenção! É permitido apenas um Administrador no sistema.'), 'Atenção', MB_ICONEXCLAMATION + MB_OK);
        exit;
      end;

    end
    else
    begin

      if consulta.Fields[0].AsInteger > 1 then
      begin
        Application.MessageBox(PChar('Atenção! É permitido apenas um Administrador no sistema.'), 'Atenção', MB_ICONEXCLAMATION + MB_OK);
        // exit;
      end;
      if psituacao.Caption = 'incluind' then
      begin
        if (consulta.Fields[0].AsInteger = 1) and (clbsuper.Field.AsInteger = 1) then
        begin
          Application.MessageBox(PChar('Atenção! É permitido apenas um Administrador no sistema.'), 'Atenção', MB_ICONEXCLAMATION + MB_OK);
          exit;
        end;
      end
      else
      begin
        if (consulta.Fields[0].AsInteger = 1) and (clbsuper.Field.AsInteger = 1) then
        begin
          Application.MessageBox(PChar('Atenção! É permitido apenas um Administrador no sistema.'), 'Atenção', MB_ICONEXCLAMATION + MB_OK);
          exit;
        end;

      end;

    end;

  end;

  ProcessaSenha;

  if Situacao = 'Incluindo' then
    if Trim(edSenha.Text) = '' then
    begin
      Application.MessageBox(PChar('É obrigatório a definição de uma senha.'), 'Atenção', MB_ICONWARNING + MB_OK);
      edSenha.SetFocus;
      exit;
    end;

  inherited;

  if Situacao = 'Incluindo' then
  begin

    als.Close;
    als.Params[0].AsInteger := registroclbcodigo.AsInteger;
    als.Open;

    als.Append;
    alsalsalteracao.AsString := agora(Application, zcone);
    alsclbcodigo.AsInteger := registroclbcodigo.AsInteger;
    alsalssenhaanterior.AsString := '';
    als.Post;

    fcb.Close;
    fcb.Open;

    fcb.Append;
    fcbflacodigo.AsInteger := acesso.Filial;
    fcbclbcodigo.AsInteger := registroclbcodigo.AsInteger;
    fcb.Post;

  end;

end;

procedure Tfclb.clbidentificacaoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    exit;

  clbidentificacao.Field.AsString := Trim(clbidentificacao.Field.AsString);

  if clbidentificacao.Field.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT clb.clbcodigo, clb.clbidentificacao FROM clb ';
    consulta.SQL.Add('WHERE clb.clbidentificacao = :clbidentificacao ');

    consulta.Params[0].AsString := clbidentificacao.Field.AsString;

    { if Situacao = 'Incluindo' then
      begin
      consulta.SQL.Add('AND clb.clbcodigo <> :clbcodigo');
      consulta.Params[1].AsInteger := clbcodigo.Field.AsInteger;
      end;

      consulta.Open;

      if not consulta.IsEmpty then
      begin
      Application.MessageBox(PChar('Este nome de usuário já está em uso no sistema.' + #13 + #13 + 'Usuário: ' + consulta.Fields[0].AsString + ' - ' +
      consulta.Fields[1].AsString), 'Atenção', MB_ICONWARNING + MB_OK);
      clbidentificacao.SetFocus;
      end; }
  end;
end;

procedure Tfclb.edSenhaEnter(Sender: TObject);
begin
  if Trim(edSenha.Text) = '' then
    edSenha.Text := '';
end;

procedure Tfclb.edSenhaExit(Sender: TObject);
begin
  if Trim(edSenha.Text) = '' then
    edSenha.Text := '     ';
end;

procedure Tfclb.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  if psituacao.Caption = 'Alterando' then
  begin
    hfcb := CarregaFrame('mfcb', Plfcb, 'Usuários');
    hfcb := CarregaFrame('mctc', Plctc, 'Usuários');
  end;

  edSenha.Color := PEG_COR_VALORREQUERIDO;
end;

procedure Tfclb.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Self.registroclbativo.AsInteger := 1;
  Self.registrofnccodigo.AsInteger := 1;
  registroclbperccomissao.AsFloat := 0;
  registroclbdescmaximo.AsFloat := 0;
  registroclbativo.AsInteger := 1;
  registroclbpercdispmulta.AsFloat := 0;
  registroclbpercdispmora.AsFloat := 0;
  registroclbpercdescrfi.AsFloat := 0;
  registroclbliberacredito.AsInteger := 0;
  registroclbperccomissao.AsFloat := 0;
  registroclbrelogio.AsInteger := 0;

end;

procedure Tfclb.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registroclbrelogio.AsInteger := 1;
end;

procedure Tfclb.ProcessaSenha;
var
  vlSenha: String;
begin
  if Trim(edSenha.Text) = '' then
    exit;

  if Self.registro.State = dsBrowse then
    Self.registro.Edit;

  consulta.Close;
  consulta.SQL.Text := 'SELECT MD5(''' + UpperCase(Trim(edSenha.Text) + 'pega') + ''')';
  consulta.Open;
  vlSenha := Copy(consulta.Fields[0].AsString, 1, 15);

  registroclbsenha.AsString := vlSenha;
end;

end.
