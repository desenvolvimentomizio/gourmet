unit ufradtm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfradtm = class(Tfrabase)
    uqtabeladtmplaca: TStringField;
    uqtabeladtmvolumes: TFloatField;
    uqtabeladtmpesobruto: TFloatField;
    uqtabeladtmpesoliq: TFloatField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabeladtmespecie: TStringField;
    uqtabeladtmmarcas: TStringField;
    uqtabelaufssigla: TStringField;
    uqtabeladtmchave: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
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
  fradtm: Tfradtm;

  // Início ID do Módulo fradtm
const
  vPlIdMd = '02.04.09.002-01';
  vPlTitMdl = 'Dados de Transporte - NF-e';

  // Fim ID do Módulo fradtm

implementation

{$R *.dfm}

uses ufdtm;

procedure Tfradtm.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfdtm, uqtabeladtmchave.AsString, MesChave);
end;

procedure Tfradtm.ActExcluirExecute(Sender: TObject);
begin
  if uqtabela.IsEmpty then
    Exit;

  If Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), 'Confirmação', MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)
    = IDNO Then
    Exit;

  Self.uqtabela.Delete;
  Self.ActAtualizar.Execute;

end;

procedure Tfradtm.ActIncluirExecute(Sender: TObject);
begin
  if not uqtabela.IsEmpty then
  begin
    Application.MessageBox(PChar('É permitido somente um transportador por NF.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  CriaFormulario(Tfdtm, '', MesChave);
end;

procedure Tfradtm.Carregar;
begin
  if TxtFiltro <> '' then
    MesChave := TxtFiltro;

  inherited;

end;

procedure Tfradtm.SetMesChave(const Value: String);
begin
  FMesChave := Value;

  uqtabela.Params[0].AsString := FMesChave;
end;

end.
