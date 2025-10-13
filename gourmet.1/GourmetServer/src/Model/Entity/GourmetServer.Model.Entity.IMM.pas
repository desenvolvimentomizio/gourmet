unit GourmetServer.Model.Entity.IMM;

interface

uses
  System.Json,
  System.SysUtils,
  System.Variants,
  SimpleAttributes;

type

  [Tabela('imm')]
  Timmnumeropedido = class
  private
    Fimmchave: Integer;
    Fimmnumepedido: Integer;

    procedure Setimmchave(const Value: Integer);
    procedure Setimmnumepedido(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('immchave'), PK]
    property immchave: Integer read Fimmchave write Setimmchave;
    [campo('immnumepedido')]
    property immnumepedido: Integer read Fimmnumepedido write Setimmnumepedido;
  end;

  [Tabela('imm')]
  Timm = class
  private
    FCOUNT: Integer;
    Fimmchave: Integer;
    Fitochave: Integer;
    Ftcicodigo: Integer;
    Fimmmodo: Integer;
    Fimmhoraimprimir: TDateTime;
    Fimmrecebido: Integer;
    Fdorchave: Integer;
    Fimmdestino: Integer;
    Fimmtemporetardo: Integer;
    Fimmmodoimpressao: Integer;
    Fimmgarsom: Integer;
    Ftrmcodigo: Integer;
    Fimmhorapedido: TDateTime;
    Fimmnumepedido: Integer;
    Fimmidentificacao: String;
    Fimmimpresso: Integer;
    Fimmentregue: Integer;
    Fccxchave: Integer;
    Fcznchave: Integer;
    Fetdcodigoent: Integer;
    Fimmpratos: Integer;
    Fimmcopos: Integer;
    Fimmnumepedidoint: Integer;
    Fclbcodigo: Integer;
    Fpdscodigo: Integer;
    Fclbcodigoent: Integer;

    procedure Setimmchave(const Value: Integer);
    function Getimmchave: Integer;
    procedure Setitochave(const Value: Integer);
    function Getitochave: Integer;
    procedure Settcicodigo(const Value: Integer);
    function Gettcicodigo: Integer;
    procedure Setimmmodo(const Value: Integer);
    function Getimmmodo: Integer;
    procedure Setimmhoraimprimir(const Value: TDateTime);
    function Getimmhoraimprimir: TDateTime;
    procedure Setimmrecebido(const Value: Integer);
    function Getimmrecebido: Integer;
    procedure Setdorchave(const Value: Integer);
    function Getdorchave: Integer;
    procedure Setimmdestino(const Value: Integer);
    function Getimmdestino: Integer;
    procedure Setimmtemporetardo(const Value: Integer);
    function Getimmtemporetardo: Integer;
    procedure Setimmmodoimpressao(const Value: Integer);
    function Getimmmodoimpressao: Integer;
    procedure Setimmgarsom(const Value: Integer);
    function Getimmgarsom: Integer;
    procedure Settrmcodigo(const Value: Integer);
    function Gettrmcodigo: Integer;
    procedure Setimmhorapedido(const Value: TDateTime);
    function Getimmhorapedido: TDateTime;
    procedure Setimmnumepedido(const Value: Integer);
    function Getimmnumepedido: Integer;
    procedure Setimmidentificacao(const Value: String);
    function Getimmidentificacao: String;
    procedure Setimmimpresso(const Value: Integer);
    function Getimmimpresso: Integer;
    procedure Setimmentregue(const Value: Integer);
    function Getimmentregue: Integer;
    procedure Setccxchave(const Value: Integer);
    function Getccxchave: Integer;
    procedure Setcznchave(const Value: Integer);
    function Getcznchave: Integer;
    procedure Setetdcodigoent(const Value: Integer);
    function Getetdcodigoent: Integer;
    procedure Setimmpratos(const Value: Integer);
    function Getimmpratos: Integer;
    procedure Setimmcopos(const Value: Integer);
    function Getimmcopos: Integer;
    procedure Setimmnumepedidoint(const Value: Integer);
    function Getimmnumepedidoint: Integer;
    procedure Setclbcodigo(const Value: Integer);
    function Getclbcodigo: Integer;
    procedure Setclbcodigoent(const Value: Integer);
    function Getclbcodigoent: Integer;

    procedure Setpdscodigo(const Value: Integer);
    function Getpdscodigo: Integer;

    procedure SetCOUNT(const Value: Integer);
  public
    constructor create;
    destructor destroy; override;
    procedure Limpar;
    function ToJson(pFields: String = '*'): TJSonObject;
    function JsonToClass(obj: TJSonObject): Timm;
    [campo('immchave'), PK]
    property immchave: Integer read Getimmchave write Setimmchave;
    [campo('itochave')]
    /// <summary>
    /// Item do Orçamento de Venda
    /// </summary>
    property itochave: Integer read Getitochave write Setitochave;
    [campo('tcicodigo')]
    /// <summary>
    /// Impressora de Destino
    /// </summary>
    property tcicodigo: Integer read Gettcicodigo write Settcicodigo;
    [campo('immmodo')]
    /// <summary>
    /// 1 - Pedir, 0 - Cancelar
    /// </summary>
    property immmodo: Integer read Getimmmodo write Setimmmodo;
    [campo('immhoraimprimir')]
    property immhoraimprimir: TDateTime read Getimmhoraimprimir write Setimmhoraimprimir;
    [campo('immrecebido')]
    /// <summary>
    /// 1 - Ja recebido 0- a Receber
    /// </summary>
    property immrecebido: Integer read Getimmrecebido write Setimmrecebido;
    [campo('dorchave')]
    /// <summary>
    /// detalhe do recebimento parcial
    /// </summary>
    property dorchave: Integer read Getdorchave write Setdorchave;
    [campo('immdestino')]
    /// <summary>
    /// destino do item, se é para salão ou entrega
    /// </summary>
    property immdestino: Integer read Getimmdestino write Setimmdestino;
    [campo('immtemporetardo')]
    /// <summary>
    /// Tempo de retardo para impressao
    /// </summary>
    property immtemporetardo: Integer read Getimmtemporetardo write Setimmtemporetardo;
    [campo('immmodoimpressao')]
    /// <summary>
    /// 0 - normal - 1 completo
    /// </summary>
    property immmodoimpressao: Integer read Getimmmodoimpressao write Setimmmodoimpressao;
    [campo('immgarsom')]
    /// <summary>
    /// garsom que registro o item do pedido
    /// </summary>
    property immgarsom: Integer read Getimmgarsom write Setimmgarsom;
    [campo('trmcodigo')]
    /// <summary>
    /// garsom que registro o item do pedido
    /// </summary>
    property trmcodigo: Integer read Gettrmcodigo write Settrmcodigo;
    [campo('immhorapedido')]
    /// <summary>
    /// hora que foi feito o pedido
    /// </summary>
    property immhorapedido: TDateTime read Getimmhorapedido write Setimmhorapedido;
    [campo('immnumepedido')]
    /// <summary>
    /// numero do pedido
    /// </summary>
    property immnumepedido: Integer read Getimmnumepedido write Setimmnumepedido;
    [campo('immidentificacao')]
    /// <summary>
    /// hora do pedido
    /// </summary>
    property immidentificacao: String read Getimmidentificacao write Setimmidentificacao;
    [campo('immimpresso')]
    /// <summary>
    /// ja foi impresso
    /// </summary>
    property immimpresso: Integer read Getimmimpresso write Setimmimpresso;
    [campo('immentregue')]
    /// <summary>
    /// ja foi impresso
    /// </summary>
    property immentregue: Integer read Getimmentregue write Setimmentregue;
    [campo('ccxchave')]
    property ccxchave: Integer read Getccxchave write Setccxchave;
    [campo('cznchave')]
    /// <summary>
    /// chave da cozinha
    /// </summary>
    property cznchave: Integer read Getcznchave write Setcznchave;
    [campo('etdcodigoent')]
    /// <summary>
    /// entidade responsavel pela entrega
    /// </summary>
    property etdcodigoent: Integer read Getetdcodigoent write Setetdcodigoent;
    [campo('immpratos')]
    /// <summary>
    /// Quantidade de pratos necessários na mesa
    /// </summary>
    property immpratos: Integer read Getimmpratos write Setimmpratos;
    [campo('immcopos')]
    /// <summary>
    /// Quantidade de copos necessários na mesa
    /// </summary>
    property immcopos: Integer read Getimmcopos write Setimmcopos;
    [campo('immnumepedidoint')]
    /// <summary>
    /// Número do pedido interno
    /// </summary>
    property immnumepedidoint: Integer read Getimmnumepedidoint write Setimmnumepedidoint;
    [campo('clbcodigo')]
    /// <summary>
    /// Imprime pedido auxiliar
    /// </summary>
    property clbcodigo: Integer read Getclbcodigo write Setclbcodigo;
    [campo('clbcodigoent')]
    property clbcodigoent: Integer read Getclbcodigoent write Setclbcodigoent;

    [campo('pdscodigo')]
    /// <summary>
    /// situacao de producao do produto
    /// </summary>
    property pdscodigo: Integer read Getpdscodigo write Setpdscodigo;

    [campo('COUNT'), Ignore]
    property COUNT: Integer read FCOUNT write SetCOUNT;
  end;

