unit ufals;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Dialogs,
  System.SysUtils, uFuncoes, uPegaBase;

type
  Tfals = class(Tfrmbase)
    registroalsalteracao: TDateTimeField;
    registroalschave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroalssenhaanterior: TStringField;
    edSenhaAtual: TEdit;
    edSenhaNova: TEdit;
    edSenhaConfirmacao: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    als: TUniQuery;
    procedure edSenhaAtualExit(Sender: TObject);
    procedure edSenhaConfirmacaoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure edSenhaNovaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpSenhaAtual: string;
  end;

var
  fals: Tfals;

  // Início ID do Módulo fracfg
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Alteração de Senha';

  // Fim ID do Módulo fracfg

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  Result := '';
  fals := Tfals.Create(pCargaFrame);
  if fals.ShowModal = mrOk then
    Result := '1';
  fals.Free;
end;

exports formulario;

procedure Tfals.bconfirmaClick(Sender: TObject);
var
  vsenha: string;
begin
  vsenha := chr(39) + uppercase(edSenhaConfirmacao.Text + 'pega') + chr(39);
  consulta.Close;
  consulta.SQL.Text := 'select md5(' + vsenha + ')';
  consulta.Open;

  vsenha := copy(consulta.Fields[0].AsString, 1, 15);

  consulta.Close;
  consulta.SQL.Text := 'update clb set clbsenha=' + chr(39) + vsenha + chr(39) + ' where clbcodigo = ' + Acesso.Usuario.ToString;
  consulta.ExecSQL;

  inherited;
end;

procedure Tfals.edSenhaAtualExit(Sender: TObject);
var
  senha: string;
begin
  inherited;

  ActiveControlCancela := TEdit(Sender); // Define o foco caso usuário abandone o "Cancela"

  if self.ActiveControl = bcancela then
    Exit;

  als.Close;
  als.SQL.Text := 'select clbcodigo from als where clbcodigo=' + Acesso.Usuario.ToString;
  als.Open;

  if not als.IsEmpty then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select clbsenha from clb where clbcodigo=' + Acesso.Usuario.ToString;
    consulta.Open;
    vpSenhaAtual := consulta.Fields[0].AsString;

    consulta.Close;
    consulta.SQL.Text := 'select md5(' + chr(39) + uppercase(edSenhaAtual.Text + 'pega') + chr(39) + ')';
    consulta.Open;
    senha := copy(consulta.Fields[0].AsString + 'pega', 1, 15);

  end
  else
  begin
    consulta.Close;
    consulta.SQL.Text := 'select clbsenha from clb where clbcodigo=' + Acesso.Usuario.ToString;
    consulta.Open;
    vpSenhaAtual := consulta.Fields[0].AsString;
    senha := edSenhaAtual.Text;
  end;

  if uppercase(senha) = uppercase(vpSenhaAtual) then
  begin
    edSenhaNova.Enabled := True;
    edSenhaConfirmacao.Enabled := True;
    edSenhaNova.SetFocus;

    consulta.Close;
    consulta.SQL.Text := 'select md5(' + chr(39) + uppercase(vpSenhaAtual + 'pega') + chr(39) + ')';
    consulta.Open;

    vpSenhaAtual := consulta.Fields[0].AsString;

  end
  else
  begin
    ShowMessage('Senha Atual inválida!');
    edSenhaAtual.SetFocus;
    edSenhaNova.Enabled := false;
    edSenhaConfirmacao.Enabled := false;
  end;

end;

procedure Tfals.edSenhaConfirmacaoExit(Sender: TObject);
begin
  inherited;
  ActiveControlCancela := TEdit(Sender); // Define o foco caso usuário abandone o "Cancela"

  if self.ActiveControl = bcancela then
    Exit;

  if edSenhaNova.Text = edSenhaConfirmacao.Text then
  begin
    bconfirma.SetFocus;
  end
  else
  begin
    ShowMessage('Confirmação de senha inválida!');
    edSenhaNova.Text := '';
    edSenhaConfirmacao.Text := '';
    edSenhaNova.SetFocus;
  end;
end;

procedure Tfals.edSenhaNovaExit(Sender: TObject);
begin
  inherited;
  ActiveControlCancela := TEdit(Sender); // Define o foco caso usuário abandone o "Cancela"

  if self.ActiveControl = bcancela then
    Exit;

  if Trim(edSenhaNova.Text) = '' then
  begin
    edSenhaNova.SetFocus;
    ShowMessage('Campo obrigatório.');
  end;
end;

procedure Tfals.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfals.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  self.registroalsalteracao.AsString := agora(Application, zcone);
  self.registroclbcodigo.AsInteger := Acesso.Usuario;
  registroalssenhaanterior.AsString := vpSenhaAtual;
end;

end.
