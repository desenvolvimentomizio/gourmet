unit GourmetServer.Model.Entity.MFI;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type
  [Tabela('mfi')]
  Tmfi = class
  private
    FCOUNT: Integer;
    Fmfichave :Integer;
    Frfichave :Integer;
    Ftmfcodigo :Integer;
    Fmoecodigo :Integer;
    Fmfivalor :Currency;
    Fmfidata :TDateTime;
    Fmfihistorico :String;
    Fmfivalorori :Currency;
    Fmfiparcela :Integer;
    Fflacodigo :Integer;
    Fmfisituacao :Integer;
    Fedrcodigo :Integer;

    procedure Setmfichave (const Value :Integer);
    function Getmfichave :Integer;
    procedure Setrfichave (const Value :Integer);
    function Getrfichave :Integer;
    procedure Settmfcodigo (const Value :Integer);
    function Gettmfcodigo :Integer;
    procedure Setmoecodigo (const Value :Integer);
    function Getmoecodigo :Integer;
    procedure Setmfivalor (const Value :Currency);
    function Getmfivalor :Currency;
    procedure Setmfidata (const Value :TDateTime);
    function Getmfidata :TDateTime;
    procedure Setmfihistorico (const Value :String);
    function Getmfihistorico :String;
    procedure Setmfivalorori (const Value :Currency);
    function Getmfivalorori :Currency;
    procedure Setmfiparcela (const Value :Integer);
    function Getmfiparcela :Integer;
    procedure Setflacodigo (const Value :Integer);
    function Getflacodigo :Integer;
    procedure Setmfisituacao (const Value :Integer);
    function Getmfisituacao :Integer;
    procedure Setedrcodigo (const Value :Integer);
    function Getedrcodigo :Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields : String = '*') : TJSonObject;
    function JsonToClass(obj : TJSonObject) : Tmfi;
    [Campo('mfichave'), PK]
    property mfichave :Integer read Getmfichave write Setmfichave;
    [Campo('rfichave')]
    /// <summary>
    ///  Registro financeiro
    /// </summary>
    property rfichave :Integer read Getrfichave write Setrfichave;
    [Campo('tmfcodigo')]
    /// <summary>
    ///  Tipo de movimento finceiro
    /// </summary>
    property tmfcodigo :Integer read Gettmfcodigo write Settmfcodigo;
    [Campo('moecodigo')]
    /// <summary>
    ///  Moeda - Indicador
    /// </summary>
    property moecodigo :Integer read Getmoecodigo write Setmoecodigo;
    [Campo('mfivalor')]
    /// <summary>
    ///  Valor
    /// </summary>
    property mfivalor :Currency read Getmfivalor write Setmfivalor;
    [Campo('mfidata')]
    /// <summary>
    ///  Data do registro
    /// </summary>
    property mfidata :TDateTime read Getmfidata write Setmfidata;
    [Campo('mfihistorico')]
    /// <summary>
    ///  Histórico
    /// </summary>
    property mfihistorico :String read Getmfihistorico write Setmfihistorico;
    [Campo('mfivalorori')]
    /// <summary>
    ///  Valor original
    /// </summary>
    property mfivalorori :Currency read Getmfivalorori write Setmfivalorori;
    [Campo('mfiparcela')]
    /// <summary>
    ///  Numero da Parcela
    /// </summary>
    property mfiparcela :Integer read Getmfiparcela write Setmfiparcela;
    [Campo('flacodigo')]
    /// <summary>
    ///  filial conta  movimento
    /// </summary>
    property flacodigo :Integer read Getflacodigo write Setflacodigo;
    [Campo('mfisituacao')]
    property mfisituacao :Integer read Getmfisituacao write Setmfisituacao;
    [Campo('edrcodigo')]
    property edrcodigo :Integer read Getedrcodigo write Setedrcodigo;

    [Campo('COUNT'), Ignore]
    property COUNT : Integer read FCOUNT write SetCOUNT;
end;

implementation

constructor Tmfi.Create;
begin
  Limpar;
end;

destructor Tmfi.Destroy;
begin

  inherited;
end;

procedure Tmfi.Setmfichave (const Value :Integer);
begin
  Fmfichave := Value;
end;

function Tmfi.Getmfichave :Integer;
begin
  Result := Fmfichave;
end;

procedure Tmfi.Setrfichave (const Value :Integer);
begin
  Frfichave := Value;
end;

function Tmfi.Getrfichave :Integer;
begin
  Result := Frfichave;
end;

procedure Tmfi.Settmfcodigo (const Value :Integer);
begin
  Ftmfcodigo := Value;
end;

function Tmfi.Gettmfcodigo :Integer;
begin
  Result := Ftmfcodigo;
end;

procedure Tmfi.Setmoecodigo (const Value :Integer);
begin
  Fmoecodigo := Value;
end;

function Tmfi.Getmoecodigo :Integer;
begin
  Result := Fmoecodigo;
end;

