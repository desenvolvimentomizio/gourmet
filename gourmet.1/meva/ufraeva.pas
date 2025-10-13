unit ufraeva;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfraeva = class(Tfrabase)
    uqtabelaevachave: TIntegerField;
    uqtabelaflhchave: TIntegerField;
    uqtabelaevfcodigo: TIntegerField;
    uqtabelaevfidentificacao: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaevavalor: TFloatField;
    uqtabelaevacriacao: TDateTimeField;
    uqtabelaflhidentificacao: TStringField;
    uqtabelatevcodigo: TIntegerField;
    uqtabelaevahistorico: TStringField;
    uqtabelatevidentificacao: TStringField;
    uqtabelaeflcodigo: TIntegerField;
    uqtabelaeflidentificacao: TStringField;
    ActImportaValores: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActImportaValoresExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraeva: Tfraeva;

  // In�cio ID do M�dulo fraeva
const
  vPlIdMd = '02.12.90.002-01';
  vPlTitMdl = 'Lan�amentos Mensais';

  // Fim ID do M�dulo fraeva

implementation

uses
  ufeva, ufimpeva;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraeva := Tfraeva.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraeva := Tfraeva.Create(pCargaFrame);
  try
    fraeva.CriaAcoesDeAcesso;
  finally
    fraeva.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraeva.ActAlterarExecute(Sender: TObject);
begin
  if (uqtabelatevcodigo.AsInteger in [1]) then
  begin
    Application.MessageBox(PChar('Altera��o n�o � permitida para eventos do tipo "Fixo".'), 'Aten��o', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if not(uqtabelaeflcodigo.AsInteger in [1, 2]) then
  begin
    Application.MessageBox(PChar('N�o � permitido Alterar Lan�amento, pois a folha j� foi Fechada ou Liquidada.'), 'Aten��o', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfeva, uqtabelaevachave.AsString, '');
end;

procedure Tfraeva.ActExcluirExecute(Sender: TObject);
begin
  if not(uqtabelaeflcodigo.AsInteger in [1, 2]) then
  begin
    Application.MessageBox(PChar('N�o � permitido Excluir Lan�amento, pois a folha j� foi Fechada ou Liquidada.'), 'Aten��o', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;
end;

procedure Tfraeva.ActImportaValoresExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfimpeva, '' , '');
end;

procedure Tfraeva.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfeva, '', '');
end;

end.
