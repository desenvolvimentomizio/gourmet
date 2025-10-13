unit uframfi;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes,
  System.Actions, Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls,
  Vcl.Dialogs, Winapi.Messages, System.SysUtils, uFuncoes, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.ComCtrls,  Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tframfi = class(Tfrabase)
    uqtabelaltechave: TIntegerField;
    uqtabelatfdcodigo: TIntegerField;
    uqtabelaltedata: TDateField;
    uqtabelalteprincipal: TFloatField;
    uqtabelaltemulta: TFloatField;
    uqtabelaltejuros: TFloatField;
    uqtabelaltedesconto: TFloatField;
    uqtabelaltetotal: TFloatField;
    rfi: TUniQuery;
    Drfi: TUniDataSource;
    rfirfichave: TIntegerField;
    rfietdcodigo: TIntegerField;
    rfietdidentificacao: TStringField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfinumero: TStringField;
    rfirfivalor: TFloatField;
    rfirfihistorico: TStringField;
    rfisrfcodigo: TIntegerField;
    rfisrfidentificacao: TStringField;
    rfiltechave: TIntegerField;
    ActRecibo: TAction;
    ActEstornar: TAction;
    cco: TUniQuery;
    ccoctacodigo: TIntegerField;
    ccoctaidentificacao: TStringField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccocconumero: TStringField;
    ccoltechave: TIntegerField;
    ccoccohistorico: TStringField;
    Dcco: TDataSource;
    ccoccochave: TIntegerField;
    ccoccovalor: TFloatField;
    Ddtl: TUniDataSource;
    dtl: TUniQuery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtlmdaidentificacao: TStringField;
    dtldtlvalor: TFloatField;
    dtltfdcodigo: TIntegerField;
    dtlmdacodigo: TIntegerField;
    GBTitulos: TGroupBox;
    DBGTitulos: TDBGrid;
    GBLote: TGroupBox;
    Label6: TLabel;
    ltedata: TDBEdit;
    Label1: TLabel;
    lteprincipal: TDBEdit;
    Label2: TLabel;
    ltemulta: TDBEdit;
    Label3: TLabel;
    ltejuros: TDBEdit;
    Label4: TLabel;
    ltedesconto: TDBEdit;
    Label5: TLabel;
    ltetotal: TDBEdit;
    Dche: TUniDataSource;
    che: TUniQuery;
    chechechave: TIntegerField;
    checheemissao: TDateField;
    chechevencimento: TDateField;
    chechenumero: TStringField;
    chechenome: TStringField;
    chebcocodigo: TStringField;
    chechevalor: TFloatField;
    cheschcodigo: TIntegerField;
    plRegistroFinanceiro: TPanel;
    GroupBox2: TGroupBox;
    DBGContaCorrente: TDBGrid;
    cheschidentificacao: TStringField;
    plCheques: TPanel;
    plEstornar: TPanel;
    Label7: TLabel;
    GBDetalhes: TGroupBox;
    DBlistadtpl: TDBGrid;
    plCheRcd: TPanel;
    GBCheques: TGroupBox;
    DBlistafin: TDBGrid;
    GbCartoes: TGroupBox;
    DBGrid1: TDBGrid;
    tesche: TUniQuery;
    teschetescodigo: TIntegerField;
    teschetesidentificacao: TStringField;
    tesrdc: TUniQuery;
    tesrdctescodigo: TIntegerField;
    tesrdctesidentificacao: TStringField;
    chetescodigo: TIntegerField;
    chetesidentificacao: TStringField;
    Dtesche: TDataSource;
    rdc: TUniQuery;
    rdcrdcchave: TIntegerField;
    rdcetdapelido: TStringField;
    rdcrdcdata: TDateField;
    rdcrdcvalor: TFloatField;
    rdcrdcnrauto: TStringField;
    rdcadccodigo: TIntegerField;
    rdctescodigo: TIntegerField;
    Drdc: TDataSource;
    rdctesdestino: TStringField;
    Dtesrdc: TDataSource;
    EdMotivo: TEdit;
    ccm: TVirtualTable;
    ccmmeacodigo: TIntegerField;
    Dccm: TDataSource;
    mea: TUniQuery;
    meameacodigo: TIntegerField;
    meameamotivo: TStringField;
    ccmmeamotivo: TStringField;
    Label8: TLabel;
    meacodigo: TDBEdit;
    Dmea: TDataSource;
    meamotivo: TDBText;
    Bevel1: TBevel;
    bcancela: TButton;
    bconfirma: TButton;
    novadata: TDateTimePicker;
    Button1: TButton;
    pcr: TUniQuery;
    mlg: TUniQuery;
    rmg: TUniQuery;
    uqtabelaclbidentificacao: TStringField;
    Label9: TLabel;
    clbidentificacao: TDBEdit;
    rfinova: TUniQuery;
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DBGTitulosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActReciboExecute(Sender: TObject);
    procedure DBGContaCorrenteDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBlistadtplDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure meamotivoKeyPress(Sender: TObject; var Key: Char);
    procedure DBlistafinDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure meacodigoEnter(Sender: TObject);
    procedure meacodigoExit(Sender: TObject);
    procedure DrfiDataChange(Sender: TObject; Field: TField);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    function Estorna(LteChave: string; motivo: string; vmeacodigo: string): string;

  public
    { Public declarations }
    vpTipo: string;
    vpLteChave: string;
  end;

  TEstornar = function(AOwner: TComponent; conexao: tuniconnection; vLteChave: string; vmotivo: string; vusrcodigo: string; vmeacodigo: string;
    vtnccodigo: string): string;

