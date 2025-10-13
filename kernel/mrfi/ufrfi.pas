unit ufrfi;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils, uFuncoes, uPegaBase, System.ImageList;

type
  Tfrfi = class(Tfrmbase)
    car: tuniquery;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    tfi: tuniquery;
    tfitficodigo: TIntegerField;
    tfitfiidentificacao: TStringField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    etd: tuniquery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    bco: tuniquery;
    bcobcocodigo: TStringField;
    bcobconome: TStringField;
    moe: tuniquery;
    moemoecodigo: TIntegerField;
    moemoeidentificacao: TStringField;
    frr: tuniquery;
    frrfrrcodigo: TIntegerField;
    frrfrridentificacao: TStringField;
    registrorfichave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registrotfdcodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    registrotficodigo: TIntegerField;
    registrotfiidentificacao: TStringField;
    registrobcocodigo: TStringField;
    registrobconome: TStringField;
    registrocarcodigo: TIntegerField;
    registrocaridentificacao: TStringField;
    registrorfiemissao: TDateField;
    registrorfivencimento: TDateField;
    registrorfinumero: TStringField;
    registrorfihistorico: TStringField;
    registrosrfcodigo: TIntegerField;
    registrorfirepetir: TIntegerField;
    registrorfidatadesc: TDateField;
    registrorfivalodesc: TFloatField;
    registrorfidatamulta: TDateField;
    registrorfiprevisao: TIntegerField;
    registrosenprevisao: TStringField;
    registrorfivalor: TFloatField;
    registrofrrcodigo: TIntegerField;
    registrofrridentificacao: TStringField;
    registrorfivalorparcela: TFloatField;
    registromoecodigo: TIntegerField;
    registromoeidentificacao: TStringField;
    Label1: TLabel;
    rfichave: TDBEdit;
    etdcodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    rfiemissao: TDBEdit;
    rfivencimento: TDBEdit;
    lrfivencimento: TLabel;
    Label8: TLabel;
    rfivalor: TDBEdit;
    lmoecodigo: TLabel;
    moecodigo: TDBEdit;
    lrfimoradia: TLabel;
    rfimoradia: TDBEdit;
    lrfipercmesmora: TLabel;
    rfipercmesmora: TDBEdit;
    lrfidatadesc: TLabel;
    rfidatadesc: TDBEdit;
    lrfivalodesc: TLabel;
    rfivalodesc: TDBEdit;
    lrfidatamulta: TLabel;
    rfidatamulta: TDBEdit;
    Label9: TLabel;
    rfihistorico: TDBEdit;
    lrfivalomulta: TLabel;
    rfivalomulta: TDBEdit;
    registrorfivalomulta: TFloatField;
    Label17: TLabel;
    rfinumero: TDBEdit;
    carcardiasmulta: TIntegerField;
    carcarpercmulta: TFloatField;
    carcarpercmorames: TFloatField;
    carcardiasdesc: TIntegerField;
    carcarpercdesc: TFloatField;
    cfgcfgdtinictb: TDateField;
    cfgcfgdtfinctb: TDateField;
    tit: tuniquery;
    registrotitcodigo: TIntegerField;
    tittitcodigo: TIntegerField;
    titetdcodigo: TIntegerField;
    tittitnumero: TStringField;
    tittitvalor: TFloatField;
    tittitemissao: TDateField;
    tittfdcodigo: TIntegerField;
    titsrfcodigo: TIntegerField;
    tittficodigo: TIntegerField;
    tittithora: TTimeField;
    tittithistorico: TStringField;
    titclbcodigo: TIntegerField;
    rfi: tuniquery;
    rfirfichave: TIntegerField;
    rfietdcodigo: TIntegerField;
    rfietdidentificacao: TStringField;
    rfitfdcodigo: TIntegerField;
    rfiflacodigo: TIntegerField;
    rfitficodigo: TIntegerField;
    rfitfiidentificacao: TStringField;
    rfibcocodigo: TStringField;
    rfibconome: TStringField;
    rficarcodigo: TIntegerField;
    rficaridentificacao: TStringField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfinumero: TStringField;
    rfirfihistorico: TStringField;
    rfisrfcodigo: TIntegerField;
    rfirfimoradia: TFloatField;
    rfirfirepetir: TIntegerField;
    rfirfidatadesc: TDateField;
    rfirfivalodesc: TFloatField;
    rfirfidatamulta: TDateField;
    rfirfiprevisao: TIntegerField;
    rfisenprevisao: TStringField;
    rfirfivalor: TFloatField;
    rfifrrcodigo: TIntegerField;
    rfifrridentificacao: TStringField;
    rfirfivalorparcela: TFloatField;
    rfimoecodigo: TIntegerField;
    rfimoeidentificacao: TStringField;
    rfirfipercmesmulta: TFloatField;
    rfirfivalomulta: TFloatField;
    rfititcodigo: TIntegerField;
    Label5: TLabel;
    tficodigo: TDBEdit;
    bcocodigo: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    carcodigo: TDBEdit;
    rfirfipercmesmora: TFloatField;
    registrorfimoradia: TFloatField;
    registrorfipercmesmora: TFloatField;
    registrorfipercmulta: TFloatField;
    lrfipercmulta: TLabel;
    rfipercmulta: TDBEdit;
    cfgcfgdatapadrao: TDateField;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    registroflaidentificacao: TStringField;
    lflacodigo: TLabel;
    flacodigo: TDBEdit;
    registrorfiinclusao: TDateTimeField;
    procedure tficodigoExit(Sender: TObject);
    procedure rfivencimentoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function registraparcelas(vchave: string; vvalor: string; vparcelas: string): string;
    { Private declarations }
  public
    { Public declarations }
    jaajustou: boolean;
  end;

  tregistraconvenio = function(AOwner: TComponent; conexao: tuniconnection; vtotal: string; vmeschave: string; ltechave: String; vparcelas: string;
    situacao: string; Acesso: TAcesso; vmechave:integer=0): string;

