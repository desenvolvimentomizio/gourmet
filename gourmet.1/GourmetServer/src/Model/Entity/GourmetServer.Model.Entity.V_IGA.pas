unit GourmetServer.Model.Entity.V_IGA;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('v_iga')]
  TV_IGA = class
  private
    FCOUNT: Integer;
    Fprocodigo: Integer;
    Fpronome: String;
    Fpunprecoav: Currency;
    Fgrpcodigo: Integer;
    Ftpocodigo: Integer;
    Fsipcodigo: Integer;

    procedure Setprocodigo(const Value: Integer);
    function Getprocodigo: Integer;
    procedure Setpronome(const Value: String);
    function Getpronome: String;
    procedure Setpunprecoav(const Value: Currency);
    function Getpunprecoav: Currency;
    procedure Setgrpcodigo(const Value: Integer);
    function Getgrpcodigo: Integer;
    procedure Settpocodigo(const Value: Integer);
    function Gettpocodigo: Integer;
    procedure Setsipcodigo(const Value: Integer);
    function Getsipcodigo: Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): TV_IGA;

    property procodigo: Integer read Getprocodigo write Setprocodigo;

    /// <summary>
    /// Identificação do produto
    /// </summary>
    property pronome: String read Getpronome write Setpronome;

    property punprecoav: Currency read Getpunprecoav write Setpunprecoav;

    property grpcodigo: Integer read Getgrpcodigo write Setgrpcodigo;

    property tpocodigo: Integer read Gettpocodigo write Settpocodigo;

    property sipcodigo: Integer read Getsipcodigo write Setsipcodigo;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor TV_IGA.Create;
begin
  Limpar;
end;

destructor TV_IGA.Destroy;
begin

  inherited;
end;

procedure TV_IGA.Setprocodigo(const Value: Integer);
begin
  Fprocodigo := Value;
end;

function TV_IGA.Getprocodigo: Integer;
begin
  Result := Fprocodigo;
end;

procedure TV_IGA.Setpronome(const Value: String);
begin
  Fpronome := Value;
end;

function TV_IGA.Getpronome: String;
begin
  Result := Fpronome;
end;

procedure TV_IGA.Setpunprecoav(const Value: Currency);
begin
  Fpunprecoav := Value;
end;

function TV_IGA.Getpunprecoav: Currency;
begin
  Result := Fpunprecoav;
end;

procedure TV_IGA.Setgrpcodigo(const Value: Integer);
begin
  Fgrpcodigo := Value;
end;

function TV_IGA.Getgrpcodigo: Integer;
begin
  Result := Fgrpcodigo;
end;

procedure TV_IGA.Settpocodigo(const Value: Integer);
begin
  Ftpocodigo := Value;
end;

function TV_IGA.Gettpocodigo: Integer;
begin
  Result := Ftpocodigo;
end;

procedure TV_IGA.Setsipcodigo(const Value: Integer);
begin
  Fsipcodigo := Value;
end;

function TV_IGA.Getsipcodigo: Integer;
begin
  Result := Fsipcodigo;
end;

procedure TV_IGA.Limpar;
begin
  Self.procodigo := 0;
  Self.pronome := '';
  Self.punprecoav := 0;
  Self.grpcodigo := 0;
  Self.tpocodigo := 0;
  Self.sipcodigo := 0;

end;

procedure TV_IGA.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function TV_IGA.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    Result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' pronome ')) then
    Result.addPair('pronome', Self.pronome);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' punprecoav ')) then
    Result.addPair('punprecoav', FloatToStr(Self.punprecoav));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpcodigo ')) then
    Result.addPair('grpcodigo', IntToStr(Self.grpcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tpocodigo ')) then
    Result.addPair('tpocodigo', IntToStr(Self.tpocodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sipcodigo ')) then
    Result.addPair('sipcodigo', IntToStr(Self.sipcodigo));

end;

function TV_IGA.JsonToClass(obj: TJSonObject): TV_IGA;
begin
  Result := TV_IGA.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.procodigo := StrToInt(obj.get('procodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.pronome := obj.get('pronome').JsonValue.Value;
      Except
      End;
      Try
        Result.punprecoav := StrToFloat(obj.get('punprecoav').JsonValue.Value);
      Except
      End;
      Try
        Result.grpcodigo := StrToInt(obj.get('grpcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.tpocodigo := StrToInt(obj.get('tpocodigo').JsonValue.Value);
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
