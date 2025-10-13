unit ufradpr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfradpr = class(Tfrabase)
    uqtabeladprcodigo: TIntegerField;
    uqtabeladpridentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    { Private declarations }
    function PermiteAlteraExclui: Boolean;
  public
    { Public declarations }
  end;

var
  fradpr: Tfradpr;

  // Início ID do Módulo fradpr
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Divisão de Produtos';

  // Fim ID do Módulo fradpr

implementation

{$R *.dfm}

uses ufdpr;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradpr := Tfradpr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fradpr := Tfradpr.Create(pCargaFrame);
  try
    fradpr.CriaAcoesDeAcesso;
  finally
    fradpr.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfradpr.ActAlterarExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

 { if not PermiteAlteraExclui then
    Exit;}

  CriaFormulario(Tfdpr, uqtabeladprcodigo.AsString, '');
end;

procedure Tfradpr.ActExcluirExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  if not PermiteAlteraExclui then
    Exit;

  if Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), 'Confirmação', MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES
  then
  begin
    Self.uqtabela.Delete;
    Self.ActAtualizar.Execute;
  end;
end;

procedure Tfradpr.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfdpr, '', '');
end;

function Tfradpr.PermiteAlteraExclui: Boolean;
var
  vlMensagem: String;
begin
  Result := True;
  try
    if uqtabeladprcodigo.AsInteger = 1 then
    begin
      vlMensagem := 'Ação não permitida para o registro selecionado.';
      Exit(False);
    end;

    consulta.Close;
    consulta.SQL.Text := 'SELECT pro.procodigo FROM pro WHERE pro.dprcodigo = ' + uqtabeladprcodigo.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      vlMensagem := 'Ação não permitida para o registro selecionado.' + sLineBreak + sLineBreak;
      vlMensagem := vlMensagem + 'Esta Divisão já está em uso por um ou mais produtos.';
      Exit(False);
    end;
  finally
    if Result = False then
      Application.MessageBox(PChar(vlMensagem), 'Atenção', MB_ICONWARNING + MB_OK);
  end;
end;

end.
