unit GourmetServer.Model.Entity.SFN;

interface

uses
 System.Json, System.SysUtils, System.Variants, SimpleAttributes;

type
  [Tabela('sfn')]
  Tsfn = class
  private
    FCOUNT: Integer;
    Fsfncodigo :Integer;
    Funicodigo :Integer;
    Fprocodigo :Integer;
    Fsfnquantidade :Currency;
    Fsfnordem :Integer;
    Fsipcodigo :Integer;

    procedure Setsfncodigo (const Value :Integer);
    function Getsfncodigo :Integer;
    procedure Setunicodigo (const Value :Integer);
    function Getunicodigo :Integer;
    procedure Setprocodigo (const Value :Integer);
    function Getprocodigo :Integer;
    procedure Setsfnquantidade (const Value :Currency);
    function Getsfnquantidade :Currency;
    procedure Setsfnordem (const Value :Integer);
    function Getsfnordem :Integer;
    procedure Setsipcodigo (const Value :Integer);
    function Getsipcodigo :Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields : String = '*') : TJSonObject;
    function JsonToClass(obj : TJSonObject) : Tsfn;
    [Campo('sfncodigo'), PK]
    property sfncodigo :Integer read Getsfncodigo write Setsfncodigo;
    [Campo('unicodigo')]
    property unicodigo :Integer read Getunicodigo write Setunicodigo;
    [Campo('procodigo')]
    property procodigo :Integer read Getprocodigo write Setprocodigo;
    [Campo('sfnquantidade')]
    property sfnquantidade :Currency read Getsfnquantidade write Setsfnquantidade;
    [Campo('sfnordem')]
    property sfnordem :Integer read Getsfnordem write Setsfnordem;
    [Campo('sipcodigo')]
    property sipcodigo :Integer read Getsipcodigo write Setsipcodigo;

    [Campo('COUNT'), Ignore]
    property COUNT : Integer read FCOUNT write SetCOUNT;
end;

implementation

constructor Tsfn.Create;
begin
  Limpar;
end;

destructor Tsfn.Destroy;
begin

  inherited;
end;

procedure Tsfn.Setsfncodigo (const Value :Integer);
begin
  Fsfncodigo := Value;
end;

function Tsfn.Getsfncodigo :Integer;
begin
  Result := Fsfncodigo;
end;

procedure Tsfn.Setunicodigo (const Value :Integer);
begin
  Funicodigo := Value;
end;

function Tsfn.Getunicodigo :Integer;
begin
  Result := Funicodigo;
end;

procedure Tsfn.Setprocodigo (const Value :Integer);
begin
  Fprocodigo := Value;
end;

function Tsfn.Getprocodigo :Integer;
begin
  Result := Fprocodigo;
end;

procedure Tsfn.Setsfnquantidade (const Value :Currency);
begin
  Fsfnquantidade := Value;
end;

function Tsfn.Getsfnquantidade :Currency;
begin
  Result := Fsfnquantidade;
end;

procedure Tsfn.Setsfnordem (const Value :Integer);
begin
  Fsfnordem := Value;
end;

function Tsfn.Getsfnordem :Integer;
begin
  Result := Fsfnordem;
end;

procedure Tsfn.Setsipcodigo (const Value :Integer);
begin
  Fsipcodigo := Value;
end;

function Tsfn.Getsipcodigo :Integer;
begin
  Result := Fsipcodigo;
end;


procedure Tsfn.Limpar;
begin
  Self.sfncodigo := 0;
  Self.unicodigo := 0;
  Self.procodigo := 0;
  Self.sfnquantidade := 0;
  Self.sfnordem := 0;
  Self.sipcodigo := 0;

end;

procedure Tsfn.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;
function Tsfn.ToJson(pFields : String = '*') : TJSonObject;
begin
  pFields := ' '+ StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sfncodigo ')) then
    result.addPair('sfncodigo', IntToStr(Self.sfncodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' unicodigo ')) then
    result.addPair('unicodigo', IntToStr(Self.unicodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sfnquantidade ')) then
    result.addPair('sfnquantidade', FloatToStr(Self.sfnquantidade));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sfnordem ')) then
    result.addPair('sfnordem', IntToStr(Self.sfnordem));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sipcodigo ')) then
    result.addPair('sipcodigo', IntToStr(Self.sipcodigo));

end;
function Tsfn.JsonToClass(obj : TJSonObject) : Tsfn;
begin
  result := Tsfn.Create;
  if (assigned(obj)) then
  begin
    Try
      Try result.sfncodigo := StrToInt(obj.get('sfncodigo').JsonValue.Value); Except End;
      Try result.unicodigo := StrToInt(obj.get('unicodigo').JsonValue.Value); Except End;
      Try result.procodigo := StrToInt(obj.get('procodigo').JsonValue.Value); Except End;
      Try result.sfnquantidade := StrToFloat(obj.get('sfnquantidade').JsonValue.Value); Except End;
      Try result.sfnordem := StrToInt(obj.get('sfnordem').JsonValue.Value); Except End;
      Try result.sipcodigo := StrToInt(obj.get('sipcodigo').JsonValue.Value); Except End;

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

