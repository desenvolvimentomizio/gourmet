unit ufpcb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils, System.Variants, ufrabase, System.ImageList;

type
  Tfpcb = class(Tfrmbase)
    registropcbchave: TIntegerField;
    registroccochave: TIntegerField;
    registropcgcodigo: TIntegerField;
    registrophgcodigo: TIntegerField;
    registropcbcomplhist: TStringField;
    Label1: TLabel;
    pcbchave: TDBEdit;
    Label2: TLabel;
    pcgcodigo: TDBEdit;
    Label3: TLabel;
    pcbvalor: TDBEdit;
    Label4: TLabel;
    phgcodigo: TDBEdit;
    Label5: TLabel;
    pcbcomplhist: TDBEdit;
    Plprg: TPanel;
    prg: TUniQuery;
    prgprgchave: TIntegerField;
    prgpcbchave: TIntegerField;
    prgprgvalor: TFloatField;
    prgprgtipo: TIntegerField;
    prgccgcodigo: TIntegerField;
    prgprgpercentual: TFloatField;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    registropcgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    pcbsaldo: TUniQuery;
    pcbsaldopcbvalor: TFloatField;
    pcbsaldoccovalor: TFloatField;
    cfgcfgctbmodo: TIntegerField;
    cfgcfgctbusaccg: TIntegerField;
    cfgcfgctbpcgrecebimentos: TIntegerField;
    cfgcfgctbpcgpagamentos: TIntegerField;
    prgpcgcodigo: TIntegerField;
    registropcbvalor: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure pcbvalorExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure pcgcodigoExit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    procedure MostraRateioCC;
    procedure salvacolunasframes;
    procedure atualizadetalhe;
    function Contabilizar(vLteChave: string; vtdgcodigo: Integer; vCcoChave, vmodo: string): Boolean;
    { Private declarations }
  public
    { Public declarations }
    hprg: thandle;
    vpCedCodigo: string;

  end;

  TContabilizacao = function(AOwner: TComponent; Conexao: tuniconnection; vusuario: string; vLteChave: string; vtdgcodigo: string; vCcoChave: string): Boolean;

var
  fpcb: Tfpcb;

  // Início ID do Módulo fpcb
const
  vPlIdMd = '02.10.16.003-02';

  // Fim ID do Módulo fpcb

implementation

{$R *.dfm}

procedure Tfpcb.bconfirmaClick(Sender: TObject);
Var
  vlPodeFechar: Boolean;
  fra: Tfrabase;
  vlCcoChave: string;
  vlltechave: string;