var
  frfi: Tfrfi;

implementation

{$R *.dfm}

procedure Tfrfi.FormShow(Sender: TObject);
begin



  inherited;

  if fla.RecordCount > 1 then
  begin
    flacodigo.Visible := true;
    lflacodigo.Visible := true;
  end
  else
  begin
    flacodigo.Visible := false;
    lflacodigo.Visible := false;
  end;
end;

function Tfrfi.registraparcelas(vchave: string; vvalor: string; vparcelas: string): string;
var
  registra: tregistraconvenio;
  vorcchave: string;
begin
  pack := LoadPackage('modulos\mdfc.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('registraconvenio'));

      if Assigned(registra) then
        Result := registra(Application, zcone, vvalor, vchave, '0', vparcelas, psituacao.Caption, Acesso);

    finally
      // DoUnLoadPackage(pack);
    end;
end;

procedure Tfrfi.rfivencimentoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  

end;

procedure Tfrfi.tficodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if self.registrotfdcodigo.AsInteger = tfdReceber then
  begin
    if tficodigo.Field.AsInteger = tfiboleto then
    begin
      lrfidatadesc.enabled := true;
      rfidatadesc.enabled := true;

      lrfivalodesc.enabled := true;
      rfivalodesc.enabled := true;

      lrfidatamulta.enabled := true;
      rfidatamulta.enabled := true;

      rfipercmulta.enabled := true;
      lrfipercmulta.enabled := true;

      lrfivalomulta.enabled := true;
      rfivalomulta.enabled := true;

      rfimoradia.enabled := false;
      rfipercmesmora.enabled := false;
      rfidatadesc.enabled := false;
      rfivalodesc.enabled := false;
      rfidatamulta.enabled := false;
      rfivalomulta.enabled := false;
      rfipercmulta.enabled := false;

      rfimoradia.Color := PEG_COR_VALORPADRAO;
      rfipercmesmora.Color := PEG_COR_VALORPADRAO;
      rfidatadesc.Color := PEG_COR_VALORPADRAO;
      rfivalodesc.Color := PEG_COR_VALORPADRAO;
      rfidatamulta.Color := PEG_COR_VALORPADRAO;
      rfivalomulta.Color := PEG_COR_VALORPADRAO;
      rfipercmulta.Color := PEG_COR_VALORPADRAO;

      rfimoradia.enabled := true;
      rfipercmesmora.enabled := true;
      rfidatadesc.enabled := true;
      rfivalodesc.enabled := true;
      rfidatamulta.enabled := true;
      rfivalomulta.enabled := true;
      rfipercmulta.enabled := true;

      lrfimoradia.enabled := true;
      lrfipercmesmora.enabled := true;
      lrfidatadesc.enabled := true;
      lrfivalodesc.enabled := true;
      lrfidatamulta.enabled := true;
      lrfivalomulta.enabled := true;
      lrfipercmulta.enabled := true;

     { if principal.FindComponent('spcarfidatadesc') <> nil then
      begin
        (principal.FindComponent('spcarfidatadesc') as Tspeedbutton).enabled := true;
      end;

      if principal.FindComponent('spcarfidatamulta') <> nil then
      begin
        (principal.FindComponent('spcarfidatamulta') as Tspeedbutton).enabled := true;
      end;}

    end
    else
    begin
      lrfidatadesc.enabled := false;
      rfidatadesc.enabled := false;

      lrfivalodesc.enabled := false;
      rfivalodesc.enabled := false;

      lrfidatamulta.enabled := false;
      rfidatamulta.enabled := false;

      rfipercmulta.enabled := false;
      lrfipercmulta.enabled := false;

      lrfivalomulta.enabled := false;
      rfivalomulta.enabled := false;

     { if principal.FindComponent('spcarfidatadesc') <> nil then
      begin
        (principal.FindComponent('spcarfidatadesc') as Tspeedbutton).enabled := false;
      end;

      if principal.FindComponent('spcarfidatamulta') <> nil then
      begin
        (principal.FindComponent('spcarfidatamulta') as Tspeedbutton).enabled := false;
      end;}

    end;

  end
  else
  begin

    if tficodigo.Field.AsInteger = tfiboleto then
    begin
      lrfidatadesc.enabled := true;
      rfidatadesc.enabled := true;

      lrfivalodesc.enabled := true;
      rfivalodesc.enabled := true;

      lrfidatamulta.enabled := true;
      rfidatamulta.enabled := true;

      rfipercmulta.enabled := true;
      lrfipercmulta.enabled := true;

      lrfivalomulta.enabled := true;
      rfivalomulta.enabled := true;

      rfimoradia.enabled := true;
      rfipercmesmora.enabled := true;
      rfidatadesc.enabled := true;
      rfivalodesc.enabled := true;
      rfidatamulta.enabled := true;
      rfivalomulta.enabled := true;
      rfipercmulta.enabled := true;

      lrfimoradia.enabled := true;
      lrfipercmesmora.enabled := true;
      lrfidatadesc.enabled := true;
      lrfivalodesc.enabled := true;
      lrfidatamulta.enabled := true;
      lrfivalomulta.enabled := true;
      lrfipercmulta.enabled := true;

     { if principal.FindComponent('spcarfidatadesc') <> nil then
      begin
        (principal.FindComponent('spcarfidatadesc') as Tspeedbutton).enabled := true;
      end;

      if principal.FindComponent('spcarfidatamulta') <> nil then
      begin
        (principal.FindComponent('spcarfidatamulta') as Tspeedbutton).enabled := true;
      end;}

    end
    else
    begin
      lrfidatadesc.enabled := false;
      rfidatadesc.enabled := false;

      lrfivalodesc.enabled := false;
      rfivalodesc.enabled := false;

      lrfidatamulta.enabled := false;
      rfidatamulta.enabled := false;

      rfipercmulta.enabled := false;
      lrfipercmulta.enabled := false;

      lrfivalomulta.enabled := false;
      rfivalomulta.enabled := false;

      rfimoradia.enabled := false;
      rfipercmesmora.enabled := false;
      rfidatadesc.enabled := false;
      rfivalodesc.enabled := false;
      rfidatamulta.enabled := false;
      rfivalomulta.enabled := false;
      rfipercmulta.enabled := false;

      lrfimoradia.enabled := false;
      lrfipercmesmora.enabled := false;
      lrfidatadesc.enabled := false;
      lrfivalodesc.enabled := false;
      lrfidatamulta.enabled := false;
      lrfivalomulta.enabled := false;
      lrfipercmulta.enabled := false;

     { if principal.FindComponent('spcarfidatadesc') <> nil then
      begin
        (principal.FindComponent('spcarfidatadesc') as Tspeedbutton).enabled := false;
      end;

      if principal.FindComponent('spcarfidatamulta') <> nil then
      begin
        (principal.FindComponent('spcarfidatamulta') as Tspeedbutton).enabled := false;
      end;}

    end;
  end;
end;

end.
