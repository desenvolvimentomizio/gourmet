unit GourmetServer.Model.Entity.SBR;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type
  [Tabela('sbr')]
  TSBR = class
  private
    FCOUNT: Integer;
    Fsbrcodigo :Integer;
    Fsbridentificacao :String;
    Fprocodigo :Integer;
    Fgrpcodigo :Integer;
    Fsbrcobraadicional :Integer;
    Fgsbcodigo :Integer;
    Fsbrordem :Integer;
    Fsbrfracionado :Integer;
    Fsbrquantidade :Currency;
    Fimgcodigo :Integer;
    Fstgcodigo :Integer;
    Fsipcodigo :Integer;

    procedure SeTSBRcodigo (const Value :Integer);
    function GeTSBRcodigo :Integer;
    procedure SeTSBRidentificacao (const Value :String);
    function GeTSBRidentificacao :String;
    procedure Setprocodigo (const Value :Integer);
    function Getprocodigo :Integer;
    procedure Setgrpcodigo (const Value :Integer);
    function Getgrpcodigo :Integer;
    procedure SeTSBRcobraadicional (const Value :Integer);
    function GeTSBRcobraadicional :Integer;
    procedure Setgsbcodigo (const Value :Integer);
    function Getgsbcodigo :Integer;
    procedure SeTSBRordem (const Value :Integer);
    function GeTSBRordem :Integer;
    procedure SeTSBRfracionado (const Value :Integer);
    function GeTSBRfracionado :Integer;
    procedure SeTSBRquantidade (const Value :Currency);
    function GeTSBRquantidade :Currency;
    procedure Setimgcodigo (const Value :Integer);
    function Getimgcodigo :Integer;
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
    function JsonToClass(obj : TJSonObject) : TSBR;
    [Campo('sbrcodigo'), PK]
    property sbrcodigo :Integer read GeTSBRcodigo write SeTSBRcodigo;
    [Campo('sbridentificacao')]
    property sbridentificacao :String read GeTSBRidentificacao write SeTSBRidentificacao;
    [Campo('procodigo')]
    property procodigo :Integer read Getprocodigo write Setprocodigo;
    [Campo('grpcodigo')]
    property grpcodigo :Integer read Getgrpcodigo write Setgrpcodigo;
    [Campo('sbrcobraadicional')]
    property sbrcobraadicional :Integer read GeTSBRcobraadicional write SeTSBRcobraadicional;
    [Campo('gsbcodigo')]
    /// <summary>
    ///  Grupo para o Sabor
    /// </summary>
    property gsbcodigo :Integer read Getgsbcodigo write Setgsbcodigo;
    [Campo('sbrordem')]
    property sbrordem :Integer read GeTSBRordem write SeTSBRordem;
    [Campo('sbrfracionado')]
    /// <summary>
    ///  Produto Fracionado
    /// </summary>
    property sbrfracionado :Integer read GeTSBRfracionado write SeTSBRfracionado;
    [Campo('sbrquantidade')]
    property sbrquantidade :Currency read GeTSBRquantidade write SeTSBRquantidade;
    [Campo('imgcodigo')]
    property imgcodigo :Integer read Getimgcodigo write Setimgcodigo;
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

constructor TSBR.Create;
begin
  Limpar;
end;

destructor TSBR.Destroy;
begin

  inherited;
end;

procedure TSBR.SeTSBRcodigo (const Value :Integer);
begin
  Fsbrcodigo := Value;
end;

function TSBR.GeTSBRcodigo :Integer;
begin
  Result := Fsbrcodigo;
end;

procedure TSBR.SeTSBRidentificacao (const Value :String);
begin
  Fsbridentificacao := Value;
end;

function TSBR.GeTSBRidentificacao :String;
begin
  Result := Fsbridentificacao;
end;

procedure TSBR.Setprocodigo (const Value :Integer);
begin
  Fprocodigo := Value;
end;

function TSBR.Getprocodigo :Integer;
begin
  Result := Fprocodigo;
end;

procedure TSBR.Setgrpcodigo (const Value :Integer);
begin
  Fgrpcodigo := Value;
end;

function TSBR.Getgrpcodigo :Integer;
begin
  Result := Fgrpcodigo;
end;

procedure TSBR.SeTSBRcobraadicional (const Value :Integer);
begin
  Fsbrcobraadicional := Value;
end;

function TSBR.GeTSBRcobraadicional :Integer;
begin
  Result := Fsbrcobraadicional;
end;

procedure TSBR.Setgsbcodigo (const Value :Integer);
begin
  Fgsbcodigo := Value;
