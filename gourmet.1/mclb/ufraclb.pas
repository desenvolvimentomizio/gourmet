unit ufraclb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.SysUtils, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Vcl.Dialogs, System.ImageList, Vcl.ImgList,  Winapi.Messages,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfraclb = class(Tfrabase)
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelaclbdescmaximo: TFloatField;
    ActPermissoes: TAction;
    uqtabelaclbativo: TStringField;
    uqtabelafncidentificacao: TStringField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    uqtabelasenativo: TStringField;
    mostra: TProgressBar;
    lprocesseo: TLabel;
    ActDireitos: TAction;
    ActEtiqueta: TAction;
    eti: TUniQuery;
    etietichave: TIntegerField;
    eticlbcodigo: TIntegerField;
    etitrmcodigo: TIntegerField;
    etipuncodigo: TIntegerField;
    etieetcodigo: TIntegerField;
    etietiquanti: TIntegerField;
    etietiemissao: TDateTimeField;
    etivrpcodigo: TIntegerField;
    etirelcodigo: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActPermissoesExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActDireitosExecute(Sender: TObject);
    procedure ActEtiquetaExecute(Sender: TObject);
  private
    procedure VerificaAcesso;
    procedure InputBoxSetPasswordChar(var Msg: TMessage);

  public
    procedure Carregar; override;
    { Public declarations }

  end;

  TVerificaAcessos = function(AOwner: TComponent; Conexao: TUniConnection; Acesso: TAcesso): string;

var
  fraclb: Tfraclb;

  // Início ID do Módulo fraclb
const
  vPlIdMd = '01.01.02.001-01';
  vPlTitMdl = 'Usuários';
  InputBoxMessage = WM_USER + 200;

  // Fim ID do Módulo fraclb

implementation

{$R *.dfm}

uses ufclb, ufdireitos, PASSWORD;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraclb := Tfraclb.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraclb := Tfraclb.Create(pCargaFrame);
  try
    fraclb.CriaAcoesDeAcesso;
  finally
    fraclb.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraclb.InputBoxSetPasswordChar(var Msg: TMessage);
var
  hInputForm, hEdit, hButton: HWND;
begin
  hInputForm := Screen.Forms[0].Handle;
  if (hInputForm <> 0) then
  begin
    hEdit := FindWindowEx(hInputForm, 0, 'TEdit', nil);
    {
      // Change button text:
      hButton := FindWindowEx(hInputForm, 0, 'TButton', nil);
      SendMessage(hButton, WM_SETTEXT, 0, Integer(PChar('Cancel')));
    }
    SendMessage(hEdit, EM_SETPASSWORDCHAR, Ord('*'), 0);
  end;
end;

procedure Tfraclb.ActAlterarExecute(Sender: TObject);
var
  vlPode: boolean;
  vlSenhaProdutor: string;
  vlPasswordDlg: TPasswordDlg;
begin

  if Self.uqtabelaclbcodigo.AsString = '1' then
  begin

    vlPasswordDlg := TPasswordDlg.Create(Self);
    if vlPasswordDlg.ShowModal = mrok then
    begin
      vlPode := true;
    end
    else
    begin
      vlPode := false;
    end;
  end
  else
  begin

    vlPode := true;
  end;
  if vlPode then
  begin
    CriaFormulario(Tfclb, Self.uqtabelaclbcodigo.AsString, '');
  end;

end;

procedure Tfraclb.ActPermissoesExecute(Sender: TObject);
var
  vlPode: boolean;
  vlSenhaProdutor: string;
  vlPasswordDlg: TPasswordDlg;
begin
  try
    vlPasswordDlg := TPasswordDlg.Create(Self);
    if vlPasswordDlg.ShowModal = mrok then
    begin
      vlPode := true;
    end
    else
    begin
      vlPode := false;
    end;

    if vlPode then
    begin
      CriaFormulario(Tfdireitos, Self.uqtabelaclbcodigo.AsString, '');
    end;

  finally
    freeandnil(vlPasswordDlg);
  end;

end;

procedure Tfraclb.Carregar;
begin
  if TxtFiltro <> '' then
  begin
    uqtabela.Filter := TxtFiltro;
    uqtabela.Filtered := true;
  end;

  inherited;

end;

procedure Tfraclb.ActDireitosExecute(Sender: TObject);
begin
  inherited;
  VerificaAcesso;
end;

procedure Tfraclb.ActEtiquetaExecute(Sender: TObject);
var
  vlLoginSenha: string;
begin
  inherited;

  eti.Open;
  eti.Append;

  eticlbcodigo.AsInteger := Acesso.Usuario;
  etitrmcodigo.AsInteger := 1;
  etieetcodigo.AsInteger := 1;
  etietiemissao.AsFloat := Now;
  consulta.Close;
  consulta.SQL.Text := 'select puncodigo from pun limit 1';
  consulta.Open;
  etipuncodigo.AsInteger := consulta.FieldByName('puncodigo').AsInteger;
  etietiquanti.AsInteger := uqtabelaclbcodigo.AsInteger;
  // etivrpcodigo.AsInteger := 1;
  etirelcodigo.AsString := '16';
  eti.Post;

end;

procedure Tfraclb.ActExcluirExecute(Sender: TObject);
begin
  If Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), PChar('Excluir'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Text := 'delete from dau where clbcodigo=' + Self.uqtabelaclbcodigo.AsString;
    consulta.ExecSQL;

    Self.uqtabela.Delete;
    Self.ActAtualizar.Execute;
  End;
end;

procedure Tfraclb.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfclb, '', '');
end;

Procedure Tfraclb.VerificaAcesso;
var
  exec: TVerificaAcessos;
  Pack: Cardinal;
begin
  if fileexists(extractfilepath(Application.ExeName) + 'modulos\fada.bpl') then
  begin
    Pack := LoadPackage('modulos\fada.bpl');
    if Pack <> 0 then
      try
        @exec := GetProcAddress(Pack, PChar('VerificaAcessos'));
        if Assigned(exec) then
          exec(Application, ZCone, Acesso);
      finally
        // DoUnLoadPackage(Application, pack);
      end;
  end;
End;

end.
