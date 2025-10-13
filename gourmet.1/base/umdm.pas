unit umdm;

interface

uses
  System.SysUtils,uni, System.Classes, UniProvider, MySQLUniProvider, Data.DB,
  DBAccess,    uni;

type
  Tmdm = class(TDataModule)
    UCconexao: tuniconnection;
    MySQLUniProvider: TMySQLUniProvider;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  mdm: Tmdm;
  DataModuleCustCount: Integer;


implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}


function CriaDataModule(owner:TComponent):TDataModule;
begin
  if not Assigned(mdm) then
   mdm := Tmdm.Create(owner);
  Inc(DataModuleCustCount);
  result:=mdm;
end;


procedure FreeDataModuleCust;
begin
  Dec(DataModuleCustCount);
  if DataModuleCustCount <= 0 then
  begin
    FreeAndNil(mdm);
    DataModuleCustCount := 0;
  end;
end;

exports CriaDataModule;


initialization
  DataModuleCustCount := 0;


end.
