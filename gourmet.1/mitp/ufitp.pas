unit ufitp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes;

type
  Tfitp = class(Tfrmbase)
    registroitpchave: TIntegerField;
    registrotpvcodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registropuncodigo: TIntegerField;
    registropunprecoav: TFloatField;
    registropunprecoap: TFloatField;
    Label1: TLabel;
    itpchave: TDBEdit;
    Label2: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    puncodigo: TDBEdit;
    lpunprecoav: TLabel;
    punprecoav: TDBEdit;
    plpunprecoap: TLabel;
    punprecoap: TDBEdit;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropronome: TStringField;
    puninfo: TUniQuery;
    gbInformacoes: TGroupBox;
    puninfopuncodigo: TIntegerField;
    puninfoprocodigo: TIntegerField;
    puninfounisimbolo: TStringField;
    puninfopunprecoav: TFloatField;
    puninfopunprecoap: TFloatField;
    puninfopuncusto: TFloatField;
    puninfopunbarra: TStringField;
    puninfopunidentificacao: TStringField;
    DataSource1: TDataSource;
    Label6: TLabel;
    punidentificacao: TDBEdit;
    Label7: TLabel;
    unisimbolo: TDBEdit;
    Label8: TLabel;
    puncusto: TDBEdit;
    Label9: TLabel;
    punprecoavinfo: TDBEdit;
    Label10: TLabel;
    punprecoapinfo: TDBEdit;
    Label11: TLabel;
    punbarra: TDBEdit;
    pun: TUniQuery;
    punpuncodigo: TIntegerField;
    punpunidentificacao: TStringField;
    registropunidentificacao: TStringField;
    cfgcfgunitrib: TIntegerField;
    cfgcfgdoisprecos: TIntegerField;
    cfgcfgprousaetiqposi2010: TIntegerField;
    cfgcfgmodoatuapro: TIntegerField;
    cfgcfgpercentacresaprazo: TFloatField;
    cfgcfgmostrapercentuais: TIntegerField;
    tpv: TUniQuery;
    tpvtpvcodigo: TIntegerField;
    tpvdescodigo: TIntegerField;
    tpvtpvpercentual: TFloatField;
    registrodescodigo: TIntegerField;
    registroitppercentual: TFloatField;
    des: TUniQuery;
    desdescodigo: TIntegerField;
    desdesidentificacao: TStringField;
    registrodesidentificacao: TStringField;
    Label4: TLabel;
    descodigo: TDBEdit;
    Label5: TLabel;
    itppercentual: TDBEdit;
    procedure puncodigoEnter(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure puncodigoExit(Sender: TObject);
    procedure procodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure punprecoavEnter(Sender: TObject);
    procedure punprecoapEnter(Sender: TObject);
    procedure itppercentualEnter(Sender: TObject);
    procedure punprecoavExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fitp: Tfitp;

implementation

{$R *.dfm}

procedure Tfitp.bconfirmaClick(Sender: TObject);
begin
  if psituacao.Caption = 'Incluindo' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select itpchave from itp where procodigo=' + procodigo.field.AsString + ' and puncodigo=' + puncodigo.field.AsString +
      ' and tpvcodigo=' + registrotpvcodigo.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      Showmessage('Produto com esta unidade já consta desta lista de preços!');
      procodigo.SetFocus;
    end
    else
    begin
      begin
        if punprecoav.field.AsCurrency >= punprecoavinfo.field.AsCurrency then
        begin
          registroitppercentual.AsFloat := ((punprecoav.field.AsCurrency - punprecoavinfo.field.AsCurrency) / punprecoavinfo.field.AsCurrency) * 100;
          descodigo.field.AsInteger := 1;
        end
        else
        begin
          registroitppercentual.AsFloat := (((punprecoav.field.AsCurrency - punprecoavinfo.field.AsCurrency) * -1) / punprecoavinfo.field.AsCurrency) * 100;
          descodigo.field.AsInteger := 0;
        end;

        inherited;
      end;

    end
  end
  else
    inherited;

  if cfgcfgdoisprecos.AsInteger = 0 then
    registropunprecoap.AsFloat := registropunprecoav.AsFloat;

end;

procedure Tfitp.FormShow(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  if (procodigo.field.AsString <> '') and (puncodigo.field.AsString <> '') then
  begin
    puninfo.Close;
    puninfo.ParamByName('procodigo').AsString := procodigo.field.AsString;
    puninfo.ParamByName('puncodigo').AsString := puncodigo.field.AsString;
    puninfo.Open;
  end
  else
    puninfo.Close;

  punidentificacao.Color := PEG_COR_VALORPADRAO;
  unisimbolo.Color := PEG_COR_VALORPADRAO;
  puncusto.Color := PEG_COR_VALORPADRAO;
  punprecoavinfo.Color := PEG_COR_VALORPADRAO;
  punprecoapinfo.Color := PEG_COR_VALORPADRAO;
  punbarra.Color := PEG_COR_VALORPADRAO;

  if cfgcfgdoisprecos.AsInteger = 1 then
  begin
    punprecoap.Visible := True;
    plpunprecoap.Visible := True;

  end
  else
  begin
    punprecoap.Visible := False;
    plpunprecoap.Visible := False;

  end;

  tpv.Close;
  tpv.ParamByName('tpvcodigo').AsString := vChaveMestre;
  tpv.Open;

end;

procedure Tfitp.itppercentualEnter(Sender: TObject);
begin
  inherited;
  if psituacao.Caption = 'Incluindo' then
  begin

  end;
end;

procedure Tfitp.procodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    Exit;

  if (procodigo.field.AsString <> '') and (puncodigo.field.AsString <> '') then
  begin
    puninfo.Close;
    puninfo.ParamByName('procodigo').AsString := procodigo.field.AsString;
    puninfo.ParamByName('puncodigo').AsString := puncodigo.field.AsString;
    puninfo.Open;
  end
  else
    puninfo.Close;

end;

procedure Tfitp.puncodigoEnter(Sender: TObject);
begin
  inherited;
  self.txtFiltro := 'procodigo=' + procodigo.field.AsString;

end;

procedure Tfitp.puncodigoExit(Sender: TObject);
begin
  inherited;

  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    Exit;

  if (procodigo.field.AsString <> '') and (puncodigo.field.AsString <> '') then
  begin
    puninfo.Close;
    puninfo.ParamByName('procodigo').AsString := procodigo.field.AsString;
    puninfo.ParamByName('puncodigo').AsString := puncodigo.field.AsString;
    puninfo.Open;

    if psituacao.Caption = 'Incluindo' then
    begin
      itppercentual.field.AsFloat := tpvtpvpercentual.AsFloat;
      descodigo.field.AsInteger := tpvdescodigo.AsInteger;

      if tpvdescodigo.AsInteger = 1 then
      begin
        punprecoav.field.AsCurrency := punprecoavinfo.field.AsCurrency + (punprecoavinfo.field.AsCurrency * (registroitppercentual.AsFloat / 100));
        punprecoap.field.AsCurrency := punprecoapinfo.field.AsCurrency + (punprecoapinfo.field.AsCurrency * (registroitppercentual.AsFloat / 100));

      end
      else
      begin
        punprecoav.field.AsCurrency := punprecoavinfo.field.AsCurrency - (punprecoavinfo.field.AsCurrency * (registroitppercentual.AsFloat / 100));
        punprecoap.field.AsCurrency := punprecoapinfo.field.AsCurrency - (punprecoapinfo.field.AsCurrency * (registroitppercentual.AsFloat / 100));

      end;
    end;

  end
  else
    puninfo.Close;

end;

procedure Tfitp.punprecoapEnter(Sender: TObject);
begin
  inherited;
    if tpvdescodigo.AsInteger = 1 then
    begin
      punprecoap.field.AsCurrency := punprecoavinfo.field.AsCurrency + (punprecoavinfo.field.AsCurrency * (registroitppercentual.AsFloat / 100));

    end
    else
    begin
      punprecoap.field.AsCurrency := punprecoavinfo.field.AsCurrency - (punprecoavinfo.field.AsCurrency * (registroitppercentual.AsFloat / 100));

    end;

end;

procedure Tfitp.punprecoavEnter(Sender: TObject);
begin
  inherited;
    if tpvdescodigo.AsInteger = 1 then
    begin
      punprecoav.field.AsCurrency := punprecoavinfo.field.AsCurrency + (punprecoavinfo.field.AsCurrency * (registroitppercentual.AsFloat / 100));

    end
    else
    begin
      punprecoav.field.AsCurrency := punprecoavinfo.field.AsCurrency - (punprecoavinfo.field.AsCurrency * (registroitppercentual.AsFloat / 100));

    end;

end;

procedure Tfitp.punprecoavExit(Sender: TObject);
begin
  inherited;
  if punprecoav.field.AsCurrency >= punprecoavinfo.field.AsCurrency then
  begin
    registroitppercentual.AsFloat := ((punprecoav.field.AsCurrency - punprecoavinfo.field.AsCurrency) / punprecoavinfo.field.AsCurrency) * 100;
    descodigo.field.AsInteger := 1;
  end
  else
  begin
    registroitppercentual.AsFloat := (((punprecoav.field.AsCurrency - punprecoavinfo.field.AsCurrency) * -1) / punprecoavinfo.field.AsCurrency) * 100;
    descodigo.field.AsInteger := 0;
  end;

end;

procedure Tfitp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrotpvcodigo.AsString := vChaveMestre;
end;

end.
