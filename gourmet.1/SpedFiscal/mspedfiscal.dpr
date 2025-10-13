library mspedfiscal;

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
  SysUtils,
  Classes,
  Uni,
  forms,
  Frm_SPEDFiscal in 'Frm_SPEDFiscal.pas' {FrmSPEDFiscal};

{$R *.res}


var
  ExternalUniConnection: TUniConnection;

procedure AssignConnection(UniConnection: TUniConnection); cdecl;
begin
  ExternalUniConnection:= UniConnection;
end;


function modulospedfiscal(vusrcodigo, parametros: string; ParentApplication: TApplication; ParentForm: TForm):string; export; stdcall;
var
  vFrmSPEDFiscal:tFrmSPEDFiscal;

begin

  Application.Handle := ParentApplication.Handle;
  vFrmSPEDFiscal := TFrmSPEDFiscal.Create(ParentApplication);
  vFrmSPEDFiscal.UCConexao.AssignConnect(ExternalUniConnection);
  vFrmSPEDFiscal.vusrcodigo:=vusrcodigo;
  vFrmSPEDFiscal.Showmodal;
  freeandnil(vFrmSPEDFiscal);
end;

exports
  AssignConnection,
  modulospedfiscal;



begin
end.