implementation

constructor Timm.create;
begin
  Limpar;
end;

destructor Timm.destroy;
begin

  inherited;
end;

procedure Timm.Setimmchave(const Value: Integer);
begin
  Fimmchave := Value;
end;

function Timm.Getimmchave: Integer;
begin
  Result := Fimmchave;
end;

procedure Timm.Setitochave(const Value: Integer);
begin
  Fitochave := Value;
end;

procedure Timm.Setpdscodigo(const Value: Integer);
begin
  Fpdscodigo := Value;
end;

function Timm.Getitochave: Integer;
begin
  Result := Fitochave;
end;

function Timm.Getpdscodigo: Integer;
begin
  Result := Fpdscodigo;
end;

procedure Timm.Settcicodigo(const Value: Integer);
begin
  Ftcicodigo := Value;
end;

function Timm.Gettcicodigo: Integer;
begin
  Result := Ftcicodigo;
end;

procedure Timm.Setimmmodo(const Value: Integer);
begin
  Fimmmodo := Value;
end;

function Timm.Getimmmodo: Integer;
begin
  Result := Fimmmodo;
end;

procedure Timm.Setimmhoraimprimir(const Value: TDateTime);
begin
  Fimmhoraimprimir := Value;
end;

function Timm.Getimmhoraimprimir: TDateTime;
begin
  Result := Fimmhoraimprimir;
