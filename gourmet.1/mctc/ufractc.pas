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

  // In�cio ID do M�dulo fractc
const
  vPlIdMd = '01.02.07.004-01';
  vPlTitMdl = 'Permiss�o de Acesso a Contas';

  // Fim ID do M�dulo fractc

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

  If Application.MessageBox(PChar('Confirma a exclus�o do registro selecionado?'), 'Confirma��o', MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)
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
