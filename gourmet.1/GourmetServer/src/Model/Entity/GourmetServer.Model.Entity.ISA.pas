unit GourmetServer.Model.Entity.ISA;

interface

uses
   System.Json,
   System.SysUtils,
   System.Variants,
   SimpleAttributes;

type
  [Tabela('isa')]
  Tisa = class
  private
    FCOUNT: Integer;
    Fisachave :Integer;
    Fsbrcodigo :Integer;
    Fprocodigo :Integer;
    Fisaquantidade :Currency;
    Fsenadicionavel :Integer;
    Fisaprincipal :Integer;
    Fstgcodigo :Integer;
    Fsipcodigo :Integer;

    procedure Setisachave (const Value :Integer);
    function Getisachave :Integer;
    procedure Setsbrcodigo (const Value :Integer);
    function Getsbrcodigo :Integer;
    procedure Setprocodigo (const Value :Integer);
    function Getprocodigo :Integer;
    procedure Setisaquantidade (const Value :Currency);
    function Getisaquantidade :Currency;
    procedure Setsenadicionavel (const Value :Integer);
    function Getsenadicionavel :Integer;
    procedure Setisaprincipal (const Value :Integer);
    function Getisaprincipal :Integer;
    procedure Setstgcodigo (const Value :Integer);
    function Getstgcodigo :Integer;
    procedure Setsipcodigo (const Value :Integer);
    function Getsipcodigo :Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields : String = '*') : TJSonObject;
    function JsonToClass(obj : TJSonObject) : Tisa;
    [Campo('isachave'), PK]
    property isachave :Integer read Getisachave write Setisachave;
    [Campo('sbrcodigo')]
    property sbrcodigo :Integer read Getsbrcodigo write Setsbrcodigo;
    [Campo('procodigo')]
    property procodigo :Integer read Getprocodigo write Setprocodigo;
    [Campo('isaquantidade')]
    property isaquantidade :Currency read Getisaquantidade write Setisaquantidade;
    [Campo('senadicionavel')]
    property senadicionavel :Integer read Getsenadicionavel write Setsenadicionavel;
    [Campo('isaprincipal')]
    property isaprincipal :Integer read Getisaprincipal write Setisaprincipal;
    [Campo('stgcodigo')]
    property stgcodigo :Integer read Getstgcodigo write Setstgcodigo;
    [Campo('sipcodigo')]
    /// <summary>
    ///  1 - ativo 2-inativo
    /// </summary>
    property sipcodigo :Integer read Getsipcodigo write Setsipcodigo;

    [Campo('COUNT'), Ignore]
    property COUNT : Integer read FCOUNT write SetCOUNT;
end;

implementation

constructor Tisa.Create;
begin
  Limpar;
end;

destructor Tisa.Destroy;
begin

  inherited;
end;

procedure Tisa.Setisachave (const Value :Integer);
begin
  Fisachave := Value;
end;

function Tisa.Getisachave :Integer;
begin
  Result := Fisachave;
end;

procedure Tisa.Setsbrcodigo (const Value :Integer);
begin
  Fsbrcodigo := Value;
end;

function Tisa.Getsbrcodigo :Integer;
begin
  Result := Fsbrcodigo;
end;

procedure Tisa.Setprocodigo (const Value :Integer);
begin
  Fprocodigo := Value;
end;

function Tisa.Getprocodigo :Integer;
begin
  Result := Fprocodigo;
end;

procedure Tisa.Setisaquantidade (const Value :Currency);
begin
  Fisaquantidade := Value;
end;

function Tisa.Getisaquantidade :Currency;
begin
  Result := Fisaquantidade;
end;

procedure Tisa.Setsenadicionavel (const Value :Integer);
begin
  Fsenadicionavel := Value;
end;

function Tisa.Getsenadicionavel :Integer;
begin
  Result := Fsenadicionavel;
end;

procedure Tisa.Setisaprincipal (const Value :Integer);
begin
  Fisaprincipal := Value;
end;

function Tisa.Getisaprincipal :Integer;
begin
  Result := Fisaprincipal;
end;

procedure Tisa.Setstgcodigo (const Value :Integer);
begin
  Fstgcodigo := Value;
end;

function Tisa.Getstgcodigo :Integer;
begin
  Result := Fstgcodigo;
end;

procedure Tisa.Setsipcodigo (const Value :Integer);
begin
  Fsipcodigo := Value;
end;

function Tisa.Getsipcodigo :Integer;
begin
  Result := Fsipcodigo;
end;


procedure Tisa.Limpar;
begin
  Self.isachave := 0;
  Self.sbrcodigo := 0;
  Self.procodigo := 0;
  Self.isaquantidade := 0;
  Self.senadicionavel := 0;
  Self.isaprincipal := 0;
  Self.stgcodigo := 0;
  Self.sipcodigo := 0;

end;

procedure Tisa.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;
function Tisa.ToJson(pFields : String = '*') : TJSonObject;
begin
  pFields := ' '+ StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isachave ')) then
    result.addPair('isachave', IntToStr(Self.isachave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbrcodigo ')) then
    result.addPair('sbrcodigo', IntToStr(Self.sbrcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isaquantidade ')) then
    result.addPair('isaquantidade', FloatToStr(Self.isaquantidade));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' senadicionavel ')) then
    result.addPair('senadicionavel', IntToStr(Self.senadicionavel));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isaprincipal ')) then
    result.addPair('isaprincipal', IntToStr(Self.isaprincipal));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' stgcodigo ')) then
    result.addPair('stgcodigo', IntToStr(Self.stgcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sipcodigo ')) then
    result.addPair('sipcodigo', IntToStr(Self.sipcodigo));

end;
function Tisa.JsonToClass(obj : TJSonObject) : Tisa;
begin
  result := Tisa.Create;
  if (assigned(obj)) then
  begin
    Try
      Try result.isachave := StrToInt(obj.get('isachave').JsonValue.Value); Except End;
      Try result.sbrcodigo := StrToInt(obj.get('sbrcodigo').JsonValue.Value); Except End;
      Try result.procodigo := StrToInt(obj.get('procodigo').JsonValue.Value); Except End;
      Try result.isaquantidade := StrToFloat(obj.get('isaquantidade').JsonValue.Value); Except End;
      Try result.senadicionavel := StrToInt(obj.get('senadicionavel').JsonValue.Value); Except End;
      Try result.isaprincipal := StrToInt(obj.get('isaprincipal').JsonValue.Value); Except End;
      Try result.stgcodigo := StrToInt(obj.get('stgcodigo').JsonValue.Value); Except End;
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