end;

procedure Timm.Setimmrecebido(const Value: Integer);
begin
  Fimmrecebido := Value;
end;

function Timm.Getimmrecebido: Integer;
begin
  Result := Fimmrecebido;
end;

procedure Timm.Setdorchave(const Value: Integer);
begin
  Fdorchave := Value;
end;

function Timm.Getdorchave: Integer;
begin
  Result := Fdorchave;
end;

procedure Timm.Setimmdestino(const Value: Integer);
begin
  Fimmdestino := Value;
end;

function Timm.Getimmdestino: Integer;
begin
  Result := Fimmdestino;
end;

procedure Timm.Setimmtemporetardo(const Value: Integer);
begin
  Fimmtemporetardo := Value;
end;

function Timm.Getimmtemporetardo: Integer;
begin
  Result := Fimmtemporetardo;
end;

procedure Timm.Setimmmodoimpressao(const Value: Integer);
begin
  Fimmmodoimpressao := Value;
end;

function Timm.Getimmmodoimpressao: Integer;
begin
  Result := Fimmmodoimpressao;
end;

procedure Timm.Setimmgarsom(const Value: Integer);
begin
  Fimmgarsom := Value;
end;

function Timm.Getimmgarsom: Integer;
begin
  Result := Fimmgarsom;
end;

procedure Timm.Settrmcodigo(const Value: Integer);
begin
  Ftrmcodigo := Value;
end;

function Timm.Gettrmcodigo: Integer;
begin
  Result := Ftrmcodigo;
end;

procedure Timm.Setimmhorapedido(const Value: TDateTime);
begin
  Fimmhorapedido := Value;
end;

function Timm.Getimmhorapedido: TDateTime;
begin
  Result := Fimmhorapedido;
end;

procedure Timm.Setimmnumepedido(const Value: Integer);
begin
  Fimmnumepedido := Value;
end;

function Timm.Getimmnumepedido: Integer;
begin
  Result := Fimmnumepedido;
end;

procedure Timm.Setimmidentificacao(const Value: String);
begin
  Fimmidentificacao := Value;
end;

function Timm.Getimmidentificacao: String;
begin
  Result := Fimmidentificacao;
end;

procedure Timm.Setimmimpresso(const Value: Integer);
begin
  Fimmimpresso := Value;
end;

function Timm.Getimmimpresso: Integer;
begin
  Result := Fimmimpresso;
end;

procedure Timm.Setimmentregue(const Value: Integer);
begin
  Fimmentregue := Value;
end;

function Timm.Getimmentregue: Integer;
begin
  Result := Fimmentregue;
end;

procedure Timm.Setccxchave(const Value: Integer);
begin
  Fccxchave := Value;
end;

function Timm.Getccxchave: Integer;
begin
  Result := Fccxchave;
end;

procedure Timm.Setcznchave(const Value: Integer);
begin
  Fcznchave := Value;
end;

function Timm.Getcznchave: Integer;
begin
  Result := Fcznchave;
end;

