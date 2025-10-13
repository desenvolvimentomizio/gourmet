unit ufpun;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, ACBrBase, ACBrValidador, Data.DB,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, System.SysUtils, System.Math,
  Vcl.Dialogs, System.Types, ufuncoes, uBuscaProduto, Winapi.Messages,
  System.ImageList;

type
  Tfpun = class(Tfrmbase)
    registropuncodigo: TIntegerField;
    registroprocodigo: TIntegerField;
    registropunquantidade: TFloatField;
    registrounicodigo: TIntegerField;
    registrouninome: TStringField;
    registropunmultiplicador: TFloatField;
    registropunidentificacao: TStringField;
    registrodgrcodigo: TIntegerField;
    registrodgridentificacao: TStringField;
    registropuncusto: TFloatField;
    registropunmargem: TFloatField;
    registropunprecoav: TFloatField;
    registropunprecoap: TFloatField;
    registrounicodigobase: TIntegerField;
    registropunbarra: TStringField;
    registrotuncodigo: TIntegerField;
    dgr: tuniquery;
    dgrdgrcodigo: TIntegerField;
    dgrdgridentificacao: TStringField;
    Uni: tuniquery;
    uniunicodigo: TIntegerField;
    uniuninome: TStringField;
    uniunisimbolo: TStringField;
    Label1: TLabel;
    puncodigo: TDBEdit;
    unicodigo: TDBEdit;
    Label2: TLabel;
    Label10: TLabel;
    punmultiplicador: TDBEdit;
    punidentificacao: TDBEdit;
    Label8: TLabel;
    Label6: TLabel;
    puncusto: TDBEdit;
    Label7: TLabel;
    punmargem: TDBEdit;
    punprecoap: TDBEdit;
    plpunprecoap: TLabel;
    punprecoav: TDBEdit;
    Label4: TLabel;
    Label3: TLabel;
    punbarra: TDBEdit;
    cfgcfgunitrib: TIntegerField;
    registropununitrib: TIntegerField;
    registropunqtdtrib: TFloatField;
    cfgcfgdoisprecos: TIntegerField;
    platencao: TPanel;
    GBUniTributaria: TGroupBox;
    registrounitribnome: TStringField;
    Label5: TLabel;
    pununitrib: TDBEdit;
    Label9: TLabel;
    punqtdtrib: TDBEdit;
    ACBrValidador: TACBrValidador;
    registropunbarrasistema: TIntegerField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenbarrasistema: TStringField;
    Label11: TLabel;
    punbarrasistema: TDBEdit;
    cfgcfgprousaetiqposi2010: TIntegerField;
    apv: tuniquery;
    apvapvchave: TIntegerField;
    apvpuncodigo: TIntegerField;
    apvclbcodigo: TIntegerField;
    apvspvcodigo: TIntegerField;
    apvapvprecoav: TFloatField;
    apvapvprecoap: TFloatField;
    apvapvdatahora: TDateTimeField;
    cfgcfgmodoatuapro: TIntegerField;
    registropunmargemap: TFloatField;
    punmargemap: TDBEdit;
    lpunmargemap: TLabel;
    cfgcfgpercentacresaprazo: TFloatField;
    registropunpercacresavap: TFloatField;
    lpunpercacresavap: TLabel;
    punpercacresavap: TDBEdit;
    rpu: tuniquery;
    rpurpuchave: TIntegerField;
    rpupuncodigo: TIntegerField;
    rpuclbcodigo: TIntegerField;
    rpupunprecoav: TFloatField;
    rpupunprecoap: TFloatField;
    rpupuncusto: TFloatField;
    rpupunmargem: TFloatField;
    rpupunpercacresavap: TFloatField;
    rpurpuregistro: TDateTimeField;
    cfgcfgmostrapercentuais: TIntegerField;
    cfgcfgusaprecobase: TIntegerField;
    registropunbase: TFloatField;
    lbpunbase: TLabel;
    punbase: TDBEdit;
    pco: tuniquery;
    pcoprocodigo: TIntegerField;
    pcopronome: TStringField;
    registropcoprocodigo: TIntegerField;
    registropronome: TStringField;
    Label12: TLabel;
    dbedpcoprocodigo: TDBEdit;
    lbdbedpcoprocodigo: TLabel;
    gri: tuniquery;
    grigricodigo: TIntegerField;
    grigricontrolaproducao: TIntegerField;
    registropunmaximoclbproducao: TIntegerField;
    punmaximoclbproducao: TDBEdit;
    lblpunmaximoclbproducao: TLabel;
    procedure punbarraEnter(Sender: TObject);
    procedure punidentificacaoEnter(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure unicodigoExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure unicodigoEnter(Sender: TObject);
    procedure punprecoavEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure punbarraExit(Sender: TObject);
    procedure punbarraKeyPress(Sender: TObject; var Key: Char);
    procedure punprecoavExit(Sender: TObject);
    procedure punprecoapExit(Sender: TObject);
    procedure punbarrasistemaExit(Sender: TObject);
    procedure punprecoapEnter(Sender: TObject);
    procedure punmargemapEnter(Sender: TObject);
    procedure punpercacresavapEnter(Sender: TObject);
    procedure dbedpcoprocodigoEnter(Sender: TObject);
  private
    vpAtualPrecoAV: Double;
    vpAtualPrecoAP: Double;

    vpBarraOriginal: string;
    vpEmbalagemPrincipal: Boolean;
    vpIncluindo: Boolean;
    vpBarraInterna: Boolean;
    procedure ajustaunidadebase;
    function TemMovimentacao: Boolean;
    procedure AjustaBarra;
  public
    { Public declarations }

  end;

var
  fpun: Tfpun;

  // Início ID do Módulo frapun
const
  vPlIdMd = '01.01.05.002-02';

  // Fim ID do Módulo frapun

implementation

uses
  Vcl.Graphics;

{$R *.dfm}

procedure Tfpun.bconfirmaClick(Sender: TObject);
var
  pode: Boolean;
  vResultado: string;
begin

  pode := True;

  if punbarra.Field.AsString = '' then
  begin
    Application.MessageBox(PChar('Código de barra inválido, verifique!'), 'ATENÇÃO', MB_ICONWARNING + MB_OK);
    punbarrasistema.SetFocus;
    Exit;
  end;

  punbarra.Field.AsString := FormatFloat('00000000000000', punbarra.Field.AsFloat);

  vResultado := ValidaProdutoBarra(Application, zcone, punbarra.Field.AsString, registroprocodigo.AsInteger, registrounicodigo.AsInteger,
    registropuncodigo.AsInteger, registropunbarrasistema.AsInteger);

  if Copy(vResultado, 1, 7) = 'ATENÇÃO' then
  begin
    Application.MessageBox(PChar(vResultado), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  { ACBrValidador.Documento := punbarra.Field.AsString;
    if not ACBrValidador.Validar then
    begin
    application.MessageBox(pchar('Código de barra inválido, verifique!'), 'ATENÇÃO', MB_ICONWARNING + MB_OK);
    punbarrasistema.SetFocus;
    exit;
    end; }

  if not pode then
    Exit;

  if cfgcfgusaprecobase.AsInteger <> 1 then
  begin
    registropunbase.AsFloat := registropuncusto.AsFloat;
  end;

  ajustaunidadebase;

  consulta.Close;
  consulta.SQL.Text := 'SELECT pro.unicodigo, pro.prounitrib, pro.proqtdtrib FROM pro WHERE ';
  consulta.SQL.Add('pro.procodigo = ' + registroprocodigo.AsString);
  consulta.Open;

  if consulta.Fields[1].AsInteger = 0 then
  begin
    registropununitrib.AsInteger := consulta.Fields[1].AsInteger;
    registropunqtdtrib.AsFloat := 1;
  end
  else
  begin

    if registrounicodigo.AsInteger = consulta.Fields[0].AsInteger then
    begin
      registropununitrib.AsInteger := consulta.Fields[1].AsInteger;
      registropunqtdtrib.AsFloat := consulta.Fields[2].AsFloat;
    end
    else
    begin
      registropununitrib.AsInteger := consulta.Fields[1].AsInteger;
      registropunqtdtrib.AsFloat := consulta.Fields[2].AsFloat * punmultiplicador.Field.AsFloat;
    end;
  end;

  // verificar se não aplicar preço automaticamente, salvar para alteracao por carga
  if cfgcfgmodoatuapro.AsInteger = 0 then
  begin

    // volta precos originais
    if psituacao.Caption = 'Alterando' then
    begin
      self.registropunprecoav.AsFloat := vpAtualPrecoAV;
      self.registropunprecoap.AsFloat := vpAtualPrecoAP;

    end;
    // fim da vericacao da condicao de carga

  end;

  if cfgcfgdoisprecos.AsInteger = 0 then
    registropunprecoap.AsFloat := registropunprecoav.AsFloat;

  inherited;

  (* Verifica se Confirmação foi processada corretamente *)
  if not(ModalResult = mrOk) then
    Exit;

  // verificar se não aplicar preço automaticamente, salvar para alteracao por carga
  if cfgcfgmodoatuapro.AsInteger = 0 then
    if psituacao.Caption = 'Alterando' then
    begin
      apv.Open;
      apv.Append;
      apvpuncodigo.AsInteger := self.registropuncodigo.AsInteger;
      apvclbcodigo.AsInteger := Acesso.Usuario;
      apvspvcodigo.AsInteger := 1;
      apvapvprecoav.AsFloat := self.registropunprecoav.AsFloat;
      apvapvprecoap.AsFloat := self.registropunprecoap.AsFloat;
      apvapvdatahora.AsDateTime := now;
      apv.Post;
      apv.Close;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE pro SET procarga = 1 WHERE procodigo = ' + registroprocodigo.AsString;
      consulta.Execsql;
    end;
end;

procedure Tfpun.dbedpcoprocodigoEnter(Sender: TObject);
begin
  txtFiltro := 'procomposto=1';
  inherited;

end;

procedure Tfpun.FormShow(Sender: TObject);
var
  pode: Boolean;
begin

  pco.Close;
  pco.Open;

  if pco.RecordCount > 1 then
  begin
    lbdbedpcoprocodigo.Visible := True;
    dbedpcoprocodigo.Visible := True;
    registropcoprocodigo.Required := True;
    dbedpcoprocodigo.Color := PEG_COR_VALORREQUERIDO;

  end
  else
  begin
    lbdbedpcoprocodigo.Visible := false;
    dbedpcoprocodigo.Visible := false;
    registropcoprocodigo.Required := false;
    dbedpcoprocodigo.Color := clWindow;
  end;

  vpAtualPrecoAV := self.registropunprecoav.AsFloat;
  vpAtualPrecoAV := self.registropunprecoap.AsFloat;

  pode := True;
  IdModulo := vPlIdMd;

  inherited;

  vpBarraOriginal := punbarra.Field.AsString;

  if cfgcfgunitrib.AsInteger = 0 then
    GBUniTributaria.Visible := false;

  if (GBUniTributaria.Visible) then
  begin
    if (Height < 440) then
      Height := 440;
  end
  else if (Height < 325) then
    Height := 325;

  vpIncluindo := psituacao.Caption = 'Incluindo';

  consulta.Close;
  consulta.SQL.Text := 'SELECT pro.unicodigo, uni.unisimbolo FROM pro, uni WHERE ';
  consulta.SQL.Add('uni.unicodigo = pro.unicodigo AND ');
  consulta.SQL.Add('pro.procodigo = ' + vChaveMestre);
  consulta.Open;

  if registrounicodigo.AsInteger = consulta.Fields[0].AsInteger then
    vpEmbalagemPrincipal := True
  else
    vpEmbalagemPrincipal := false;

  cfg.Close;
  cfg.Open;

  if cfgcfgdoisprecos.AsInteger = 1 then
  begin
    lpunpercacresavap.Visible := True;
    punpercacresavap.Visible := True;
    punprecoap.Visible := True;
    plpunprecoap.Visible := True;
    punmargemap.Visible := True;
    lpunmargemap.Visible := True;

  end
  else
  begin
    lpunpercacresavap.Visible := false;
    punpercacresavap.Visible := false;
    punprecoap.Visible := false;
    plpunprecoap.Visible := false;
    punmargemap.Visible := false;
    lpunmargemap.Visible := false;

  end;

  if cfgcfgmostrapercentuais.AsInteger = 0 then
  begin

    lpunpercacresavap.Visible := false;
    punpercacresavap.Visible := false;
    lpunmargemap.Visible := false;
    punmargemap.Visible := false;

  end;

  if vpIncluindo then
  begin
    (*
      ** Verifica se tem alguma Embalagem cadastrada que seja a Principal **
    *)
    consulta.Close;
    consulta.SQL.Text := 'SELECT pun.unicodigo, pro.unicodigo from pun, pro WHERE ';
    consulta.SQL.Add('pro.unicodigo = pun.unicodigo  AND ');
    consulta.SQL.Add('pun.procodigo = ' + vChaveMestre + ' AND ');
    consulta.SQL.Add('pro.procodigo = ' + vChaveMestre);
    consulta.Open;

    if consulta.IsEmpty then
    begin
      (* Se não localizou embalagem Principal atribui os valores padrões e bloqueia o campo *)
      consulta.Close;
      consulta.SQL.Text := 'SELECT pro.unicodigo, uni.unisimbolo FROM pro, uni WHERE ';
      consulta.SQL.Add('uni.unicodigo = pro.unicodigo AND ');
      consulta.SQL.Add('pro.procodigo = ' + vChaveMestre);
      consulta.Open;

      If not consulta.IsEmpty Then
      Begin
        unicodigo.Field.AsString := consulta.Fields[0].AsString;
        punmultiplicador.Field.AsString := '1';
        punidentificacao.Field.AsString := '1x' + consulta.Fields[1].AsString;
        unicodigo.Enabled := false;
        punidentificacao.Enabled := True;
        punmultiplicador.Enabled := True;
        puncusto.SetFocus;
      End;
    end;

    if unicodigo.Enabled = True then
      unicodigo.SetFocus
    else
      puncusto.SetFocus;
  end
  else
  begin
    AjustaBarra;
    vpAtualPrecoAV := self.registropunprecoav.AsFloat;
    vpAtualPrecoAP := self.registropunprecoap.AsFloat;

  end;

  if cfgcfgusaprecobase.AsInteger = 1 then
  begin
    Label6.Caption := 'Preço de Compra';
    lbpunbase.Visible := True;
    punbase.Visible := True;

    lbpunbase.Caption := 'Preço de Custo';
    lbpunbase.Visible := True;
    punbase.Visible := True;

  end
  else
  begin
    Label6.Caption := 'Preço de Custo';
    lbpunbase.Visible := false;
    punbase.Visible := false;

    Label6.Caption := 'Preço de Custo';
    Label6.Visible := True;
    puncusto.Visible := True;
  end;

  gri.Close;
  gri.ParamByName('procodigo').AsString := vChaveMestre;
  gri.Open;

  if not gri.IsEmpty then
  begin
    if gri.FieldByName('gricontrolaproducao').AsInteger = 1 then
    begin
       lblpunmaximoclbproducao.Visible:=true;
       punmaximoclbproducao.Visible:=true;
    end
    else
    begin
       lblpunmaximoclbproducao.Visible:=False;
       punmaximoclbproducao.Visible:=False;
       self.registropunmaximoclbproducao.AsInteger:=1;


    end;

  end;

end;

procedure Tfpun.ajustaunidadebase;
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT uni.unisimbolo, pro.unicodigo FROM uni, pro WHERE ';
  consulta.SQL.Add('pro.unicodigo = uni.unicodigo AND ');
  consulta.SQL.Add('pro.procodigo = ' + vChaveMestre);
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    registrounicodigobase.AsInteger := consulta.Fields[1].AsInteger;
    // punidentificacao.Field.AsString := punmultiplicador.Field.AsString + 'x' + consulta.Fields[0].AsString;
  end;
end;

procedure Tfpun.punbarraEnter(Sender: TObject);
begin
  (*
    *
    *Se está ReadOnly é uma barra Interna, não deve fazer nada, portanto este Evento trata apenas as Barras GTIN
    *
  *)

  if punbarra.ReadOnly = True then
    Exit;

  if punbarra.Field.AsString <> '' then
  begin
    (*
      Realiza consulta para identificar se Barra digitada é interna,
      pois não pode ser permitido quando usuário define que é uma barra GTIN
    *)

    vpBarraInterna := CodigoInterno(registroprocodigo.AsInteger, registropunbarra.AsString);

    if vpBarraInterna then
      punbarra.Field.AsString := ''
    else
    begin
      punbarra.Field.AsString := registropunbarra.AsString;
      Exit;
    end;

    (*
      Realiza teste com a Barra Original para identificar se é padrão GTIN.
      Se for devolve valor pro campo punbarra
    *)
    vpBarraInterna := CodigoInterno(registroprocodigo.AsInteger, vpBarraOriginal);

    if not vpBarraInterna then
      punbarra.Field.AsString := vpBarraOriginal;
  end;
end;

procedure Tfpun.punbarraExit(Sender: TObject);
var
  vResultado: string;
begin
  if punbarra.ReadOnly = True then
    Exit;

  vResultado := ValidaProdutoBarra(Application, zcone, punbarra.Field.AsString, registroprocodigo.AsInteger, registrounicodigo.AsInteger,
    registropuncodigo.AsInteger, registropunbarrasistema.AsInteger);

  if Copy(vResultado, 1, 7) = 'ATENÇÃO' then
  begin
    Application.MessageBox(PChar(vResultado), 'Atenção', MB_ICONWARNING + MB_OK);
    // Trata o foco do próximo campo quando usuário utiliza o mouse pra sair.
    PostMessage(ActiveControl.Handle, WM_LBUTTONUP, 0, 0);
  end
  else
    punbarra.Field.AsString := vResultado;
end;

procedure Tfpun.punbarraKeyPress(Sender: TObject; var Key: Char);
begin
  FormKeyPress(Sender, Key);
  if not(Key in [#0, #13, #8, #3, #$16, #$18, '0' .. '9']) then
  begin
    ShowMessage('Tecla Inválida: ' + Key);
    Key := #0;
  end;
end;

procedure Tfpun.punbarrasistemaExit(Sender: TObject);
var
  vResultado: string;
  vBarraInterna: Boolean;
begin
  inherited;

  ValidaSaida(Sender);

  AjustaBarra;

  vBarraInterna := CodigoInterno(registroprocodigo.AsInteger, vpBarraOriginal);

  if (punbarrasistema.Field.AsInteger = 1) then
    if (cfgcfgprousaetiqposi2010.AsInteger = 1) and (vBarraInterna) then
      punbarra.Field.AsString := vpBarraOriginal
    else
      punbarra.Field.AsString := GeraProdutoBarra(Application, StrToInt(vChaveMestre), unicodigo.Field.AsInteger);
end;

procedure Tfpun.punidentificacaoEnter(Sender: TObject);
begin
  inherited;
  ajustaunidadebase;
end;

procedure Tfpun.punmargemapEnter(Sender: TObject);
begin
  inherited;
  if psituacao.Caption = 'Incluindo' then
  begin
    punprecoap.Field.AsCurrency := punprecoav.Field.AsCurrency + (punprecoav.Field.AsCurrency * (punpercacresavap.Field.AsFloat / 100));

    if puncusto.Field.AsFloat > 0 then
      punmargemap.Field.AsFloat := ((punprecoap.Field.AsCurrency - puncusto.Field.AsCurrency) / puncusto.Field.AsCurrency) * 100
    else
      punmargemap.Field.AsFloat := 0;

  end;
end;

procedure Tfpun.punpercacresavapEnter(Sender: TObject);
begin
  inherited;
  if (punpercacresavap.Field.AsString = '') or (punpercacresavap.Field.AsString = '0') then
    if cfgcfgpercentacresaprazo.AsString <> '0' then
      punpercacresavap.Field.AsString := cfgcfgpercentacresaprazo.AsString;

end;

procedure Tfpun.punprecoapEnter(Sender: TObject);
begin

  inherited;
  if cfgcfgpercentacresaprazo.AsFloat <> 0 then
    punpercacresavap.Field.AsFloat := cfgcfgpercentacresaprazo.AsFloat;

  if cfgcfgmostrapercentuais.AsInteger = 1 then
  begin
    if punpercacresavap.Field.AsInteger <> 0 then
    begin
      punprecoap.Field.AsCurrency := punprecoav.Field.AsCurrency + (punprecoav.Field.AsCurrency * (punpercacresavap.Field.AsFloat / 100));
    end
    else
      punprecoap.Field.AsCurrency := puncusto.Field.AsCurrency + (puncusto.Field.AsCurrency * (punmargemap.Field.AsFloat / 100));

  end;
end;

procedure Tfpun.punprecoapExit(Sender: TObject);
var
  vlVariacaoAP: Double;
begin
  inherited;
  self.ValidaSaida(Sender);
  if punprecoap.Field.AsFloat > 999999 then
  begin
    ShowMessage('Preço a prazo inválido!');
    punprecoap.Field.Text := '';
    punprecoap.SetFocus;
    Exit;
  end;
  { * Daniel 29/12/2014
    Ajustado para poder deixar campo sem valor definido para preços* }
  vlVariacaoAP := 0;
  if (punprecoap.Field.AsString <> '') and (punprecoav.Field.AsString <> '') then
  begin
    if (punprecoap.Field.AsString <> '0') or (punprecoav.Field.AsString <> '0') then
    begin
      vlVariacaoAP := TBRound(((punprecoap.Field.AsFloat - punprecoav.Field.AsFloat) / punprecoav.Field.AsFloat) * 100, 3);
    end;
    { * Daniel 29/12/2014 final do ajuste * }

  end;
  if vlVariacaoAP > 200 then
    if Application.MessageBox(PChar('A diferença do Preço de Venda À Vista para À Prazo está muito alta.' + #13 + 'Deseja continuar?'), 'Confirmação',
      MB_ICONQUESTION + MB_YESNO) = IDNO then
    begin
      punprecoap.SetFocus;
    end;
end;

procedure Tfpun.punprecoavEnter(Sender: TObject);
var
  vNovoValor: Double;
begin
  inherited;
  if (puncusto.Field.AsFloat <> 0) and (punmargem.Field.AsFloat <> 0) then
  begin
    vNovoValor := ((punmargem.Field.AsFloat / 100) + 1) * puncusto.Field.AsFloat;

    if Situacao = 'Alterando' then
      case CompareValue(punprecoav.Field.AsFloat, vNovoValor, 0.5) of
        LessThanValue, GreaterThanValue:
          try
            if Application.MessageBox(PChar('Deseja atualizar o preço de venda de acordo com Preço de Custo e Margem de Lucro atual?'), '',
              MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDNO then
              Exit;
          finally
            // Trata o foco do próximo campo quando usuário utiliza o mouse pra sair ou entrar em um campo.
            PostMessage(ActiveControl.Handle, WM_LBUTTONUP, 0, 0);
          end;
      end;

    punprecoav.Field.AsFloat := vNovoValor;

    if Situacao = 'Incluindo' then
      punprecoap.Field.AsFloat := punprecoav.Field.AsFloat;
  end;
end;

procedure Tfpun.punprecoavExit(Sender: TObject);
var
  veriDif: Double;
begin
  inherited;

  self.ValidaSaida(Sender);

  if (cfgcfgdoisprecos.AsInteger = 1) and (self.psituacao.Caption = 'Incluindo') then
  begin
    registropunpercacresavap.AsFloat := cfgcfgpercentacresaprazo.AsFloat;
    punmargemap.Field.AsFloat := punmargem.Field.AsFloat + registropunpercacresavap.AsFloat;
    registropunprecoap.AsFloat := registropuncusto.AsFloat * (punmargemap.Field.AsFloat / 100);
  end;

  { * calcula a margem com base no preco de custo e venda no caso de nao
    ter sido infomado a margem de lucro desejada * }
  if punprecoav.Field.AsString <> '' then
    if punprecoav.Field.AsFloat <> 0 then
    begin
      if punprecoav.Field.AsFloat > 999999 then
      begin
        ShowMessage('Preço a vista inválido!');
        punprecoav.Field.Text := '';
        punprecoav.SetFocus;
        Exit;
      end;

      { * GABRIEL - 02/06/2014 comentou
        daniel - 05/09/2014 descomentou cliente aguiar motos usa * }

      if puncusto.Field.AsString <> '' then
        if puncusto.Field.AsFloat > 0 then
          if punprecoav.Field.AsString <> '' then
            punmargem.Field.AsFloat := TBRound(((punprecoav.Field.AsFloat - puncusto.Field.AsFloat) / puncusto.Field.AsFloat) * 100, 3);
    end;

  { * calcula o percentual da diferença digita para ajuste de valor de preço a vista * }

  if (puncusto.Field.AsFloat = 0) or (punprecoav.Field.AsFloat = 0) then
    Exit
  else
  begin
    if puncusto.Field.AsFloat > 0 then
      if punprecoav.Field.AsFloat < puncusto.Field.AsFloat then
      begin
        ShowMessage('Preço a vista não pode ser menor que o preço de custo!');
        punprecoav.SetFocus;
        Exit;
      end;

  end;

  veriDif := punprecoav.Field.AsFloat - (((punmargem.Field.AsFloat / 100) + 1) * puncusto.Field.AsFloat);
  veriDif := (veriDif / punprecoav.Field.AsFloat) * 100;

  if ((veriDif > 25) or (veriDif < -25)) and (punmargem.Field.AsFloat <> 0) then
  begin
    ShowMessage('Valor inválido para margem estipulada!');

    punmargem.SetFocus;
    Exit;
  end;
end;

procedure Tfpun.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  cfg.Close;
  cfg.Open;
  registrotuncodigo.AsInteger := 1;
  registropunquantidade.AsInteger := 1;
  registrodgrcodigo.AsInteger := 1;
  registropunbarrasistema.AsInteger := 1;
  registropunbase.AsFloat := 0;
  registropunmargemap.AsFloat := 0;
  registropunmargem.AsFloat := 0;
  registropcoprocodigo.AsInteger := 0;

end;

procedure Tfpun.unicodigoEnter(Sender: TObject);
begin
  inherited;
  txtFiltro := ' (tuncodigo=' + '9' + ' or tuncodigo=' + '1)';
end;

procedure Tfpun.unicodigoExit(Sender: TObject);
begin
  inherited;

  ValidaSaida(Sender);

  if unicodigo.Field.AsString = '' then
    Exit;

  (*
    ** Realiza consulta para identificar se unidade já está cadastrada **
  *)

  consulta.Close;
  consulta.SQL.Text := 'SELECT puncodigo, procodigo, tuncodigo ';
  consulta.SQL.Add('FROM pun WHERE ');
  consulta.SQL.Add('unicodigo = ' + unicodigo.Field.AsString + ' AND ');
  consulta.SQL.Add('procodigo = ' + vChaveMestre + ' AND ');
  consulta.SQL.Add('puncodigo <> ' + IntToStr(registropuncodigo.AsInteger));
  consulta.Open;

  (* Se tipo de unidade está em branco pode utilizar a unidade *)
  if consulta.Fields[2].AsString = '' then
    Exit;

  (* Se unidade é do tipo 1 ou 9 não pode utilizar *)
  if consulta.Fields[2].AsInteger in [1, 9] then
  begin
    ShowMessage(PChar('Esta Unidade de Venda já está cadastrada para este produto!'));
    unicodigo.SetFocus;
    Exit;
  end;

  (* Se não caiu em nenhuma condição anterior significa que Unidade está em uso apenas como compra *)
  If Application.MessageBox(PChar('Esta unidade já é uma unidade de compra! '#13 + #13 + 'Deseja cadastra-la como unidade de venda ?'), ' Atenção ',
    MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    registro.Cancel;

    registro.Close;
    registro.Params[0].AsInteger := consulta.Fields[0].AsInteger;
    registro.Params[1].AsInteger := consulta.Fields[1].AsInteger;
    registro.Open;

    registro.Edit;
    registrotuncodigo.AsInteger := 9;

    psituacao.Caption := 'Alterando';
  End;
end;

function Tfpun.TemMovimentacao: Boolean;
var
  vTem: Boolean;
begin
  vTem := false;

  consulta.Close;
  consulta.SQL.Text := 'SELECT COUNT(itmchave) FROM itm WHERE ';
  consulta.SQL.Add('procodigo = ' + vChaveMestre + ' AND ');
  consulta.SQL.Add('unicodigo = ' + IntToStr(registrounicodigo.AsInteger));
  consulta.Open;

  if consulta.Fields[0].AsFloat > 0 then
    vTem := True;

  consulta.Close;

  if vTem then
  begin
    platencao.Caption := 'Esta Unidade de Venda possui movimentação.';
    platencao.Visible := True;
    Application.ProcessMessages;
  end;

  Result := vTem;
end;

procedure Tfpun.AjustaBarra;
begin
  (*
    ** Trata opções se usuário estiver Alterando a embalagem **
  *)

  (* Se Embalagem tem Movimentação bloqueia as campos de unidade e multiplicador e Código de Barra *)
  if (TemMovimentacao) or (vpEmbalagemPrincipal) then
  begin
    unicodigo.Enabled := false;
    punidentificacao.Enabled := True;
    punmultiplicador.Enabled := True;
  end;

  if registropunbarrasistema.AsInteger = 0 then
  begin
    punbarra.ReadOnly := false;
    punbarra.Color := PEG_COR_VALORREQUERIDO;
  end
  else
  begin
    punbarra.ReadOnly := True;
    punbarra.Color := PEG_COR_VALORPADRAO;
  end;
end;

end.
