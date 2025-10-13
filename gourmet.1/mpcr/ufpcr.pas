unit ufpcr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Ufrabase, Vcl.ImgList, PngImageList, System.ImageList;

type
  Tfpcr = class(Tfrmbase)
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    registropcrchave: TIntegerField;
    registropcgcodigo: TIntegerField;
    registropcgidentificacao: TStringField;
    registropcrvalor: TFloatField;
    registrophgcodigo: TIntegerField;
    registrophgidentificacao: TStringField;
    registropcrcomplhist: TStringField;
    Label1: TLabel;
    pcrchave: TDBEdit;
    pcgcodigo: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    phgcodigo: TDBEdit;
    Label5: TLabel;
    pcrcomplhist: TDBEdit;
    pcrvalor: TDBEdit;
    Label3: TLabel;
    registrotitcodigo: TIntegerField;
    cfgcfgctbmodo: TIntegerField;
    pcrsaldo: TUniQuery;
    pcrsaldopcrvalor: TFloatField;
    pcrsaldotitvalor: TFloatField;
    Plprg: TPanel;
    cfgcfgctbpcgrecebimentos: TIntegerField;
    cfgcfgctbpcgpagamentos: TIntegerField;
    cfgcfgctbusaccg: TIntegerField;
    prr: TUniQuery;
    prrprrchave: TIntegerField;
    prrpcrchave: TIntegerField;
    prrprrvalor: TFloatField;
    prrprrtipo: TIntegerField;
    prrccgcodigo: TIntegerField;
    prrprrpercentual: TFloatField;
    prrpcgcodigo: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcrvalorExit(Sender: TObject);
    procedure pcgcodigoExit(Sender: TObject);
    procedure MostraRateioCC;
    procedure salvacolunasframes;
    procedure atualizadetalhe;

  private
    { Private declarations }
  public
    { Public declarations }
    hprg: thandle;
    vpCedCodigo: String;
  end;

var
  fpcr: Tfpcr;

  // Início ID do Módulo fpcr
const
  vPlIdMd = '00.00.00.000-00';

  // Fim ID do Módulo fpcr

implementation

{$R *.dfm}

procedure Tfpcr.bconfirmaClick(Sender: TObject);
Var
  vlPodeFechar: Boolean;
  fra: Tfrabase;
begin

  vlPodeFechar := True;

  if pcrvalor.Field.Asfloat = 0 then
  begin
    showmessage('Valor tem que ser maior que 0,00!');
    Exit;
  end;

  if hprg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fraprr'));
    if fra <> nil then
      vlPodeFechar := fra.podefechar;
  end;

  if vlPodeFechar then
  begin
    inherited;
  end;

end;

procedure Tfpcr.FormShow(Sender: TObject);
var
  vlCfpCodigo: string;
  vlHistorico: string;
begin
  self.IdModulo := vPlIdMd;
  inherited;

  if cfgcfgctbmodo.AsInteger = 1 then
    self.Caption := 'Classificação'
  else
    self.Caption := 'Contabilização';

  if psituacao.Caption = 'Incluindo' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select  tithistorico from tit where titcodigo=' + vChaveMestre;
    consulta.Open;
    if not consulta.IsEmpty then
    begin
      vlHistorico := consulta.FieldByName('tithistorico').AsString;
    end
    else
    begin
      vlHistorico := '';

    end;

    pcrsaldo.Close;
    pcrsaldo.Params[0].AsString := vChaveMestre;
    pcrsaldo.Open;

    self.pcrvalor.Field.Asfloat := pcrsaldotitvalor.Asfloat - pcrsaldopcrvalor.Asfloat;
    self.pcrcomplhist.Field.AsString:=vlHistorico;
  end
  else
  begin

    consulta.Close;
    consulta.SQL.Text := 'select prrchave from prr where pcgcodigo=' + pcgcodigo.Field.AsString;
    consulta.Open;

  end;

end;