procedure Timm.Setetdcodigoent(const Value: Integer);
begin
  Fetdcodigoent := Value;
end;

function Timm.Getetdcodigoent: Integer;
begin
  Result := Fetdcodigoent;
end;

procedure Timm.Setimmpratos(const Value: Integer);
begin
  Fimmpratos := Value;
end;

function Timm.Getimmpratos: Integer;
begin
  Result := Fimmpratos;
end;

procedure Timm.Setimmcopos(const Value: Integer);
begin
  Fimmcopos := Value;
end;

function Timm.Getimmcopos: Integer;
begin
  Result := Fimmcopos;
end;

procedure Timm.Setimmnumepedidoint(const Value: Integer);
begin
  Fimmnumepedidoint := Value;
end;

function Timm.Getimmnumepedidoint: Integer;
begin
  Result := Fimmnumepedidoint;
end;

procedure Timm.Setclbcodigo(const Value: Integer);
begin
  Fclbcodigo := Value;
end;

function Timm.Getclbcodigo: Integer;
begin
  Result := Fclbcodigo;
end;

procedure Timm.Setclbcodigoent(const Value: Integer);
begin
  Fclbcodigoent := Value;
end;

function Timm.Getclbcodigoent: Integer;
begin
  Result := Fclbcodigoent;
end;

procedure Timm.Limpar;
begin
  Self.immchave := 0;
  Self.itochave := 0;
  Self.tcicodigo := 0;
  Self.immmodo := 0;
  Self.immhoraimprimir := 0;

  Self.immrecebido := 0;
  Self.dorchave := 0;
  Self.immdestino := 0;
  Self.immtemporetardo := 0;
  Self.immmodoimpressao := 0;
  Self.immgarsom := 0;
  Self.trmcodigo := 0;
  Self.immhorapedido := 0;
  Self.immnumepedido := 0;
  Self.immidentificacao := '';
  Self.immimpresso := 0;
  Self.immentregue := 0;
  Self.ccxchave := 0;
  Self.cznchave := 0;
  Self.etdcodigoent := 0;
  Self.immpratos := 0;
  Self.immcopos := 0;
  Self.immnumepedidoint := 0;
  Self.clbcodigo := 0;
  Self.clbcodigoent := 0;
  Self.pdscodigo := 1;

end;

procedure Timm.SetCOUNT(const Value: Integer);
begin
  FCOUNT := Value;
end;

function Timm.ToJson(pFields: String = '*'): TJSonObject;
begin
  pFields := ' ' + StringReplace(pFields, ',', ' ', [rfReplaceAll]);
  Result := TJSonObject.create;
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immchave ')) then
    Result.addPair('immchave', IntToStr(Self.immchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' itochave ')) then
    Result.addPair('itochave', IntToStr(Self.itochave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' tcicodigo ')) then
    Result.addPair('tcicodigo', IntToStr(Self.tcicodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immmodo ')) then
    Result.addPair('immmodo', IntToStr(Self.immmodo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immhoraimprimir ')) then
    Result.addPair('immhoraimprimir', DateTimeToStr(Self.immhoraimprimir));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immrecebido ')) then
    Result.addPair('immrecebido', IntToStr(Self.immrecebido));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' dorchave ')) then
    Result.addPair('dorchave', IntToStr(Self.dorchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immdestino ')) then
    Result.addPair('immdestino', IntToStr(Self.immdestino));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immtemporetardo ')) then
    Result.addPair('immtemporetardo', IntToStr(Self.immtemporetardo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immmodoimpressao ')) then
    Result.addPair('immmodoimpressao', IntToStr(Self.immmodoimpressao));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immgarsom ')) then
    Result.addPair('immgarsom', IntToStr(Self.immgarsom));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' trmcodigo ')) then
    Result.addPair('trmcodigo', IntToStr(Self.trmcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immhorapedido ')) then
    Result.addPair('immhorapedido', DateTimeToStr(Self.immhorapedido));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immnumepedido ')) then
    Result.addPair('immnumepedido', IntToStr(Self.immnumepedido));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immidentificacao ')) then
    Result.addPair('immidentificacao', Self.immidentificacao);
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immimpresso ')) then
    Result.addPair('immimpresso', IntToStr(Self.immimpresso));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immentregue ')) then
    Result.addPair('immentregue', IntToStr(Self.immentregue));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' ccxchave ')) then
    Result.addPair('ccxchave', IntToStr(Self.ccxchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' cznchave ')) then
    Result.addPair('cznchave', IntToStr(Self.cznchave));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' etdcodigoent ')) then
    Result.addPair('etdcodigoent', IntToStr(Self.etdcodigoent));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immpratos ')) then
    Result.addPair('immpratos', IntToStr(Self.immpratos));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immcopos ')) then
    Result.addPair('immcopos', IntToStr(Self.immcopos));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' immnumepedidoint ')) then
    Result.addPair('immnumepedidoint', IntToStr(Self.immnumepedidoint));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' clbcodigo ')) then
    Result.addPair('clbcodigo', IntToStr(Self.clbcodigo));
  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' clbcodigoent ')) then
    Result.addPair('clbcodigoent', IntToStr(Self.clbcodigoent));

  if (pFields.Contains('*') or AnsiLowerCase(pFields).Contains(' pdscodigo ')) then
    Result.addPair('pdscodigo', IntToStr(Self.pdscodigo));

