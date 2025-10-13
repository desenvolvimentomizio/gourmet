
unit ipwcore;

  {$DEFINE USEIPWORKSDLL}



interface

uses


{$IFDEF fpc}  //Lazarus
  SysUtils, Classes;
{$ELSE}
  {$IF CompilerVersion >= 23}Winapi.Windows{$ELSE}Windows{$IFEND}, {$IF CompilerVersion >= 23}System.SysUtils{$ELSE}SysUtils{$IFEND}, {$IF CompilerVersion >= 23}System.Classes{$ELSE}Classes{$IFEND};
{$ENDIF}

type
  TipwCore = class;
  TAbout = Longint;
  EIPWorks = class(Exception)
    public
      Code: integer;
      constructor CreateCode(err: Integer; desc: AnsiString);
  end;

  TipwCore = class(TComponent)
  private
  
  protected

    function AboutReadNoop: TAbout;
    procedure AboutWriteNoop(NewVal: TAbout);

    procedure AboutDlg; virtual;

    procedure SetNoopString(x: String);
    procedure SetNoopAnsiString(x: AnsiString);
    procedure SetNoopInteger(x: Integer);
    procedure SetNoopLongint(x: Longint);
    procedure SetNoopInt64(x: Int64);
    procedure SetNoopBoolean(x: Boolean);

  public
    constructor Create(AOwner: TComponent); override;

  published
    property About: TAbout read AboutReadNoop write AboutWriteNoop stored False;
  end;

  procedure Register;


{$IFNDEF LINUX}
{$IFNDEF USEIPWORKSDLL}
	function IsWinNT : boolean;
	function IPWorksLoadDRU(FileBuffer: Pointer; var EntryPoint: Pointer): Pointer;
	function IPWorksFindFunc(pBaseAddress: Pointer; FuncName: PAnsiChar): Pointer;
	function IPWorksFreeDRU(BaseAddress: Pointer; EntryPoint: Pointer): Boolean;
{$ENDIF USEIPWORKSDLL}
{$ENDIF LINUX}



implementation

{$IFNDEF USEIPWORKSDLL}
{$WARNINGS OFF}

const
  FD_READ                            = $01;
  FD_WRITE                           = $02;
  FD_OOB                             = $04;
  FD_ACCEPT                          = $08;
  FD_CONNECT                         = $10;
  FD_CLOSE                           = $20;
{$IFDEF WIN64}
  ORDINAL_MASK                       = $7FFFFFFFFFFFFFFF;
{$ELSE}
  ORDINAL_MASK                       = $7FFFFFFF;
{$ENDIF}
  IMAGE_REL_BASED_ABSOLUTE           = 0;
  IMAGE_REL_BASED_HIGH               = 1;
  IMAGE_REL_BASED_LOW                = 2;
  IMAGE_REL_BASED_HIGHLOW            = 3;
  IMAGE_REL_BASED_HIGHADJ            = 4;
  IMAGE_REL_BASED_MIPS_JMPADDR       = 5;
  IMAGE_REL_BASED_MIPS_JMPADDR16     = 9;
  IMAGE_REL_BASED_IA64_IMM64         = 9;
  IMAGE_REL_BASED_DIR64              = 10;



type
  PShort    = ^Short;
  TShortArr = array of Short;
  PShortArr = ^TShortArr;
  TDWORDArr = array of DWORD;
  PDWORDArr = ^TDWORDArr;

  // PE file header structures used to parse the dll for correct dll loading.
  // For detailed infromation about this sructures refer to MSDN library

  TIIDUnion = record
    case Integer of
      0: (Characteristics: DWORD);
      1: (OriginalFirstThunk: DWORD);
  end;

  TImgSecHdrMisc = record
    case Integer of
      0: (PhysicalAddress: DWORD);
      1: (VirtualSize: DWORD);
  end;

  _IMAGE_SECTION_HEADER = record
    Name: array[0..IMAGE_SIZEOF_SHORT_NAME - 1] of Byte;
    Misc: TImgSecHdrMisc;
    VirtualAddress: DWORD;
    SizeOfRawData: DWORD;
    PointerToRawData: DWORD;
    PointerToRelocations: DWORD;
    PointerToLinenumbers: DWORD;
    NumberOfRelocations: WORD;
    NumberOfLinenumbers: WORD;
    Characteristics: DWORD;
  end;

  IMAGE_SECTION_HEADER = _IMAGE_SECTION_HEADER;
  PIMAGE_SECTION_HEADER = ^IMAGE_SECTION_HEADER;

  PIMAGE_IMPORT_DESCRIPTOR = ^IMAGE_IMPORT_DESCRIPTOR;
  _IMAGE_IMPORT_DESCRIPTOR = record
    Union: TIIDUnion;
    TimeDateStamp: DWORD;
    ForwarderChain: DWORD;
    Name: DWORD;
    FirstThunk: DWORD;
  end;
  IMAGE_IMPORT_DESCRIPTOR = _IMAGE_IMPORT_DESCRIPTOR;

  PIMAGE_THUNK_DATA32 = ^IMAGE_THUNK_DATA32;
  _IMAGE_THUNK_DATA32 = record
    case Integer of
      0: (ForwarderString: DWORD);
      1: (Function_: DWORD);
      2: (Ordinal: DWORD);
      3: (AddressOfData: DWORD);
  end;
  IMAGE_THUNK_DATA32 = _IMAGE_THUNK_DATA32;

