unit GourmetServer.Model.Entity.ISV;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('isv')]
  Tisv = class
  private
    FCOUNT: Integer;
    Fisvchave: Integer;
    Fsbvchave: Integer;
    Ftsicodigo: Integer;
    Fprocodigo: Integer;
    Fisvtipo: Integer;
    Fitochave: Integer;
    Fitmchave: Integer;
    Fisvitem: Integer;
    Fisvquantidade: Integer;

    procedure Setisvchave(const Value: Integer);
    function Getisvchave: Integer;
    procedure Setsbvchave(const Value: Integer);
    function Getsbvchave: Integer;
    procedure Settsicodigo(const Value: Integer);
    function Gettsicodigo: Integer;
    procedure Setprocodigo(const Value: Integer);
    function Getprocodigo: Integer;
    procedure Setisvtipo(const Value: Integer);
    function Getisvtipo: Integer;
    procedure Setitochave(const Value: Integer);
    function Getitochave: Integer;
    procedure Setitmchave(const Value: Integer);
    function Getitmchave: Integer;
    procedure Setisvitem(const Value: Integer);
    function Getisvitem: Integer;
    procedure Setisvquantidade(const Value: Integer);
    function Getisvquantidade: Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Tisv;
    [Campo('isvchave'), PK]
    property isvchave: Integer read Getisvchave write Setisvchave;
    [Campo('sbvchave')]
    property sbvchave: Integer read Getsbvchave write Setsbvchave;
    [Campo('tsicodigo')]
    property tsicodigo: Integer read Gettsicodigo write Settsicodigo;
    [Campo('procodigo')]
    property procodigo: Integer read Getprocodigo write Setprocodigo;
    [Campo('isvtipo')]
    property isvtipo: Integer read Getisvtipo write Setisvtipo;
    [Campo('itochave')]
    property itochave: Integer read Getitochave write Setitochave;
    [Campo('itmchave')]
    property itmchave: Integer read Getitmchave write Setitmchave;
    [Campo('isvitem')]
    property isvitem: Integer read Getisvitem write Setisvitem;
    [Campo('isvquantidade')]
    property isvquantidade: Integer read Getisvquantidade write Setisvquantidade;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Tisv.Create;
begin
  Limpar;
end;

destructor Tisv.Destroy;
begin

  inherited;
end;

procedure Tisv.Setisvchave(const Value: Integer);
begin
  Fisvchave := Value;
end;

function Tisv.Getisvchave: Integer;
begin
  Result := Fisvchave;
end;

procedure Tisv.Setsbvchave(const Value: Integer);
begin
  Fsbvchave := Value;
end;

function Tisv.Getsbvchave: Integer;
begin
  Result := Fsbvchave;
end;

procedure Tisv.Settsicodigo(const Value: Integer);
begin
  Ftsicodigo := Value;
end;

function Tisv.Gettsicodigo: Integer;
begin
  Result := Ftsicodigo;
end;

procedure Tisv.Setprocodigo(const Value: Integer);
begin
  Fprocodigo := Value;
end;

function Tisv.Getprocodigo: Integer;
begin
  Result := Fprocodigo;
end;

procedure Tisv.Setisvtipo(const Value: Integer);
begin
  Fisvtipo := Value;
end;

function Tisv.Getisvtipo: Integer;
begin
  Result := Fisvtipo;
end;

procedure Tisv.Setitochave(const Value: Integer);
begin
  Fitochave := Value;
end;

function Tisv.Getitochave: Integer;
begin
  Result := Fitochave;
end;

procedure Tisv.Setitmchave(const Value: Integer);
begin
  Fitmchave := Value;
end;

function Tisv.Getitmchave: Integer;
begin
  Result := Fitmchave;
end;

procedure Tisv.Setisvitem(const Value: Integer);
begin
  Fisvitem := Value;
end;

function Tisv.Getisvitem: Integer;
begin
  Result := Fisvitem;
end;

procedure Tisv.Setisvquantidade(const Value: Integer);
begin
  Fisvquantidade := Value;
end;

function Tisv.Getisvquantidade: Integer;
begin
  Result := Fisvquantidade;
end;

procedure Tisv.Limpar;
begin
  Self.isvchave := 0;
  Self.sbvchave := 0;
  Self.tsicodigo := 0;
  Self.procodigo := 0;
  Self.isvtipo := 0;
  Self.itochave := 0;
  Self.itmchave := 0;
  Self.isvitem := 0;
  Self.isvquantidade := 0;

end;

procedure Tisv.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Tisv.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isvchave ')) then
    Result.addPair('isvchave', IntToStr(Self.isvchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbvchave ')) then
    Result.addPair('sbvchave', IntToStr(Self.sbvchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tsicodigo ')) then
    Result.addPair('tsicodigo', IntToStr(Self.tsicodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    Result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isvtipo ')) then
    Result.addPair('isvtipo', IntToStr(Self.isvtipo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' itochave ')) then
    Result.addPair('itochave', IntToStr(Self.itochave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' itmchave ')) then
    Result.addPair('itmchave', IntToStr(Self.itmchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isvitem ')) then
    Result.addPair('isvitem', IntToStr(Self.isvitem));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isvquantidade ')) then
    Result.addPair('isvquantidade', IntToStr(Self.isvquantidade));

end;

function Tisv.JsonToClass(obj: TJSonObject): Tisv;
begin
  Result := Tisv.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.isvchave := StrToInt(obj.get('isvchave').JsonValue.Value);
      Except
      End;
      Try
        Result.sbvchave := StrToInt(obj.get('sbvchave').JsonValue.Value);
      Except
      End;
      Try
        Result.tsicodigo := StrToInt(obj.get('tsicodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.procodigo := StrToInt(obj.get('procodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.isvtipo := StrToInt(obj.get('isvtipo').JsonValue.Value);
      Except
      End;
      Try
        Result.itochave := StrToInt(obj.get('itochave').JsonValue.Value);
      Except
      End;
      Try
        Result.itmchave := StrToInt(obj.get('itmchave').JsonValue.Value);
      Except
      End;
      Try
        Result.isvitem := StrToInt(obj.get('isvitem').JsonValue.Value);
      Except
      End;
      Try
        Result.isvquantidade := StrToInt(obj.get('isvquantidade').JsonValue.Value);
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
