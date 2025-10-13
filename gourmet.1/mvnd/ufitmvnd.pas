unit ufitmvnd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils, uFuncoes, System.ImageList;

type
  Tfitmvnd = class(Tfrmbase)
    icm: tuniquery;
    icmicmcodigo: TStringField;
    icmicmaliquotas: TStringField;
    Uni: tuniquery;
    uniunicodigo: TIntegerField;
    uniuninome: TStringField;
    toe: tuniquery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    pro: tuniquery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    pun: tuniquery;
    punpuncodigo: TIntegerField;
    punpunidentificacao: TStringField;
    punprocodigo: TIntegerField;
    pununicodigo: TIntegerField;
    cst: tuniquery;
    cstcstcodigo: TStringField;
    cstcstidentificacao: TStringField;
    cfo: tuniquery;
    cfocfocfop: TStringField;
    cfocfoidentificacao: TStringField;
    consultapun: tuniquery;
    registroitmchave: TIntegerField;
    registromeschave: TIntegerField;
    registroitmitem: TIntegerField;
    registroprocodigo: TIntegerField;
    registropronome: TStringField;
    registrounicodigo: TIntegerField;
    registrouninome: TStringField;
    registrocstcodigo: TStringField;
    registrocstidentificacao: TStringField;
    registroitmdesccomple: TStringField;
    registroitmquantidade: TFloatField;
    registroitmvalor: TFloatField;
    registroitmdesconto: TFloatField;
    registroitmmovifisico: TStringField;
    registrotoecodigo: TIntegerField;
    registrotoeidentificação: TStringField;
    registrocfocfop: TStringField;
    registrocfoidentificacao: TStringField;
    registroitmbicm: TFloatField;
    registroicmcodigo: TStringField;
    registroicmaliquotas: TStringField;
    registroitmaliqicm: TStringField;
    registroitmicm: TFloatField;
    registroitmbicms: TFloatField;
    registroitmaliqicms: TFloatField;
    registroitmicms: TFloatField;
    registroitmapuipi: TStringField;
    registrocsicodigo: TStringField;
    registroceicodigo: TStringField;
    registroitmbipi: TFloatField;
    registropuncodigo: TIntegerField;
    registropunidentificacao: TStringField;
    registroitmaliqipi: TFloatField;
    registroitmipi: TFloatField;
    registrocspcodigo: TStringField;
    registroitmpis: TFloatField;
    registroitmbpis: TFloatField;
    registroitmaliqpis: TFloatField;
    registroitmquantpis: TFloatField;
    registroitmaliqpisvalor: TFloatField;
    registrocsfcodigo: TStringField;
    registroitmbcofins: TFloatField;
    registroitmaliqcofins: TFloatField;
    registroitmquantcofins: TFloatField;
    registroitmaliqcofinsvalor: TFloatField;
    registroitmcofins: TFloatField;
    registropcccodigo: TStringField;
    registroitmtotal: TFloatField;
    registrounicodigobase: TIntegerField;
    registrocfocfopdestinacao: TStringField;
    registrounicodigopun: TIntegerField;
    Label15: TLabel;
    itmitem: TDBEdit;
    toecodigo: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    procodigo: TDBEdit;
    cfocfop: TDBEdit;
    Label18: TLabel;
    Label17: TLabel;
    cstcodigo: TDBEdit;
    Label1: TLabel;
    puncodigo: TDBEdit;
    Label5: TLabel;
    itmquantidade: TDBEdit;
    Label16: TLabel;
    unicodigo: TDBEdit;
    Label6: TLabel;
    itmvalor: TDBEdit;
    Label13: TLabel;
    itmdesconto: TDBEdit;
    Label14: TLabel;
    itmtotal: TDBEdit;
    puntuncodigo: TIntegerField;
    registroitmcontendo: TFloatField;
    cfgcfgdoisprecos: TIntegerField;
    punpunprecoav: TFloatField;
    punpunprecoap: TFloatField;
    punpunmultiplicador: TFloatField;
    cfgcrtcodigo: TIntegerField;
    proprosaldo: TFloatField;
    Dpro: tunidatasource;
    PnlSaldoDisp: TPanel;
    plsaldoproduto: TPanel;
    GBTributacao: TGroupBox;
    Label21: TLabel;
    Label20: TLabel;
    Label10: TLabel;
    itmbicm: TDBEdit;
    itmbicms: TDBEdit;
    itmaliqipi: TDBEdit;
    icmcodigo: TDBEdit;
    itmaliqicms: TDBEdit;
    itmipi: TDBEdit;
    itmicm: TDBEdit;
    itmicms: TDBEdit;
    Label12: TLabel;
    Label11: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    GBOutrosValores: TGroupBox;
    registroLabel: TLabel;
    registroLabel2: TLabel;
    registroLabel3: TLabel;
    registroLabel4: TLabel;
    registroLabel5: TLabel;
    registroLabel6: TLabel;
    registroLabel7: TLabel;
    registroLabel8: TLabel;
    registroitmoutras: TFloatField;
    registroitmseguro: TFloatField;
    registroitmfrete: TFloatField;
    Label4: TLabel;
    itmoutras: TDBEdit;
    Label19: TLabel;
    itmseguro: TDBEdit;
    Label22: TLabel;
    itmfrete: TDBEdit;
    registroitmtotalgeral: TFloatField;
    Label23: TLabel;
    itmtotalgeral: TDBEdit;
    cfgcfgcontrolaestoque: TIntegerField;
    cfgcfgcontrolaestoquedisp: TIntegerField;
    toetoecfopsaida: TStringField;
    toettocodigo: TIntegerField;
    otp: tuniquery;
    otpotpchave: TIntegerField;
    otptoecodigo: TIntegerField;
    otptpocodigo: TIntegerField;
    otpcfocfop: TStringField;
    itmdesccomple: TDBMemo;
    Label24: TLabel;
    registroitmpercreducaobaseicm: TFloatField;
    itmpercreducaobaseicm: TDBEdit;
    Label25: TLabel;
    cfgcfgprodefineicms: TIntegerField;
    cfgcfgpercentualpis: TFloatField;
    cfgcfgpercentualcofins: TFloatField;
    cfgcfgusacspnoproduto: TIntegerField;
    cfgcfgusacsfnoproduto: TIntegerField;
    Label26: TLabel;
    cspcodigo: TDBEdit;
    csfcodigo: TDBEdit;
    Label27: TLabel;
    csp: tuniquery;
    cspcspcodigo: TStringField;
    cspcspidentificacao: TStringField;
    csf: tuniquery;
    csfcsfcodigo: TStringField;
    csfcsfidentificacao: TStringField;
    registrocsfidentificacao: TStringField;
    registrocspidentificacao: TStringField;
    Label28: TLabel;
    itmaliqpis: TDBEdit;
    Label29: TLabel;
    itmaliqcofins: TDBEdit;
    Label30: TLabel;
    itmpis: TDBEdit;
    Label31: TLabel;
    itmcofins: TDBEdit;
    toecst: tuniquery;
    toecsttoecodigo: TIntegerField;
    toecstcstcodigo: TStringField;
    toecstcsicodigo: TStringField;
    toecstcspcodigo: TStringField;
    toecstcfgpercentualpis: TFloatField;
    toecstcsfcodigo: TStringField;
    toecstcfgpercentualcofins: TFloatField;
    Panel1: TPanel;
    plfiscalproduto: TPanel;
    procedure bconfirmaClick(Sender: TObject);
    procedure itmicmEnter(Sender: TObject);
    procedure itmquantidadeChange(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure puncodigoExit(Sender: TObject);
    procedure itmvalorEnter(Sender: TObject);
    procedure procodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure itmquantidadeExit(Sender: TObject);
    procedure puncodigoEnter(Sender: TObject);
    procedure itmvalorChange(Sender: TObject);
    procedure itmdescontoChange(Sender: TObject);
    procedure registroCalcFields(DataSet: TDataSet);
    procedure itmdescontoExit(Sender: TObject);
    procedure itmaliqpisExit(Sender: TObject);
    procedure itmaliqcofinsExit(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure toecodigoEnter(Sender: TObject);
    procedure toecodigoExit(Sender: TObject);
  private
    vpTipoProduto: Integer;
    vpPunUnico: Boolean;
    procedure ajustaicm;
    function MontaFiltroPun: Integer;
    procedure DefineDadosEmbalagem;
    { Private declarations }
  public
    { Public declarations }
    pdSaldoDisponivel: Double;
    pdFiscalDisponivel: Double;

  end;

var
  fitmvnd: Tfitmvnd;

  // Início ID do Módulo fravnd
const
  vPlIdMd = '02.04.09.001-03';

  // Fim ID do Módulo fravnd

implementation

uses
  ufvndsimples;

{$R *.dfm}

procedure Tfitmvnd.bcancelaClick(Sender: TObject);
var
  smsg: string;
begin

  if Retorno <> '' then
  begin
    smsg := 'Deseja alterar o registro deste produto?';
    If Application.MessageBox(Pchar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
    Begin
      If Self.DSRegistro.DataSet.State = dsBrowse Then
        Self.DSRegistro.DataSet.Edit;

      If Self.DSRegistro.DataSet.State <> dsBrowse Then
        Self.DSRegistro.DataSet.Cancel;

      If psituacao.caption = 'Incluindo' Then
        If Not registro.IsEmpty Then
          Self.DSRegistro.DataSet.Delete;

      Self.ModalResult := mrCancel;

    End
    else
    begin
      Retorno := '';
    end;
  end
  else
  begin
    inherited;

  end;

end;

procedure Tfitmvnd.bconfirmaClick(Sender: TObject);

Var
  qtd: Double;
  vst: String;
  cun: String;
  Retorno: String;
  vmultiplicador: Double;

Begin

  { if (itmtotal.Field.AsFloat = 0) or (itmquantidade.Field.AsFloat = 0) then
    begin
    ShowMessage('Os campos Quantidade e Total não podem ser zero!');
    Exit;
    end;

    if (itmtotalgeral.Field.AsFloat = 0) then
    begin
    ShowMessage('O campo "Total Geral" não podem ser zero!');
    Exit;
    end; }

  qtd := Self.itmquantidade.Field.AsFloat;
  vst := Self.psituacao.caption;
  cun := Self.unicodigo.Field.AsString;

  If (itmicm.Field.AsFloat > 0) and (itmbicm.Field.AsFloat = 0) Then
    Self.registroitmbicm.AsFloat := Self.itmtotalgeral.Field.AsFloat - (Self.itmtotalgeral.Field.AsFloat * (itmpercreducaobaseicm.Field.AsFloat / 100));

  If (itmicms.Field.AsFloat > 0) and (itmbicms.Field.AsFloat = 0) Then
    Self.registroitmbicms.AsFloat := Self.itmtotalgeral.Field.AsFloat;

  If itmipi.Field.AsFloat > 0 Then
    Self.registroitmbipi.AsFloat := Self.itmtotalgeral.Field.AsFloat
  Else
    Self.registroitmbipi.AsFloat := 0;

  Self.registrounicodigo.AsInteger := Self.registrounicodigopun.AsInteger;

  consulta.Close;
  consulta.SQL.Text := 'SELECT puncodigo, punmultiplicador FROM pun WHERE ';
  consulta.SQL.Add('unicodigo = ' + Self.unicodigo.Field.AsString + ' AND ');
  consulta.SQL.Add('procodigo = ' + Self.registroprocodigo.AsString);
  consulta.Open;

  vmultiplicador := consulta.Fields[1].AsFloat;

  If Uni.Locate('unicodigo', Self.registrounicodigobase.AsInteger, []) Then
    registroitmcontendo.AsFloat := vmultiplicador;

  if itmpis.Field.AsCurrency > 0 then
  begin
    registroitmbcofins.AsCurrency := ((itmvalor.Field.AsCurrency * itmquantidade.Field.AsFloat) - itmdesconto.Field.AsCurrency);
  end;
  if itmcofins.Field.AsCurrency > 0 then
  begin
    registroitmbpis.AsCurrency := ((itmvalor.Field.AsCurrency * itmquantidade.Field.AsFloat) - itmdesconto.Field.AsCurrency);
  end;

  Inherited;

  consultapun.Close;
  consultapun.SQL.Text := 'SELECT puncodigo FROM pun WHERE ';
  consultapun.SQL.Add('procodigo = ' + Self.procodigo.Field.AsString + ' AND ');
  consultapun.SQL.Add('unicodigo = ' + Self.unicodigo.Field.AsString);
  consultapun.Open;

  If consultapun.RecordCount = 0 Then
  Begin
    registro.Edit;

    consultapun.Close;
    consultapun.SQL.Text := 'select unicodigo from pro where procodigo=' + Self.procodigo.Field.AsString;
    consultapun.Open;

    Self.registrounicodigobase.AsInteger := Self.consultapun.Fields[0].AsInteger;

    registro.Post;
  End
  Else
  Begin
    registro.Edit;
    puncodigo.Field.AsString := consultapun.Fields[0].AsString;

    consultapun.Close;
    consultapun.SQL.Text := 'select unicodigo from pro where procodigo=' + Self.procodigo.Field.AsString;
    consultapun.Open;

    Self.registrounicodigobase.AsInteger := Self.consultapun.Fields[0].AsInteger;

    registro.Post;
  End;
end;

procedure Tfitmvnd.FormShow(Sender: TObject);
var
  i: Integer;
  vlTpoCodigo: Integer;

begin
  IdModulo := vPlIdMd;

  inherited;

  otp.Close;
  otp.ParamByName('toecodigo').AsInteger := Self.toecodigo.Field.AsInteger;
  otp.Open;

  otp.First;
  vlTpoCodigo := 0;
  while not otp.Eof do
  begin

    if tpoAtivoImobilizado = otptpocodigo.AsInteger then
    begin
      vlTpoCodigo := otptpocodigo.AsInteger;
      break;
    end;
    otp.Next;
  end;

  for i := 0 To ComponentCount - 1 do
    if (Components[i] Is TDBEdit) then
    begin

      if TDBEdit(Components[i]).Parent = GBTributacao then
      begin
        if (vlTpoCodigo <> tpoAtivoImobilizado) and (cfgcrtcodigo.AsString = '1') and not((toettocodigo.AsInteger = ttoDevolucao) or (toettocodigo.AsInteger = ttoRemessaRetorno))
        then
        begin
          if (cfgcfgusacspnoproduto.AsInteger = 1) and (cfgcfgusacsfnoproduto.AsInteger = 1) then
          begin
            TDBEdit(Components[i]).TabStop := True;
            TDBEdit(Components[i]).ReadOnly := False;
            TDBEdit(Components[i]).Color := PEG_COR_VALORREQUERIDO;
          end
          else
          begin
            TDBEdit(Components[i]).TabStop := False;
            TDBEdit(Components[i]).ReadOnly := True;
            TDBEdit(Components[i]).Color := PEG_COR_VALORPADRAO;
          end;
        end
        else
        begin
          TDBEdit(Components[i]).TabStop := True;
          TDBEdit(Components[i]).ReadOnly := False;
          TDBEdit(Components[i]).Color := PEG_COR_VALORREQUERIDO;
        end;
      end;

      if TDBEdit(Components[i]).Parent = GBOutrosValores then
      begin
        TDBEdit(Components[i]).TabStop := True;
        TDBEdit(Components[i]).ReadOnly := False;
        TDBEdit(Components[i]).Color := PEG_COR_VALORREQUERIDO;
      end;
    end;

  { if toettocodigo.AsInteger = ttoDevolucao then
    begin }
  cstcodigo.TabStop := True;
  cstcodigo.ReadOnly := False;
  cstcodigo.Color := PEG_COR_VALORREQUERIDO;
  { end^; }

  cfocfop.TabStop := False;
  cfocfop.ReadOnly := True;
  cfocfop.Color := PEG_COR_VALORPADRAO;

  itmtotal.TabStop := False;
  itmtotal.ReadOnly := True;
  itmtotal.Color := PEG_COR_VALORPADRAO;

  itmtotalgeral.TabStop := False;
  itmtotalgeral.ReadOnly := True;
  itmtotalgeral.Color := PEG_COR_VALORPADRAO;

end;

procedure Tfitmvnd.itmaliqcofinsExit(Sender: TObject);
begin
  inherited;
  itmcofins.Field.AsFloat := ((itmvalor.Field.AsCurrency * itmquantidade.Field.AsFloat) - itmdesconto.Field.AsCurrency) * (itmaliqcofins.Field.AsFloat / 100);

end;

procedure Tfitmvnd.itmaliqpisExit(Sender: TObject);
begin
  inherited;
  itmpis.Field.AsFloat := ((itmvalor.Field.AsCurrency * itmquantidade.Field.AsFloat) - itmdesconto.Field.AsCurrency) * (itmaliqpis.Field.AsFloat / 100);

end;

procedure Tfitmvnd.itmdescontoChange(Sender: TObject);
begin
  inherited;
  ajustaicm;
end;

procedure Tfitmvnd.itmdescontoExit(Sender: TObject);
begin
  inherited;
  Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;
  registroitmbicm.AsFloat := registroitmtotalgeral.AsFloat - (registroitmtotalgeral.AsFloat * (itmpercreducaobaseicm.Field.AsFloat / 100));

end;

procedure Tfitmvnd.itmicmEnter(Sender: TObject);
begin
  inherited;
  ajustaicm;
end;

procedure Tfitmvnd.itmquantidadeChange(Sender: TObject);
begin
  inherited;
  ajustaicm;
end;

procedure Tfitmvnd.itmquantidadeExit(Sender: TObject);
begin
  Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if itmquantidade.Field.IsNull then
    Exit;

  // incluido condicao para permitir registro manual de itens sem saldo
  // daniel - 04/08/2014 - 10:16
  if (cfgcfgcontrolaestoque.AsInteger = 1) or (cfgcfgcontrolaestoquedisp.AsInteger = 1) then
    if (Self.itmquantidade.Field.AsFloat > pdSaldoDisponivel) and (vpTipoProduto = tpoMercadoriaRevenda) then
    begin
      ShowMessage('ATENÇÃO: Quantidade superior ao saldo disponível deste produto!');
      Self.itmquantidade.SetFocus;
    end;

  consulta.Close;
  consulta.SQL.Text := 'select icmaliquotas from icm where icmcodigo=' + QuotedStr(Self.icmcodigo.Field.AsString);
  consulta.Open;

  If (consulta.Fields[0].AsString <> 'II') And (consulta.Fields[0].AsString <> 'FF') And (consulta.Fields[0].AsString <> 'NN') Then
  Begin

    If consulta.Fields[0].AsString = '0,01' Then
      registroitmicm.AsString := '0'
    Else if itmbicm.Field.AsFloat > 0 then
      registroitmicm.AsFloat := itmbicm.Field.AsFloat * (consulta.Fields[0].AsFloat / 100)
    else
      registroitmicm.AsFloat := 0;

    registroitmbicm.AsFloat := registroitmtotalgeral.AsFloat - (registroitmtotalgeral.AsFloat * (itmpercreducaobaseicm.Field.AsFloat / 100));

  End;

end;

procedure Tfitmvnd.itmvalorChange(Sender: TObject);
begin
  inherited;
  ajustaicm;
end;

procedure Tfitmvnd.itmvalorEnter(Sender: TObject);
var
  vvalor: Double;
begin
  inherited;
  vvalor := 0;
end;

function Tfitmvnd.MontaFiltroPun: Integer;
var
  vTfpCodigo: Integer;
begin
  if registro.State <> dsEdit then
    registro.Edit;

  consulta.Close;
  consulta.SQL.Text := 'SELECT puncodigo FROM pun WHERE ';
  consulta.SQL.Add('procodigo = ' + Self.procodigo.Field.AsString + ' AND ');
  consulta.SQL.Add('tuncodigo IN (1, 9)');
  consulta.Open;

  Result := consulta.RecordCount;

  vpPunUnico := False;

  if consulta.RecordCount = 1 then
  begin
    vpPunUnico := True;
    puncodigo.Field.AsString := consulta.Fields[0].AsString;
    puncodigo.Color := PEG_COR_VALORPADRAO;
    puncodigo.ReadOnly := True;

    DefineDadosEmbalagem;
  end
  else
  begin
    puncodigo.Color := PEG_COR_VALORREQUERIDO;
    puncodigo.ReadOnly := False;

    (* Verifica se puncodigo informado realmente pertence ao produto *)
    if puncodigo.Field.AsString <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT procodigo FROM pun WHERE puncodigo = ' + puncodigo.Field.AsString;
      consulta.Open;

      if consulta.Fields[0].AsString <> procodigo.Field.AsString then
      begin
        registropuncodigo.AsString := '';
        registroitmvalor.AsString := '';
        registroitmquantidade.AsFloat := 1;
      end;
    end;
  end;

  Self.txtFiltro := ' procodigo=' + Self.procodigo.Field.AsString + ' and (tuncodigo=1 or tuncodigo=9) ';

  consulta.Close;
end;

procedure Tfitmvnd.procodigoExit(Sender: TObject);
var
  Handle: THandle;
begin
  Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if Self.procodigo.Field.IsNull then
    Exit;

  MontaFiltroPun;

  consulta.Close;
  consulta.SQL.Text := 'SELECT prosaldodisp, tpocodigo,cspcodigo, csfcodigo, propisaliquota, procofinsaliquota,prosaldo FROM pro WHERE ';
  consulta.SQL.Add('procodigo = ' + Self.procodigo.Field.AsString);
  consulta.Open;

  vpTipoProduto := consulta.Fields[1].AsInteger;

  cspcodigo.Field.AsString := consulta.FieldByName('cspcodigo').AsString;
  csfcodigo.Field.AsString := consulta.FieldByName('csfcodigo').AsString;
  itmaliqpis.Field.AsFloat := consulta.FieldByName('propisaliquota').AsFloat;
  itmaliqcofins.Field.AsFloat := consulta.FieldByName('procofinsaliquota').AsFloat;

  plsaldoproduto.caption := Format('%9.4f', [Self.registroitmquantidade.AsFloat + consulta.Fields[0].AsFloat]);
  pdSaldoDisponivel := StrToFloat(Self.plsaldoproduto.caption);

  plfiscalproduto.caption := Format('%9.4f', [Self.registroitmquantidade.AsFloat + consulta.Fieldbyname('prosaldo').AsFloat]);
  pdFiscalDisponivel := StrToFloat(Self.plfiscalproduto.caption);



  Application.ProcessMessages;

  if Self.psituacao.caption = 'Incluindo' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT procodigo FROM itm WHERE ';
    consulta.SQL.Add('procodigo = ' + Self.procodigo.Field.AsString + ' AND ');
    consulta.SQL.Add('meschave = ' + Self.vChaveMestre);
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      Handle := 0;

      Handle := FindWindow('Tfvndsimples', nil);

      if Handle <> 0 then
      begin
        if Application.FindComponent('fvndsimples') <> nil then
        begin
          (Application.FindComponent('fvndsimples') as Tfvndsimples).Retorno := Self.procodigo.Field.AsString;;

        end;
      end;
      Retorno := Self.procodigo.Field.AsString;
      ShowMessage('Atenção, este produto já foi lançado nesta venda !');
      Self.procodigo.Field.AsString := '';
      bcancela.SetFocus;
      bcancela.Click;
      Exit;
    end;

    { * Verifica se tem um cst proprio para o produto * }
    consulta.Close;
    consulta.SQL.Text := 'select cstcodigo, propercreducaobaseicm,icmcodigo from pro where procodigo=' + procodigo.Field.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      cstcodigo.Field.AsString := consulta.Fields[0].AsString;
      if (cfgcrtcodigo.AsString = '3') then
      begin
        itmpercreducaobaseicm.Field.AsFloat := consulta.Fields[1].AsFloat;
      end
      else
        itmpercreducaobaseicm.Field.AsFloat := 0;

      if cfgcfgprodefineicms.AsInteger = 1 then
        icmcodigo.Field.AsString := consulta.Fields[2].AsString;

    end;

    { * ajusta tributação base * }

    consulta.Close;
    consulta.SQL.Text := 'select icmaliquotas from icm where icmcodigo=' + QuotedStr(Self.icmcodigo.Field.AsString);
    consulta.Open;

    If (consulta.Fields[0].AsString <> 'II') And (consulta.Fields[0].AsString <> 'FF') And (consulta.Fields[0].AsString <> 'NN') Then
    Begin

      registroitmaliqicm.AsString := consulta.Fields[0].AsString;

      If consulta.Fields[0].AsString = '0,01' Then
        registroitmicm.AsString := '0'
      Else if itmbicm.Field.AsFloat > 0 then
        registroitmicm.AsFloat := itmbicm.Field.AsFloat * (consulta.Fields[0].AsFloat / 100)
      else
        registroitmicm.AsFloat := 0;
    End
    Else
    Begin
      registroitmaliqicm.AsString := consulta.Fields[0].AsString;
      registroitmicm.AsString := '0';
    End;

    toecst.Close;
    toecst.ParamByName('toecodigo').AsInteger := toecodigo.Field.AsInteger;
    toecst.Open;

    if (trim(toecstcsicodigo.AsString) = '') or (trim(toecstcsfcodigo.AsString) = '') or (trim(toecstcspcodigo.AsString) = '') then
    begin
      ShowMessage('Falha: Favor verificar configurações tributárias!' + 'TOE - Operação Fiscal: ' + toecodigo.Field.AsString + ' ' + toetoeidentificacao.AsString);
      toecodigo.SetFocus;
    end
    else
    begin



      // ipi

      registroitmapuipi.AsInteger := 1;
      registrocsicodigo.AsString := toecstcsicodigo.AsString;
      registroceicodigo.AsString := '0';

      // cofins
      registroitmcofins.AsFloat := 0;
      registroitmaliqcofinsvalor.AsFloat := 0;
      registroitmquantcofins.AsFloat := 0;

      registroitmbcofins.AsFloat := 0;

      registrocsfcodigo.AsString := toecstcsfcodigo.AsString;
      registroitmaliqcofins.AsFloat := toecstcfgpercentualcofins.AsFloat;;

      // pis
      registroitmpis.AsFloat := 0;
      registroitmaliqpisvalor.AsFloat := 0;
      registroitmquantpis.AsFloat := 0;

      registroitmbpis.AsFloat := 0;

      registrocspcodigo.AsString := toecstcspcodigo.AsString;
      registroitmaliqpis.AsFloat := toecstcfgpercentualpis.AsFloat;

    end;

  end;
end;

procedure Tfitmvnd.puncodigoEnter(Sender: TObject);
begin
  inherited;

  if vpPunUnico then
    itmquantidade.SetFocus;
end;

procedure Tfitmvnd.puncodigoExit(Sender: TObject);
var
  vvalor: Double;
  vTfpCodigo: Integer;
begin
  Self.ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if Self.puncodigo.Field.IsNull then
    Exit;

  if registropuncodigo.AsString <> '' then
    DefineDadosEmbalagem;
end;

procedure Tfitmvnd.registroAfterInsert(DataSet: TDataSet);
var
  vlCstCodigo: string;
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'select mes.toecodigo, cstcodigo from mes,toe where mes.toecodigo=toe.toecodigo and meschave=' + Self.vChaveMestre;
  consulta.Open;
  vlCstCodigo := consulta.FieldByName('cstcodigo').AsString;
  Self.registrotoecodigo.AsString := Self.consulta.Fields[0].AsString;

  toe.Locate('toecodigo', registrotoecodigo.AsInteger, []);
  registrocfocfop.AsString := toetoecfopsaida.AsString;
  registrocfocfopdestinacao.AsString := toetoecfopsaida.AsString;

  consulta.Close;
  consulta.SQL.Text := 'select count(itmchave) from itm where meschave=' + Self.vChaveMestre;
  consulta.Open;

  registroitmitem.AsInteger := Self.consulta.Fields[0].AsInteger + 1;

  registroitmmovifisico.AsInteger := 1;
  registroitmaliqicms.AsFloat := 0;
  registroitmicms.AsFloat := 0;
  registroitmaliqipi.AsFloat := 0;
  registroitmipi.AsFloat := 0;
  registroitmdesconto.AsFloat := 0;
  Self.registroitmbicm.AsFloat := 0;
  Self.registroitmbicms.AsFloat := 0;

  cfg.Close;
  cfg.Connection := Self.zcone;
  cfg.ParamByName('flacodigo').AsInteger := acesso.Filial;
  cfg.Open;

  registrocstcodigo.AsString := vlCstCodigo;

  icmcodigo.Field.AsString := '01';
  itmbicm.Field.AsFloat := 0;
  itmicm.Field.AsFloat := 0;
  itmbicms.Field.AsFloat := 0;
  itmaliqicms.Field.AsFloat := 0;
  itmicms.Field.AsFloat := 0;
  itmaliqipi.Field.AsFloat := 0;
  itmipi.Field.AsFloat := 0;
  itmfrete.Field.AsFloat := 0;
  itmseguro.Field.AsFloat := 0;
  itmoutras.Field.AsFloat := 0;

end;

procedure Tfitmvnd.registroBeforePost(DataSet: TDataSet);
begin
  inherited;

  registropcccodigo.AsString := '3.01.01.03.03.00.00';

  (* Define se tem Movimento Físico de acordo com a Operação *)
  consulta.Close;
  consulta.SQL.Text := 'select tmecodigo from toe where toecodigo=' + registrotoecodigo.AsString;
  consulta.Open;

  registroitmmovifisico.AsString := consulta.Fields[0].AsString;
end;

procedure Tfitmvnd.registroCalcFields(DataSet: TDataSet);
begin
  inherited;
  registroitmtotalgeral.AsFloat := registroitmtotal.AsFloat - registroitmdesconto.AsFloat + registroitmoutras.AsFloat + registroitmseguro.AsFloat + registroitmfrete.AsFloat;

end;

procedure Tfitmvnd.toecodigoEnter(Sender: TObject);
begin
txtFiltro:='';
  inherited;

end;

procedure Tfitmvnd.toecodigoExit(Sender: TObject);

begin
  inherited;
  ValidaSaida(Sender);

  if registrotoecodigo.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + registrotoecodigo.AsString;
    consulta.Open;
    cfocfop.Field.AsString := consulta.FieldByName('toecfopsaida').AsString;
  end;

  consulta.Close;
  consulta.SQL.Text := 'select ttocodigo from toe where toecodigo=' + registrotoecodigo.AsString;
  consulta.Open;

  if consulta.fieldbyname('ttocodigo').asinteger=7 then
  begin

    consulta.Close;
    consulta.SQL.Text :=
      'select toecodigo, toecfopsaida,cstcodigo,cspcodigo,csfcodigo,csicodigo,cfgpercentualpis,cfgpercentualcofins from toe where toecodigo=' +
      registrotoecodigo.AsString;
    consulta.Open;
    cfocfop.Field.AsString := consulta.FieldByName('toecfopsaida').AsString;
    cstcodigo.Field.AsString := consulta.FieldByName('cstcodigo').AsString;
    toecodigo.Field.AsString := consulta.FieldByName('toecodigo').AsString;
    cspcodigo.Field.AsString := consulta.FieldByName('cspcodigo').AsString;
    itmaliqpis.Field.AsFloat := consulta.FieldByName('cfgpercentualpis').AsFloat;
    csfcodigo.Field.AsString := consulta.FieldByName('csfcodigo').AsString;
    itmaliqcofins.Field.AsFloat := consulta.FieldByName('cfgpercentualcofins').AsFloat;

  end;



end;

Procedure Tfitmvnd.ajustaicm;
Begin
  If (Self.registro.State = dsinsert) Or (Self.registro.State = dsEdit) Then
  Begin
    itmtotal.Field.AsFloat := TBRound((Self.itmvalor.Field.AsFloat * Self.itmquantidade.Field.AsFloat), 2);
    If Self.icmcodigo.Field.AsString <> '' Then
    Begin
      consulta.Close;
      consulta.SQL.Text := 'select icmaliquotas from icm where icmcodigo=' + QuotedStr(Self.icmcodigo.Field.AsString);
      consulta.Open;

      If (consulta.Fields[0].AsString <> 'II') And (consulta.Fields[0].AsString <> 'FF') And (consulta.Fields[0].AsString <> 'NN') Then
      Begin
        If (consulta.Fields[0].AsString = '0,01') or (consulta.Fields[0].AsString = '00') Then
          itmicm.Field.AsFloat := 0
        Else
          itmicm.Field.AsFloat := itmbicm.Field.AsFloat * (consulta.Fields[0].AsFloat / 100);
      End
      Else
        itmicm.Field.AsFloat := 0;
    End;
  End;
End;

procedure Tfitmvnd.DefineDadosEmbalagem;
var
  vTfpCodigo: Integer;
begin
  Self.pun.Filter := 'puncodigo=' + Self.registropuncodigo.AsString;
  Self.pun.Filtered := True;

  consulta.Close;
  consulta.SQL.Text := 'select tfpcodigo from mes where meschave=' + Self.vChaveMestre;
  consulta.Open;
  vTfpCodigo := Self.consulta.Fields[0].AsInteger;

  consulta.Close;

  // if Self.registroitmvalor.AsFloat = 0 then

  if vTfpCodigo = 0 then
    Self.registroitmvalor.AsFloat := Self.punpunprecoav.AsFloat
  else
    Self.registroitmvalor.AsFloat := Self.punpunprecoap.AsFloat;

  Self.registroitmcontendo.AsFloat := Self.punpunmultiplicador.AsFloat;
end;

end.
