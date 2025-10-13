unit GourmetServer.Model.Entity.LTE;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('lte')]
  TLTE = Class
  private
    fltechave: Integer;
    ftfdcodigo: Integer;
    fltedata: tdate;
    flteprincipal: currency;
    fltedesconto: currency;
    fltetotal: currency;
    fltesituacao: Integer;
    fflacodigo: Integer;
    fclbcodigo: Integer;
    fctacodigo: Integer;
    flteregistro: Tdatetime;
    fltetroco: currency;
    fltevalortaxa: currency;
    fltetipotaxa: Integer;
    fccxchave: Integer;

    procedure setltechave(const Value: Integer);
    procedure settfdcodigo(const Value: Integer);
    procedure setltedata(const Value: tdate);
    procedure setlteprincipal(const Value: currency);
    procedure setltedesconto(const Value: currency);
    procedure setltetotal(const Value: currency);
    procedure setltesituacao(const Value: Integer);
    procedure setflacodigo(const Value: Integer);
    procedure setclbcodigo(const Value: Integer);
    procedure setctacodigo(const Value: Integer);
    procedure setlteregistro(const Value: Tdatetime);
    procedure setltetroco(const Value: currency);
    procedure setltevalortaxa(const Value: currency);
    procedure setltetipotaxa(const Value: Integer);
    procedure setccxchave(const Value: Integer);

  public
    constructor create;
    destructor destroy; override;
  published
    [campo('ltechave'), PK, AutoInc]
    property ltechave: Integer read fltechave write setltechave;

    [campo('tfdcodigo')]
    property tfdcodigo: Integer read ftfdcodigo write settfdcodigo;

    [campo('ltedata')]
    property ltedata: tdate read fltedata write setltedata;

    [campo('lteprincipal')]
    property lteprincipal: currency read flteprincipal write setlteprincipal;

    [campo('ltedesconto')]
    property ltedesconto: currency read fltedesconto write setltedesconto;

    [campo('ltetotal')]
    property ltetotal: currency read fltetotal write setltetotal;

    [campo('ltesituacao')]
    property ltesituacao: Integer read fltesituacao write setltesituacao;

    [campo('flacodigo')]
    property flacodigo: Integer read fflacodigo write setflacodigo;

    [campo('clbcodigo')]
    property clbcodigo: Integer read fclbcodigo write setclbcodigo;

    [campo('ctacodigo')]
    property ctacodigo: Integer read fctacodigo write setctacodigo;

    [campo('lteregistro')]
    property lteregistro: Tdatetime read flteregistro write setlteregistro;

    [campo('ltetroco')]
    property ltetroco: currency read fltetroco write setltetroco;

    [campo('ltevalortaxa')]
    property ltevalortaxa: currency read fltevalortaxa write setltevalortaxa;

    [campo('ltetipotaxa')]
    property ltetipotaxa: Integer read fltetipotaxa write setltetipotaxa;

    [campo('ccxchave')]
    property ccxchave: Integer read fccxchave write setccxchave;

  End;

implementation

{ LTE }

constructor TLTE.create;
begin

end;

destructor TLTE.destroy;
begin
  inherited;
end;

procedure TLTE.setccxchave(const Value: Integer);
begin
  fccxchave := Value;
end;

procedure TLTE.setclbcodigo(const Value: Integer);
begin
  fclbcodigo := Value;
end;

procedure TLTE.setctacodigo(const Value: Integer);
begin
  fctacodigo := Value;
end;

procedure TLTE.setflacodigo(const Value: Integer);
begin
  fflacodigo := Value;
end;

procedure TLTE.setltechave(const Value: Integer);
begin
  fltechave := Value;
end;

procedure TLTE.setltedata(const Value: tdate);
begin
  fltedata := Value;
end;

procedure TLTE.setltedesconto(const Value: currency);
begin
  fltedesconto := Value;
end;

procedure TLTE.setlteprincipal(const Value: currency);
begin
  flteprincipal := Value;
end;

procedure TLTE.setlteregistro(const Value: Tdatetime);
begin
  flteregistro := Value;
end;

procedure TLTE.setltesituacao(const Value: Integer);
begin
  fltesituacao := Value;
end;

procedure TLTE.setltetipotaxa(const Value: Integer);
begin
  fltetipotaxa := Value;
end;

procedure TLTE.setltetotal(const Value: currency);
begin
  fltetotal := Value;
end;

procedure TLTE.setltetroco(const Value: currency);
begin
  fltetroco := Value;
end;

procedure TLTE.setltevalortaxa(const Value: currency);
begin
  fltevalortaxa := Value;
end;

procedure TLTE.settfdcodigo(const Value: Integer);
begin
  ftfdcodigo := Value;
end;

end.
