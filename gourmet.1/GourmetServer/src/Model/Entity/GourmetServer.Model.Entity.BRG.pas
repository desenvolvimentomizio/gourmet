unit GourmetServer.Model.Entity.BRG;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('brg')]
  TBRG = class
  private
    FCOUNT: Integer;
    Fbrgchave: Integer;
    Fgrpcodigo: Integer;
    Fbrdcodigo: Integer;
    Fstgcodigo: Integer;
    Fsipcodigo: Integer;

    procedure SeTBRGchave(const Value: Integer);
    function GeTBRGchave: Integer;
    procedure Setgrpcodigo(const Value: Integer);
    function Getgrpcodigo: Integer;
    procedure Setbrdcodigo(const Value: Integer);
    function Getbrdcodigo: Integer;
    procedure Setstgcodigo(const Value: Integer);
    function Getstgcodigo: Integer;
    procedure Setsipcodigo(const Value: Integer);
    function Getsipcodigo: Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): TBRG;
    [Campo('brgchave'), PK]
    property brgchave: Integer read GeTBRGchave write SeTBRGchave;
    [Campo('grpcodigo')]
    property grpcodigo: Integer read Getgrpcodigo write Setgrpcodigo;
    [Campo('brdcodigo')]
    property brdcodigo: Integer read Getbrdcodigo write Setbrdcodigo;
    [Campo('stgcodigo')]
    property stgcodigo: Integer read Getstgcodigo write Setstgcodigo;
    [Campo('sipcodigo')]
    /// <summary>
    /// 1 - ativo 2-inativo
    /// </summary>
    property sipcodigo: Integer read Getsipcodigo write Setsipcodigo;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor TBRG.Create;
begin
  Limpar;
end;

destructor TBRG.Destroy;
begin

  inherited;
end;

procedure TBRG.SeTBRGchave(const Value: Integer);
begin
  Fbrgchave := Value;
end;

function TBRG.GeTBRGchave: Integer;
begin
  Result := Fbrgchave;
end;

procedure TBRG.Setgrpcodigo(const Value: Integer);
begin
  Fgrpcodigo := Value;
end;

function TBRG.Getgrpcodigo: Integer;
begin
  Result := Fgrpcodigo;
end;

procedure TBRG.Setbrdcodigo(const Value: Integer);
begin
  Fbrdcodigo := Value;
end;

function TBRG.Getbrdcodigo: Integer;
begin
  Result := Fbrdcodigo;
end;

procedure TBRG.Setstgcodigo(const Value: Integer);
begin
  Fstgcodigo := Value;
end;

function TBRG.Getstgcodigo: Integer;
begin
  Result := Fstgcodigo;
end;

procedure TBRG.Setsipcodigo(const Value: Integer);
begin
  Fsipcodigo := Value;
end;

function TBRG.Getsipcodigo: Integer;
begin
  Result := Fsipcodigo;
end;

procedure TBRG.Limpar;
begin
  Self.brgchave := 0;
  Self.grpcodigo := 0;
  Self.brdcodigo := 0;
  Self.stgcodigo := 0;
  Self.sipcodigo := 0;

end;

procedure TBRG.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function TBRG.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' brgchave ')) then
    Result.addPair('brgchave', IntToStr(Self.brgchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpcodigo ')) then
    Result.addPair('grpcodigo', IntToStr(Self.grpcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' brdcodigo ')) then
    Result.addPair('brdcodigo', IntToStr(Self.brdcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' stgcodigo ')) then
    Result.addPair('stgcodigo', IntToStr(Self.stgcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sipcodigo ')) then
    Result.addPair('sipcodigo', IntToStr(Self.sipcodigo));

end;

function TBRG.JsonToClass(obj: TJSonObject): TBRG;
begin
  Result := TBRG.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.brgchave := StrToInt(obj.get('brgchave').JsonValue.Value);
      Except
      End;
      Try
        Result.grpcodigo := StrToInt(obj.get('grpcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.brdcodigo := StrToInt(obj.get('brdcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.stgcodigo := StrToInt(obj.get('stgcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.sipcodigo := StrToInt(obj.get('sipcodigo').JsonValue.Value);
      Except
      End;

    Except
      on E: Exception do
      begin
        Result.Free;
        raise Exception.Create(E.Message);
      end;
    End;
  end;
end;

end.
