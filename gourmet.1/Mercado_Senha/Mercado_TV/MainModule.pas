unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider, MemDS;

type
  Tmm = class(TUniGUIMainModule)
    conexao: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    consulta: TUniQuery;
    imagem: TUniQuery;
    manipula: TUniQuery;
    nome: TUniQuery;
    logocliente: TUniQuery;
    logoclientecfgcodigo: TIntegerField;
    logoclientecfglogo: TBlobField;
    procedure UniGUIMainModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FSlidePathesSL: TStringList;
  end;

function mm: Tmm;

implementation

{$R *.dfm}

uses
  UniGUIVars, ServerModule, uniGUIApplication;

function mm: Tmm;
begin
  Result := Tmm(UniApplication.UniMainModule)
end;

procedure Tmm.UniGUIMainModuleCreate(Sender: TObject);
var

  appPath: string;

begin
  FSlidePathesSL := TStringList.Create;

  FSlidePathesSL.Clear;

  if FileExists(UniServerModule.StartPath + 'imagens\slides\1.jpeg') then
    FSlidePathesSL.Add('imagens\slides\1.jpeg');

  if FileExists(UniServerModule.StartPath + 'imagens\slides\2.jpeg') then
    FSlidePathesSL.Add('imagens\slides\2.jpeg');

  if FileExists(UniServerModule.StartPath + 'imagens\slides\3.jpeg') then
    FSlidePathesSL.Add('imagens\slides\3.jpeg');

  if FileExists(UniServerModule.StartPath + 'imagens\slides\4.jpeg') then
    FSlidePathesSL.Add('imagens\slides\4.jpeg');

  if FileExists(UniServerModule.StartPath + 'imagens\slides\5.jpeg') then
    FSlidePathesSL.Add('imagens\slides\5.jpeg');

  if FileExists(UniServerModule.StartPath + 'imagens\slides\6.jpeg') then
    FSlidePathesSL.Add('imagens\slides\6.jpeg');

  if FileExists(UniServerModule.StartPath + 'imagens\slides\7.jpeg') then
    FSlidePathesSL.Add('imagens\slides\7.jpeg');

  if FileExists(UniServerModule.StartPath + 'imagens\slides\8.jpeg') then
    FSlidePathesSL.Add('imagens\slides\8.jpeg');

  if FileExists(UniServerModule.StartPath + 'imagens\slides\9.jpeg') then
    FSlidePathesSL.Add('imagens\slides\9.jpeg');

  if FileExists(UniServerModule.StartPath + 'imagens\slides\10.jpeg') then
    FSlidePathesSL.Add('imagens\slides\10.jpeg');


end;

initialization

RegisterMainModuleClass(Tmm);

end.