procedure Tmfi.Setmfivalor (const Value :Currency);
begin
  Fmfivalor := Value;
end;

function Tmfi.Getmfivalor :Currency;
begin
  Result := Fmfivalor;
end;

procedure Tmfi.Setmfidata (const Value :TDateTime);
begin
  Fmfidata := Value;
end;

function Tmfi.Getmfidata :TDateTime;
begin
  Result := Fmfidata;
end;

procedure Tmfi.Setmfihistorico (const Value :String);
begin
  Fmfihistorico := Value;
end;

function Tmfi.Getmfihistorico :String;
begin
  Result := Fmfihistorico;
end;

procedure Tmfi.Setmfivalorori (const Value :Currency);
begin
  Fmfivalorori := Value;
end;

function Tmfi.Getmfivalorori :Currency;
begin
  Result := Fmfivalorori;
end;

procedure Tmfi.Setmfiparcela (const Value :Integer);
begin
  Fmfiparcela := Value;
end;

function Tmfi.Getmfiparcela :Integer;
begin
  Result := Fmfiparcela;
end;

procedure Tmfi.Setflacodigo (const Value :Integer);
begin
  Fflacodigo := Value;
end;

function Tmfi.Getflacodigo :Integer;
begin
  Result := Fflacodigo;
end;

procedure Tmfi.Setmfisituacao (const Value :Integer);
begin
  Fmfisituacao := Value;
end;

function Tmfi.Getmfisituacao :Integer;
begin
  Result := Fmfisituacao;
end;

procedure Tmfi.Setedrcodigo (const Value :Integer);
begin
  Fedrcodigo := Value;
end;

function Tmfi.Getedrcodigo :Integer;
begin
  Result := Fedrcodigo;
end;


procedure Tmfi.Limpar;
begin
  Self.mfichave := 0;
  Self.rfichave := 0;
  Self.tmfcodigo := 0;
  Self.moecodigo := 0;
  Self.mfivalor := 0;
  Self.mfidata := 0;
  Self.mfihistorico := '';
  Self.mfivalorori := 0;
  Self.mfiparcela := 0;
  Self.flacodigo := 0;
  Self.mfisituacao := 0;
  Self.edrcodigo := 0;

end;

procedure Tmfi.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;
function Tmfi.ToJson(pFields : String = '*') : TJSonObject;
begin
  pFields := ' '+ StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mfichave ')) then
    result.addPair('mfichave', IntToStr(Self.mfichave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' rfichave ')) then
    result.addPair('rfichave', IntToStr(Self.rfichave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tmfcodigo ')) then
    result.addPair('tmfcodigo', IntToStr(Self.tmfcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' moecodigo ')) then
    result.addPair('moecodigo', IntToStr(Self.moecodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mfivalor ')) then
    result.addPair('mfivalor', FloatToStr(Self.mfivalor));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mfidata ')) then
    result.addPair('mfidata', DateTimeToStr(Self.mfidata));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mfihistorico ')) then
    result.addPair('mfihistorico', Self.mfihistorico);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mfivalorori ')) then
    result.addPair('mfivalorori', FloatToStr(Self.mfivalorori));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mfiparcela ')) then
    result.addPair('mfiparcela', IntToStr(Self.mfiparcela));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' flacodigo ')) then
    result.addPair('flacodigo', IntToStr(Self.flacodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mfisituacao ')) then
    result.addPair('mfisituacao', IntToStr(Self.mfisituacao));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' edrcodigo ')) then
    result.addPair('edrcodigo', IntToStr(Self.edrcodigo));

end;
function Tmfi.JsonToClass(obj : TJSonObject) : Tmfi;
begin
  result := Tmfi.Create;
  if (assigned(obj)) then
  begin
    Try
      Try result.mfichave := StrToInt(obj.get('mfichave').JsonValue.Value); Except End;
      Try result.rfichave := StrToInt(obj.get('rfichave').JsonValue.Value); Except End;
      Try result.tmfcodigo := StrToInt(obj.get('tmfcodigo').JsonValue.Value); Except End;
      Try result.moecodigo := StrToInt(obj.get('moecodigo').JsonValue.Value); Except End;
      Try result.mfivalor := StrToFloat(obj.get('mfivalor').JsonValue.Value); Except End;
      Try result.mfidata := StrToDateTime(obj.get('mfidata').JsonValue.Value); Except End;
      Try result.mfihistorico := obj.get('mfihistorico').JsonValue.Value; Except End;
      Try result.mfivalorori := StrToFloat(obj.get('mfivalorori').JsonValue.Value); Except End;
      Try result.mfiparcela := StrToInt(obj.get('mfiparcela').JsonValue.Value); Except End;
      Try result.flacodigo := StrToInt(obj.get('flacodigo').JsonValue.Value); Except End;
      Try result.mfisituacao := StrToInt(obj.get('mfisituacao').JsonValue.Value); Except End;
      Try result.edrcodigo := StrToInt(obj.get('edrcodigo').JsonValue.Value); Except End;

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

