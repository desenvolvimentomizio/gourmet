unit GourmetServer.Model.Entity.GRP;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('grp')]
  Tgrp = class
  private
    FCOUNT: Integer;
    Fgrpcodigo: Integer;
    Fgrpidentificacao: String;
    Ftgrcodigo: Integer;
    Fcgrcodigo: Integer;
    Fgrpordem: Integer;
    Fimgcodigo: Integer;
    Fgrpremoto: Integer;
    Fstgcodigo: Integer;
    Fsipcodigo: Integer;
    Fgrpidentificacaoaiq: String;
    Fgrpidentificacaoifood: String;
    Fgrpidentificacaonuc: String;

    procedure Setgrpcodigo(const Value: Integer);
    function Getgrpcodigo: Integer;
    procedure Setgrpidentificacao(const Value: String);
    function Getgrpidentificacao: String;
    procedure Settgrcodigo(const Value: Integer);
    function Gettgrcodigo: Integer;
    procedure Setcgrcodigo(const Value: Integer);
    function Getcgrcodigo: Integer;
    procedure Setgrpordem(const Value: Integer);
    function Getgrpordem: Integer;
    procedure Setimgcodigo(const Value: Integer);
    function Getimgcodigo: Integer;
    procedure Setgrpremoto(const Value: Integer);
    function Getgrpremoto: Integer;
    procedure Setstgcodigo(const Value: Integer);
    function Getstgcodigo: Integer;
    procedure Setsipcodigo(const Value: Integer);
    function Getsipcodigo: Integer;
    procedure Setgrpidentificacaoaiq(const Value: String);
    function Getgrpidentificacaoaiq: String;
    procedure Setgrpidentificacaoifood(const Value: String);
    function Getgrpidentificacaoifood: String;
    procedure Setgrpidentificacaonuc(const Value: String);
    function Getgrpidentificacaonuc: String;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Tgrp;
    [Campo('grpcodigo'), PK]
    property grpcodigo: Integer read Getgrpcodigo write Setgrpcodigo;
    [Campo('grpidentificacao')]
    property grpidentificacao: String read Getgrpidentificacao write Setgrpidentificacao;
    [Campo('tgrcodigo')]
    /// <summary>
    /// Tipo de Grupos
    /// </summary>
    property tgrcodigo: Integer read Gettgrcodigo write Settgrcodigo;
    [Campo('cgrcodigo')]
    /// <summary>
    /// Classe de Grupo
    /// </summary>
    property cgrcodigo: Integer read Getcgrcodigo write Setcgrcodigo;
    [Campo('grpordem')]
    /// <summary>
    /// ordem do grupo no cardapio
    /// </summary>
    property grpordem: Integer read Getgrpordem write Setgrpordem;
    [Campo('imgcodigo')]
    property imgcodigo: Integer read Getimgcodigo write Setimgcodigo;
    [Campo('grpremoto')]
    property grpremoto: Integer read Getgrpremoto write Setgrpremoto;
    [Campo('stgcodigo')]
    property stgcodigo: Integer read Getstgcodigo write Setstgcodigo;
    [Campo('sipcodigo')]
    /// <summary>
    /// 1 - ativo 2-inativo
    /// </summary>
    property sipcodigo: Integer read Getsipcodigo write Setsipcodigo;
    [Campo('grpidentificacaoaiq')]
    property grpidentificacaoaiq: String read Getgrpidentificacaoaiq write Setgrpidentificacaoaiq;
    [Campo('grpidentificacaoifood')]
    property grpidentificacaoifood: String read Getgrpidentificacaoifood write Setgrpidentificacaoifood;
    [Campo('grpidentificacaonuc')]
    property grpidentificacaonuc: String read Getgrpidentificacaonuc write Setgrpidentificacaonuc;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Tgrp.Create;
begin
  Limpar;
end;

destructor Tgrp.Destroy;
begin

  inherited;
end;

procedure Tgrp.Setgrpcodigo(const Value: Integer);
begin
  Fgrpcodigo := Value;
end;

function Tgrp.Getgrpcodigo: Integer;
begin
  Result := Fgrpcodigo;
end;

procedure Tgrp.Setgrpidentificacao(const Value: String);
begin
  Fgrpidentificacao := Value;
end;

function Tgrp.Getgrpidentificacao: String;
begin
  Result := Fgrpidentificacao;
end;

procedure Tgrp.Settgrcodigo(const Value: Integer);
begin
  Ftgrcodigo := Value;
end;

function Tgrp.Gettgrcodigo: Integer;
begin
  Result := Ftgrcodigo;
end;

procedure Tgrp.Setcgrcodigo(const Value: Integer);
begin
  Fcgrcodigo := Value;
end;

function Tgrp.Getcgrcodigo: Integer;
begin
  Result := Fcgrcodigo;
end;

procedure Tgrp.Setgrpordem(const Value: Integer);
begin
  Fgrpordem := Value;
