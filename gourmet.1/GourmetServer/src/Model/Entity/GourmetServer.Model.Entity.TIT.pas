unit GourmetServer.Model.Entity.TIT;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('tit')]
  Ttit = class
  private
    FCOUNT: Integer;
    Ftitcodigo: Integer;
    Fetdcodigo: Integer;
    Ftfdcodigo: Integer;
    Fflacodigo: Integer;
    Ftficodigo: Integer;
    Fbcocodigo: String;
    Fcarcodigo: Integer;
    Ftitemissao: TDateTime;
    Ftithora: TDateTime;
    Fclbcodigo: Integer;
    Ftitparcelas: Integer;
    Ftitvctoinicial: TDateTime;
    Ftitnumero: String;
    Ftitvalorparcela: Currency;
    Ftitvalor: Currency;
    Ftithistorico: String;
    Fsrfcodigo: Integer;
    Ftitrepetir: Integer;
    Ftitprevisao: Integer;
    Fmoecodigo: Integer;
    Ftngcodigo: Integer;
    Fphgcodigo: Integer;
    Ftitinclusao: TDateTime;
    Fcctchave: Integer;

    procedure Settitcodigo(const Value: Integer);
    function Gettitcodigo: Integer;
    procedure Setetdcodigo(const Value: Integer);
    function Getetdcodigo: Integer;
    procedure Settfdcodigo(const Value: Integer);
    function Gettfdcodigo: Integer;
    procedure Setflacodigo(const Value: Integer);
    function Getflacodigo: Integer;
    procedure Settficodigo(const Value: Integer);
    function Gettficodigo: Integer;
    procedure Setbcocodigo(const Value: String);
    function Getbcocodigo: String;
    procedure Setcarcodigo(const Value: Integer);
    function Getcarcodigo: Integer;
    procedure Settitemissao(const Value: TDateTime);
    function Gettitemissao: TDateTime;
    procedure Settithora(const Value: TDateTime);
    function Gettithora: TDateTime;
    procedure Setclbcodigo(const Value: Integer);
    function Getclbcodigo: Integer;
    procedure Settitparcelas(const Value: Integer);
    function Gettitparcelas: Integer;
    procedure Settitvctoinicial(const Value: TDateTime);
    function Gettitvctoinicial: TDateTime;
    procedure Settitnumero(const Value: String);
    function Gettitnumero: String;
    procedure Settitvalorparcela(const Value: Currency);
    function Gettitvalorparcela: Currency;
    procedure Settitvalor(const Value: Currency);
    function Gettitvalor: Currency;
    procedure Settithistorico(const Value: String);
    function Gettithistorico: String;
    procedure Setsrfcodigo(const Value: Integer);
    function Getsrfcodigo: Integer;
    procedure Settitrepetir(const Value: Integer);
    function Gettitrepetir: Integer;
    procedure Settitprevisao(const Value: Integer);
    function Gettitprevisao: Integer;
    procedure Setmoecodigo(const Value: Integer);
    function Getmoecodigo: Integer;
    procedure Settngcodigo(const Value: Integer);
    function Gettngcodigo: Integer;
    procedure Setphgcodigo(const Value: Integer);
    function Getphgcodigo: Integer;
    procedure Settitinclusao(const Value: TDateTime);
    function Gettitinclusao: TDateTime;
    procedure Setcctchave(const Value: Integer);
    function Getcctchave: Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor Create;
    destructor Destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Ttit;
    [Campo('titcodigo'), PK]
    /// <summary>
    /// chave do registro
    /// </summary>
    property titcodigo: Integer read Gettitcodigo write Settitcodigo;
    [Campo('etdcodigo')]
    /// <summary>
    /// código da entidade
    /// </summary>
    property etdcodigo: Integer read Getetdcodigo write Setetdcodigo;
    [Campo('tfdcodigo')]
    /// <summary>
    /// 1 - Receber 2 Pagar 3 - Conta Corrente
    /// </summary>
    property tfdcodigo: Integer read Gettfdcodigo write Settfdcodigo;
    [Campo('flacodigo')]
    /// <summary>
    /// Filial
    /// </summary>
    property flacodigo: Integer read Getflacodigo write Setflacodigo;
    [Campo('tficodigo')]
    /// <summary>
    /// Tipo de Documento Financeiro
    /// </summary>
    property tficodigo: Integer read Gettficodigo write Settficodigo;
    [Campo('bcocodigo')]
    /// <summary>
    /// Portador / Banco
    /// </summary>
    property bcocodigo: String read Getbcocodigo write Setbcocodigo;
    [Campo('carcodigo')]
    /// <summary>
    /// Tabela de Carteira de Cobrança Bancária
    /// </summary>
    property carcodigo: Integer read Getcarcodigo write Setcarcodigo;
    [Campo('titemissao')]
    /// <summary>
    /// Data de emissão
    /// </summary>
    property titemissao: TDateTime read Gettitemissao write Settitemissao;
    [Campo('tithora')]
    /// <summary>
    /// Hora da Emissão
    /// </summary>
    property tithora: TDateTime read Gettithora write Settithora;
    [Campo('clbcodigo')]
    /// <summary>
    /// Colaborador
    /// </summary>
    property clbcodigo: Integer read Getclbcodigo write Setclbcodigo;
    [Campo('titparcelas')]
    /// <summary>
    /// Parcelas
    /// </summary>
    property titparcelas: Integer read Gettitparcelas write Settitparcelas;
    [Campo('titvctoinicial')]
    /// <summary>
    /// Data de vencimento
    /// </summary>
    property titvctoinicial: TDateTime read Gettitvctoinicial write Settitvctoinicial;
    [Campo('titnumero')]
    /// <summary>
    /// Número do documento
    /// </summary>
    property titnumero: String read Gettitnumero write Settitnumero;
    [Campo('titvalorparcela')]
    /// <summary>
    /// Valor R$
    /// </summary>
    property titvalorparcela: Currency read Gettitvalorparcela write Settitvalorparcela;
    [Campo('titvalor')]
    /// <summary>
    /// Valor R$
    /// </summary>
    property titvalor: Currency read Gettitvalor write Settitvalor;
    [Campo('tithistorico')]
    /// <summary>
    /// Histórico
    /// </summary>
    property tithistorico: String read Gettithistorico write Settithistorico;
    [Campo('srfcodigo')]
    /// <summary>
    /// Situação do documento
    /// </summary>
    property srfcodigo: Integer read Getsrfcodigo write Setsrfcodigo;
    [Campo('titrepetir')]
    /// <summary>
    /// Repetir este registro
    /// </summary>
    property titrepetir: Integer read Gettitrepetir write Settitrepetir;
    [Campo('titprevisao')]
    /// <summary>
    /// se é uma previsão sim ou não
    /// </summary>
    property titprevisao: Integer read Gettitprevisao write Settitprevisao;
    [Campo('moecodigo')]
    /// <summary>
    /// Moeda
    /// </summary>
    property moecodigo: Integer read Getmoecodigo write Setmoecodigo;
    [Campo('tngcodigo')]
    /// <summary>
    /// Nucleo gerencial
    /// </summary>
    property tngcodigo: Integer read Gettngcodigo write Settngcodigo;
    [Campo('phgcodigo')]
    property phgcodigo: Integer read Getphgcodigo write Setphgcodigo;
    [Campo('titinclusao')]
    property titinclusao: TDateTime read Gettitinclusao write Settitinclusao;
    [Campo('cctchave')]
    property cctchave: Integer read Getcctchave write Setcctchave;

    [Campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Ttit.Create;
begin
  Limpar;
end;

destructor Ttit.Destroy;
begin

  inherited;
end;

procedure Ttit.Settitcodigo(const Value: Integer);
begin
  Ftitcodigo := Value;
end;

function Ttit.Gettitcodigo: Integer;
begin
  Result := Ftitcodigo;
end;

procedure Ttit.Setetdcodigo(const Value: Integer);
begin
  Fetdcodigo := Value;
end;

function Ttit.Getetdcodigo: Integer;
begin
  Result := Fetdcodigo;
end;

procedure Ttit.Settfdcodigo(const Value: Integer);
begin
  Ftfdcodigo := Value;
end;

function Ttit.Gettfdcodigo: Integer;
begin
  Result := Ftfdcodigo;
end;

procedure Ttit.Setflacodigo(const Value: Integer);
begin
  Fflacodigo := Value;
end;

function Ttit.Getflacodigo: Integer;
begin
  Result := Fflacodigo;
end;

procedure Ttit.Settficodigo(const Value: Integer);
begin
  Ftficodigo := Value;
end;

function Ttit.Gettficodigo: Integer;
begin
  Result := Ftficodigo;
end;

procedure Ttit.Setbcocodigo(const Value: String);
begin
  Fbcocodigo := Value;
end;

function Ttit.Getbcocodigo: String;
begin
  Result := Fbcocodigo;
end;

procedure Ttit.Setcarcodigo(const Value: Integer);
begin
  Fcarcodigo := Value;
end;

function Ttit.Getcarcodigo: Integer;
begin
  Result := Fcarcodigo;
end;

procedure Ttit.Settitemissao(const Value: TDateTime);
begin
  Ftitemissao := Value;
end;

function Ttit.Gettitemissao: TDateTime;
begin
  Result := Ftitemissao;
end;

procedure Ttit.Settithora(const Value: TDateTime);
begin
  Ftithora := Value;
end;

function Ttit.Gettithora: TDateTime;
begin
  Result := Ftithora;
end;

procedure Ttit.Setclbcodigo(const Value: Integer);
begin
  Fclbcodigo := Value;
end;

function Ttit.Getclbcodigo: Integer;
begin
  Result := Fclbcodigo;
end;

procedure Ttit.Settitparcelas(const Value: Integer);
begin
  Ftitparcelas := Value;
end;

function Ttit.Gettitparcelas: Integer;
begin
  Result := Ftitparcelas;
end;

procedure Ttit.Settitvctoinicial(const Value: TDateTime);
begin
  Ftitvctoinicial := Value;
end;

function Ttit.Gettitvctoinicial: TDateTime;
begin
  Result := Ftitvctoinicial;
end;

procedure Ttit.Settitnumero(const Value: String);
begin
  Ftitnumero := Value;
end;

function Ttit.Gettitnumero: String;
begin
  Result := Ftitnumero;
end;

procedure Ttit.Settitvalorparcela(const Value: Currency);
begin
  Ftitvalorparcela := Value;
end;

function Ttit.Gettitvalorparcela: Currency;
begin
  Result := Ftitvalorparcela;
end;

procedure Ttit.Settitvalor(const Value: Currency);
begin
  Ftitvalor := Value;
end;

function Ttit.Gettitvalor: Currency;
begin
  Result := Ftitvalor;
end;

procedure Ttit.Settithistorico(const Value: String);
begin
  Ftithistorico := Value;
end;

function Ttit.Gettithistorico: String;
begin
  Result := Ftithistorico;
end;

procedure Ttit.Setsrfcodigo(const Value: Integer);
begin
  Fsrfcodigo := Value;
end;

function Ttit.Getsrfcodigo: Integer;
begin
  Result := Fsrfcodigo;
end;


procedure Ttit.Settitrepetir(const Value: Integer);
begin
  Ftitrepetir := Value;
end;

function Ttit.Gettitrepetir: Integer;
begin
  Result := Ftitrepetir;
end;

procedure Ttit.Settitprevisao(const Value: Integer);
begin
  Ftitprevisao := Value;
end;

function Ttit.Gettitprevisao: Integer;
begin
  Result := Ftitprevisao;
end;

procedure Ttit.Setmoecodigo(const Value: Integer);
begin
  Fmoecodigo := Value;
end;

function Ttit.Getmoecodigo: Integer;
begin
  Result := Fmoecodigo;
end;



procedure Ttit.Settngcodigo(const Value: Integer);
begin
  Ftngcodigo := Value;
end;

function Ttit.Gettngcodigo: Integer;
begin
  Result := Ftngcodigo;
end;

procedure Ttit.Setphgcodigo(const Value: Integer);
begin
  Fphgcodigo := Value;
end;

function Ttit.Getphgcodigo: Integer;
begin
  Result := Fphgcodigo;
end;

procedure Ttit.Settitinclusao(const Value: TDateTime);
begin
  Ftitinclusao := Value;
end;

function Ttit.Gettitinclusao: TDateTime;
begin
  Result := Ftitinclusao;
end;

procedure Ttit.Setcctchave(const Value: Integer);
begin
  Fcctchave := Value;
end;

function Ttit.Getcctchave: Integer;
begin
  Result := Fcctchave;
end;

procedure Ttit.Limpar;
begin
  Self.titcodigo := 0;
  Self.etdcodigo := 0;
  Self.tfdcodigo := 0;
  Self.flacodigo := 0;
  Self.tficodigo := 0;
  Self.bcocodigo := '';
  Self.carcodigo := 0;
  Self.titemissao := 0;
  Self.tithora := 0;
  Self.clbcodigo := 0;
  Self.titparcelas := 0;
  Self.titvctoinicial := 0;
  Self.titnumero := '';
  Self.titvalorparcela := 0;
  Self.titvalor := 0;
  Self.tithistorico := '';
  Self.srfcodigo := 0;
  Self.titrepetir := 0;
  Self.titprevisao := 0;
  Self.moecodigo := 0;
  Self.tngcodigo := 0;
  Self.phgcodigo := 0;
  Self.titinclusao := 0;
  Self.cctchave := 0;

end;

procedure Ttit.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Ttit.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.Create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titcodigo ')) then
    Result.addPair('titcodigo', IntToStr(Self.titcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' etdcodigo ')) then
    Result.addPair('etdcodigo', IntToStr(Self.etdcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tfdcodigo ')) then
    Result.addPair('tfdcodigo', IntToStr(Self.tfdcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' flacodigo ')) then
    Result.addPair('flacodigo', IntToStr(Self.flacodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tficodigo ')) then
    Result.addPair('tficodigo', IntToStr(Self.tficodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' bcocodigo ')) then
    Result.addPair('bcocodigo', Self.bcocodigo);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' carcodigo ')) then
    Result.addPair('carcodigo', IntToStr(Self.carcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titemissao ')) then
    Result.addPair('titemissao', DateTimeToStr(Self.titemissao));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tithora ')) then
    Result.addPair('tithora', DateTimeToStr(Self.tithora));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' clbcodigo ')) then
    Result.addPair('clbcodigo', IntToStr(Self.clbcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titparcelas ')) then
    Result.addPair('titparcelas', IntToStr(Self.titparcelas));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titvctoinicial ')) then
    Result.addPair('titvctoinicial', DateTimeToStr(Self.titvctoinicial));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titnumero ')) then
    Result.addPair('titnumero', Self.titnumero);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titvalorparcela ')) then
    Result.addPair('titvalorparcela', FloatToStr(Self.titvalorparcela));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titvalor ')) then
    Result.addPair('titvalor', FloatToStr(Self.titvalor));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tithistorico ')) then
    Result.addPair('tithistorico', Self.tithistorico);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' srfcodigo ')) then
    Result.addPair('srfcodigo', IntToStr(Self.srfcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titrepetir ')) then
    Result.addPair('titrepetir', IntToStr(Self.titrepetir));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titprevisao ')) then
    Result.addPair('titprevisao', IntToStr(Self.titprevisao));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' moecodigo ')) then
    Result.addPair('moecodigo', IntToStr(Self.moecodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tngcodigo ')) then
    Result.addPair('tngcodigo', IntToStr(Self.tngcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' phgcodigo ')) then
    Result.addPair('phgcodigo', IntToStr(Self.phgcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' titinclusao ')) then
    Result.addPair('titinclusao', DateTimeToStr(Self.titinclusao));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' cctchave ')) then
    Result.addPair('cctchave', IntToStr(Self.cctchave));

end;

function Ttit.JsonToClass(obj: TJSonObject): Ttit;
begin
  Result := Ttit.Create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.titcodigo := StrToInt(obj.get('titcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.etdcodigo := StrToInt(obj.get('etdcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.tfdcodigo := StrToInt(obj.get('tfdcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.flacodigo := StrToInt(obj.get('flacodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.tficodigo := StrToInt(obj.get('tficodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.bcocodigo := obj.get('bcocodigo').JsonValue.Value;
      Except
      End;
      Try
        Result.carcodigo := StrToInt(obj.get('carcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.titemissao := StrToDateTime(obj.get('titemissao').JsonValue.Value);
      Except
      End;
      Try
        Result.tithora := StrToDateTime(obj.get('tithora').JsonValue.Value);
      Except
      End;
      Try
        Result.clbcodigo := StrToInt(obj.get('clbcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.titparcelas := StrToInt(obj.get('titparcelas').JsonValue.Value);
      Except
      End;
      Try
        Result.titvctoinicial := StrToDateTime(obj.get('titvctoinicial').JsonValue.Value);
      Except
      End;
      Try
        Result.titnumero := obj.get('titnumero').JsonValue.Value;
      Except
      End;
      Try
        Result.titvalorparcela := StrToFloat(obj.get('titvalorparcela').JsonValue.Value);
      Except
      End;
      Try
        Result.titvalor := StrToFloat(obj.get('titvalor').JsonValue.Value);
      Except
      End;
      Try
        Result.tithistorico := obj.get('tithistorico').JsonValue.Value;
      Except
      End;
      Try
        Result.srfcodigo := StrToInt(obj.get('srfcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.titrepetir := StrToInt(obj.get('titrepetir').JsonValue.Value);
      Except
      End;
      Try
        Result.titprevisao := StrToInt(obj.get('titprevisao').JsonValue.Value);
      Except
      End;
      Try
        Result.moecodigo := StrToInt(obj.get('moecodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.tngcodigo := StrToInt(obj.get('tngcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.phgcodigo := StrToInt(obj.get('phgcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.titinclusao := StrToDateTime(obj.get('titinclusao').JsonValue.Value);
      Except
      End;
      Try
        Result.cctchave := StrToInt(obj.get('cctchave').JsonValue.Value);
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