{$IFDEF WIN64}
  PIMAGE_THUNK_DATA64 = ^IMAGE_THUNK_DATA64;
  _IMAGE_THUNK_DATA64 = record
    case Integer of
      0: (ForwarderString: DWORD64);
      1: (Function_: DWORD64);
      2: (Ordinal: DWORD64);
      3: (AddressOfData: DWORD64);
  end;
  IMAGE_THUNK_DATA64 = _IMAGE_THUNK_DATA64;
{$ENDIF}

  PIMAGE_IMPORT_BY_NAME = ^IMAGE_IMPORT_BY_NAME;
  _IMAGE_IMPORT_BY_NAME = record
    Hint: WORD;
    Name: array[0..0] of Byte;
  end;
  IMAGE_IMPORT_BY_NAME = _IMAGE_IMPORT_BY_NAME;

  PIMAGE_EXPORT_DIRECTORY = ^IMAGE_EXPORT_DIRECTORY;
  _IMAGE_EXPORT_DIRECTORY = record
    Characteristics: DWORD;
    TimeDateStamp: DWORD;
    MajorVersion: WORD;
    MinorVersion: WORD;
    Name: DWORD;
    Base: DWORD;
    NumberOfFunctions: DWORD;
    NumberOfNames: DWORD;
    AddressOfFunctions: DWORD;
    AddressOfNames: DWORD;
    AddressOfNameOrdinals: DWORD;
  end;

  IMAGE_EXPORT_DIRECTORY = _IMAGE_EXPORT_DIRECTORY;
{$IFDEF WIN64}
  PIMAGE_NT_HEADERS = ^_IMAGE_NT_HEADERS64;
  IMAGE_THUNK_DATA  = IMAGE_THUNK_DATA64;
  PIMAGE_THUNK_DATA = ^IMAGE_THUNK_DATA64;
  MY_POINTER        = DWORD64;
  PMY_POINTER       = ^DWORD64;
{$ELSE}
  PIMAGE_NT_HEADERS = ^_IMAGE_NT_HEADERS;
  IMAGE_THUNK_DATA  = IMAGE_THUNK_DATA32;
  PIMAGE_THUNK_DATA = ^IMAGE_THUNK_DATA32;
  MY_POINTER        = DWORD;
  PMY_POINTER       = ^DWORD;
{$ENDIF}
  TEntryPointProc = function(hinstDll: HINST; fdwReason: DWORD; lpvREserved: Pointer): Boolean; stdcall; // the dll entry point procedure type

{$ENDIF USEIPWORKSDLL}

constructor TipwCore.Create(AOwner: TComponent);
begin
  inherited Create(AOwner);
end;

procedure Register;
begin

end;

procedure TipwCore.AboutDlg;
begin
end;

function TipwCore.AboutReadNoop: TAbout;
begin
  if csDesigning in ComponentState
  then Result := Longint(self)
  else Result := 0;
end;

procedure TipwCore.AboutWriteNoop(NewVal: TAbout);
begin
end;

procedure TipwCore.SetNoopString(x: String);
begin
end;
procedure TipwCore.SetNoopAnsiString(x: AnsiString);
begin
end;
procedure TipwCore.SetNoopInteger(x: Integer);
begin
end;
procedure TipwCore.SetNoopLongint(x: Longint);
begin
end;
procedure TipwCore.SetNoopInt64(x: Int64);
begin
end;
procedure TipwCore.SetNoopBoolean(x: Boolean);
begin
end;



constructor EIPWorks.CreateCode(err: integer; desc: AnsiString);
begin
  code := err;
  Create(IntToStr(err) + ': ' + desc);
end;



{$IFNDEF USEIPWORKSDLL}
{$WARNINGS OFF}

function IsWinNT : Boolean;
var
   osv : TOSVERSIONINFO;
begin
   osv.dwOSVersionInfoSize := sizeOf(OSVERSIONINFO);
   GetVersionEx(osv);
   result := (osv.dwPlatformId = VER_PLATFORM_WIN32_NT);
end;



