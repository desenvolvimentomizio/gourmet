unit GourmetServer.Model.Entity.SBV;

interface

uses
  System.Json, System.SysUtils, System.Variants, SimpleAttributes;

type
  [Tabela('sbv')]
  Tsbv = class
  private
    FCOUNT: Integer;
    Fsbvchave :Integer;
    Fitmchave :Integer;
    Fitochave :Integer;
    Fsbrcodigo :Integer;
    Fsbvobs :String;
    Fsbvitem :Integer;
    Fbprchave :Integer;

    procedure Setsbvchave (const Value :Integer);
    function Getsbvchave :Integer;
    procedure Setitmchave (const Value :Integer);
    function Getitmchave :Integer;
    procedure Setitochave (const Value :Integer);
    function Getitochave :Integer;
    procedure Setsbrcodigo (const Value :Integer);
    function Getsbrcodigo :Integer;
    procedure Setsbvobs (const Value :String);
    function Getsbvobs :String;
    procedure Setsbvitem (const Value :Integer);
    function Getsbvitem :Integer;
    procedure Setbprchave (const Value :Integer);
    function Getbprchave :Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields : String = '*') : TJSonObject;
    function JsonToClass(obj : TJSonObject) : Tsbv;
    [Campo('sbvchave'), PK]
    property sbvchave :Integer read Getsbvchave write Setsbvchave;
    [Campo('itmchave')]
    property itmchave :Integer read Getitmchave write Setitmchave;
    [Campo('itochave')]
    property itochave :Integer read Getitochave write Setitochave;
    [Campo('sbrcodigo')]
    property sbrcodigo :Integer read Getsbrcodigo write Setsbrcodigo;
    [Campo('sbvobs')]
    property sbvobs :String read Getsbvobs write Setsbvobs;
    [Campo('sbvitem')]
    property sbvitem :Integer read Getsbvitem write Setsbvitem;
    [Campo('bprchave')]
    property bprchave :Integer read Getbprchave write Setbprchave;

    [Campo('COUNT'), Ignore]
    property COUNT : Integer read FCOUNT write SetCOUNT;
end;

implementation

constructor Tsbv.Create;
begin
  Limpar;
end;

destructor Tsbv.Destroy;
begin

  inherited;
end;

procedure Tsbv.Setsbvchave (const Value :Integer);
begin
  Fsbvchave := Value;
end;

function Tsbv.Getsbvchave :Integer;
begin
  Result := Fsbvchave;
end;

procedure Tsbv.Setitmchave (const Value :Integer);
begin
  Fitmchave := Value;
end;

function Tsbv.Getitmchave :Integer;
begin
  Result := Fitmchave;
end;

procedure Tsbv.Setitochave (const Value :Integer);
begin
  Fitochave := Value;
end;

function Tsbv.Getitochave :Integer;
begin
  Result := Fitochave;
end;

procedure Tsbv.Setsbrcodigo (const Value :Integer);
begin
  Fsbrcodigo := Value;
end;

function Tsbv.Getsbrcodigo :Integer;
begin
  Result := Fsbrcodigo;
end;

procedure Tsbv.Setsbvobs (const Value :String);
begin
  Fsbvobs := Value;
end;

function Tsbv.Getsbvobs :String;
begin
  Result := Fsbvobs;
end;

procedure Tsbv.Setsbvitem (const Value :Integer);
begin
  Fsbvitem := Value;
end;

function Tsbv.Getsbvitem :Integer;
begin
  Result := Fsbvitem;
end;

procedure Tsbv.Setbprchave (const Value :Integer);
begin
  Fbprchave := Value;
end;

function Tsbv.Getbprchave :Integer;
begin
  Result := Fbprchave;
end;


procedure Tsbv.Limpar;
begin
  Self.sbvchave := 0;
  Self.itmchave := 0;
  Self.itochave := 0;
  Self.sbrcodigo := 0;
  Self.sbvobs := '';
  Self.sbvitem := 0;
  Self.bprchave := 0;

end;

procedure Tsbv.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;
function Tsbv.ToJson(pFields : String = '*') : TJSonObject;
begin
  pFields := ' '+ StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbvchave ')) then
    result.addPair('sbvchave', IntToStr(Self.sbvchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' itmchave ')) then
    result.addPair('itmchave', IntToStr(Self.itmchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' itochave ')) then
    result.addPair('itochave', IntToStr(Self.itochave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbrcodigo ')) then
    result.addPair('sbrcodigo', IntToStr(Self.sbrcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbvobs ')) then
    result.addPair('sbvobs', Self.sbvobs);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbvitem ')) then
    result.addPair('sbvitem', IntToStr(Self.sbvitem));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' bprchave ')) then
    result.addPair('bprchave', IntToStr(Self.bprchave));

end;
function Tsbv.JsonToClass(obj : TJSonObject) : Tsbv;
begin
  result := Tsbv.Create;
  if (assigned(obj)) then
  begin
    Try
      Try result.sbvchave := StrToInt(obj.get('sbvchave').JsonValue.Value); Except End;
      Try result.itmchave := StrToInt(obj.get('itmchave').JsonValue.Value); Except End;
      Try result.itochave := StrToInt(obj.get('itochave').JsonValue.Value); Except End;
      Try result.sbrcodigo := StrToInt(obj.get('sbrcodigo').JsonValue.Value); Except End;
      Try result.sbvobs := obj.get('sbvobs').JsonValue.Value; Except End;
      Try result.sbvitem := StrToInt(obj.get('sbvitem').JsonValue.Value); Except End;
      Try result.bprchave := StrToInt(obj.get('bprchave').JsonValue.Value); Except End;

    Except
      on E : Exception do
      begin
        result.Free;
        raise Exception.Create(E.Message);
      end;
    End;
  end;
end;

end.

