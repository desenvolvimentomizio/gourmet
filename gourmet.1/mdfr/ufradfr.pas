unit ufradfr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfradfr = class(Tfrabase)
    uqtabeladfrchave: TIntegerField;
    uqtabelatdfidentificacao: TStringField;
    uqtabeladfrdocumento: TStringField;
    uqtabelameschave: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    FMesChave: String;
    procedure SetMesChave(const Value: String);
    { Private declarations }
  published
    property MesChave: String read FMesChave write SetMesChave;
  public
    { Public declarations }

    procedure Carregar; override;

  end;

var
  fradfr: Tfradfr;

  // Início ID do Módulo fravrp
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Documento Fiscal Referenciado';

  // Fim ID do Módulo fravrp

implementation

{$R *.dfm}

uses ufdfr;

procedure Tfradfr.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfdfr, uqtabeladfrchave.AsString, MesChave);
end;

procedure Tfradfr.ActExcluirExecute(Sender: TObject);
begin
  If Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), 'Confirmação', MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)
    = IDNO Then
    Exit;

  Self.uqtabela.Delete;
  Self.ActAtualizar.Execute;
end;

procedure Tfradfr.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfdfr, '', MesChave);
end;

procedure Tfradfr.Carregar;
begin
  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
      MesChave := TxtFiltro;

  inherited;

end;

procedure Tfradfr.SetMesChave(const Value: String);
begin
  FMesChave := Value;

  uqtabela.Params[0].AsString := FMesChave;
end;

end.
