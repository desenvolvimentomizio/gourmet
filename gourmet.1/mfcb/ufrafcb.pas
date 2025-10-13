unit ufrafcb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfrafcb = class(Tfrabase)
    uqtabelaflacodigo: TIntegerField;
    uqtabelaflaidentificacao: TStringField;
    uqtabelafcbchave: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frafcb: Tfrafcb;
  detfcb: Tfrafcb;

  // Início ID do Módulo frafcb
const
  vPlIdMd = '01.01.06.001-01';
  vPlTitMdl = 'Vínculo Colaborador e Filial';

  // Fim ID do Módulo frafcb

implementation

{$R *.dfm}

uses uffcb;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafcb := Tfrafcb.Create(pCargaFrame);
  Result := frafcb;
end;

exports execute;

procedure Tfrafcb.ActExcluirExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  if Application.MessageBox(Pchar('Confirma a exclusão do registro selecionado?'), 'Excluir', MB_ICONQUESTION + MB_YESNO) = IDYES then
  begin
    uqtabela.Delete;
    ActAtualizar.execute;
  end;
end;

procedure Tfrafcb.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tffcb, '', Self.vChaveMestre);
end;

end.
