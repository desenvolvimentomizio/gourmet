unit ufrfisrv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.ImgList, PngImageList,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Ufuncoes, System.ImageList,
  uPegaBase;

type
  Tfrfisrv = class(Tfrmbase)
    car: TUniQuery;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    carcardiasmulta: TIntegerField;
    carcarpercmulta: TFloatField;
    carcarpercmorames: TFloatField;
    carcardiasdesc: TIntegerField;
    carcarpercdesc: TFloatField;
    tfi: TUniQuery;
    tfitficodigo: TIntegerField;
    tfitfiidentificacao: TStringField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    bco: TUniQuery;
    bcobcocodigo: TStringField;
    bcobconome: TStringField;
    moe: TUniQuery;
    moemoecodigo: TIntegerField;
    moemoeidentificacao: TStringField;
    mfi: TUniQuery;
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimoecodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    mfimfivalorori: TFloatField;
    mfimfiparcela: TIntegerField;
    rfi: TUniQuery;
    rfirfichave: TIntegerField;
    rfietdcodigo: TIntegerField;
    rfitfdcodigo: TIntegerField;
    rfiflacodigo: TIntegerField;
    rfitficodigo: TIntegerField;
    rfibcocodigo: TStringField;
    rficarcodigo: TIntegerField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfinumero: TStringField;
    rfirfivalor: TFloatField;
    rfirfihistorico: TStringField;
    rfisrfcodigo: TIntegerField;
    rfifrrcodigo: TIntegerField;
    rfirfimoradia: TFloatField;
    rfirfipercmesmora: TFloatField;
    rfirfirepetir: TIntegerField;
    rfirfiprevisao: TIntegerField;
    rfirfivalorparcela: TFloatField;
    rfimoecodigo: TIntegerField;
    rfititcodigo: TIntegerField;
    rfirfidatamulta: TDateField;
    rfirfivalomulta: TFloatField;
    rfirfivalodesc: TFloatField;
    rfirfidatadesc: TDateField;
    rfirfipercmulta: TFloatField;
    rfirfidtultbaixa: TDateField;
    registrotitcodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registrotitnumero: TStringField;
    registrotitvalor: TFloatField;
    registrotitemissao: TDateField;
    registrotitvctoinicial: TDateField;
    registrotfdcodigo: TIntegerField;
    registrosrfcodigo: TIntegerField;
    registrotficodigo: TIntegerField;
    registrotfiidentificacao: TStringField;
    registrotithora: TTimeField;
    registrotithistorico: TStringField;
    registroclbcodigo: TIntegerField;
    registrotitvalorparcela: TFloatField;
    registrotitparcelas: TIntegerField;
    registrotitprevisao: TIntegerField;
    registrosenprevisao: TStringField;
    registromoecodigo: TIntegerField;
    registromoeidentificacao: TStringField;
    registrotitmoradia: TFloatField;
    registrotitvalomulta: TFloatField;
    registrotitpercmesmora: TFloatField;
    registrotitvalodesc: TFloatField;
    registrotitpercmulta: TFloatField;
    registroflacodigo: TIntegerField;
    registrobcocodigo: TStringField;
    registrobconome: TStringField;
    registrocarcodigo: TIntegerField;
    registrocaridentificacao: TStringField;
    registrotitdiasmulta: TIntegerField;
    registrotitdiasdesc: TIntegerField;
    Label1: TLabel;
    titcodigo: TDBEdit;
    etdcodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    titemissao: TDBEdit;
    titvctoinicial: TDBEdit;
    Label8: TLabel;
    Label4: TLabel;
    tficodigo: TDBEdit;
    Label17: TLabel;
    titnumero: TDBEdit;
    Label9: TLabel;
    bcocodigo: TDBEdit;
    Label10: TLabel;
    carcodigo: TDBEdit;
    ltitvalorparcela: TLabel;
    titvalorparcela: TDBEdit;
    lmoecodigo: TLabel;
    moecodigo: TDBEdit;
    ltitmoradia: TLabel;
    titmoradia: TDBEdit;
    ltitpercmesmora: TLabel;
    titpercmesmora: TDBEdit;
    ltitdiasdesc: TLabel;
    titdiasdesc: TDBEdit;
    ltitvalodesc: TLabel;
    titvalodesc: TDBEdit;
    ltitdiasmulta: TLabel;
    titdiasmulta: TDBEdit;
    ltitpercmesmulta: TLabel;
    titpercmulta: TDBEdit;
    ltitvalomulta: TLabel;
    titvalomulta: TDBEdit;
    Label12: TLabel;
    tithistorico: TDBEdit;
    mes: TUniQuery;
    mesetdcodigo: TIntegerField;
    mesmeschave: TIntegerField;
    mesmesprodutos: TFloatField;
    mesmesregistro: TDateField;
    rfm: TUniQuery;
    rfmrfmchave: TIntegerField;
    rfmrfichave: TIntegerField;
    rfmmeschave: TIntegerField;
    procedure titvctoinicialExit(Sender: TObject);
    procedure tficodigoExit(Sender: TObject);
    procedure titvalorparcelaExit(Sender: TObject);
    procedure titmoradiaExit(Sender: TObject);
    procedure titpercmesmoraExit(Sender: TObject);
    procedure titpercmultaExit(Sender: TObject);
    procedure titvalomultaExit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function GerarBoleto(vTitCodigo: Integer): Integer;
    procedure ModuloBoleto(vRotina: TRotinasBoletos; vGebCodigo, vBolChave: Integer);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frfisrv: Tfrfisrv;

