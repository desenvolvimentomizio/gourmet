unit GourmetServer.Model.Entity.RFM;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('rfm')]
  Trfm = class
  private
    FCOUNT: Integer;
    Frfmchave: Integer;
    Frfichave: Integer;
    Fmeschave: Integer;
    Fflacodigo: Integer;

    procedure Setrfmchave(const Value: Integer);
    function Getrfmchave: Integer;
    procedure Setrfichave(const Value: Integer);
    function Getrfichave: Integer;
    procedure Setmeschave(const Value: Integer);
    function Getmeschave: Integer;
    procedure Setflacodigo(const Value: Integer);
    function Getflacodigo: Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Trfm;
    [Campo('rfmchave'), PK]
    property rfmchave: Integer read Getrfmchave write Setrfmchave;
    [Campo('rfichave')]
    property rfichave: Integer read Getrfichave write Setrfichave;
    [Campo('meschave')]
    property meschave: Integer read Getmeschave write Setmeschave;
    [Campo('flacodigo'), PK]
    /// <summary>
    /// filial conta  movimento
    /// </summary>
    property flacodigo: Integer read Getflacodigo write Setflacodigo;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Trfm.Create;
begin
  Limpar;
end;

destructor Trfm.Destroy;
begin

  inherited;
end;

procedure Trfm.Setrfmchave(const Value: Integer);
begin
  Frfmchave := Value;
end;

function Trfm.Getrfmchave: Integer;
begin
  Result := Frfmchave;
end;

procedure Trfm.Setrfichave(const Value: Integer);
begin
  Frfichave := Value;
end;

function Trfm.Getrfichave: Integer;
begin
  Result := Frfichave;
end;

procedure Trfm.Setmeschave(const Value: Integer);
begin
  Fmeschave := Value;
end;

function Trfm.Getmeschave: Integer;
begin
  Result := Fmeschave;
end;

procedure Trfm.Setflacodigo(const Value: Integer);
begin
  Fflacodigo := Value;
end;

function Trfm.Getflacodigo: Integer;
begin
  Result := Fflacodigo;
end;

procedure Trfm.Limpar;
begin
  Self.rfmchave := 0;
  Self.rfichave := 0;
  Self.meschave := 0;
  Self.flacodigo := 0;

end;

procedure Trfm.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Trfm.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' rfmchave ')) then
    Result.addPair('rfmchave', IntToStr(Self.rfmchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' rfichave ')) then
    Result.addPair('rfichave', IntToStr(Self.rfichave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' meschave ')) then
    Result.addPair('meschave', IntToStr(Self.meschave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' flacodigo ')) then
    Result.addPair('flacodigo', IntToStr(Self.flacodigo));

end;

function Trfm.JsonToClass(obj: TJSonObject): Trfm;
begin
  Result := Trfm.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.rfmchave := StrToInt(obj.get('rfmchave').JsonValue.Value);
      Except
      End;
      Try
        Result.rfichave := StrToInt(obj.get('rfichave').JsonValue.Value);
      Except
      End;
      Try
        Result.meschave := StrToInt(obj.get('meschave').JsonValue.Value);
      Except
      End;
      Try
        Result.flacodigo := StrToInt(obj.get('flacodigo').JsonValue.Value);
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
