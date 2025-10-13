unit ufajtcustoesp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufajtcusto, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.SysUtils, uFuncoes, uPegaBase, System.ImageList;

type
  Tfajtcustoesp = class(Tfajtcusto)
    lpunmargemap: TLabel;
    punmargemap: TDBEdit;
    registropunpercacresavap: TFloatField;
    lpunpercacresavap: TLabel;
    punpercacresavap: TDBEdit;
    cfgcfgpercentacresaprazo: TFloatField;
    cfgcfgmostrapercentuais: TIntegerField;
    registropunbase: TFloatField;
    procedure punmargemapExit(Sender: TObject);
    procedure punmargemExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure punmargemapEnter(Sender: TObject);
    procedure punprecoapEnter(Sender: TObject);
    procedure punprecoavExit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure punprecoapExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fajtcustoesp: Tfajtcustoesp;

implementation

{$R *.dfm}

function formulariocustoesp(pCargaFrame: TCargaFrame): string;
begin
  fajtcustoesp := Tfajtcustoesp.Create(pCargaFrame);
  fajtcustoesp.ShowModal;
  fajtcustoesp.Free;
end;

exports formulariocustoesp;

procedure Tfajtcustoesp.bconfirmaClick(Sender: TObject);
var
  vlSituacao: String;
begin
  vlSituacao := self.psituacao.Caption;

  inherited;
  if vlSituacao = 'Alterando' then
  begin
    if not rpu.Active then
      rpu.Open;

    rpu.Append;
    rpupuncodigo.AsInteger := registropuncodigo.AsInteger;
    rpuclbcodigo.AsInteger := acesso.Usuario;
    rpupunprecoav.AsFloat := registropunprecoav.AsFloat;
    rpupunprecoap.AsFloat := registropunprecoap.AsFloat;
    rpupuncusto.AsFloat := registropuncusto.AsFloat;
    rpupunmargem.AsFloat := registropunmargem.AsFloat;
    rpurpuregistro.AsString := agora(Application, ZCone);
    rpu.Post;

  end;




end;

procedure Tfajtcustoesp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  Self.Height := 390;

  punmargem.Color := PEG_COR_VALORREQUERIDO;
  punprecoav.Color := PEG_COR_VALORREQUERIDO;
  punprecoap.Color := PEG_COR_VALORREQUERIDO;

  if cfgcfgdoisprecos.asinteger = 0 then
  begin
    punmargemap.Visible := False;
    lpunmargemap.Visible := False;
    Self.Height := 290;
  end;

    if cfgcfgmostrapercentuais.AsInteger = 0 then
  begin

    lpunpercacresavap.Visible := False;
    punpercacresavap.Visible := False;
    lpunmargemap.Visible := False;
    punmargemap.Visible := False;

  end;



end;

procedure Tfajtcustoesp.punmargemapEnter(Sender: TObject);
begin
  inherited;
  punmargemap.Field.AsFloat := punmargem.Field.AsFloat + punpercacresavap.Field.AsFloat;

end;

procedure Tfajtcustoesp.punmargemapExit(Sender: TObject);
begin
  if ActiveControl = bcancela then
    Exit;

  Self.ValidaSaida(Sender);

  if punmargemap.Field.IsNull then
    Exit;

  if punmargemap.Field.AsFloat = 0 then
    Exit;

  punprecoap.Field.AsFloat := TBRound(puncusto.Field.AsFloat + (puncusto.Field.AsFloat * (punmargemap.Field.AsFloat / 100)), 3);
end;

procedure Tfajtcustoesp.punmargemExit(Sender: TObject);
begin
  if ActiveControl = bcancela then
    Exit;

  Self.ValidaSaida(Sender);

  if punmargem.Field.IsNull then
    Exit;

  if punmargem.Field.AsFloat = 0 then
    Exit;

  punprecoav.Field.AsFloat := TBRound(puncusto.Field.AsFloat + (puncusto.Field.AsFloat * (punmargem.Field.AsFloat / 100)), 3);
end;

procedure Tfajtcustoesp.punprecoapEnter(Sender: TObject);
begin

  inherited;
 if cfgcfgpercentacresaprazo.AsFloat <> 0 then
    punpercacresavap.Field.AsFloat := cfgcfgpercentacresaprazo.AsFloat;

 if cfgcfgmostrapercentuais.AsInteger=1 then
 begin

  if punmargemap.Field.asinteger <> 0 then
  begin
    punprecoap.Field.AsCurrency := punprecoav.Field.AsCurrency + (punprecoav.Field.AsCurrency * (punpercacresavap.Field.AsFloat / 100));
  end
  else
    punprecoap.Field.AsCurrency := punprecoav.Field.AsCurrency * 1.1;
 end;

end;

procedure Tfajtcustoesp.punprecoapExit(Sender: TObject);
begin
  inherited;
 if cfgcfgmostrapercentuais.AsInteger=1 then
 begin
  punmargemap.Field.AsFloat := TBRound(((punprecoap.Field.AsFloat - puncusto.Field.AsFloat) / puncusto.Field.AsFloat) * 100, 3);
 end;
end;

procedure Tfajtcustoesp.punprecoavExit(Sender: TObject);
begin
  inherited;
  punmargem.Field.AsFloat := TBRound(((punprecoav.Field.AsFloat - puncusto.Field.AsFloat) / puncusto.Field.AsFloat) * 100, 3);
end;

procedure Tfajtcustoesp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registropunpercacresavap.AsFloat := cfgcfgpercentacresaprazo.AsFloat;
end;

end.
