unit GourmetServer.Model.Entity.BAI;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('bai')]
  Tbai = class
  private
    FCOUNT: Integer;
    Fbaicodigo: Integer;
    Fbaiidentificacao: String;
    Fprocodigo: Integer;
    Fsipcodigo: Integer;

    procedure Setbaicodigo(const Value: Integer);
    function Getbaicodigo: Integer;
    procedure Setbaiidentificacao(const Value: String);
    function Getbaiidentificacao: String;
    procedure Setprocodigo(const Value: Integer);
    function Getprocodigo: Integer;
    procedure Setsipcodigo(const Value: Integer);
    function Getsipcodigo: Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Tbai;
    [Campo('baicodigo'), PK]
    property baicodigo: Integer read Getbaicodigo write Setbaicodigo;
    [Campo('baiidentificacao')]
    /// <summary>
    /// Identificação
    /// </summary>
    property baiidentificacao: String read Getbaiidentificacao write Setbaiidentificacao;
    [Campo('procodigo')]
    /// <summary>
    /// Código da taxa de entrega
    /// </summary>
    property procodigo: Integer read Getprocodigo write Setprocodigo;
    [Campo('sipcodigo')]
    /// <summary>
    /// 1 - ativo 2-inativo
    /// </summary>
    property sipcodigo: Integer read Getsipcodigo write Setsipcodigo;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Tbai.Create;
begin
  Limpar;
end;

destructor Tbai.Destroy;
begin

  inherited;
end;

procedure Tbai.Setbaicodigo(const Value: Integer);
begin
  Fbaicodigo := Value;
end;

function Tbai.Getbaicodigo: Integer;
begin
  Result := Fbaicodigo;
end;

procedure Tbai.Setbaiidentificacao(const Value: String);
begin
  Fbaiidentificacao := Value;
end;

function Tbai.Getbaiidentificacao: String;
begin
  Result := Fbaiidentificacao;
end;

procedure Tbai.Setprocodigo(const Value: Integer);
begin
  Fprocodigo := Value;
end;

function Tbai.Getprocodigo: Integer;
begin
  Result := Fprocodigo;
end;

procedure Tbai.Setsipcodigo(const Value: Integer);
begin
  Fsipcodigo := Value;
end;

function Tbai.Getsipcodigo: Integer;
begin
  Result := Fsipcodigo;
end;

procedure Tbai.Limpar;
begin
  Self.baicodigo := 0;
  Self.baiidentificacao := '';
  Self.procodigo := 0;
  Self.sipcodigo := 0;

end;

procedure Tbai.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Tbai.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' baicodigo ')) then
    Result.addPair('baicodigo', IntToStr(Self.baicodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' baiidentificacao ')) then
    Result.addPair('baiidentificacao', Self.baiidentificacao);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' procodigo ')) then
    Result.addPair('procodigo', IntToStr(Self.procodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sipcodigo ')) then
    Result.addPair('sipcodigo', IntToStr(Self.sipcodigo));

end;

function Tbai.JsonToClass(obj: TJSonObject): Tbai;
begin
  Result := Tbai.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.baicodigo := StrToInt(obj.get('baicodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.baiidentificacao := obj.get('baiidentificacao').JsonValue.Value;
      Except
      End;
      Try
        Result.procodigo := StrToInt(obj.get('procodigo').JsonValue.Value);
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
