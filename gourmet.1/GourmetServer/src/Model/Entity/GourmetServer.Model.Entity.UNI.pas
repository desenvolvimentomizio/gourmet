unit GourmetServer.Model.Entity.UNI;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('uni')]
  Tuni = class
  private
    FCOUNT: Integer;
    Funicodigo: Integer;
    Funisimbolo: String;
    Funinome: String;
    Ftuncodigo: Integer;
    Fstgcodigo: Integer;
    Fsipcodigo: Integer;
    Funinomeaiq: String;
    Funinomeifood: String;
    Funinomenuc: String;

    procedure Setunicodigo(const Value: Integer);
    function Getunicodigo: Integer;
    procedure Setunisimbolo(const Value: String);
    function Getunisimbolo: String;
    procedure Setuninome(const Value: String);
    function Getuninome: String;
    procedure Settuncodigo(const Value: Integer);
    function Gettuncodigo: Integer;
    procedure Setstgcodigo(const Value: Integer);
    function Getstgcodigo: Integer;
    procedure Setsipcodigo(const Value: Integer);
    function Getsipcodigo: Integer;
    procedure Setuninomeaiq(const Value: String);
    function Getuninomeaiq: String;
    procedure Setuninomeifood(const Value: String);
    function Getuninomeifood: String;
    procedure Setuninomenuc(const Value: String);
    function Getuninomenuc: String;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Tuni;
    [Campo('unicodigo'), PK]
    property unicodigo: Integer read Getunicodigo write Setunicodigo;
    [Campo('unisimbolo')]
    property unisimbolo: String read Getunisimbolo write Setunisimbolo;
    [Campo('uninome')]
    property uninome: String read Getuninome write Setuninome;
    [Campo('tuncodigo')]
    property tuncodigo: Integer read Gettuncodigo write Settuncodigo;
    [Campo('stgcodigo')]
    property stgcodigo: Integer read Getstgcodigo write Setstgcodigo;
    [Campo('sipcodigo')]
    /// <summary>
    /// 1 - ativo 2-inativo
    /// </summary>
    property sipcodigo: Integer read Getsipcodigo write Setsipcodigo;
    [Campo('uninomeaiq')]
    property uninomeaiq: String read Getuninomeaiq write Setuninomeaiq;
    [Campo('uninomeifood')]
    property uninomeifood: String read Getuninomeifood write Setuninomeifood;
    [Campo('uninomenuc')]
    property uninomenuc: String read Getuninomenuc write Setuninomenuc;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Tuni.Create;
begin
  Limpar;
end;

destructor Tuni.Destroy;
begin

  inherited;
end;

procedure Tuni.Setunicodigo(const Value: Integer);
begin
  Funicodigo := Value;
end;

function Tuni.Getunicodigo: Integer;
begin
  Result := Funicodigo;
end;

procedure Tuni.Setunisimbolo(const Value: String);
begin
  Funisimbolo := Value;
end;

function Tuni.Getunisimbolo: String;
begin
  Result := Funisimbolo;
end;

procedure Tuni.Setuninome(const Value: String);
begin
  Funinome := Value;
end;

function Tuni.Getuninome: String;
begin
  Result := Funinome;
end;

procedure Tuni.Settuncodigo(const Value: Integer);
begin
  Ftuncodigo := Value;
end;

function Tuni.Gettuncodigo: Integer;
begin
  Result := Ftuncodigo;
end;

procedure Tuni.Setstgcodigo(const Value: Integer);
begin
  Fstgcodigo := Value;
end;

function Tuni.Getstgcodigo: Integer;
begin
  Result := Fstgcodigo;
end;

procedure Tuni.Setsipcodigo(const Value: Integer);
begin
  Fsipcodigo := Value;
end;

function Tuni.Getsipcodigo: Integer;
begin
  Result := Fsipcodigo;
end;

procedure Tuni.Setuninomeaiq(const Value: String);
begin
  Funinomeaiq := Value;
end;

function Tuni.Getuninomeaiq: String;
begin
  Result := Funinomeaiq;
end;

procedure Tuni.Setuninomeifood(const Value: String);
begin
  Funinomeifood := Value;
end;

function Tuni.Getuninomeifood: String;
begin
  Result := Funinomeifood;
end;

procedure Tuni.Setuninomenuc(const Value: String);
begin
  Funinomenuc := Value;
end;

function Tuni.Getuninomenuc: String;
begin
  Result := Funinomenuc;
end;

procedure Tuni.Limpar;
begin
  Self.unicodigo := 0;
  Self.unisimbolo := '';
  Self.uninome := '';
  Self.tuncodigo := 0;
  Self.stgcodigo := 0;
  Self.sipcodigo := 0;
  Self.uninomeaiq := '';
  Self.uninomeifood := '';
  Self.uninomenuc := '';

end;

procedure Tuni.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Tuni.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' unicodigo ')) then
    Result.addPair('unicodigo', IntToStr(Self.unicodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' unisimbolo ')) then
    Result.addPair('unisimbolo', Self.unisimbolo);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' uninome ')) then
    Result.addPair('uninome', Self.uninome);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tuncodigo ')) then
    Result.addPair('tuncodigo', IntToStr(Self.tuncodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' stgcodigo ')) then
    Result.addPair('stgcodigo', IntToStr(Self.stgcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sipcodigo ')) then
    Result.addPair('sipcodigo', IntToStr(Self.sipcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' uninomeaiq ')) then
    Result.addPair('uninomeaiq', Self.uninomeaiq);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' uninomeifood ')) then
    Result.addPair('uninomeifood', Self.uninomeifood);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' uninomenuc ')) then
    Result.addPair('uninomenuc', Self.uninomenuc);

end;

function Tuni.JsonToClass(obj: TJSonObject): Tuni;
begin
  Result := Tuni.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.unicodigo := StrToInt(obj.get('unicodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.unisimbolo := obj.get('unisimbolo').JsonValue.Value;
      Except
      End;
      Try
        Result.uninome := obj.get('uninome').JsonValue.Value;
      Except
      End;
      Try
        Result.tuncodigo := StrToInt(obj.get('tuncodigo').JsonValue.Value);
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
      Try
        Result.uninomeaiq := obj.get('uninomeaiq').JsonValue.Value;
      Except
      End;
      Try
        Result.uninomeifood := obj.get('uninomeifood').JsonValue.Value;
      Except
      End;
      Try
        Result.uninomenuc := obj.get('uninomenuc').JsonValue.Value;
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
