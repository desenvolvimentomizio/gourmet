unit GourmetServer.Model.Entity.IMP;

interface

uses
System.Json, System.SysUtils, System.Variants, SimpleAttributes;

type
  [Tabela('imp')]
  Timp = class
  private
    FCOUNT: Integer;
    Fimpchave :Integer;
    Fclbcodigo :Integer;
    Fitmchave :Integer;
    Fimpinicio :TDateTime;
    Fimpfinal :TDateTime;
    Fitochave :Integer;
    Fmitcodigo :Integer;
    Fprocodigo :Integer;
    Fimpquantidade :Currency;
    Fimpregistro :TDateTime;
    Fpuncodigo :Integer;
    Fsepcodigo :Integer;

    procedure Setimpchave (const Value :Integer);
    function Getimpchave :Integer;
    procedure Setclbcodigo (const Value :Integer);
    function Getclbcodigo :Integer;
    procedure Setitmchave (const Value :Integer);
    function Getitmchave :Integer;
    procedure Setimpinicio (const Value :TDateTime);
    function Getimpinicio :TDateTime;
    procedure Setimpfinal (const Value :TDateTime);
    function Getimpfinal :TDateTime;
    procedure Setitochave (const Value :Integer);
    function Getitochave :Integer;
    procedure Setmitcodigo (const Value :Integer);
    function Getmitcodigo :Integer;
    procedure Setprocodigo (const Value :Integer);
    function Getprocodigo :Integer;
    procedure Setimpquantidade (const Value :Currency);
    function Getimpquantidade :Currency;
    procedure Setimpregistro (const Value :TDateTime);
    function Getimpregistro :TDateTime;
    procedure Setpuncodigo (const Value :Integer);
    function Getpuncodigo :Integer;
    procedure Setsepcodigo (const Value :Integer);
    function Getsepcodigo :Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields : String = '*') : TJSonObject;
    function JsonToClass(obj : TJSonObject) : Timp;
    [Campo('impchave'), PK]
    property impchave :Integer read Getimpchave write Setimpchave;
    [Campo('clbcodigo')]
    property clbcodigo :Integer read Getclbcodigo write Setclbcodigo;
    [Campo('itmchave')]
    property itmchave :Integer read Getitmchave write Setitmchave;
    [Campo('impinicio')]
    property impinicio :TDateTime read Getimpinicio write Setimpinicio;
    [Campo('impfinal')]
    property impfinal :TDateTime read Getimpfinal write Setimpfinal;
    [Campo('itochave')]
    property itochave :Integer read Getitochave write Setitochave;
    [Campo('mitcodigo')]
    property mitcodigo :Integer read Getmitcodigo write Setmitcodigo;
    [Campo('procodigo')]
    property procodigo :Integer read Getprocodigo write Setprocodigo;
    [Campo('impquantidade')]
    property impquantidade :Currency read Getimpquantidade write Setimpquantidade;
    [Campo('impregistro')]
    property impregistro :TDateTime read Getimpregistro write Setimpregistro;
    [Campo('puncodigo')]
    property puncodigo :Integer read Getpuncodigo write Setpuncodigo;
    [Campo('sepcodigo')]
    property sepcodigo :Integer read Getsepcodigo write Setsepcodigo;

    [Campo('COUNT'), Ignore]
    property COUNT : Integer read FCOUNT write SetCOUNT;
end;

implementation

constructor Timp.Create;
begin
  Limpar;
end;

destructor Timp.Destroy;
begin

  inherited;
end;

procedure Timp.Setimpchave (const Value :Integer);
begin
  Fimpchave := Value;
end;

function Timp.Getimpchave :Integer;
begin
  Result := Fimpchave;
end;

procedure Timp.Setclbcodigo (const Value :Integer);
begin
  Fclbcodigo := Value;
end;

function Timp.Getclbcodigo :Integer;
begin
  Result := Fclbcodigo;
end;

procedure Timp.Setitmchave (const Value :Integer);
begin
  Fitmchave := Value;
end;

function Timp.Getitmchave :Integer;
begin
  Result := Fitmchave;
end;

procedure Timp.Setimpinicio (const Value :TDateTime);
begin
  Fimpinicio := Value;
end;

function Timp.Getimpinicio :TDateTime;
begin
  Result := Fimpinicio;
end;

procedure Timp.Setimpfinal (const Value :TDateTime);
begin
  Fimpfinal := Value;
end;

function Timp.Getimpfinal :TDateTime;
begin
  Result := Fimpfinal;
end;

