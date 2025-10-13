unit GourmetServer.Model.Entity.MOR;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('mor')]
  TMOR = class
  private
    FCOUNT: Integer;
    Fmorchave: Integer;
    Forcchave: Integer;
    Fmeschave: Integer;
    Fflacodigo: Integer;
    Fborchave: Integer;
    Fmorabertura: TDateTime;
    Fmorencerramento: TDateTime;

    procedure Setmorchave(const Value: Integer);
    function Getmorchave: Integer;
    procedure Setorcchave(const Value: Integer);
    function Getorcchave: Integer;
    procedure Setmeschave(const Value: Integer);
    function Getmeschave: Integer;
    procedure Setflacodigo(const Value: Integer);
    function Getflacodigo: Integer;
    procedure Setborchave(const Value: Integer);
    function Getborchave: Integer;
    procedure Setmorabertura(const Value: TDateTime);
    function Getmorabertura: TDateTime;
    procedure Setmorencerramento(const Value: TDateTime);
    function Getmorencerramento: TDateTime;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Tmor;
    [Campo('morchave'), PK]
    property morchave: Integer read Getmorchave write Setmorchave;
    [Campo('orcchave')]
    property orcchave: Integer read Getorcchave write Setorcchave;
    [Campo('meschave')]
    property meschave: Integer read Getmeschave write Setmeschave;
    [Campo('flacodigo')]
    /// <summary>
    /// filial conta  movimento
    /// </summary>
    property flacodigo: Integer read Getflacodigo write Setflacodigo;
    [Campo('borchave')]
    property borchave: Integer read Getborchave write Setborchave;
    [Campo('morabertura')]
    property morabertura: TDateTime read Getmorabertura write Setmorabertura;
    [Campo('morencerramento')]
    property morencerramento: TDateTime read Getmorencerramento write Setmorencerramento;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Tmor.Create;
begin
  Limpar;
end;

destructor Tmor.Destroy;
begin

  inherited;
end;

procedure Tmor.Setmorchave(const Value: Integer);
begin
  Fmorchave := Value;
end;

function Tmor.Getmorchave: Integer;
begin
  Result := Fmorchave;
end;

procedure Tmor.Setorcchave(const Value: Integer);
begin
  Forcchave := Value;
end;

function Tmor.Getorcchave: Integer;
begin
  Result := Forcchave;
end;

procedure Tmor.Setmeschave(const Value: Integer);
begin
  Fmeschave := Value;
end;

function Tmor.Getmeschave: Integer;
begin
  Result := Fmeschave;
end;

procedure Tmor.Setflacodigo(const Value: Integer);
begin
  Fflacodigo := Value;
end;

function Tmor.Getflacodigo: Integer;
begin
  Result := Fflacodigo;
end;

procedure Tmor.Setborchave(const Value: Integer);
begin
  Fborchave := Value;
end;

function Tmor.Getborchave: Integer;
begin
  Result := Fborchave;
end;

procedure Tmor.Setmorabertura(const Value: TDateTime);
begin
  Fmorabertura := Value;
end;

function Tmor.Getmorabertura: TDateTime;
begin
  Result := Fmorabertura;
end;

procedure Tmor.Setmorencerramento(const Value: TDateTime);
begin
  Fmorencerramento := Value;
end;

function Tmor.Getmorencerramento: TDateTime;
begin
  Result := Fmorencerramento;
end;

procedure Tmor.Limpar;
begin
  Self.morchave := 0;
  Self.orcchave := 0;
  Self.meschave := 0;
  Self.flacodigo := 0;
  Self.borchave := 0;
  Self.morabertura := 0;
  Self.morencerramento := 0;

end;

procedure Tmor.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Tmor.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' morchave ')) then
    Result.addPair('morchave', IntToStr(Self.morchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' orcchave ')) then
    Result.addPair('orcchave', IntToStr(Self.orcchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' meschave ')) then
    Result.addPair('meschave', IntToStr(Self.meschave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' flacodigo ')) then
    Result.addPair('flacodigo', IntToStr(Self.flacodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' borchave ')) then
    Result.addPair('borchave', IntToStr(Self.borchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' morabertura ')) then
    Result.addPair('morabertura', DateTimeToStr(Self.morabertura));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' morencerramento ')) then
    Result.addPair('morencerramento', DateTimeToStr(Self.morencerramento));

end;

function Tmor.JsonToClass(obj: TJSonObject): Tmor;
begin
  Result := Tmor.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.morchave := StrToInt(obj.get('morchave').JsonValue.Value);
      Except
      End;
      Try
        Result.orcchave := StrToInt(obj.get('orcchave').JsonValue.Value);
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
      Try
        Result.borchave := StrToInt(obj.get('borchave').JsonValue.Value);
      Except
      End;
      Try
        Result.morabertura := StrToDateTime(obj.get('morabertura').JsonValue.Value);
      Except
      End;
      Try
        Result.morencerramento := StrToDateTime(obj.get('morencerramento').JsonValue.Value);
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