implementation

{$R *.dfm}

procedure Tfrfisrv.bconfirmaClick(Sender: TObject);
var
  i: Integer;
  Confirma: Integer;
  vlGebChave: Integer;

begin

  inherited;

  for i := 0 to Self.registro.FieldCount - 1 do
    if Self.registro.Fields[i].Required then
      if Self.registro.Fields[i].AsString = '' then
        exit;

  if titnumero.Field.AsString = '' then
  begin
    registro.Edit;
    titnumero.Field.AsString := formatfloat('000000', titcodigo.Field.AsFloat);
    registro.post;
  end;

  if tithistorico.Field.AsString = '' then
  begin
    registro.Edit;
    tithistorico.Field.AsString := formatfloat('000000', titcodigo.Field.AsFloat) + '/' + registrotitparcelas.AsString;
    registro.post;
  end;

  // zcone.Commit;
  if Self.registrotitparcelas.AsInteger = 1 then
  begin
    rfi.Close;
    rfi.Params[0].AsInteger := titcodigo.Field.AsInteger;
    rfi.Open;

    if rfi.IsEmpty then
      rfi.Append
    else
      rfi.Edit;

    rfititcodigo.AsInteger := Self.registrotitcodigo.AsInteger;
    rfietdcodigo.AsInteger := Self.registroetdcodigo.AsInteger;
    rfitfdcodigo.AsInteger := registrotfdcodigo.AsInteger;
    rfiflacodigo.AsInteger := registroflacodigo.AsInteger;
    rfitficodigo.AsInteger := registrotficodigo.AsInteger;
    rfibcocodigo.AsString := registrobcocodigo.AsString;
    rficarcodigo.AsInteger := registrocarcodigo.AsInteger;
    rfirfiemissao.AsFloat := registrotitemissao.AsFloat;
    rfirfivencimento.AsFloat := Self.registrotitvctoinicial.AsFloat;
    rfirfinumero.AsString := registrotitnumero.AsString + '-1';
    rfirfivalor.AsCurrency := registrotitvalor.AsCurrency;
    rfirfihistorico.AsString := registrotithistorico.AsString;
    rfisrfcodigo.AsInteger := registrosrfcodigo.AsInteger;
    rfifrrcodigo.AsInteger := 1;
    rfirfimoradia.AsFloat := registrotitmoradia.AsFloat;
    rfirfipercmesmora.AsFloat := registrotitpercmesmora.AsFloat;
    rfirfirepetir.AsInteger := 1;
    rfirfiprevisao.AsInteger := registrotitprevisao.AsInteger;
    rfirfivalorparcela.AsFloat := registrotitvalorparcela.AsFloat;
    rfimoecodigo.AsInteger := registromoecodigo.AsInteger;

    rfirfidatamulta.AsFloat := registrotitdiasmulta.AsInteger + rfirfivencimento.AsFloat;
    rfirfivalomulta.AsFloat := registrotitvalomulta.AsFloat;
    rfirfivalodesc.AsFloat := registrotitvalodesc.AsFloat;
    rfirfidatadesc.AsFloat := rfirfivencimento.AsFloat - registrotitdiasdesc.AsFloat;
    rfirfipercmulta.AsFloat := registrotitpercmulta.AsFloat;
    rfirfipercmulta.AsFloat := registrotitpercmulta.AsFloat;
    rfi.post;

    rfm.Close;
    rfm.Params[0].AsInteger := rfirfichave.AsInteger;
    rfm.Open;
    if rfm.IsEmpty then
      rfm.Append
    else
      rfm.Edit;

    rfmrfichave.AsInteger := rfirfichave.AsInteger;
    rfmmeschave.AsString := vChaveMestre;
    rfm.post;

    mfi.Close;
    mfi.Params[0].AsInteger := rfirfichave.AsInteger;
    mfi.Open;

    if mfi.IsEmpty then
      mfi.Append
    else
      mfi.Edit;

    mfirfichave.AsInteger := Self.rfirfichave.AsInteger;
    case registrotfdcodigo.AsInteger of
      tfdReceber:
        mfitmfcodigo.AsInteger := tmfAReceber;
      tfdPagar:
        mfitmfcodigo.AsInteger := tmfAPagar;
    end;

    mfimoecodigo.AsInteger := registromoecodigo.AsInteger;
    mfimfivalor.AsFloat := Self.rfirfivalor.AsFloat;
    mfimfidata.AsFloat := Self.rfirfiemissao.AsFloat;
    mfimfihistorico.AsString := 'Registro Inicial';
    mfimfivalorori.AsFloat := Self.rfirfivalor.AsFloat;
    mfimfiparcela.AsInteger := 1;
    mfi.post;

    Confirma := Application.MessageBox(PChar('Deseja gerar o Boleto ?'), 'Atenção', MB_YESNO + MB_DEFBUTTON2 + MB_ICONQUESTION);

    If (Confirma = Idyes) Then
    Begin
      vlGebChave := GerarBoleto(Self.registrotitcodigo.AsInteger);
      ModuloBoleto(rblGeracao, vlGebChave, 0);
    End;

  end;

