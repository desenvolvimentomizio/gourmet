unit GourmetServer.Model.Entity.MLT;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type
  [Tabela('mlt')]
  Tmlt = class
  private
    FCOUNT: Integer;
    Fmltchave :Integer;
    Fmfichave :Integer;
    Fltechave :Integer;
    Fflacodigo :Integer;

    procedure Setmltchave (const Value :Integer);
    function Getmltchave :Integer;
    procedure Setmfichave (const Value :Integer);
    function Getmfichave :Integer;
    procedure Setltechave (const Value :Integer);
    function Getltechave :Integer;
    procedure Setflacodigo (const Value :Integer);
    function Getflacodigo :Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields : String = '*') : TJSonObject;
    function JsonToClass(obj : TJSonObject) : Tmlt;
    [Campo('mltchave'), PK]
    property mltchave :Integer read Getmltchave write Setmltchave;
    [Campo('mfichave')]
    property mfichave :Integer read Getmfichave write Setmfichave;
    [Campo('ltechave')]
    property ltechave :Integer read Getltechave write Setltechave;
    [Campo('flacodigo'), PK]
    /// <summary>
    ///  Filial padrao
    /// </summary>
    property flacodigo :Integer read Getflacodigo write Setflacodigo;

    [Campo('COUNT'), Ignore]
    property COUNT : Integer read FCOUNT write SetCOUNT;
end;

implementation

constructor Tmlt.Create;
begin
  Limpar;
end;

destructor Tmlt.Destroy;
begin

  inherited;
end;

procedure Tmlt.Setmltchave (const Value :Integer);
begin
  Fmltchave := Value;
end;

function Tmlt.Getmltchave :Integer;
begin
  Result := Fmltchave;
end;

procedure Tmlt.Setmfichave (const Value :Integer);
begin
  Fmfichave := Value;
end;

function Tmlt.Getmfichave :Integer;
begin
  Result := Fmfichave;
end;

procedure Tmlt.Setltechave (const Value :Integer);
begin
  Fltechave := Value;
end;

function Tmlt.Getltechave :Integer;
begin
  Result := Fltechave;
end;

procedure Tmlt.Setflacodigo (const Value :Integer);
begin
  Fflacodigo := Value;
end;

function Tmlt.Getflacodigo :Integer;
begin
  Result := Fflacodigo;
end;


procedure Tmlt.Limpar;
begin
  Self.mltchave := 0;
  Self.mfichave := 0;
  Self.ltechave := 0;
  Self.flacodigo := 0;

end;

procedure Tmlt.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;
function Tmlt.ToJson(pFields : String = '*') : TJSonObject;
begin
  pFields := ' '+ StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mltchave ')) then
    result.addPair('mltchave', IntToStr(Self.mltchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mfichave ')) then
    result.addPair('mfichave', IntToStr(Self.mfichave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' ltechave ')) then
    result.addPair('ltechave', IntToStr(Self.ltechave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' flacodigo ')) then
    result.addPair('flacodigo', IntToStr(Self.flacodigo));

end;
function Tmlt.JsonToClass(obj : TJSonObject) : Tmlt;
begin
  result := Tmlt.Create;
  if (assigned(obj)) then
  begin
    Try
      Try result.mltchave := StrToInt(obj.get('mltchave').JsonValue.Value); Except End;
      Try result.mfichave := StrToInt(obj.get('mfichave').JsonValue.Value); Except End;
      Try result.ltechave := StrToInt(obj.get('ltechave').JsonValue.Value); Except End;
      Try result.flacodigo := StrToInt(obj.get('flacodigo').JsonValue.Value); Except End;

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

