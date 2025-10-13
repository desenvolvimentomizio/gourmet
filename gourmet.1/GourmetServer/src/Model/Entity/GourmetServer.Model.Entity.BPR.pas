unit GourmetServer.Model.Entity.BPR;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('bpr')]
  Tbpr = class
  private
    FCOUNT: Integer;
    Fbprchave: Integer;
    Fprocodigo: Integer;
    Fpuncodigo: Integer;
    Funicodigo: Integer;
    Fprocodigoborda: Integer;

    procedure Setbprchave(const Value: Integer);
    function Getbprchave: Integer;
    procedure Setprocodigo(const Value: Integer);
    function Getprocodigo: Integer;
    procedure Setpuncodigo(const Value: Integer);
    function Getpuncodigo: Integer;
    procedure Setunicodigo(const Value: Integer);
    function Getunicodigo: Integer;
    procedure Setprocodigoborda(const Value: Integer);
    function Getprocodigoborda: Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Tbpr;
    [Campo('bprchave'), PK]
    property bprchave: Integer read Getbprchave write Setbprchave;
    [Campo('procodigo')]
    property procodigo: Integer read Getprocodigo write Setprocodigo;
    [Campo('puncodigo')]
    property puncodigo: Integer read Getpuncodigo write Setpuncodigo;
    [Campo('unicodigo')]
    property unicodigo: Integer read Getunicodigo write Setunicodigo;
    [Campo('procodigoborda')]
    property procodigoborda: Integer read Getprocodigoborda write Setprocodigoborda;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Tbpr.Create;
begin
  Limpar;
end;

destructor Tbpr.Destroy;
begin

  inherited;
end;

procedure Tbpr.Setbprchave(const Value: Integer);
begin
  Fbprchave := Value;
end;

function Tbpr.Getbprchave: Integer;
begin
  Result := Fbprchave;
end;

procedure Tbpr.Setprocodigo(const Value: Integer);
begin
  Fprocodigo := Value;
end;

function Tbpr.Getprocodigo: Integer;
begin
  Result := Fprocodigo;
end;

procedure Tbpr.Setpuncodigo(const Value: Integer);
begin
  Fpuncodigo := Value;
end;

function Tbpr.Getpuncodigo: Integer;
begin
  Result := Fpuncodigo;
end;

procedure Tbpr.Setunicodigo(const Value: Integer);
begin
  Funicodigo := Value;
end;

function Tbpr.Getunicodigo: Integer;
begin
  Result := Funicodigo;
end;

procedure Tbpr.Setprocodigoborda(const Value: Integer);
begin
  Fprocodigoborda := Value;
end;

function Tbpr.Getprocodigoborda: Integer;
begin
  Result := Fprocodigoborda;
end;

procedure Tbpr.Limpar;
begin
  Self.bprchave := 0;
  Self.procodigo := 0;
  Self.puncodigo := 0;
  Self.unicodigo := 0;
  Self.procodigoborda := 0;

end;

procedure Tbpr.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Tbpr.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' bprchave ')) then
    Result.addPair('bprchave', IntToStr(Self.bprchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    Result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' puncodigo ')) then
    Result.addPair('puncodigo', IntToStr(Self.puncodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' unicodigo ')) then
    Result.addPair('unicodigo', IntToStr(Self.unicodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigoborda ')) then
    Result.addPair('procodigoborda', IntToStr(Self.procodigoborda));

end;

function Tbpr.JsonToClass(obj: TJSonObject): Tbpr;
begin
  Result := Tbpr.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.bprchave := StrToInt(obj.get('bprchave').JsonValue.Value);
      Except
      End;
      Try
        Result.procodigo := StrToInt(obj.get('procodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.puncodigo := StrToInt(obj.get('puncodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.unicodigo := StrToInt(obj.get('unicodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.procodigoborda := StrToInt(obj.get('procodigoborda').JsonValue.Value);
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
