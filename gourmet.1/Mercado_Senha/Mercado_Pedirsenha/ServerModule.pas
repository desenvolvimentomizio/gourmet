unit ServerModule;

interface

uses
  Classes, SysUtils, uniGUIServer, uniGUIMainModule, uniGUIApplication, uIdCustomHTTPServer,
  uniGUITypes, Data.DB, MemDS, DBAccess, Uni, UniProvider, MySQLUniProvider;

type
  Tmm = class(TUniGUIServerModule)
    conexao: TUniConnection;
    MySQLUniProvider1: TMySQLUniProvider;
    consulta_senha: TUniQuery;
  private
    { Private declarations }
  protected
    procedure FirstInit; override;
  public
    { Public declarations }
  end;

function mm: Tmm;

implementation

{$R *.dfm}

uses
  UniGUIVars;

function mm: Tmm;
begin
  Result:=Tmm(UniGUIServerInstance);
end;

procedure Tmm.FirstInit;
begin
  InitServerModule(Self);
end;

initialization
  RegisterServerModuleClass(Tmm);
end.
