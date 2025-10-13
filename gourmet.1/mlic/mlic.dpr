library mlic;

{ Important note about DLL memory management: ShareMem must be the
  first unit in your library's USES clause AND your project's (select
  Project-View Source) USES clause if your DLL exports any procedures or
  functions that pass strings as parameters or function results. This
  applies to all strings passed to and from your DLL--even those that
  are nested in records and classes. ShareMem is the interface unit to
  the BORLNDMM.DLL shared memory manager, which must be deployed along
  with your DLL. To avoid using BORLNDMM.DLL, pass string information
  using PChar or ShortString parameters. }

uses
  madExcept,
  madLinkDisAsm,
  madListHardware,
  madListProcesses,
  madListModules,
  System.SysUtils,
  System.Classes,
  IniFiles;

{$R *.res}
{ * dll para retonar usuario, senha, cnpj, licença * }

function licenca: string;stdcall;
var
  vlUsuario, vlSenha, vlCNPJ, vlNrLicenca: string;
begin
  vlUsuario := 'root';
  vlSenha := 'xda973';
  vlCNPJ := '70521521000170';
  vlNrLicenca := '00000001';
  result := vlUsuario + ';' + vlSenha + ';' + vlCNPJ + ';' + vlNrLicenca;
end;

exports licenca;

begin

end.
