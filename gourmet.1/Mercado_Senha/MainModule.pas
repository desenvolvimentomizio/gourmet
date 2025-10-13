unit MainModule;

interface

uses
  uniGUIMainModule, SysUtils, Classes, UniProvider, MySQLUniProvider, Data.DB,
  MemDS, DBAccess, Uni;

type
  Tmm = class(TUniGUIMainModule)
    conexao: TUniConnection;
    ajusta_senha: TUniQuery;
    consulta_senha: TUniQuery;
    MySQLUniProvider1: TMySQLUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
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

initialization
  RegisterMainModuleClass(Tmm);
end.
