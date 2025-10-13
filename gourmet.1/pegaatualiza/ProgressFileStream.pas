unit ProgressFileStream;

interface

uses
  System.SysUtils,
  System.Classes;

type
  TProgressFileStreamOnProgress = procedure(Sender: TObject; Processed: Int64; Size: Int64; ContentLength: Int64; TimeStart: cardinal) of object;

  TProgressFileStream = class(TFileStream)
  private
    FOnProgress: TProgressFileStreamOnProgress;
    FProcessed: Int64;
    FReadSize: Int64;
    FContentLength: Int64;
    FTimeStart: cardinal;
    FBytesDiff: cardinal;
    FSize: Int64;

    procedure Init;
    procedure DoProgress(const AProcessed: Longint);
  protected
    procedure SetSize(NewSize: Longint); overload; override;
  public
    constructor Create(const AFileName: string; Mode: Word); overload;
    constructor Create(const AFileName: string; Mode: Word; Rights: cardinal); overload;

    function Read(var Buffer; Count: Longint): Longint; overload; override;
    function Write(const Buffer; Count: Longint): Longint; overload; override;
    function Read(Buffer: TBytes; Offset, Count: Longint): Longint; overload; override;
    function Write(const Buffer: TBytes; Offset, Count: Longint): Longint; overload; override;
    function Seek(const Offset: Int64; Origin: TSeekOrigin): Int64; overload; override;

    property OnProgress: TProgressFileStreamOnProgress read FOnProgress write FOnProgress;
    property ContentLength: Int64 read FContentLength write FContentLength;
    property TimeStart: cardinal read FTimeStart write FTimeStart;
    property BytesDiff: cardinal read FBytesDiff write FBytesDiff;
  end;

implementation

uses
  Winapi.Windows;

{ TProgressFileStream }

constructor TProgressFileStream.Create(const AFileName: string; Mode: Word);
begin
  inherited Create(AFileName, Mode);

  Init;
end;

constructor TProgressFileStream.Create(const AFileName: string; Mode: Word; Rights: cardinal);
begin
  inherited Create(AFileName, Mode, Rights);

  Init;
end;

function TProgressFileStream.Read(var Buffer; Count: Longint): Longint;
begin
  Result := inherited Read(Buffer, Count);

  DoProgress(Result);
end;

function TProgressFileStream.Write(const Buffer; Count: Longint): Longint;
begin
  Result := inherited Write(Buffer, Count);

  DoProgress(Result);
end;

function TProgressFileStream.Read(Buffer: TBytes; Offset, Count: Longint): Longint;
begin
  Result := inherited Read(Buffer, Offset, Count);

  DoProgress(Result);
end;

function TProgressFileStream.Write(const Buffer: TBytes; Offset, Count: Longint): Longint;
begin
  Result := inherited Write(Buffer, Offset, Count);

  DoProgress(Result);
end;

function TProgressFileStream.Seek(const Offset: Int64; Origin: TSeekOrigin): Int64;
begin
  Result := inherited Seek(Offset, Origin);

  if Origin <> soCurrent then
    FProcessed := Result;
end;

procedure TProgressFileStream.SetSize(NewSize: Longint);
begin
  inherited SetSize(NewSize);

  FSize := NewSize;
end;

procedure TProgressFileStream.Init;
const
  BYTES_DIFF = 1024 * 100;
begin
  FOnProgress := nil;
  FProcessed := 0;
  FContentLength := 0;
  FTimeStart := GetTickCount;
  FBytesDiff := BYTES_DIFF;
  FSize := Size;
end;

procedure TProgressFileStream.DoProgress(const AProcessed: Longint);
var
  aCurrentProcessed: Longint;
begin
  if not(Assigned(FOnProgress)) then
    Exit;

  aCurrentProcessed := FProcessed;

  Inc(FProcessed, AProcessed);
  Inc(FReadSize, AProcessed);

  if FContentLength = 0 then
    FContentLength := Size;

  if (FProcessed = Size) or (FBytesDiff = 0) or (FReadSize >= FBytesDiff) then
  begin
    FOnProgress(Self, FProcessed, Size, FContentLength, FTimeStart);
    FReadSize := FReadSize - FBytesDiff;
  end;
end;

end.