end;

procedure Tfrfisrv.ModuloBoleto(vRotina: TRotinasBoletos; vGebCodigo, vBolChave: Integer);
type

  TModuloBoleto = function(AOwner: TComponent; conexao: TUniConnection; vRotina: TRotinasBoletos; Acesso: TAcesso; vGebCodigo: Integer = 0; vBolChave: Integer = 0;
    vRmbCodigo: Integer = 0): Boolean;
var
  Exec: TModuloBoleto;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('ModuloBoleto'));

      if not Assigned(Exec) then
        exit;

      Exec(Application, zcone, vRotina, acesso,vGebCodigo, vBolChave);
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

procedure Tfrfisrv.FormShow(Sender: TObject);
begin
  mes.Close;
  mes.Params[0].AsString := vChaveMestre;
  mes.Open;

  inherited;

end;

procedure Tfrfisrv.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registrosrfcodigo.AsInteger := srfEmAberto;
  registrotithora.AsFloat := Time;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registroflacodigo.AsInteger := Acesso.Filial;
  registrotitprevisao.AsInteger := 0;
  registromoecodigo.AsInteger := 1;
  registrotitmoradia.AsFloat := 0;
  registrotitpercmesmora.AsFloat := 0;
  registrotitemissao.AsFloat := date;
  registrotitdiasdesc.AsInteger := 0;
  registrotitdiasmulta.AsInteger := 0;
  registrotitvalodesc.AsFloat := 0;
  registrotitvalomulta.AsFloat := 0;
  registrotitpercmulta.AsFloat := 0;
  registrotitparcelas.AsInteger := 1;
  registrotitprevisao.AsInteger := 0;
  registrotficodigo.AsInteger := tfiBoleto;
  registroetdcodigo.AsInteger := mesetdcodigo.AsInteger;
  registrotitvalor.AsCurrency := mesmesprodutos.AsCurrency;
  registrotitnumero.AsString := mesmeschave.AsString;
  registrotitemissao.AsString := mesmesregistro.AsString;
  registrotitvctoinicial.AsFloat := registrotitemissao.AsFloat + 30;
  registrotfdcodigo.AsInteger := tfdReceber;
  registrotithistorico.AsString := 'srv.Chave: ' + vChaveMestre;

end;

