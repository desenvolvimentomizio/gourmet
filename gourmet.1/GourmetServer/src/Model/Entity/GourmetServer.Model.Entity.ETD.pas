unit GourmetServer.Model.Entity.ETD;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('etd')]
  TETD = Class
  private
    fetdcodigo: integer;
    fetdidentificacao: string;
    fetdapelido: string;
    fetddoc1: string;
    fetddeletar: integer;
    ftpecodigo: integer;
    fetddatacad: TDate;
    fetddataalt: TDate;
    ftsecodigo: integer;
    fetdcarga: integer;
    fetdativo: integer;
    fetddescsituacao: string;
    fetdsped: integer;
    fetdobs: string;
    fetdsuframa: string;
    ftcbcodigo: integer;
    fetdnfemodelos: string;
    fgrtcodigo: integer;
    fatvcodigo: integer;
    fjsncodigo: string;
    fetdpedidoobrigatorio: integer;
    fetdregime: integer;

    procedure setetdcodigo(const Value: integer);
    procedure setetdidentificacao(const Value: string);
    procedure setetdapelido(const Value: string);
    procedure setetddoc1(const Value: string);
    procedure setetddeletar(const Value: integer);
    procedure settpecodigo(const Value: integer);
    procedure setetddatacad(const Value: TDate);
    procedure setetddataalt(const Value: TDate);
    procedure settsecodigo(const Value: integer);
    procedure setetdcarga(const Value: integer);
    procedure setetdativo(const Value: integer);
    procedure setetddescsituacao(const Value: string);
    procedure setetdsped(const Value: integer);
    procedure setetdobs(const Value: string);
    procedure setetdsuframa(const Value: string);
    procedure settcbcodigo(const Value: integer);
    procedure setetdnfemodelos(const Value: string);
    procedure setgrtcodigo(const Value: integer);
    procedure setatvcodigo(const Value: integer);
    procedure setjsncodigo(const Value: string);
    procedure setetdpedidoobrigatorio(const Value: integer);
    procedure setetdregime(const Value: integer);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('etdcodigo'), PK,AutoInc]
    property etdcodigo: integer read fetdcodigo write setetdcodigo;

    [campo('etdidentificacao')]
    property etdidentificacao: string read fetdidentificacao write setetdidentificacao;

    [campo('etdapelido')]
    property etdapelido: string read fetdapelido write setetdapelido;

    [campo('etddoc1')]
    property etddoc1: string read fetddoc1 write setetddoc1;

    [campo('etddeletar')]
    property etddeletar: integer read fetddeletar write setetddeletar;

    [campo('tpecodigo')]
    property tpecodigo: integer read ftpecodigo write settpecodigo;

    [campo('etddatacad')]
    property etddatacad: TDate read fetddatacad write setetddatacad;

    [campo('etddataalt')]
    property etddataalt: TDate read fetddataalt write setetddataalt;

    [campo('tsecodigo')]
    property tsecodigo: integer read ftsecodigo write settsecodigo;

    [campo('etdcarga')]
    property etdcarga: integer read fetdcarga write setetdcarga;

    [campo('etdativo')]
    property etdativo: integer read fetdativo write setetdativo;

    [campo('etddescsituacao')]
    property etddescsituacao: string read fetddescsituacao write setetddescsituacao;

    [campo('etdsped')]
    property etdsped: integer read fetdsped write setetdsped;

    [campo('etdobs')]
    property etdobs: string read fetdobs write setetdobs;

    [campo('etdsuframa')]
    property etdsuframa: string read fetdsuframa write setetdsuframa;

    [campo('tcbcodigo')]
    property tcbcodigo: integer read ftcbcodigo write settcbcodigo;

    [campo('etdnfemodelos')]
    property etdnfemodelos: string read fetdnfemodelos write setetdnfemodelos;

    [campo('grtcodigo')]
    property grtcodigo: integer read fgrtcodigo write setgrtcodigo;

    [campo('atvcodigo')]
    property atvcodigo: integer read fatvcodigo write setatvcodigo;

    [campo('jsncodigo')]
    property jsncodigo: string read fjsncodigo write setjsncodigo;

    [campo('etdpedidoobrigatorio')]
    property etdpedidoobrigatorio: integer read fetdpedidoobrigatorio write setetdpedidoobrigatorio;

    [campo('etdregime')]
    property etdregime: integer read fetdregime write setetdregime;

  end;

implementation

{ TETD }

constructor TETD.create;
begin

end;

destructor TETD.destroy;
begin
  inherited;
end;

procedure TETD.setatvcodigo(const Value: integer);
begin
  fatvcodigo := Value;
end;

procedure TETD.setetdapelido(const Value: string);
begin
  fetdapelido := Value;
end;

procedure TETD.setetdativo(const Value: integer);
begin
  fetdativo := Value;
end;

procedure TETD.setetdcarga(const Value: integer);
begin
  fetdcarga := Value;
end;

procedure TETD.setetdcodigo(const Value: integer);
begin
  fetdcodigo := Value;
end;

procedure TETD.setetddataalt(const Value: TDate);
begin
  fetddataalt := Value;
end;

procedure TETD.setetddatacad(const Value: TDate);
begin
  fetddatacad := Value;
end;

procedure TETD.setetddeletar(const Value: integer);
begin
  fetddeletar := Value;
end;

procedure TETD.setetddescsituacao(const Value: string);
begin
  fetddescsituacao := Value;
end;

procedure TETD.setetddoc1(const Value: string);
begin
  fetddoc1 := Value;
end;

procedure TETD.setetdidentificacao(const Value: string);
begin
  fetdidentificacao := Value;
end;

procedure TETD.setetdnfemodelos(const Value: string);
begin
  fetdnfemodelos := Value;
end;

procedure TETD.setetdobs(const Value: string);
begin
  fetdobs := Value;
end;

procedure TETD.setetdpedidoobrigatorio(const Value: integer);
begin
  fetdpedidoobrigatorio := Value;
end;

procedure TETD.setetdregime(const Value: integer);
begin
  fetdregime := Value;
end;

procedure TETD.setetdsped(const Value: integer);
begin
  fetdsped := Value;
end;

procedure TETD.setetdsuframa(const Value: string);
begin
  fetdsuframa := Value;
end;

procedure TETD.setgrtcodigo(const Value: integer);
begin
  fgrtcodigo := Value;
end;

procedure TETD.setjsncodigo(const Value: string);
begin
  fjsncodigo := Value;
end;

procedure TETD.settcbcodigo(const Value: integer);
begin
  ftcbcodigo := Value;
end;

procedure TETD.settpecodigo(const Value: integer);
begin
  ftpecodigo := Value;
end;

procedure TETD.settsecodigo(const Value: integer);
begin
  ftsecodigo := Value;
end;

end.
