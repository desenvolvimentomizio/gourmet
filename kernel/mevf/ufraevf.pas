unit ufraevf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, uPegaBase, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Graphics, System.ImageList, Vcl.ImgList, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfraevf = class(Tfrabase)
    uqtabelaevfcodigo: TIntegerField;
    uqtabelapcgcodigo: TIntegerField;
    uqtabelaevfidentificacao: TStringField;
    uqtabelatevcodigo: TIntegerField;
    uqtabelacedcodigo: TIntegerField;
    uqtabelapcgidentificacao: TStringField;
    uqtabelatevidentificacao: TStringField;
    uqtabelacedidentificacao: TStringField;
    uqtabelasenidentificacao: TStringField;
    uqtabelarbccodigo: TIntegerField;
    uqtabelaevfresumida: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraevf: Tfraevf;

  // Início ID do Módulo fraevf
const
  vPlIdMd = '01.12.91.001-01';
  vPlTitMdl = 'Evento da Folha';

  // Fim ID do Módulo fraevf

implementation

uses
  ufevf;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraevf := Tfraevf.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraevf := Tfraevf.Create(pCargaFrame);
  try
    fraevf.CriaAcoesDeAcesso;
  finally
    fraevf.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraevf.ActAlterarExecute(Sender: TObject);
begin
  { consulta.Close;
    consulta.SQL.Text := 'SELECT evfcodigo FROM eva WHERE evfcodigo = ' + Self.uqtabelaevfcodigo.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    ShowMessage('Não é permitido alterar eventos que já fazem parte de folha!')
    else }

  CriaFormulario(Tfevf, uqtabelaevfcodigo.AsString, '');
end;

procedure Tfraevf.ActExcluirExecute(Sender: TObject);
var
  vlpodeeva: boolean;
  vlpodeefi: boolean;
begin

  vlpodeeva := true;
  vlpodeefi := true;
  consulta.Close;
  consulta.SQL.Text := 'select count(evachave) from eva where evfcodigo=' + uqtabelaevfcodigo.AsString;
  consulta.Open;

  if (consulta.Fields[0].AsInteger > 0) then
  begin
    vlpodeeva := false;
  end;

  consulta.Close;
  consulta.SQL.Text := 'select count(efichave) from efi where evfcodigo=' + uqtabelaevfcodigo.AsString;
  consulta.Open;

  if (consulta.Fields[0].AsInteger > 0) then
  begin
    vlpodeefi := false;
  end;

  if (vlpodeefi) and (vlpodeeva) then
  begin
    inherited;
  end
  else
  begin
    ShowMessage('Este evento ja faz parte de alguma folha, não pode ser excluida!');
  end;
end;

procedure Tfraevf.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfevf, '', '');
end;

procedure Tfraevf.Carregar;
begin
  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
    begin
      // uqtabela.Filter := TxtFiltro;
      // uqtabela.Filtered := True;
    end;

  inherited;

end;

end.
