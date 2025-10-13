unit SynoAPIEx;

interface

uses System.SysUtils;
function PSOpenDeviceEx(var pHandle: THandle; nDeviceType: integer; iCom: integer = 1; iBaud: integer = 1; nPack: integer = 2; iDenum: integer = 0): integer; stdcall;
  external 'SynoAPIEx.dll';

function PSVfyPwd(pHandle: THandle; nAddr: integer; var pPassword: THandle): integer; stdcall; external 'SynoAPIEx.dll';

function PSCloseDeviceEx(pHandle: THandle): integer; stdcall; external 'SynoAPIEx.dll';
function PSGetImage(IntPtr: THandle; nAddr: integer): integer; stdcall; external 'SynoAPIEx.dll';
function PSGenChar(IntPtr: THandle; nAddr: integer; iBufferID: integer): integer; stdcall; external 'SynoAPIEx.dll';
function PSRegModule(IntPtr: THandle; nAddr: integer): integer; stdcall; external 'SynoAPIEx.dll';
function PSStoreChar(IntPtr: THandle; nAddr: integer; iBufferID: integer; iPageID: integer): integer; stdcall; external 'SynoAPIEx.dll';
function PSLoadChar(IntPtr: THandle; nAddr: integer; iBufferID: integer; iPageID: integer): integer; stdcall; external 'SynoAPIEx.dll';
function PSUpChar(IntPtr: THandle; nAddr: integer; iBufferID: integer; pTemplet: TBytes; var iTempletLength: integer): integer; stdcall; external 'SynoAPIEx.dll';
function PSDelChar(IntPtr: THandle; nAddr:Integer; iStartPageID:Integer; nDelPageNum:Integer): integer; stdcall; external 'SynoAPIEx.dll';
function PSTemplateNum(IntPtr: THandle; nAddr: integer; var iMbNum: integer): integer; stdcall; external 'SynoAPIEx.dll';

function PSSearch(IntPtr: THandle; nAddr: integer; iBufferID: integer; iStartPage: integer; iPageNum: integer; var iMbAddress: integer; var iscore: integer): integer; stdcall;
  external 'SynoAPIEx.dll';
function PSDownChar(IntPtr: THandle; nAddr: integer; iBufferID: integer; pTemplet: TBytes; iTempletLength: integer): integer; stdcall; external 'SynoAPIEx.dll';

implementation

end.