end;

function Timm.JsonToClass(obj: TJSonObject): Timm;
begin
  Result := Timm.create;
  if (assigned(obj)) then
  begin
    Try
      Try
        Result.immchave := StrToInt(obj.get('immchave').JsonValue.Value);
      Except
      End;
      Try
        Result.itochave := StrToInt(obj.get('itochave').JsonValue.Value);
      Except
      End;
      Try
        Result.tcicodigo := StrToInt(obj.get('tcicodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.immmodo := StrToInt(obj.get('immmodo').JsonValue.Value);
      Except
      End;
      Try
        Result.immhoraimprimir := StrToDateTime(obj.get('immhoraimprimir').JsonValue.Value);
      Except
      End;
      Try
        Result.immrecebido := StrToInt(obj.get('immrecebido').JsonValue.Value);
      Except
      End;
      Try
        Result.dorchave := StrToInt(obj.get('dorchave').JsonValue.Value);
      Except
      End;
      Try
        Result.immdestino := StrToInt(obj.get('immdestino').JsonValue.Value);
      Except
      End;
      Try
        Result.immtemporetardo := StrToInt(obj.get('immtemporetardo').JsonValue.Value);
      Except
      End;
      Try
        Result.immmodoimpressao := StrToInt(obj.get('immmodoimpressao').JsonValue.Value);
      Except
      End;
      Try
        Result.immgarsom := StrToInt(obj.get('immgarsom').JsonValue.Value);
      Except
      End;
      Try
        Result.trmcodigo := StrToInt(obj.get('trmcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.immhorapedido := StrToDateTime(obj.get('immhorapedido').JsonValue.Value);
      Except
      End;
      Try
        Result.immnumepedido := StrToInt(obj.get('immnumepedido').JsonValue.Value);
      Except
      End;
      Try
        Result.immidentificacao := obj.get('immidentificacao').JsonValue.Value;
      Except
      End;
      Try
        Result.immimpresso := StrToInt(obj.get('immimpresso').JsonValue.Value);
      Except
      End;
      Try
        Result.immentregue := StrToInt(obj.get('immentregue').JsonValue.Value);
      Except
      End;
      Try
        Result.ccxchave := StrToInt(obj.get('ccxchave').JsonValue.Value);
      Except
      End;
      Try
        Result.cznchave := StrToInt(obj.get('cznchave').JsonValue.Value);
      Except
      End;
      Try
        Result.etdcodigoent := StrToInt(obj.get('etdcodigoent').JsonValue.Value);
      Except
      End;
      Try
        Result.immpratos := StrToInt(obj.get('immpratos').JsonValue.Value);
      Except
      End;
      Try
        Result.immcopos := StrToInt(obj.get('immcopos').JsonValue.Value);
      Except
      End;
      Try
        Result.immnumepedidoint := StrToInt(obj.get('immnumepedidoint').JsonValue.Value);
      Except
      End;
      Try
        Result.clbcodigo := StrToInt(obj.get('clbcodigo').JsonValue.Value);
      Except
      End;
      Try
        Result.clbcodigoent := StrToInt(obj.get('clbcodigoent').JsonValue.Value);
      Except
      End;
      Try
        Result.pdscodigo := StrToInt(obj.get('pdscodigo').JsonValue.Value);
      Except
      End;

    Except
      on E: Exception do
      begin
        Result.Free;
        raise Exception.create(E.Message);
      end;
    End;
  end;
end;

{ Tnumeropedidoimm }

constructor Timmnumeropedido.create;
begin

end;

destructor Timmnumeropedido.destroy;
begin

  inherited;
end;

procedure Timmnumeropedido.Setimmchave(const Value: Integer);
begin
  Fimmchave := Value;
end;

procedure Timmnumeropedido.Setimmnumepedido(const Value: Integer);
begin
  Fimmnumepedido := Value;
end;

end.