procedure Timp.Setitochave (const Value :Integer);
begin
  Fitochave := Value;
end;

function Timp.Getitochave :Integer;
begin
  Result := Fitochave;
end;

procedure Timp.Setmitcodigo (const Value :Integer);
begin
  Fmitcodigo := Value;
end;

function Timp.Getmitcodigo :Integer;
begin
  Result := Fmitcodigo;
end;

procedure Timp.Setprocodigo (const Value :Integer);
begin
  Fprocodigo := Value;
end;

function Timp.Getprocodigo :Integer;
begin
  Result := Fprocodigo;
end;

procedure Timp.Setimpquantidade (const Value :Currency);
begin
  Fimpquantidade := Value;
end;

function Timp.Getimpquantidade :Currency;
begin
  Result := Fimpquantidade;
end;

procedure Timp.Setimpregistro (const Value :TDateTime);
begin
  Fimpregistro := Value;
end;

function Timp.Getimpregistro :TDateTime;
begin
  Result := Fimpregistro;
end;

procedure Timp.Setpuncodigo (const Value :Integer);
begin
  Fpuncodigo := Value;
end;

function Timp.Getpuncodigo :Integer;
begin
  Result := Fpuncodigo;
end;

procedure Timp.Setsepcodigo (const Value :Integer);
begin
  Fsepcodigo := Value;
end;

function Timp.Getsepcodigo :Integer;
begin
  Result := Fsepcodigo;
end;


procedure Timp.Limpar;
begin
  Self.impchave := 0;
  Self.clbcodigo := 0;
  Self.itmchave := 0;
  Self.impinicio := 0;
  Self.impfinal := 0;
  Self.itochave := 0;
  Self.mitcodigo := 0;
  Self.procodigo := 0;
  Self.impquantidade := 0;
  Self.impregistro := 0;
  Self.puncodigo := 0;
  Self.sepcodigo := 0;

end;

procedure Timp.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;
function Timp.ToJson(pFields : String = '*') : TJSonObject;
begin
  pFields := ' '+ StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' impchave ')) then
    result.addPair('impchave', IntToStr(Self.impchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' clbcodigo ')) then
    result.addPair('clbcodigo', IntToStr(Self.clbcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' itmchave ')) then
    result.addPair('itmchave', IntToStr(Self.itmchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' impinicio ')) then
    result.addPair('impinicio', DateTimeToStr(Self.impinicio));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' impfinal ')) then
    result.addPair('impfinal', DateTimeToStr(Self.impfinal));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' itochave ')) then
    result.addPair('itochave', IntToStr(Self.itochave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' mitcodigo ')) then
    result.addPair('mitcodigo', IntToStr(Self.mitcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' impquantidade ')) then
    result.addPair('impquantidade', FloatToStr(Self.impquantidade));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' impregistro ')) then
    result.addPair('impregistro', DateTimeToStr(Self.impregistro));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' puncodigo ')) then
    result.addPair('puncodigo', IntToStr(Self.puncodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sepcodigo ')) then
    result.addPair('sepcodigo', IntToStr(Self.sepcodigo));

end;
function Timp.JsonToClass(obj : TJSonObject) : Timp;
begin
  result := Timp.Create;
  if (assigned(obj)) then
  begin
    Try
      Try result.impchave := StrToInt(obj.get('impchave').JsonValue.Value); Except End;
      Try result.clbcodigo := StrToInt(obj.get('clbcodigo').JsonValue.Value); Except End;
      Try result.itmchave := StrToInt(obj.get('itmchave').JsonValue.Value); Except End;
      Try result.impinicio := StrToDateTime(obj.get('impinicio').JsonValue.Value); Except End;
      Try result.impfinal := StrToDateTime(obj.get('impfinal').JsonValue.Value); Except End;
      Try result.itochave := StrToInt(obj.get('itochave').JsonValue.Value); Except End;
      Try result.mitcodigo := StrToInt(obj.get('mitcodigo').JsonValue.Value); Except End;
      Try result.procodigo := StrToInt(obj.get('procodigo').JsonValue.Value); Except End;
      Try result.impquantidade := StrToFloat(obj.get('impquantidade').JsonValue.Value); Except End;
      Try result.impregistro := StrToDateTime(obj.get('impregistro').JsonValue.Value); Except End;
      Try result.puncodigo := StrToInt(obj.get('puncodigo').JsonValue.Value); Except End;
      Try result.sepcodigo := StrToInt(obj.get('sepcodigo').JsonValue.Value); Except End;

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