var
  framfi: Tframfi;

  // Início ID do Módulo framfi
const
  vPlIdMd = '02.02.15.002-01';
  vPlTitMdl = 'Estorno';

  // Fim ID do Módulo framfi

implementation

{$R *.dfm}

uses ufmfi;

function Tframfi.Estorna(LteChave: string; motivo: string; vmeacodigo: string): string;
var
  registra: TEstornar;
  pack: cardinal;
  vtnccodigo: string;
begin

  vtnccodigo := '1';

  pack := LoadPackage('modulos\merf.bpl');
  if pack <> 0 then
    try
      @registra := GetProcAddress(pack, PChar('estornar'));

      if Assigned(registra) then
        Result := registra(Application, zcone, LteChave, motivo, Acesso.Usuario.ToString, vmeacodigo, vtnccodigo);

    finally
      DoUnLoadPackage(Application, pack);
    end;
end;

procedure Tframfi.ActReciboExecute(Sender: TObject);
begin
  inherited;
  mrfrImprimir(Application, zcone, DSTabela, ExtractFilePath(Application.ExeName) + '\relat\ReimprimeReciboCRE.fr3', tiImprimir, Acesso.Usuario.ToString);
end;

procedure Tframfi.bcancelaClick(Sender: TObject);
begin
  inherited;
  ActSair.Execute;
end;

procedure Tframfi.bconfirmaClick(Sender: TObject);
var
  vlTotCheDevol: double;
  vlTotCarCance: double;
  vlTotCredGerar: double;
begin
  // try

  vlTotCheDevol := 0;
  vlTotCarCance := 0;
  vlTotCredGerar := 0;

  if rdc.State <> dsbrowse then
    rdc.Post;

  if che.Active then
  begin
    if (che.State = dsInsert) or (che.State = dsedit) then
      che.Post;

    che.First;
    while not che.Eof do
    begin
      che.edit;
      chetescodigo.AsInteger := 3;
      che.Post;

      if chetescodigo.AsInteger = 0 then
      begin
        showmessage('É necessário definir a situação do(s) cheque(s) !');
        exit;
      end;

      if chetescodigo.AsInteger = 1 then
        vlTotCheDevol := vlTotCheDevol + self.chechevalor.AsFloat;

      che.Next;
    end;

  end;
  rdc.First;
  while not rdc.Eof do
  begin
    rdc.edit;
    rdctescodigo.AsInteger := 3;
    rdc.Post;

    if rdctescodigo.AsInteger = 0 then
    begin
      showmessage('É necessário definir a situação do(s) Cartões de Crédito ou Débito(s) !');
      exit;
    end;
    if rdctescodigo.AsInteger = 2 then
      vlTotCarCance := vlTotCarCance + self.rdcrdcvalor.AsFloat;

    rdc.Next;
  end;

  inherited;

  if EdMotivo.Text = '' then
  begin
    showmessage('É necessário a descrição de um motivo para o estorno.');
    exit;
  end;

  Estorna(vpLteChave, EdMotivo.Text, meacodigo.Field.AsString);

  consulta.Close;
  consulta.sql.Text := 'update lte set ltesituacao=1 where ltechave=' + self.uqtabelaltechave.AsString;
  consulta.ExecSQL;

  if not cco.IsEmpty then
  begin
    consulta.Close;
    consulta.sql.Text := 'update cco set toccodigo=2 where ccochave=' + ccoccochave.AsString;
    consulta.ExecSQL;
  end;

  rfi.First;
  while not rfi.Eof do
  begin

    consulta.Close;
    consulta.sql.Text := 'update mfi set mfisituacao=0 where rfichave=' + self.rfi.FieldByName('rfichave').AsString;
    consulta.ExecSQL;

    rfi.Next;
  end;

  rfinova.Close;
  rfinova.ParamByName('ltechave').AsString := self.uqtabelaltechave.AsString;
  rfinova.Open;

  if not rfinova.IsEmpty then
  begin
    rfinova.Delete;
  end;

  self.ActSair.Execute;

  showmessage('Estorno realizado com sucesso!');
  { except
    showmessage('FALHA: Erro ao realizar Estorno!');

    end; }