end;

function Tgrp.Getgrpordem: Integer;
begin
  Result := Fgrpordem;
end;

procedure Tgrp.Setimgcodigo(const Value: Integer);
begin
  Fimgcodigo := Value;
end;

function Tgrp.Getimgcodigo: Integer;
begin
  Result := Fimgcodigo;
end;

procedure Tgrp.Setgrpremoto(const Value: Integer);
begin
  Fgrpremoto := Value;
end;

function Tgrp.Getgrpremoto: Integer;
begin
  Result := Fgrpremoto;
end;


procedure Tgrp.Setstgcodigo(const Value: Integer);
begin
  Fstgcodigo := Value;
end;

function Tgrp.Getstgcodigo: Integer;
begin
  Result := Fstgcodigo;
end;

procedure Tgrp.Setsipcodigo(const Value: Integer);
begin
  Fsipcodigo := Value;
end;

function Tgrp.Getsipcodigo: Integer;
begin
  Result := Fsipcodigo;
end;

procedure Tgrp.Setgrpidentificacaoaiq(const Value: String);
begin
  Fgrpidentificacaoaiq := Value;
end;

function Tgrp.Getgrpidentificacaoaiq: String;
begin
  Result := Fgrpidentificacaoaiq;
end;

procedure Tgrp.Setgrpidentificacaoifood(const Value: String);
begin
  Fgrpidentificacaoifood := Value;
end;

function Tgrp.Getgrpidentificacaoifood: String;
begin
  Result := Fgrpidentificacaoifood;
end;

procedure Tgrp.Setgrpidentificacaonuc(const Value: String);
begin
  Fgrpidentificacaonuc := Value;
end;

function Tgrp.Getgrpidentificacaonuc: String;
begin
  Result := Fgrpidentificacaonuc;
end;

procedure Tgrp.Limpar;
begin
  Self.grpcodigo := 0;
  Self.grpidentificacao := '';
  Self.tgrcodigo := 0;
  Self.cgrcodigo := 0;
  Self.grpordem := 0;
  Self.imgcodigo := 0;
  Self.grpremoto := 0;
  Self.stgcodigo := 0;
  Self.sipcodigo := 0;
  Self.grpidentificacaoaiq := '';
  Self.grpidentificacaoifood := '';
  Self.grpidentificacaonuc := '';

end;

procedure Tgrp.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Tgrp.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpcodigo ')) then
    Result.addPair('grpcodigo', IntToStr(Self.grpcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpidentificacao ')) then
    Result.addPair('grpidentificacao', Self.grpidentificacao);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tgrcodigo ')) then
    Result.addPair('tgrcodigo', IntToStr(Self.tgrcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' cgrcodigo ')) then
    Result.addPair('cgrcodigo', IntToStr(Self.cgrcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpordem ')) then
    Result.addPair('grpordem', IntToStr(Self.grpordem));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' imgcodigo ')) then
    Result.addPair('imgcodigo', IntToStr(Self.imgcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpremoto ')) then
    Result.addPair('grpremoto', IntToStr(Self.grpremoto));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' stgcodigo ')) then
    Result.addPair('stgcodigo', IntToStr(Self.stgcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' sipcodigo ')) then
    Result.addPair('sipcodigo', IntToStr(Self.sipcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpidentificacaoaiq ')) then
    Result.addPair('grpidentificacaoaiq', Self.grpidentificacaoaiq);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpidentificacaoifood ')) then
    Result.addPair('grpidentificacaoifood', Self.grpidentificacaoifood);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' grpidentificacaonuc ')) then
    Result.addPair('grpidentificacaonuc', Self.grpidentificacaonuc);

end;

function Tgrp.JsonToClass(obj: TJSonObject): Tgrp;
begin
  Result := Tgrp.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.grpcodigo := StrToInt(obj.get('grpcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.grpidentificacao := obj.get('grpidentificacao').JsonValue.Value;
      Except
      End;
      Try
        Result.tgrcodigo := StrToInt(obj.get('tgrcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.cgrcodigo := StrToInt(obj.get('cgrcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.grpordem := StrToInt(obj.get('grpordem').JsonValue.Value);
      Except
      End;
      Try
        Result.imgcodigo := StrToInt(obj.get('imgcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.grpremoto := StrToInt(obj.get('grpremoto').JsonValue.Value);
      Except
      End;
      Try
        Result.stgcodigo := StrToInt(obj.get('stgcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.sipcodigo := StrToInt(obj.get('sipcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.grpidentificacaoaiq := obj.get('grpidentificacaoaiq').JsonValue.Value;
      Except
      End;
      Try
        Result.grpidentificacaoifood := obj.get('grpidentificacaoifood').JsonValue.Value;
      Except
      End;
      Try
        Result.grpidentificacaonuc := obj.get('grpidentificacaonuc').JsonValue.Value;
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