function IPWorksLoadDRU(FileBuffer: Pointer; var EntryPoint: Pointer): Pointer;
var
  peHeader: PIMAGE_NT_HEADERS;
  peSectHeader: PIMAGE_SECTION_HEADER;
  peSectRelocHeader: PIMAGE_SECTION_HEADER;
  DllBuffer: Pointer;
  DllHandle: THandle;
  TempBuffer: Pointer;
  i: DWORD;
  j: DWORD;
  k: MY_POINTER;
  ImportDesc: PIMAGE_IMPORT_DESCRIPTOR;
  ThunkData: PIMAGE_THUNK_DATA;
  ImportByName: PIMAGE_IMPORT_BY_NAME;
  AddresOfEntryPoint: MY_POINTER;
  Offset: DWORD;
  Address: PDWORD;
  DllName: PAnsiChar;
  DllModule: HMODULE;
  AddresTable: Pointer;
  ProcAddress: Pointer;
  Ordinal: Boolean;
  MoveAddr: Pointer;
  Entry: WORD;
  EntryType: WORD;
  EntryOffset: WORD;
{$IFDEF WIN64}
  Address64: PDWORD64;
{$ENDIF}
begin
  Result := nil;
  peSectRelocHeader := nil;
  if not IsWinNT then begin
    DllHandle := LoadLibraryA(PAnsiChar('ipworks9.dll'));
    Result := Pointer(DllHandle);
    exit;
  end;
  if Assigned(FileBuffer) then
    begin
      peHeader := PIMAGE_NT_HEADERS(DWORD(FileBuffer) + PDWORD(DWORD(FileBuffer) + $3C)^);
      if (PDWORD(peHeader)^ = $4550) then
        begin
          DllBuffer := VirtualAlloc(nil, peHeader.OptionalHeader.SizeOfImage,
            MEM_COMMIT or MEM_RESERVE, PAGE_EXECUTE_READWRITE);
          if Assigned(DllBuffer) then
            begin
              Move(FileBuffer^, DllBuffer^, peHeader.OptionalHeader.SizeOfHeaders);
              peSectHeader := Pointer(MY_POINTER(DllBuffer) + MY_POINTER(@peHeader.OptionalHeader) - MY_POINTER(FileBuffer) + peHeader.FileHeader.SizeOfOptionalHeader);
              for i := 0 to Pred(peHeader.FileHeader.NumberOfSections) do
                begin
                  if strcomp(PAnsiChar(@peSectHeader.Name), '.reloc') = 0 then
                    peSectRelocHeader := peSectHeader;
                  TempBuffer := Pointer(MY_POINTER(DllBuffer) + peSectHeader.VirtualAddress);
                  MoveAddr := Pointer(MY_POINTER(FileBuffer) + peSectHeader.PointerToRawData);
                  Move(MoveAddr^, TempBuffer^, peSectHeader.SizeOfRawData);
                  peSectHeader.Misc.PhysicalAddress := DWORD(TempBuffer);
                  peSectHeader := PIMAGE_SECTION_HEADER(MY_POINTER(peSectHeader) + sizeof(IMAGE_SECTION_HEADER));
                end;
              if Assigned(peSectRelocHeader) then
                begin
                  TempBuffer := Pointer(MY_POINTER(FileBuffer) + peSectRelocHeader.PointerToRawData);
                  i := 0;
                  while i < peSectRelocHeader.SizeOfRawData do
                    begin
                      j := 8;
                      while j < PDWORD(MY_POINTER(TempBuffer) + 4)^ do
                        begin
                          Entry := PWord(MY_POINTER(TempBuffer) + j)^;
                          EntryType := (Entry Shr 12) and $F;
                          EntryOffset := Entry and $FFF;
                          case EntryType of
                            IMAGE_REL_BASED_HIGHLOW:
                            begin
                              Offset := EntryOffset + PDWORD(MY_POINTER(TempBuffer))^;
                              Address := PDWORD(MY_POINTER(DllBuffer) + Offset);
                              Address^ := Address^ - peHeader.OptionalHeader.ImageBase + MY_POINTER(DllBuffer);
                            end;
{$IFDEF WIN64}
                            IMAGE_REL_BASED_DIR64:
                            begin
                              Offset := EntryOffset + PDWORD(MY_POINTER(TempBuffer))^;
                              Address64 := PDWORD64(MY_POINTER(DllBuffer) + Offset);
                              Address64^ := Address64^ - peHeader.OptionalHeader.ImageBase + MY_POINTER(DllBuffer);
                            end;
{$ENDIF}
                          end;
                          Inc(j, 2);
                        end;
                      TempBuffer := Pointer(MY_POINTER(TempBuffer) + PDWORD(MY_POINTER(TempBuffer) + 4)^);
                      i := i + j;
                    end;
                  if peHeader.OptionalHeader.DataDirectory[1].VirtualAddress <> 0 then
                    begin
                      ImportDesc := PIMAGE_IMPORT_DESCRIPTOR(MY_POINTER(DllBuffer) + peHeader.OptionalHeader.DataDirectory[1].VirtualAddress);
                      while (ImportDesc.Union.OriginalFirstThunk <> 0) do
                        begin
                          DllName := PAnsiChar(MY_POINTER(DllBuffer) + ImportDesc.Name);
                          AddresTable := Pointer(MY_POINTER(DllBuffer) + ImportDesc.FirstThunk);
                          DllModule := GetModuleHandleA(DllName);
                          if DllModule = 0 then
                            begin
                              DllModule := LoadLibraryA(DllName);
                              if DllModule = 0 then
                                Exit;
                            end;
                          ThunkData := PIMAGE_THUNK_DATA(MY_POINTER(DllBuffer) + ImportDesc.Union.OriginalFirstThunk);
                          while PDWORD(ThunkData)^ <> 0 do
                            begin
                              Ordinal := False;
                              k := ThunkData.Ordinal;
                              if ((k and ORDINAL_MASK) <> k) then
                                begin
                                  Ordinal := True;
                                  k := k and ORDINAL_MASK;
                                end;
                              if not Ordinal then
                                begin
                                  ImportByName := PIMAGE_IMPORT_BY_NAME(MY_POINTER(DllBuffer) + k);
                                  ProcAddress := GetProcAddress(DllModule, PAnsiChar(@ImportByName.Name));
                                end
                              else
                                ProcAddress := GetProcAddress(DllModule, PAnsiChar(k));
                              PMY_POINTER(AddresTable)^ := MY_POINTER(ProcAddress);
                              AddresTable := PMY_POINTER(MY_POINTER(AddresTable) + sizeof(MY_POINTER));
                              ThunkData := PIMAGE_THUNK_DATA(MY_POINTER(ThunkData) + sizeof(IMAGE_THUNK_DATA));
                            end;
                          ImportDesc := PIMAGE_IMPORT_DESCRIPTOR(MY_POINTER(ImportDesc) + sizeof(IMAGE_IMPORT_DESCRIPTOR));
                        end;
                    end;
                end;
              AddresOfEntryPoint := peHeader.OptionalHeader.AddressOfEntryPoint + MY_POINTER(DllBuffer);
              if not TEntryPointProc(AddresOfEntryPoint)(HINST(DllBuffer), DLL_PROCESS_ATTACH, nil) then
                Exit;
              EntryPoint := Pointer(AddresOfEntryPoint);
              Result := DllBuffer;
            end;
        end;
    end;
