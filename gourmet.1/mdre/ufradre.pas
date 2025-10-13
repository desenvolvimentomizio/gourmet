unit ufradre;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, dialogs,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,  System.ImageList,
  Vcl.ImgList;

type
  Tfradre = class(Tfrabase)
    uqtabelaccgcodigo: TIntegerField;
    uqtabelaccgidentificacao: TStringField;
    uqtabeladrechave: TIntegerField;
    uqtabelagrecodigo: TIntegerField;
    uqtabelagreidentificacao: TStringField;
    ActAgrupamentos: TAction;
    uqtabeladreposicao: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAgrupamentosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fradre: Tfradre;

  // Início ID do Módulo fradre
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Contas para Demonstrações Contábeis do Grupo';

  // Fim ID do Módulo fradre

implementation

uses
  ufdre,ufagr;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradre := Tfradre.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fradre := Tfradre.Create(pCargaFrame);
  try
    fradre.CriaAcoesDeAcesso;
  finally
    fradre.Free;
  end;
end;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradre := Tfradre.Create(pCargaFrame);
  Result := fradre;
end;

exports formuFrame, defineacesso, execute;

procedure Tfradre.ActAgrupamentosExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfagr, '', vChaveMestre);
end;

procedure Tfradre.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfdre, uqtabeladrechave.AsString, uqtabelagrecodigo.AsString);
end;

procedure Tfradre.ActExcluirExecute(Sender: TObject);
begin
  { inherited; }

  if Self.Autorizado(Sender) then
    if (Sender is TAction) then
      if (Sender as TAction).Tag > 0 then
      begin
        // Exclui registro selecionado
        if ActExcluir.Enabled = False then
        begin
          ShowMessage('Excluir não autorizada!');
        end
        else
        begin
          if Application.MessageBox(Pchar('Confirma a exclusão do registro selecionado?'), Pchar('Excluir'),
            MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes then
          begin
            Self.uqtabela.Delete;
            try
              Self.ActAtualizar.execute;
            except

            end;
          end;
        end;
      end;

end;

procedure Tfradre.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfdre, '', vChaveMestre);
end;

procedure Tfradre.Carregar;
begin
  case FormaFrame of
    ffDocado:
      if vChaveMestre <> '' then
      begin
        uqtabela.Filter := 'grecodigo = ' + vChaveMestre;
        uqtabela.Filtered := True;
      end;
    ffFormu:
      if TxtFiltro <> '' then
      begin
        uqtabela.Filter := Trim(TxtFiltro);
        uqtabela.Filtered := True;
      end;
  end;

  inherited;

end;

end.
