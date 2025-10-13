unit ufcco;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Graphics, Vcl.Dialogs, System.SysUtils, ufrabase, uFuncoes,
  uPegaBase, System.ImageList;

type
  Tfcco = class(Tfrmbase)
    registroccochave: TIntegerField;
    registroccovencimento: TDateField;
    registroctacodigo: TIntegerField;
    registrotoccodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotficodigo: TIntegerField;
    registromoecodigo: TIntegerField;
    registroccoemissao: TDateField;
    registrocconumero: TStringField;
    registroccohistorico: TStringField;
    registroccovalor: TFloatField;
    registroccochaveorig: TIntegerField;
    registroccochavedest: TIntegerField;
    registroccoconciliado: TIntegerField;
    registroccoextenso: TStringField;
    Label1: TLabel;
    ccochave: TDBEdit;
    lccovencimento: TLabel;
    ccovencimento: TDBEdit;
    Label3: TLabel;
    ccoemissao: TDBEdit;
    Label4: TLabel;
    cedcodigo: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    cconumero: TDBEdit;
    Label7: TLabel;
    ccovalor: TDBEdit;
    ccohistorico: TDBMemo;
    lte: tuniquery;
    ced: tuniquery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registrocedidentificacao: TStringField;
    Label10: TLabel;
    registroetdcodigo: TIntegerField;
    ccofavorecido: TDBEdit;
    registroccodatamov: TDateField;
    registroccodataregistro: TDateField;
    registroccohoraregistro: TTimeField;
    registroccofavorecido: TStringField;
    bbuscaetd: TSpeedButton;
    etdcodigo: TDBEdit;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    ActConciliar: TAction;
    registrophgcodigo: TIntegerField;
    phg: tuniquery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    phgcodigo: TDBEdit;
    Label8: TLabel;
    let: tuniquery;
    letletchave: TIntegerField;
    letltechave: TIntegerField;
    letetdcodigo: TIntegerField;
    plContab: TPanel;
    cfgcfgusactb: TIntegerField;
    registroflacodigo: TIntegerField;
    cfgcfgctbusaccg: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    function finaliza(vchave: string): string;
    procedure bconfirmaClick(Sender: TObject);
    procedure ccoemissaoExit(Sender: TObject);
    procedure ccovencimentoExit(Sender: TObject);
    procedure bbuscaetdClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActConciliarExecute(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure ccovalorExit(Sender: TObject);
    procedure FormResize(Sender: TObject);

  private
    hpcb: thandle;
    hmcg: thandle;
    procedure MostraRateioCTB;
    procedure salvacolunasframes;
    procedure atualizadetalhe;
    procedure MostraRateioMCG;
    { Private declarations }
  public
    { Public declarations }
    VpEtdCodigo: String; // Armazena código da entidade selecionada
    VpEtdCodigoOrig: String; // Armazena código anterior para o caso de cancelamento da lista
    VpEtdCancelado: Boolean; // Identifica se o usuário Cancelou a chamada da lista de clientes.
    VpTctCodigo: Integer; // Vai armanezer o tipo de conta corrente
    vpCCOValor: double;
  end;

var
  fcco: Tfcco;

  // Início ID do Módulo fracco
const
  vPlIdMd = '02.02.07.007-02';

  // Fim ID do Módulo fracco

implementation

{$R *.dfm}

uses ufcnb;

procedure Tfcco.ActConciliarExecute(Sender: TObject);
begin
  CriaFormulario(Tfcnb, '0', registroccochave.AsString);
end;

procedure Tfcco.bbuscaetdClick(Sender: TObject);
var
  vetdidentificacao: string;
begin
  inherited;
  VpEtdCodigo := self.etdcodigo.Field.AsString;

  VpEtdCodigoOrig := VpEtdCodigo;

  VpEtdCodigo := MostraLista('mcli', 'PermiteConsumidor'); // Busca Clientes

  // Identifica se usuário cancelou a lista de clientes.
  if VpEtdCodigo = '' then
  begin
    VpEtdCancelado := True;
    VpEtdCodigo := VpEtdCodigoOrig;
  end
  else
    VpEtdCancelado := False;

  if (registro.State <> dsedit) or (registro.State <> dsInsert) then
    registro.Edit;

  self.etdcodigo.Field.AsString := VpEtdCodigo;

  if VpEtdCodigo = '0' then
  begin
    self.ccofavorecido.Enabled := True;
    self.ccofavorecido.Field.AsString := '';
    self.ccofavorecido.SetFocus;
  end
  else
  begin
    self.consulta.Close;
    self.consulta.SQL.Text := 'select etdidentificacao from etd where etdcodigo=' + VpEtdCodigo;
    self.consulta.Open;
    if self.consulta.RecordCount = 1 then
    begin
      if lowercase(consulta.Fields[0].AsString) <> 'consumidor' then
      begin
        self.ccofavorecido.Field.AsString := consulta.Fields[0].AsString;
        self.ccofavorecido.Enabled := False;
        self.phgcodigo.SetFocus;
      end
      else
      begin
        self.ccofavorecido.Enabled := True;
        self.ccofavorecido.Field.AsString := '';
        self.ccofavorecido.SetFocus;

      end;
    end;
  end;
  self.SetFocus;

end;

procedure Tfcco.bcancelaClick(Sender: TObject);
begin
  if psituacao.Caption = 'Alterando' then
  begin
    if registro.State = dsBrowse then
      registro.Edit;

    ccovalor.Field.AsFloat := vpCCOValor;
    registro.Post;
  end;

  if registroccovalor.AsFloat = 0 then
  begin
    registro.Delete;
  end;

  inherited;

end;

procedure Tfcco.bconfirmaClick(Sender: TObject);
var
  vchave: string;
  vretorno: string;
  i: Integer;
  vlPode: Boolean;
  vlPodeFechar: Boolean;
  fra: Tfrabase;

begin
  { inherited; }

  if not ValidaCamposRequeridos then
    Exit;

  If (self.bconfirma.Caption = 'Confirma') or (self.bconfirma.Caption = 'Fechar') Then
  Begin

    vlPodeFechar := True;

    if hpcb <> 0 then
    begin
      fra := nil;
      fra := Tfrabase(Application.FindComponent('frapcb'));
      if fra <> nil then
        vlPodeFechar := fra.podefechar;
    end
    else if hmcg <> 0 then
    begin
      fra := nil;
      fra := Tfrabase(Application.FindComponent('framcg'));
      if fra <> nil then
        vlPodeFechar := fra.podefechar;
    end;

    if vlPodeFechar then
    begin

      if ccovencimento.Visible = False then
      begin
        if registro.State = dsBrowse then
        begin
          registro.Edit;
        end;
        registroccovencimento.AsFloat := registroccoemissao.AsFloat;

      end;

      If self.bconfirma.Caption = 'Confirma' Then
      begin
        salvacolunasframes;
      end;

      If self.SalvaRegistro Then
      begin
        vchave := self.registroccochave.AsString;

        vretorno := finaliza(vchave);
        if vretorno <> '' then
        begin

          ModalResult := mrOk;
        end;

      end
      Else
      begin
        ShowMessage('Registro incompleto, favor verificar !');
      end;
    end
    else
    begin
      ShowMessage('Contabilização incompleta, favor verificar !');

    end;
  End
  Else
  Begin

    paginas.ActivePageIndex := paginas.ActivePageIndex + 1;

    If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;
    If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;
    If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;
    If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;
    If paginas.Pages[paginas.ActivePageIndex].TabVisible = False Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;

    ajustabotoes;

    Try
      (self.paginas.Pages[paginas.ActivePageIndex] As TTabSheet).SetFocus;
    Except
    End;
  End;
end;

procedure Tfcco.atualizadetalhe;
var
  fra: Tfrabase;
begin

  if hpcb <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('frapcb'));
    fra.vChaveMestre := self.registroccochave.AsString;
    if fra <> nil then
      fra.ActAtualizar.Execute;
  end
  else if hmcg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('framcg'));
    fra.vChaveMestre := self.registroccochave.AsString;
    if fra <> nil then
      fra.ActAtualizar.Execute;
  end;