procedure Tfrfisrv.tficodigoExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);
  (* Identifica se usuário está abandonando a tela *)
  if ActiveControl = bcancela then
    exit;

  if Self.registrotfdcodigo.AsInteger = tfdReceber then
  begin
    if tficodigo.Field.AsInteger = tfiBoleto then
    begin
      ltitdiasdesc.Enabled := true;
      titdiasdesc.Enabled := true;

      ltitvalodesc.Enabled := true;
      titvalodesc.Enabled := true;

      ltitdiasmulta.Enabled := true;
      titdiasmulta.Enabled := true;

      ltitvalomulta.Enabled := true;
      titvalomulta.Enabled := true;

      titmoradia.Enabled := false;
      titpercmesmora.Enabled := false;
      titdiasdesc.Enabled := false;
      titvalodesc.Enabled := false;
      titdiasmulta.Enabled := false;
      titvalomulta.Enabled := false;
      titpercmulta.Enabled := false;

      titmoradia.Color := PEG_COR_VALORPADRAO;
      titpercmesmora.Color := PEG_COR_VALORPADRAO;
      titdiasdesc.Color := PEG_COR_VALORPADRAO;
      titvalodesc.Color := PEG_COR_VALORPADRAO;
      titdiasmulta.Color := PEG_COR_VALORPADRAO;
      titvalomulta.Color := PEG_COR_VALORPADRAO;
      titpercmulta.Color := PEG_COR_VALORPADRAO;

      titmoradia.Enabled := true;
      titpercmesmora.Enabled := true;
      titdiasdesc.Enabled := true;
      titvalodesc.Enabled := true;
      titdiasmulta.Enabled := true;
      titvalomulta.Enabled := true;
      titpercmulta.Enabled := true;

      ltitmoradia.Enabled := true;
      ltitpercmesmora.Enabled := true;
      ltitdiasdesc.Enabled := true;
      ltitvalodesc.Enabled := true;
      ltitdiasmulta.Enabled := true;
      ltitvalomulta.Enabled := true;
      ltitpercmesmulta.Enabled := true;

      if principal.FindComponent('spcatitdatadesc') <> nil then
      begin
        (principal.FindComponent('spcatitdatadesc') as Tspeedbutton).Enabled := true;
      end;

      if principal.FindComponent('spcatitdatamulta') <> nil then
      begin
        (principal.FindComponent('spcatitdatamulta') as Tspeedbutton).Enabled := true;
      end;

    end
    else
    begin
      ltitdiasdesc.Enabled := false;
      titdiasdesc.Enabled := false;

      ltitvalodesc.Enabled := false;
      titvalodesc.Enabled := false;

      ltitdiasmulta.Enabled := false;
      titdiasmulta.Enabled := false;

      titpercmulta.Enabled := false;
      ltitpercmesmulta.Enabled := false;

      ltitvalomulta.Enabled := false;
      titvalomulta.Enabled := false;

      if principal.FindComponent('spcatitdatadesc') <> nil then
      begin
        (principal.FindComponent('spcatitdatadesc') as Tspeedbutton).Enabled := false;
      end;

      if principal.FindComponent('spcatitdatamulta') <> nil then
      begin
        (principal.FindComponent('spcatitdatamulta') as Tspeedbutton).Enabled := false;
      end;

    end;

  end
  else
  begin

    { if tficodigo.Field.AsInteger = tfiboleto then
      begin }
    ltitdiasdesc.Enabled := true;
    titdiasdesc.Enabled := true;

    ltitvalodesc.Enabled := true;
    titvalodesc.Enabled := true;

    ltitdiasmulta.Enabled := true;
    titdiasmulta.Enabled := true;

    titpercmulta.Enabled := true;
    ltitpercmesmulta.Enabled := true;

    ltitvalomulta.Enabled := true;
    titvalomulta.Enabled := true;

    titmoradia.Enabled := true;
    titpercmesmora.Enabled := true;
    titdiasdesc.Enabled := true;
    titvalodesc.Enabled := true;
    titdiasmulta.Enabled := true;
    titvalomulta.Enabled := true;
    titpercmulta.Enabled := true;

    ltitmoradia.Enabled := true;
    ltitpercmesmora.Enabled := true;
    ltitdiasdesc.Enabled := true;
    ltitvalodesc.Enabled := true;
    ltitdiasmulta.Enabled := true;
    ltitvalomulta.Enabled := true;
    ltitpercmesmulta.Enabled := true;

    if principal.FindComponent('spcatitdatadesc') <> nil then
    begin
      (principal.FindComponent('spcatitdatadesc') as Tspeedbutton).Enabled := true;
    end;

    if principal.FindComponent('spcatitdatamulta') <> nil then
    begin
      (principal.FindComponent('spcatitdatamulta') as Tspeedbutton).Enabled := true;
    end;

    { end
      else
      begin
      ltitdiasdesc.enabled := false;
      titdiasdesc.enabled := false;

      ltitvalodesc.enabled := false;
      titvalodesc.enabled := false;

      ltitdiasmulta.enabled := false;
      titdiasmulta.enabled := false;

      titpercmesmulta.enabled := false;
      ltitpercmesmulta.enabled := false;

      ltitvalomulta.enabled := false;
      titvalomulta.enabled := false;

      ltitmoradia.enabled := false;
      titmoradia.enabled := false;

      ltitpercmesmora.enabled := false;
      titpercmesmora.enabled := false;
      titdiasdesc.enabled := false;
      titvalodesc.enabled := false;
      titdiasmulta.enabled := false;
      titvalomulta.enabled := false;
      titpercmesmulta.enabled := false;

      ltitdiasdesc.enabled := false;
      ltitvalodesc.enabled := false;
      ltitdiasmulta.enabled := false;
      ltitvalomulta.enabled := false;
      ltitpercmesmulta.enabled := false;

      if principal.FindComponent('spcatitdatadesc') <> nil then
      begin
      (principal.FindComponent('spcatitdatadesc') as Tspeedbutton).enabled := false;
      end;

      if principal.FindComponent('spcatitdatamulta') <> nil then
      begin
      (principal.FindComponent('spcatitdatamulta') as Tspeedbutton).enabled := false;
      end;

      end; }
  end;
