unit GourmetServer.Model.Entity.ISI;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('isi')]
  Tisi = class
  private
    FCOUNT: Integer;
    Fisichave: Integer;
    Fsbichave: Integer;
    Ftsicodigo: Integer;
    Fprocodigo: Integer;
    Fisitipo: Integer;
    Fitochave: Integer;
    Fisiitem: Integer;
    Fisiquantidade: Integer;
    Fisiacrescimo: Currency;

    procedure Setisichave(const Value: Integer);
    function Getisichave: Integer;
    procedure Setsbichave(const Value: Integer);
    function Getsbichave: Integer;
    procedure Settsicodigo(const Value: Integer);
    function Gettsicodigo: Integer;
    procedure Setprocodigo(const Value: Integer);
    function Getprocodigo: Integer;
    procedure Setisitipo(const Value: Integer);
    function Getisitipo: Integer;
    procedure Setitochave(const Value: Integer);
    function Getitochave: Integer;
    procedure Setisiitem(const Value: Integer);
    function Getisiitem: Integer;
    procedure Setisiquantidade(const Value: Integer);
    function Getisiquantidade: Integer;
    procedure Setisiacrescimo(const Value: Currency);
    function Getisiacrescimo: Currency;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Tisi;
    [Campo('isichave'), PK]
    property isichave: Integer read Getisichave write Setisichave;
    [Campo('sbichave')]
    property sbichave: Integer read Getsbichave write Setsbichave;
    [Campo('tsicodigo')]
    property tsicodigo: Integer read Gettsicodigo write Settsicodigo;
    [Campo('procodigo')]
    property procodigo: Integer read Getprocodigo write Setprocodigo;
    [Campo('isitipo')]
    /// <summary>
    /// 0 - Padrao, 1 - Inclusao
    /// </summary>
    property isitipo: Integer read Getisitipo write Setisitipo;
    [Campo('itochave')]
    property itochave: Integer read Getitochave write Setitochave;
    [Campo('isiitem')]
    property isiitem: Integer read Getisiitem write Setisiitem;
    [Campo('isiquantidade')]
    property isiquantidade: Integer read Getisiquantidade write Setisiquantidade;
    [Campo('isiacrescimo')]
    property isiacrescimo: Currency read Getisiacrescimo write Setisiacrescimo;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Tisi.Create;
begin
  Limpar;
end;

destructor Tisi.Destroy;
begin

  inherited;
end;

procedure Tisi.Setisichave(const Value: Integer);
begin
  Fisichave := Value;
end;

function Tisi.Getisichave: Integer;
begin
  Result := Fisichave;
end;

procedure Tisi.Setsbichave(const Value: Integer);
begin
  Fsbichave := Value;
end;

function Tisi.Getsbichave: Integer;
begin
  Result := Fsbichave;
end;

procedure Tisi.Settsicodigo(const Value: Integer);
begin
  Ftsicodigo := Value;
end;

function Tisi.Gettsicodigo: Integer;
begin
  Result := Ftsicodigo;
end;

procedure Tisi.Setprocodigo(const Value: Integer);
begin
  Fprocodigo := Value;
end;

function Tisi.Getprocodigo: Integer;
begin
  Result := Fprocodigo;
end;

procedure Tisi.Setisitipo(const Value: Integer);
begin
  Fisitipo := Value;
end;

function Tisi.Getisitipo: Integer;
begin
  Result := Fisitipo;
end;

procedure Tisi.Setitochave(const Value: Integer);
begin
  Fitochave := Value;
end;

function Tisi.Getitochave: Integer;
begin
  Result := Fitochave;
end;

procedure Tisi.Setisiitem(const Value: Integer);
begin
  Fisiitem := Value;
end;

function Tisi.Getisiitem: Integer;
begin
  Result := Fisiitem;
end;

procedure Tisi.Setisiquantidade(const Value: Integer);
begin
  Fisiquantidade := Value;
end;

function Tisi.Getisiquantidade: Integer;
begin
  Result := Fisiquantidade;
end;

procedure Tisi.Setisiacrescimo(const Value: Currency);
begin
  Fisiacrescimo := Value;
end;

function Tisi.Getisiacrescimo: Currency;
begin
  Result := Fisiacrescimo;
end;

procedure Tisi.Limpar;
begin
  Self.isichave := 0;
  Self.sbichave := 0;
  Self.tsicodigo := 0;
  Self.procodigo := 0;
  Self.isitipo := 0;
  Self.itochave := 0;
  Self.isiitem := 0;
  Self.isiquantidade := 0;
  Self.isiacrescimo := 0;

end;

procedure Tisi.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Tisi.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isichave ')) then
    Result.addPair('isichave', IntToStr(Self.isichave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbichave ')) then
    Result.addPair('sbichave', IntToStr(Self.sbichave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tsicodigo ')) then
    Result.addPair('tsicodigo', IntToStr(Self.tsicodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    Result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isitipo ')) then
    Result.addPair('isitipo', IntToStr(Self.isitipo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' itochave ')) then
    Result.addPair('itochave', IntToStr(Self.itochave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isiitem ')) then
    Result.addPair('isiitem', IntToStr(Self.isiitem));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isiquantidade ')) then
    Result.addPair('isiquantidade', IntToStr(Self.isiquantidade));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' isiacrescimo ')) then
    Result.addPair('isiacrescimo', FloatToStr(Self.isiacrescimo));

end;

function Tisi.JsonToClass(obj: TJSonObject): Tisi;
begin
  Result := Tisi.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.isichave := StrToInt(obj.get('isichave').JsonValue.Value);
      Except
      End;
      Try
        Result.sbichave := StrToInt(obj.get('sbichave').JsonValue.Value);
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
        Result.isitipo := StrToInt(obj.get('isitipo').JsonValue.Value);
      Except
      End;
      Try
        Result.itochave := StrToInt(obj.get('itochave').JsonValue.Value);
      Except
      End;
      Try
        Result.isiitem := StrToInt(obj.get('isiitem').JsonValue.Value);
      Except
      End;
      Try
        Result.isiquantidade := StrToInt(obj.get('isiquantidade').JsonValue.Value);
      Except
      End;
      Try
        Result.isiacrescimo := StrToFloat(obj.get('isiacrescimo').JsonValue.Value);
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