end;

function TSBR.Getgsbcodigo :Integer;
begin
  Result := Fgsbcodigo;
end;

procedure TSBR.SeTSBRordem (const Value :Integer);
begin
  Fsbrordem := Value;
end;

function TSBR.GeTSBRordem :Integer;
begin
  Result := Fsbrordem;
end;

procedure TSBR.SeTSBRfracionado (const Value :Integer);
begin
  Fsbrfracionado := Value;
end;

function TSBR.GeTSBRfracionado :Integer;
begin
  Result := Fsbrfracionado;
end;

procedure TSBR.SeTSBRquantidade (const Value :Currency);
begin
  Fsbrquantidade := Value;
end;

function TSBR.GeTSBRquantidade :Currency;
begin
  Result := Fsbrquantidade;
end;

procedure TSBR.Setimgcodigo (const Value :Integer);
begin
  Fimgcodigo := Value;
end;

function TSBR.Getimgcodigo :Integer;
begin
  Result := Fimgcodigo;
end;



procedure TSBR.Setstgcodigo (const Value :Integer);
begin
  Fstgcodigo := Value;
end;

function TSBR.Getstgcodigo :Integer;
begin
  Result := Fstgcodigo;
end;

procedure TSBR.Setsipcodigo (const Value :Integer);
begin
  Fsipcodigo := Value;
end;

function TSBR.Getsipcodigo :Integer;
begin
  Result := Fsipcodigo;
end;


procedure TSBR.Limpar;
begin
  Self.sbrcodigo := 0;
  Self.sbridentificacao := '';
  Self.procodigo := 0;
  Self.grpcodigo := 0;
  Self.sbrcobraadicional := 0;
  Self.gsbcodigo := 0;
  Self.sbrordem := 0;
  Self.sbrfracionado := 0;
  Self.sbrquantidade := 0;
  Self.imgcodigo := 0;
  Self.stgcodigo := 0;
  Self.sipcodigo := 0;

end;

procedure TSBR.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;
function TSBR.ToJson(pFields : String = '*') : TJSonObject;
begin
  pFields := ' '+ StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbrcodigo ')) then
    result.addPair('sbrcodigo', IntToStr(Self.sbrcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbridentificacao ')) then
    result.addPair('sbridentificacao', Self.sbridentificacao);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpcodigo ')) then
    result.addPair('grpcodigo', IntToStr(Self.grpcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbrcobraadicional ')) then
    result.addPair('sbrcobraadicional', IntToStr(Self.sbrcobraadicional));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' gsbcodigo ')) then
    result.addPair('gsbcodigo', IntToStr(Self.gsbcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbrordem ')) then
    result.addPair('sbrordem', IntToStr(Self.sbrordem));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbrfracionado ')) then
    result.addPair('sbrfracionado', IntToStr(Self.sbrfracionado));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sbrquantidade ')) then
    result.addPair('sbrquantidade', FloatToStr(Self.sbrquantidade));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' imgcodigo ')) then
    result.addPair('imgcodigo', IntToStr(Self.imgcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' stgcodigo ')) then
    result.addPair('stgcodigo', IntToStr(Self.stgcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sipcodigo ')) then
    result.addPair('sipcodigo', IntToStr(Self.sipcodigo));

end;
function TSBR.JsonToClass(obj : TJSonObject) : TSBR;
begin
  result := TSBR.Create;
  if (assigned(obj)) then
  begin
    Try
      Try result.sbrcodigo := StrToInt(obj.get('sbrcodigo').JsonValue.Value); Except End;
      Try result.sbridentificacao := obj.get('sbridentificacao').JsonValue.Value; Except End;
      Try result.procodigo := StrToInt(obj.get('procodigo').JsonValue.Value); Except End;
      Try result.grpcodigo := StrToInt(obj.get('grpcodigo').JsonValue.Value); Except End;
      Try result.sbrcobraadicional := StrToInt(obj.get('sbrcobraadicional').JsonValue.Value); Except End;
      Try result.gsbcodigo := StrToInt(obj.get('gsbcodigo').JsonValue.Value); Except End;
      Try result.sbrordem := StrToInt(obj.get('sbrordem').JsonValue.Value); Except End;
      Try result.sbrfracionado := StrToInt(obj.get('sbrfracionado').JsonValue.Value); Except End;
      Try result.sbrquantidade := StrToFloat(obj.get('sbrquantidade').JsonValue.Value); Except End;
      Try result.imgcodigo := StrToInt(obj.get('imgcodigo').JsonValue.Value); Except End;
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