end;

procedure Tfrfisrv.titmoradiaExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);
  (* Identifica se usuário está abandonando a tela *)
  if ActiveControl = bcancela then
    exit;

  if titmoradia.Field.AsFloat > 0 then
  begin
    if registrotitvalor.AsFloat > 0 then
    begin
      titpercmesmora.Field.AsFloat := ((titmoradia.Field.AsCurrency * 30) / registrotitvalor.AsCurrency) * 100;
    end;
  end;

end;

procedure Tfrfisrv.titpercmesmoraExit(Sender: TObject);
begin
  inherited;
  if titpercmesmora.Enabled then
    if titpercmesmora.Field.AsFloat > 0 then
      if titmoradia.Field.AsFloat = 0 then
        if registrotitvalor.AsFloat > 0 then
          titmoradia.Field.AsCurrency := registrotitvalor.AsCurrency * ((titpercmesmora.Field.AsFloat / 100) / 30)

end;

procedure Tfrfisrv.titpercmultaExit(Sender: TObject);
begin
  inherited;
  if titpercmulta.Enabled then
    if titdiasmulta.Field.AsFloat > 0 then
      if titpercmulta.Field.AsFloat > 0 then
        if registrotitvalor.AsFloat > 0 then
          titvalomulta.Field.AsCurrency := registrotitvalor.AsCurrency * (titpercmulta.Field.AsFloat / 100);

end;

procedure Tfrfisrv.titvalomultaExit(Sender: TObject);
begin
  inherited;
  if titvalomulta.Enabled then
    if titvalomulta.Field.AsFloat > 0 then
      if titpercmulta.Field.AsFloat = 0 then
        if registrotitvalor.AsFloat > 0 then
          titpercmulta.Field.AsCurrency := (titvalomulta.Field.AsCurrency / registrotitvalor.AsCurrency) * 100;

end;

procedure Tfrfisrv.titvalorparcelaExit(Sender: TObject);
begin
  inherited;

  Self.ValidaSaida(Sender);
  (* Identifica se usuário está abandonando a tela *)
  if ActiveControl = bcancela then
    exit;

  titmoradia.Field.AsCurrency := titvalorparcela.Field.AsCurrency * ((carcarpercmorames.AsFloat / 30) / 100);
  titvalodesc.Field.AsCurrency := titvalorparcela.Field.AsCurrency * (carcarpercdesc.AsFloat / 100);
  titvalomulta.Field.AsCurrency := titvalorparcela.Field.AsCurrency * (carcarpercmulta.AsFloat / 100);

  Self.registrotitvalor.AsFloat := titvalorparcela.Field.AsFloat * registrotitparcelas.AsInteger;

end;

function Tfrfisrv.GerarBoleto(vTitCodigo: Integer): Integer;
type
  TGeraBoletoVenda = function(AOwner: TComponent; Conexao: TUniConnection; Acesso: TAcesso; vUsrCodigo, vTrmCodigo: Integer; vTitCodigo: Integer): Integer;
var
  Exec: TGeraBoletoVenda;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('GeraBoletoVenda'));

      if not Assigned(Exec) then
        exit;

      result := Exec(Application, zcone,Acesso ,Acesso.Usuario, Acesso.Terminal, vTitCodigo);
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

procedure Tfrfisrv.titvctoinicialExit(Sender: TObject);
begin
  inherited;

  if ActiveControl = bcancela then
    exit;

  Self.ValidaSaida(Sender);
  (* Identifica se usuário está abandonando a tela *)

  if titvctoinicial.Field.AsFloat < Self.titemissao.Field.AsFloat then
  begin
    showmessage('Atenção: Data de Vencimento inferior a Emissão!');
    Self.titvctoinicial.Field.AsString := '';
    Self.titvctoinicial.SetFocus;
  end;

end;

end.