end;



function IPWorksFreeDRU(BaseAddress: Pointer; EntryPoint: Pointer): Boolean;
begin
  Result := False;
  if not IsWinNT then begin
  	if Assigned(BaseAddress) then FreeLibrary(THandle(BaseAddress));
  	exit;
  end;
  if Assigned(BaseAddress) and Assigned(EntryPoint) then
    if TEntryPointProc(EntryPoint)(HINST(BaseAddress), DLL_PROCESS_DETACH, nil) then
      Result := VirtualFree(BaseAddress, 0, MEM_RELEASE);
end;



function IPWorksFindFunc(pBaseAddress: Pointer; FuncName: PAnsiChar): Pointer;
var
  pinth: PIMAGE_NT_HEADERS;
  pied: PIMAGE_EXPORT_DIRECTORY;
  k: Integer;
  FuncAddr: Pointer;
  dwBaseAddress: MY_POINTER;
begin
  FuncAddr := nil;
  Result := nil;
  if not IsWinNT then begin
    Result := GetProcAddress(THandle(pBaseAddress), FuncName);
    exit;
  end;
  dwBaseAddress := MY_POINTER(pBaseAddress);
  if (dwBaseAddress <> 0) then
    begin
      pinth := PIMAGE_NT_HEADERS(dwBaseAddress + PDWORD(dwBaseAddress + $3C)^);
      pied := PIMAGE_EXPORT_DIRECTORY(pinth.OptionalHeader.DataDirectory[0].VirtualAddress + dwBaseAddress);
      for k := 0 to Pred(pied.NumberOfNames) do
        begin
          if strcomp(PAnsiChar(TDWORDArr(pied.AddressOfNames + dwBaseAddress)[k] + dwBaseAddress), FuncName) = 0 then
            begin
              FuncAddr := Pointer(TDWORDArr(pied.AddressOfFunctions + dwBaseAddress)
                    [TShortArr(pied.AddressOfNameOrdinals + dwBaseAddress)[k]]);
              FuncAddr := Pointer(MY_POINTER(FuncAddr) + dwBaseAddress);
            end;
        end;
      Result := FuncAddr;
    end;
end;

{$ENDIF USEIPWORKSDLL}



end.

