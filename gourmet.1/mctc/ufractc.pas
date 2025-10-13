unit ufractc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfractc = class(Tfrabase)
    uqtabelactccodigo: TIntegerField;
    uqtabelactacodigo: TIntegerField;
    uqtabelactaidentificacao: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fractc: Tfractc;

  // Início ID do Módulo fractc
const
  vPlIdMd = '01.02.07.004-01';
  vPlTitMdl = 'Permissão de Acesso a Contas';

  // Fim ID do Módulo fractc

implementation

{$R *.dfm}

uses ufctc;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fractc := Tfractc.Create(pCargaFrame);
  Result := fractc;
end;

exports execute;

procedure Tfractc.ActAlterarExecute(Sender: TObject);
begin
  criaformulario(Tfctc, uqtabelactccodigo.AsString, self.vChaveMestre);
end;

procedure Tfractc.ActExcluirExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  If Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), 'Confirmação', MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)
    = IDNO Then
    Exit;

  self.uqtabela.Delete;
  self.ActAtualizar.execute;
end;

procedure Tfractc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Tfctc, '', self.vChaveMestre);
end;

end.