procedure Tfpcr.pcgcodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if pcgcodigo.Field.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select prcchave from prc where pcgcodigo=' + pcgcodigo.Field.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      self.Height := 448;
      Plprg.Height := 200;
      Plprg.Visible := True;
    end
    else
    begin
      if cfgcfgctbusaccg.AsInteger = 1 then
      begin
        self.Height := 448;
        Plprg.Height := 200;
        Plprg.Visible := True;

      end
      else
      begin

        Plprg.Height := 0;
        self.Height := 248;
        Plprg.Visible := false;
      end;

    end;

  end;

end;

procedure Tfpcr.pcrvalorExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    Exit;

  if self.pcrvalor.Field.Asfloat <= 0 then
  begin
    showmessage('Valor inválido. Necessita valor maior que 0,00!');
    pcrvalor.SetFocus;
    Exit;
  end;

  if cfgcfgctbusaccg.AsInteger = 1 then
  begin
    self.Height := 448;
    Plprg.Height := 200;

    if (registro.State = dsEdit) or (registro.State = dsInsert) then
    begin
      registro.Post;
      registro.Edit;
    end;

    if (registro.State = dsBrowse) then
      registro.Edit;

    // self.psituacao.Caption := 'Alterando';

    prr.Close;
    prr.Params[0].AsInteger := pcrchave.Field.AsInteger;
    prr.Open;

    consulta.Close;
    consulta.SQL.Text := 'SELECT prcchave,   pcgcodigo,  ccgcodigo,  prcpercentual FROM prc where pcgcodigo=' + self.pcgcodigo.Field.AsString;
    consulta.Open;

    consulta.First;
    while not consulta.Eof do
    begin
      if prr.Locate('pcrchave;ccgcodigo', VarArrayOf([self.registropcrchave.AsInteger, self.consulta.fields[2].AsInteger]), []) then
      begin
        prr.Edit;
      end
      else
      begin
        prr.Append;
      end;

      prrpcrchave.AsInteger := self.registropcrchave.AsInteger;
      prrprrvalor.AsCurrency := self.registropcrvalor.AsCurrency * (self.consulta.fields[3].Asfloat / 100);
      prrprrtipo.AsInteger := 1;
      prrccgcodigo.AsInteger := self.consulta.fields[2].AsInteger;
      prrprrpercentual.Asfloat := self.consulta.fields[3].Asfloat;
      prrpcgcodigo.AsString := pcgcodigo.Field.AsString;
      prr.Post;

      consulta.next;
    end;

    if psituacao.Caption = 'Incluindo' then
    begin
      MostraRateioCC;
    end
    else if psituacao.Caption = 'Alterando' then
    begin
      atualizadetalhe;
    end;

  end
  else
  begin
    Plprg.Height := 0;
    self.Height := 248;
  end;
end;

procedure Tfpcr.MostraRateioCC;
var
  fra: Tfrabase;
  I: integer;
begin

  If (self.registro.State = dsEdit) Then
    self.registro.Post
  Else If (self.registro.State = dsInsert) Then
    self.registro.Post;

  if hprg = 0 then
  begin
    bconfirma.Enabled := True;

    self.Height := 448;
    Plprg.Height := 200;
    Plprg.Visible := True;

    hprg := CarregaFrame('mprr', Plprg, 'pcr');

    fra := nil;
    fra := Tfrabase(Application.FindComponent('fraprr'));

    if self.psituacao.Caption = 'Incluindo' then
    begin
      if fra <> nil then
        if fra.vretorno = '0' then
        begin
          self.psituacao.Caption := 'Cancelando';
        end;
    end;

  end;
end;

procedure Tfpcr.salvacolunasframes;
var
  fra: Tfrabase;
begin

  if hprg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fraprr'));

    if fra <> nil then
      fra.salvacolunas;
  end;
end;

procedure Tfpcr.atualizadetalhe;
var
  fra: Tfrabase;
begin

  if hprg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fraprr'));

    if fra <> nil then
      fra.ActAtualizar.Execute;
  end;
end;

end.