begin
  vlCcoChave := vChaveMestre;
  consulta.Close;
  consulta.SQL.Text := 'select ltechave from clt where ccochave=' + vlCcoChave;
  consulta.Open;

  vlltechave := consulta.Fields[0].AsString;

  vlPodeFechar := True;

  if pcbvalor.Field.Asfloat = 0 then
  begin
    showmessage('Valor tem que ser maior que 0,00!');
    Exit;
  end;

  if hprg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fraprg'));
    if fra <> nil then
      vlPodeFechar := fra.podefechar;
  end;

  if vlPodeFechar then
  begin
    inherited;
    Contabilizar(vlltechave, 1, vlCcoChave, 'Contabilizacao');

  end
  else
  begin
    showmessage('Não é possivel concluir o registro.' + #13 + 'Verfique os valores classificados!')
  end;

end;

function Tfpcb.Contabilizar(vLteChave: string; vtdgcodigo: Integer; vCcoChave: string; vmodo: string): Boolean;
var
  registra: TContabilizacao;
  vlPackMCtz: Cardinal;

begin
  vlPackMCtz := LoadPackage('modulos\mctz.bpl');
  if vlPackMCtz <> 0 then
    try
      @registra := GetProcAddress(vlPackMCtz, PChar(vmodo));

      if Assigned(registra) then
        Result := registra(Application, ZCone, Acesso.Usuario.ToString, vLteChave, IntToStr(vtdgcodigo), vCcoChave);

    finally
      // DoUnLoadPackage(Application, vlPackMCtz);
    end;
end;

procedure Tfpcb.FormShow(Sender: TObject);
var
  vlCfpCodigo: string;
  vlPhgcodigo: string;
  vlHistorico: string;
begin
  self.IdModulo := vPlIdMd;
  inherited;

  if cfgcfgctbmodo.AsInteger = 1 then
    self.Caption := 'Classificação'
  else
    self.Caption := 'Contabilização';

  consulta.Close;
  consulta.SQL.Text := 'select cedcodigo from cco where ccochave=' + vChaveMestre;
  consulta.Open;

  vpCedCodigo := consulta.Fields[0].AsString;

  if vpCedCodigo = '1' then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select cfpcodigo from pcg where pcgcodigo=' + cfgcfgctbpcgrecebimentos.AsString;
    consulta.Open;

    vlCfpCodigo := consulta.Fields[0].AsString;
    self.txtFiltro := 'cfpcodigo=' + vlCfpCodigo + ' and pcgativa=1';

  end;

  if vpCedCodigo = '0' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select cfpcodigo from pcg where pcgcodigo=' + cfgcfgctbpcgpagamentos.AsString;
    consulta.Open;

    vlCfpCodigo := consulta.Fields[0].AsString;
    self.txtFiltro := 'cfpcodigo=' + vlCfpCodigo + ' and pcgativa=1';

  end;

  if psituacao.Caption = 'Incluindo' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select phgcodigo, ccohistorico from cco where ccochave=' + vChaveMestre;
    consulta.Open;

    if consulta.IsEmpty then
    begin
      vlPhgcodigo := '';
      vlHistorico := '';
    end
    else
    begin
      vlPhgcodigo := consulta.FieldByName('phgcodigo').AsString;
      vlHistorico := consulta.FieldByName('ccohistorico').AsString;

    end;

    pcbsaldo.Close;
    pcbsaldo.Params[0].AsString := vChaveMestre;
    pcbsaldo.Open;

    self.pcbvalor.Field.AsCurrency := pcbsaldoccovalor.AsCurrency - pcbsaldopcbvalor.AsCurrency;
    self.phgcodigo.Field.AsString := vlPhgcodigo;
    self.pcbcomplhist.Field.AsString := vlHistorico;
  end
  else
  begin

    consulta.Close;
    consulta.SQL.Text := 'select prcchave from prc where pcgcodigo=' + pcgcodigo.Field.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      if psituacao.Caption = 'Alterando' then
        MostraRateioCC;
    end;

  end;

end;

procedure Tfpcb.atualizadetalhe;
var
  fra: Tfrabase;
begin

  if hprg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fraprg'));

    if fra <> nil then
      fra.ActAtualizar.Execute;
  end;
end;

procedure Tfpcb.pcbvalorExit(Sender: TObject);
begin
  inherited;

  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    Exit;

  if pcbvalor.Field.AsString = '' then
  begin
    Exit;
  end;

  if self.pcbvalor.Field.AsCurrency <= 0 then
  begin
    showmessage('Valor inválido. Necessita valor maior que 0,00!');
    pcbvalor.SetFocus;
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

    prg.Close;
    prg.Params[0].AsInteger := pcbchave.Field.AsInteger;
    prg.Open;

    consulta.Close;
    consulta.SQL.Text := 'SELECT prcchave,   pcgcodigo,  ccgcodigo,  prcpercentual FROM prc where pcgcodigo=' + self.pcgcodigo.Field.AsString;
    consulta.Open;

    consulta.First;
    while not consulta.Eof do
    begin
      if prg.Locate('pcbchave;ccgcodigo', VarArrayOf([self.registropcbchave.AsInteger, self.consulta.Fields[2].AsInteger]), []) then
      begin
        prg.Edit;
      end
      else
      begin
        prg.Append;
      end;

      prgpcbchave.AsInteger := self.registropcbchave.AsInteger;
      if self.consulta.Fields[3].Asfloat<>100 then
      prgprgvalor.AsCurrency := self.registropcbvalor.AsCurrency * (self.consulta.Fields[3].Asfloat / 100)
      else
      prgprgvalor.AsCurrency := self.registropcbvalor.AsCurrency;

      prgprgtipo.AsInteger := 1;
      prgccgcodigo.AsInteger := self.consulta.Fields[2].AsInteger;
      prgprgpercentual.Asfloat := self.consulta.Fields[3].Asfloat;
      prgpcgcodigo.AsString := pcgcodigo.Field.AsString;
      prg.Post;

      consulta.next;
    end;

    if psituacao.Caption = 'Incluindo' then
    begin
      MostraRateioCC;
    end
    else if psituacao.Caption = 'Alterando' then
    begin
      MostraRateioCC;
    end;

  end
  else
  begin
    Plprg.Height := 0;
    self.Height := 248;
  end;

end;

procedure Tfpcb.pcgcodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if pcgcodigo.Field.AsString <> '' then
  begin

    consulta.Close;
    consulta.SQL.Text := 'select seacodigo from pcg where pcgcodigo=' + pcgcodigo.Field.AsString;
    consulta.Open;

    if consulta.FieldByName('seacodigo').AsInteger = 0 then
    begin
      showmessage('Esta é uma conta Sintética, não pode receber lançamentos!');
      pcgcodigo.Field.AsString := '';
      pcgcodigo.SetFocus;
      Exit;
    end;

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
      Plprg.Height := 0;
      self.Height := 248;
      Plprg.Visible := false;

    end;

  end;

end;

procedure Tfpcb.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registroccochave.AsString := vChaveMestre;
end;

procedure Tfpcb.MostraRateioCC;
var
  fra: Tfrabase;
  I: Integer;
begin

  If (self.registro.State = dsEdit) Then
    self.registro.Post
  Else If (self.registro.State = dsInsert) Then
    self.registro.Post;

  bconfirma.Enabled := True;

  self.Height := 448;
  Plprg.Height := 200;
  Plprg.Visible := True;
  if hprg = 0 then
  begin
    hprg := CarregaFrame('mprg', Plprg, 'pcb');

    fra := nil;
    fra := Tfrabase(Application.FindComponent('fraprg'));

    if self.psituacao.Caption = 'Incluindo' then
    begin
      if fra <> nil then
        if fra.vretorno = '0' then
        begin
          self.psituacao.Caption := 'Cancelando';
        end;
    end;

  end
  else
  begin
    fra := Tfrabase(Application.FindComponent('fraprg'));
    fra.vChaveMestre := self.registropcbchave.AsString;
    self.atualizadetalhe;

  end;
end;

procedure Tfpcb.salvacolunasframes;
var
  fra: Tfrabase;
begin

  if hprg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('fraprg'));

    if fra <> nil then
      fra.salvacolunas;
  end;
end;

end.