end;

procedure Tframfi.Button1Click(Sender: TObject);
var
  smsg: String;

begin
  inherited;

  smsg := 'Deseja realmente alterar a data de ' + ltedata.Field.AsString + ' para ' + DateToStr(novadata.Date) + ' ?';

  If Application.MessageBox(PChar(smsg), 'Atenção, confirma alteração:', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.sql.Text := 'update lte set ltedata=' + QuotedStr(ajustadata(DateToStr(novadata.Date))) + ' where ltechave=' + uqtabelaltechave.AsString;
    consulta.ExecSQL;

    rfi.First;
    while not rfi.Eof do
    begin
      consulta.Close;
      consulta.sql.Text := 'update mfi set mfidata=' + QuotedStr(ajustadata(DateToStr(novadata.Date))) + ' where rfichave=' + rfirfichave.AsString;
      consulta.ExecSQL;
      rfi.Next;
    end;

    cco.First;
    while not cco.Eof do
    begin
      consulta.Close;
      consulta.sql.Text := 'update cco set ccovencimento=' + QuotedStr(ajustadata(DateToStr(novadata.Date))) + ' where ccochave=' + ccoccochave.AsString;
      consulta.ExecSQL;
      cco.Next;
    end;

    rdc.First;
    while not rdc.Eof do
    begin
      consulta.Close;
      consulta.sql.Text := 'update rdc set rdcadata=' + QuotedStr(ajustadata(DateToStr(novadata.Date))) + ' where rdcchave=' + rdcrdcchave.AsString;
      consulta.ExecSQL;
      rdc.Next;
    end;

    mlg.Close;
    mlg.ParamByName('ltechave').AsString := uqtabelaltechave.AsString;
    mlg.Open;

    mlg.edit;
    mlg.FieldByName('mlgdata').AsString := DateToStr(novadata.Date);
    mlg.Post;

    rmg.Close;
    rmg.ParamByName('mlgchave').AsInteger := mlg.FieldByName('mlgchave').AsInteger;
    rmg.Open;

    while not rmg.Eof do
    begin
      rmg.edit;
      rmg.FieldByName('rmgdata').AsString := DateToStr(novadata.Date);
      rmg.Post;
      rmg.Next;
    end;

    consulta.Close;
    consulta.sql.Text := 'update mfi set mfisituacao=0';
    consulta.ExecSQL;

    showmessage('Ajuste de data realizado com sucesso!');
    bconfirma.Click;

  End;

end;

procedure Tframfi.Button2Click(Sender: TObject);
var
  smsg: String;

begin
  inherited;

  smsg := 'Deseja realmente alterar a data de ' + ltedata.Field.AsString + ' para ' + DateToStr(novadata.Date) + ' ?';

  If Application.MessageBox(PChar(smsg), 'Atenção, confirma alteração:', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.sql.Text := 'update lte set ltedata=' + QuotedStr(ajustadata(DateToStr(novadata.Date))) + ' where ltechave=' + uqtabelaltechave.AsString;
    consulta.ExecSQL;

    rfi.First;
    while not rfi.Eof do
    begin
      consulta.Close;
      consulta.sql.Text := 'update mfi set mfidata=' + QuotedStr(ajustadata(DateToStr(novadata.Date))) + ' where rfichave=' + rfirfichave.AsString;
      consulta.ExecSQL;
      rfi.Next;
    end;

    cco.First;
    while not cco.Eof do
    begin
      consulta.Close;
      consulta.sql.Text := 'update cco set ccovencimento=' + QuotedStr(ajustadata(DateToStr(novadata.Date))) + ' where ccochave=' + ccoccochave.AsString;
      consulta.ExecSQL;
      cco.Next;
    end;

    rdc.First;
    while not rdc.Eof do
    begin
      consulta.Close;
      consulta.sql.Text := 'update rdc set rdcadata=' + QuotedStr(ajustadata(DateToStr(novadata.Date))) + ' where rdcchave=' + rdcrdcchave.AsString;
      consulta.ExecSQL;
      rdc.Next;
    end;

    mlg.Close;
    mlg.ParamByName('ltechave').AsString := uqtabelaltechave.AsString;
    mlg.Open;

    mlg.edit;
    mlg.FieldByName('mlgdata').AsString := DateToStr(novadata.Date);
    mlg.Post;

    rmg.Close;
    rmg.ParamByName('mlgchave').AsInteger := mlg.FieldByName('mlgchave').AsInteger;
    rmg.Open;

    while not rmg.Eof do
    begin
      rmg.edit;
      rmg.FieldByName('rmgdata').AsString := DateToStr(novadata.Date);
      rmg.Post;
      rmg.Next;
    end;

    consulta.Close;
    consulta.sql.Text := 'update mfi set mfisituacao=0';
    consulta.ExecSQL;

    showmessage('Ajuste de data realizado com sucesso!');
    bconfirma.Click;

  End;

end;

procedure Tframfi.DBGContaCorrenteDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);

end;

procedure Tframfi.DBGTitulosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);

