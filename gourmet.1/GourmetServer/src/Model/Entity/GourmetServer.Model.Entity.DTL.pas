unit GourmetServer.Model.Entity.DTL;

interface

{$TYPEINFO ON}

Uses
  SimpleAttributes;

type

  [Tabela('dtl')]
  TDTL = Class
  private
    fdtlchave: Integer;
    fltechave: Integer;
    fcedcodigo: Integer;
    fdtlvalor: currency;
    fmdacodigo: Integer;
    fdtlvalorinfo: currency;
    fflacodigo: Integer;
    frdcnrauto: string;
    fdtlregistro: tdatetime;
    fccxchave: Integer;

    procedure setdtlchave(const Value: Integer);
    procedure setltechave(const Value: Integer);
    procedure setccxchave(const Value: Integer);
    procedure setcedcodigo(const Value: Integer);
    procedure setdtlvalor(const Value: currency);
    procedure setmdacodigo(const Value: Integer);
    procedure setdtlvalorinfo(const Value: currency);
    procedure setflacodigo(const Value: Integer);
    procedure setrdcnrauto(const Value: string);
    procedure setdtlregistro(const Value: tdatetime);

  public
    constructor create;
    destructor destroy; override;
  published

    [campo('dtlchave'), PK, AutoInc]
    property dtlchave: Integer read fdtlchave write setdtlchave;

    [campo('ltechave')]
    property ltechave: Integer read fltechave write setltechave;

    [campo('cedcodigo')]
    property cedcodigo: Integer read fcedcodigo write setcedcodigo;

    [campo('dtlvalor')]
    property dtlvalor: currency read fdtlvalor write setdtlvalor;

    [campo('mdacodigo')]
    property mdacodigo: Integer read fmdacodigo write setmdacodigo;

    [campo('dtlvalorinfo')]
    property dtlvalorinfo: currency read fdtlvalorinfo write setdtlvalorinfo;

    [campo('flacodigo')]
    property flacodigo: Integer read fflacodigo write setflacodigo;

    [campo('rdcnrauto')]
    property rdcnrauto: string read frdcnrauto write setrdcnrauto;

    [campo('dtlregistro')]
    property dtlregistro: tdatetime read fdtlregistro write setdtlregistro;

    [campo('ccxchave')]
    property ccxchave: Integer read fccxchave write setccxchave;

  End;

implementation

{ TDTL }

constructor TDTL.create;
begin

end;

destructor TDTL.destroy;
begin
  inherited;
end;

procedure TDTL.setccxchave(const Value: Integer);
begin
  fccxchave := Value;
end;

procedure TDTL.setcedcodigo(const Value: Integer);
begin
  fcedcodigo := Value;
end;

procedure TDTL.setdtlchave(const Value: Integer);
begin
  fdtlchave := Value;
end;

procedure TDTL.setdtlregistro(const Value: tdatetime);
begin
  fdtlregistro := Value;
end;

procedure TDTL.setdtlvalor(const Value: currency);
begin
  fdtlvalor := Value;
end;

procedure TDTL.setdtlvalorinfo(const Value: currency);
begin
  fdtlvalorinfo := Value;
end;

procedure TDTL.setflacodigo(const Value: Integer);
begin
  fflacodigo := Value;
end;

procedure TDTL.setltechave(const Value: Integer);
begin
  fltechave := Value;
end;

procedure TDTL.setmdacodigo(const Value: Integer);
begin
  fmdacodigo := Value;
end;

procedure TDTL.setrdcnrauto(const Value: string);
begin
  frdcnrauto := Value;
end;

end.