end;

procedure Tfcco.salvacolunasframes;
var
  fra: Tframe;
begin
  fra := Tfrabase(Application.FindComponent('frapcb'));
  if fra <> nil then
    (fra as Tfrabase).salvacolunas;
end;

procedure Tfcco.ccoemissaoExit(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select curdate()';
  consulta.Open;

  { if self.ccoemissao.Field.AsFloat <> consulta.Fields[0].AsFloat then
    begin

    ShowMessage('Data de Emissão deve ser a data atual.');
    Exit;

    end; }

  self.ValidaSaida(Sender);

  { consulta.Close;
    consulta.SQL.Text := 'select ctadtmovi from cta where ctacodigo=' + self.vChaveMestre;
    consulta.Open;

    if ccoemissao.Field.AsFloat < self.consulta.Fields[0].AsFloat then
    begin
    ShowMessage('Data de Emissão não pode ser inferior ao Movimento Atual: ' + datetostr(consulta.Fields[0].AsFloat));
    self.ccoemissao.SetFocus;
    end; }

end;

procedure Tfcco.ccovalorExit(Sender: TObject);
begin
  inherited;

  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    Exit;

  if ccovalor.Field.AsString = '' then
    Exit;

  if self.ccovalor.Field.AsFloat <= 0 then
  begin
    ShowMessage('Valor inválido. Necessita valor maior que 0,00!');
    ccovalor.SetFocus;
    Exit;
  end;

  if cfgcfgusactb.AsInteger = 1 then
  begin
    self.Height := 528;
    plContab.Height := 185;

    if (registro.State = dsedit) or (registro.State = dsInsert) then
    begin
      registro.Post;
      registro.Edit;
    end;

    if (registro.State = dsBrowse) then
      registro.Edit;

    MostraRateioCTB;

  end
  else
  begin

    if (cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
    begin
      self.Height := 528;
      plContab.Height := 185;

      if (registro.State = dsedit) or (registro.State = dsInsert) then
      begin
        registro.Post;
        registro.Edit;
      end;

      if (registro.State = dsBrowse) then
        registro.Edit;

      MostraRateioMCG;

    end
    else
    begin
      plContab.Height := 0;
      self.Height := 232;

    end;

  end;

end;

procedure Tfcco.MostraRateioMCG;
var
  fra: Tfrabase;
  i: Integer;
begin

  if hmcg = 0 then
  begin
    hmcg := CarregaFrame('mmcg', plContab, 'execute', 'mcgtabela=' + QuotedStr('cco'));

    fra := nil;
    fra := Tfrabase(Application.FindComponent('framcg'));

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

    fra := Tfrabase(Application.FindComponent('framcg'));
    fra.vChaveMestre := self.registroccochave.AsString;



    self.atualizadetalhe;

  end;
  bconfirma.Enabled := True;

end;

procedure Tfcco.MostraRateioCTB;
var
  fra: Tfrabase;
  i: Integer;
begin

  if hpcb = 0 then
  begin
    hpcb := CarregaFrame('mpcb', plContab, 'execute');

    fra := nil;
    fra := Tfrabase(Application.FindComponent('frapcb'));

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

    fra := Tfrabase(Application.FindComponent('frapcb'));
    fra.vChaveMestre := self.registroccochave.AsString;

    self.atualizadetalhe;

  end;
  bconfirma.Enabled := True;

end;

procedure Tfcco.ccovencimentoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);
  if self.ccovencimento.Field.AsString <> '' then
  begin
    if self.ccovencimento.Field.AsFloat < self.ccoemissao.Field.AsFloat then
    begin
      ShowMessage('ATENÇÃO: Data de Vencimento  não pode ser inferior a Data de Emissão !');
      ccovencimento.SetFocus;
    end;
  end;
end;

function Tfcco.finaliza(vchave: string): string;
type
  TRegistraLote = function(AOwner: TComponent; conexao: tuniconnection; vchave: string; vtrmcodigo: string; principal: string; multa: string; juros: string; desconto: string;
    Acesso: TAcesso; vmodo: string; vPodeConvenio: Boolean = True; vTeclaFinalizador: Integer = 0; vValorFinalizador: double = 0; vPodeCartoes: Boolean = True;
    pCtaCaixa: Integer = 0; vPodeTrocaDoacao: Boolean = True; vControleEntrega: boolean = False): string;
var
  registra: TRegistraLote;
  vpri: string;
  vMulta: String;
  vjur: string;
  vdes: string;
  vtrmcodigo: string;
  vtfdcodigo: Integer;
begin

  vtrmcodigo := '1';
  pack := LoadPackage('modulos\mlte.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('registralote'));
      if Assigned(registra) then
      begin
        vpri := buscatroca(self.registroccovalor.AsString, ',', '.');
        vdes := '0';
        vjur := '0';
        vMulta := '0';
        result := registra(Application, zcone, vchave, vtrmcodigo, vpri, vMulta, vjur, vdes, Acesso, inttostr(tfdContaCorrente), False);
      end;
    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfcco.FormResize(Sender: TObject);
begin
  inherited;
  if psituacao.Caption = 'Alterando' then
  begin
    if cfgcfgusactb.AsInteger = 1 then
    begin
      if self.Height < 528 then
      begin
        self.Height := 528;
        plContab.Height := 185;
        plContab.Visible := True;
      end;

    end
    else
    begin
      if self.Height < 345 then
      begin
        plContab.Height := 0;
        plContab.Visible := False;
        self.Height := 345;
      end;
    end;
  end
  else
  begin

    if cfgcfgusactb.AsInteger = 1 then
    begin
      if self.Height < 528 then
      begin
        self.Height := 528;
        plContab.Height := 185;
        plContab.Visible := True;
      end;

    end
    else
    begin
      if self.Height < 345 then
      begin
        plContab.Height := 0;
        plContab.Visible := False;
        self.Height := 345;
      end;
    end;
  end;

end;

procedure Tfcco.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  consulta.Close;
  consulta.SQL.Text := 'select ctadtmovi,tctcodigo from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;

  VpTctCodigo := consulta.Fields[1].AsInteger;
  consulta.Close;

  if VpTctCodigo = tctContaCaixa then
  begin
    ccovencimento.Visible := False;
    lccovencimento.Visible := False;
  end;

  inherited;
  if psituacao.Caption = 'Alterando' then
  begin
    vpCCOValor := self.ccovalor.Field.AsFloat;

    if self.cfgcfgusactb.AsInteger = 1 then
    begin
      self.Height := 528;
      plContab.Height := 185;
      plContab.Visible := True;
    end;
  end
  else
  begin
    if self.cfgcfgusactb.AsInteger = 1 then
    begin
      self.Height := 528;
      plContab.Height := 185;
      plContab.Visible := True;
    end
    else
    begin
      plContab.Visible := False;
      plContab.Height := 0;
      self.Height := 345;
    end;
  end;

end;

procedure Tfcco.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registroccoemissao.AsFloat := date;
  registroccovencimento.AsFloat := date;
  registrotoccodigo.AsInteger := 1;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registrotficodigo.AsInteger := 9;
  registromoecodigo.AsInteger := 1;

  consulta.Close;
  consulta.SQL.Text := 'select ctadtmovi,tctcodigo from cta where ctacodigo=' + self.vChaveMestre;
  consulta.Open;
  registroccodatamov.AsFloat := consulta.Fields[0].AsFloat;
  VpTctCodigo := consulta.Fields[1].AsInteger;
  consulta.Close;
  registroccoconciliado.AsString := '0';

  registroccoconciliado.AsString := '0';

  registroccodataregistro.AsFloat := date;
  registroccohoraregistro.AsFloat := time;
  registroetdcodigo.AsInteger := 0;
  registroflacodigo.AsInteger := Acesso.Filial;

end;

end.