end;

procedure Tframfi.DBlistadtplDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);

end;

procedure Tframfi.DBlistafinDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tframfi.DrfiDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  dtl.Close;
  dtl.Params[0].AsInteger := self.ccoccochave.AsInteger;
  // dtl.Params[1].AsInteger := uqtabelaltechave.AsInteger;
  dtl.Open;

  if not dtl.IsEmpty then
  begin

    che.Close;
    che.Params[0].AsInteger := self.dtlltechave.AsInteger;
    che.Open;

    rdc.Close;
    rdc.Params[0].AsInteger := self.dtlltechave.AsInteger;
    rdc.Open;

  end
  else
  begin

    rdc.Close;
    rdc.Params[0].AsInteger := self.uqtabelaltechave.AsInteger;
    rdc.Open;
  end;
end;

procedure Tframfi.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  vpLteChave := uqtabelaltechave.AsString;

  rfi.Close;
  rfi.Params[0].AsInteger := uqtabelaltechave.AsInteger;
  rfi.Open;

  cco.Close;
  cco.Params[0].AsInteger := uqtabelaltechave.AsInteger;
  cco.Open;

end;

procedure Tframfi.meacodigoEnter(Sender: TObject);
begin

  if (ccm.State = dsInactive) then
    ccm.Open;

  if (ccm.State = dsbrowse) then
    ccm.append;

  meacodigo.Field.AsString := MostraLista('mmea', '');
  mea.Refresh;
end;

procedure Tframfi.meacodigoExit(Sender: TObject);
var
  smsg: string;
begin
  if meacodigo.Field.AsString = '' then
  begin

    if bcancela.Visible then
      bcancela.SetFocus; // Força o ActiveControl para o botão Cancelar

    if psituacao.caption = 'Estornando' then
      smsg := 'Deseja realmente abandonar o Estorno ?';

    If Application.MessageBox(PChar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
    Begin

      self.bcancela.Click;

    End
    else
    begin
      meacodigo.SetFocus;
    end;
  end
  else
  begin
    if meamotivo.Field.AsString = '' then
    begin
      meacodigo.SetFocus;
      exit;
    end;

    ccm.Post;
  end;
end;

procedure Tframfi.meamotivoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;

  If Key = #13 Then
  Begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End;

end;

end.
