unit ufrardo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase, ufuncoes, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrardo = class(Tfrabase)
    uqtabelameschave: TIntegerField;
    uqtabelamesemissao: TDateField;
    uqtabelatdfidentificacao: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesvalor: TFloatField;
    uqtabelamesdesconto: TFloatField;
    uqtabelamestotal: TFloatField;
    uqtabelasdeidentificacao: TStringField;
    uqtabelatoeidentificacao: TStringField;
    uqtabelamesserie: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelatrmcodigo: TIntegerField;
    uqtabelamesprotocolo: TStringField;
    uqtabelasdecodigo: TStringField;
    uqtabelamesdatanfe: TDateField;
    uqtabelatemcodigo: TIntegerField;
    uqtabelatemidentificacao: TStringField;
    uqtabelatoeorigem: TStringField;
    uqtabelatdfcodigo: TStringField;
    uqtabelattecodigo: TIntegerField;
    uqtabelatteidentificacao: TStringField;
    uqtabelameschavenfe: TStringField;
    uqtabelamesregistro: TDateField;
    uqtabelamesprodutos: TFloatField;
    uqtabelamesservicos: TFloatField;
    uqtabelattocodigo: TIntegerField;
    uqtabelamespis: TFloatField;
    uqtabelamescofins: TFloatField;
    uqtabelamesipi: TFloatField;
    uqtabelamesicm: TFloatField;
    uqtabelamesicms: TFloatField;
    ActImprimirNFCe: TAction;
    ActGerareImprimirNFCe: TAction;
    ActImprimirComprovante: TAction;
    orc: TUniQuery;
    dorc: TUniDataSource;
    dtl: TUniQuery;
    dtlmdaidentificacao: TStringField;
    dtldtlvalor: TFloatField;
    dtldtlchave: TIntegerField;
    dtlrfihistorico: TStringField;
    dtlltechave: TIntegerField;
    dtldtlflacodigo: TIntegerField;
    dtlrfiflacodigo: TIntegerField;
    dtlrfmflacodigo: TIntegerField;
    dtlrfmchave: TIntegerField;
    dtlmfiflacodigo: TIntegerField;
    dtlmfichave: TIntegerField;
    dtllteflacodigo: TIntegerField;
    dtlrfichave: TIntegerField;
    dtlmltflacodigo: TIntegerField;
    dtlmltchave: TIntegerField;
    dtlmdacodigo: TIntegerField;
    uqtabelaflacodigo: TIntegerField;
    orcmeschave: TIntegerField;
    limite: TUniQuery;
    limiteetdcodigo: TIntegerField;
    limiteetllimitetotal: TFloatField;
    disponivel: TUniQuery;
    disponivelrfisaldocapital: TFloatField;
    Ditm: TUniDataSource;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmunisimbolo: TStringField;
    itmitmvalor: TFloatField;
    itmitmquantidade: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmcfocfop: TStringField;
    itmitmaliqipi: TFloatField;
    itmitmtotalliq: TFloatField;
    itmtoecodigo: TIntegerField;
    itmproncm: TStringField;
    itmcstcodigo: TStringField;
    itmcspcodigo: TStringField;
    itmitmpis: TFloatField;
    itmitmcofins: TFloatField;
    listaitm: TDBGrid;
    uqtabelamesrefeicao: TIntegerField;
    uqtabelaorcchave: TIntegerField;
    cfg: TUniQuery;
    cfgcfgusagou: TIntegerField;
    refeicoes: TUniStoredProc;
    uqtabelaorctotalap: TFloatField;
    uqtabelaorctotalav: TFloatField;
    DBGrid1: TDBGrid;
    Ddtl: TDataSource;
    pdetalhe: TPanel;
    Panel3: TPanel;
    listapor: TDBGrid;
    pvalordetalhe: TPanel;
    dtlmda: TUniQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    ActNFCeIdentificada: TAction;
    ActNFCeRefeicao: TAction;
    mic: TUniQuery;
    micmicchave: TIntegerField;
    micidccodigo: TIntegerField;
    micmeschave: TIntegerField;
    oic: TUniQuery;
    oicoicchave: TIntegerField;
    oicidccodigo: TIntegerField;
    oicorcchave: TIntegerField;
    ActNFCeRefIdentif: TAction;
    uqtabelamesinclusao: TDateTimeField;
    ActImprimirVendaNFE: TAction;
    ActRenviaremail: TAction;
    ActReimprimirNFE: TAction;
    cfgcfgmgouprorefeicao: TIntegerField;
    cfgcfgservarqnfes: TStringField;
    ActAterarCliente: TAction;
    Utilitrios1: TMenuItem;
    GerarasdePixeCartes1: TMenuItem;
    procedure ActImprimirNFCeExecute(Sender: TObject);
    procedure ActGerareImprimirNFCeExecute(Sender: TObject);
    procedure ActImprimirComprovanteExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActNFCeRefeicaoExecute(Sender: TObject);
    procedure ActNFCeIdentificadaExecute(Sender: TObject);
    procedure ActNFCeRefIdentifExecute(Sender: TObject);
    procedure ActImprimirVendaNFEExecute(Sender: TObject);
    procedure ActImprimirVendaREFEICAOExecute(Sender: TObject);
    procedure ActRenviaremailExecute(Sender: TObject);
    procedure ActReimprimirNFEExecute(Sender: TObject);
    procedure ActAterarClienteExecute(Sender: TObject);
    procedure GerarasdePixeCartes1Click(Sender: TObject);
  private
    function ModuloNFCe(vfuncao, vTrmCodigo, vmeschave, vClbCodigo: string): Boolean;
    function ajustacliente(vorcchave, vusrcodigo: string): Boolean;
    function geranomenfe(vmeschave, vflacodigo: String): String;
    procedure modulonfe(arq: String; Rotina: TRotinasNFe; chave: String);
    { Private declarations }
  public
    { Public declarations }
    vpMicEtdcodigo: string;
  end;

  Tmodulonfce = function(AOwner: TComponent; Conexao: TUniConnection; vmeschave: string; vfuncao: string; Acesso: TAcesso; vImprimir: Boolean;
    vConsultouSefaz: Boolean; vemail: string): Boolean;

  TClienteSimples = function(AOwner: TComponent; Conexao: TUniConnection; vmeschave: string; vClbCodigo: string): string;

var
  frardo: Tfrardo;

  // Início ID do Módulo frapcb
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Documentos para Reimpressão';

  // Fim ID do Módulo frapcb

implementation

{$R *.dfm}

type
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frardo := Tfrardo.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frardo := Tfrardo.Create(pCargaFrame);
  try
    frardo.CriaAcoesDeAcesso;
  finally
    frardo.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrardo.ActGerareImprimirNFCeExecute(Sender: TObject);
var
  vlMesChave: string;
  vlConfirma: string;
  smsg: string;
begin
  inherited;

  If (Self.uqtabelamesprotocolo.AsString = '') or (uqtabelatemcodigo.AsInteger = temNFEPendente) Then
  Begin
    vlMesChave := uqtabelameschave.AsString;

    ActAtualizar.Execute;
    vlMesChave := uqtabelameschave.AsString;
    ModuloNFCe('EmiteNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);
    ActAtualizar.Execute;
    ModuloNFCe('ImprimeNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);

  End
  Else
  Begin
    ShowMessage('ATENÇÃO: Este registro já é uma NFCe, só pode ser Reimpresso!');
  End;

end;

procedure Tfrardo.ActImprimirComprovanteExecute(Sender: TObject);
var
  vlDirRelat: string;
  vlAssinar: Boolean;
begin
  ActImprimirComprovante.Enabled := false;
  inherited;
  if fileexists(Extractfilepath(Application.ExeName) + '\relat\comprovanteDAV.fr3') then
  begin

    orc.Close;
    orc.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    orc.Open;

    if limite.Active then
    begin
      if (not limite.IsEmpty) and (limiteetllimitetotal.AsCurrency > 0) and (limiteetdcodigo.AsInteger <> 0) then
      begin
        vlDirRelat := Extractfilepath(Application.ExeName) + 'relat\comprovanteDAV-LIMITE.fr3';
        if not fileexists(vlDirRelat) then
        begin
          vlDirRelat := Extractfilepath(Application.ExeName) + 'relat\comprovanteDAV.fr3';
        end;
      end
      else
      begin
        vlDirRelat := Extractfilepath(Application.ExeName) + 'relat\comprovanteDAV.fr3';
      end;
    end
    else
    begin
      vlDirRelat := Extractfilepath(Application.ExeName) + 'relat\comprovanteDAV.fr3';
    end;

    mrfrImprimir(Application, ZCone, dorc, vlDirRelat, tiImprimir);

    { vlDirRelat := Extractfilepath(Application.ExeName) + 'relat\Comprovante.fr3';
      if fileexists(vlDirRelat) then
      begin
      mrfrImprimir(Application, ZCone, dorc, vlDirRelat, tiImprimir);
      end; }

  end;

  vlAssinar := false;

  dtl.Close;
  // dtl.ParamByName('flacodigo').AsInteger := uqtabelaflacodigo.AsInteger;
  dtl.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
  dtl.Open;

  dtl.First;
  while not dtl.Eof do
  begin
    if dtlmdacodigo.AsInteger = mdaConvenio then
    begin
      vlAssinar := true;
      break
    end;
    dtl.Next;
  end;
  if vlAssinar then
  begin
    if fileexists(Extractfilepath(Application.ExeName) + '\report\viaassinar.fr3') then
    begin
      orc.Close;
      orc.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
      orc.Open;

      if limite.Active then
      begin
        if not limite.IsEmpty then
        begin
          vlDirRelat := Extractfilepath(Application.ExeName) + 'report\viaassinar-LIMITE.fr3';
          if not fileexists(vlDirRelat) then
          begin
            vlDirRelat := Extractfilepath(Application.ExeName) + 'report\viaassinar.fr3';
          end;
        end
        else
        begin
          vlDirRelat := Extractfilepath(Application.ExeName) + 'report\viaassinar.fr3';
        end;
      end
      else
      begin
        vlDirRelat := Extractfilepath(Application.ExeName) + 'report\viaassinar.fr3';
      end;

      mrfrImprimir(Application, ZCone, dorc, vlDirRelat, tiImprimir);

    end;

  end;
  ActImprimirComprovante.Enabled := true;
  { }
end;

procedure Tfrardo.ActImprimirNFCeExecute(Sender: TObject);
begin
  inherited;

  ActImprimirNFCe.Enabled := false;
  { If (Self.uqtabelamesprotocolo.AsString <> '') Then
    Begin }
  ModuloNFCe('ImprimeNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);
  { End
    Else
    Begin
    ShowMessage('ATENÇÃO: Este registro não é uma NFCe, não pode ser reimpressa!');
    End; }
  ActImprimirNFCe.Enabled := true;
end;

procedure Tfrardo.ActImprimirVendaNFEExecute(Sender: TObject);

Var
  retorno: String;
  arq: String;
  vmeschave: String;
  ventcodigo: String;
  vrec: Integer;
  vlProcodigo: Integer;
  vlRefeicao: Integer;
Begin

  if Self.uqtabelamesprotocolo.AsString <> '' then
  begin
    ShowMessage('ATENÇÃO: Este registro já é uma NFE, só pode ser Reimpresso!' + #13 + 'Protocolo Registrado: ' + Self.uqtabelamesprotocolo.AsString);
    Exit;
  end;

  if (uqtabelattocodigo.AsInteger = ttoDevolucao) or (uqtabelattocodigo.AsInteger = ttoRemessaRetorno) or (uqtabelattocodigo.AsInteger = ttoOutros) or
    (uqtabelattocodigo.AsInteger = ttoComplemento) then
  begin

  end
  else
  begin

    { if dtl.IsEmpty then
      begin
      ShowMessage('ATENÇÃO: Este registro não possui finalização, favor ir em Venda e gerar finalização!');
      Exit;

      end; }
  end;

  vrec := Self.uqtabela.RecNo;
  vmeschave := Self.uqtabelameschave.AsString;
  ventcodigo := Self.uqtabelaetdcodigo.AsString;

  inherited;

  consulta.Close;
  consulta.SQL.Text := 'select procodigo from itm where meschave=' + uqtabelameschave.AsString;
  consulta.Open;

  while not consulta.Eof do
  begin
    vlProcodigo := consulta.FieldByName('procodigo').AsInteger;
    if cfgcfgmgouprorefeicao.AsInteger = vlProcodigo then
    begin
      break;
    end;
    consulta.Next;
  end;

  if cfgcfgmgouprorefeicao.AsInteger = vlProcodigo then
  begin
    vlRefeicao := 1;
  end
  else
  begin
    vlRefeicao := 0;
  end;

  consulta.Close;
  consulta.SQL.Text := 'update mes set mesrefeicao=' + vlRefeicao.ToString + ' where meschave=' + vmeschave;
  consulta.ExecSQL;

  arq := geranomenfe(vmeschave, Self.uqtabelaflacodigo.AsString);

  if arq <> '' then
  begin
    Self.modulonfe(arq, rnfGerarNFe, vmeschave);
    ActAtualizar.Execute;
  end;

end;

Procedure Tfrardo.modulonfe(arq: String; Rotina: TRotinasNFe; chave: String);
type
  TModuloNFe = function(AOwner: TComponent; Conexao: TUniConnection; varq: string; vchave: string; vRotinaNFe: TRotinasNFe; Acesso: TAcesso;
    vConsultouSefaz: Boolean): Boolean;
var
  modnfe: TModuloNFe;

  ch: string;
  vu: string;
  vpack: cardinal;
  vpConsultouSEFAZ: Boolean;
begin
  vpack := LoadPackage('modulos\mnfegourmet.bpl');
  if vpack <> 0 then
    try
      @modnfe := GetProcAddress(vpack, PChar('ModuloNFe'));
      if Assigned(modnfe) then
      begin
        vpConsultouSEFAZ := false;
        modnfe(Application, Self.ZCone, arq, chave, Rotina, Acesso, vpConsultouSEFAZ);
        vpConsultouSEFAZ := true;
      end;
    finally
      // DoUnLoadPackage(application,vpack);
    end;
End;

Function Tfrardo.geranomenfe(vmeschave: String; vflacodigo: String): String;
Var
  retorno: String;
  vaaaammnfe: String;
  arq: String;
Begin
  retorno := '';
  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  consulta.Close;
  consulta.SQL.Text := 'select mesdatanfe,mesregistro, meschavenfe, meschave from mes where meschave=' + vmeschave + ' and flacodigo=' + vflacodigo;
  consulta.Open;

  If (Self.consulta.RecordCount = 1) And (consulta.Fields[0].AsString <> '') Then
  Begin
    vaaaammnfe := cfgcfgservarqnfes.AsString + '\arqnfes\' + FormatDateTime('yyyymm', consulta.Fields[0].AsFloat);
    arq := vaaaammnfe + '\' + consulta.Fields[2].AsString + '-nfe.XML';
    retorno := arq;
  End
  Else If (Self.consulta.RecordCount = 1) And (consulta.Fields[1].AsString <> '') And (consulta.Fields[2].AsString <> '') Then
  Begin
    vaaaammnfe := cfgcfgservarqnfes.AsString + '\arqnfes\' + FormatDateTime('yyyymm', consulta.Fields[1].AsFloat);
    arq := vaaaammnfe + '\' + consulta.Fields[2].AsString + '-nfe.XML';
    retorno := arq;
  End
  Else If (Self.consulta.RecordCount = 1) And (consulta.Fields[1].AsString <> '') And (consulta.Fields[2].AsString = '') Then
  Begin
    vaaaammnfe := cfgcfgservarqnfes.AsString + '\arqnfes\' + FormatDateTime('yyyymm', consulta.Fields[1].AsFloat);
    arq := vaaaammnfe + '\' + consulta.Fields[3].AsString + '-nfe.XML';
    retorno := arq;
  End;

  Result := retorno;
End;

procedure Tfrardo.GerarasdePixeCartes1Click(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(PChar('Confirma a geração de mltiplas NFCes automaticamente?'), PChar('Gerar NFCes selecionada'),
    MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes then
  begin

    while not uqtabela.eof do
    begin
      dtl.Close;
     // dtl.ParamByName('flacodigo').AsInteger := Acesso.Filial;
      dtl.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
      dtl.Open;

      if (Pos('pix', lowercase(dtlmdaidentificacao.AsString)) > 0) or (Pos('cartão', lowercase(dtlmdaidentificacao.AsString)) > 0) then
      begin

        If (Self.uqtabelamesnumero.AsString = '0') and (Self.uqtabelatemcodigo.AsString <> '4') Then
        Begin
          ModuloNFCe('EmiteNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);
          ActAtualizar.Execute;
        End
        else If (Self.uqtabelamesnumero.AsString <> '0') and (Self.uqtabelatemcodigo.AsString = '4') Then
        Begin
          ModuloNFCe('EmiteNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);
          ActAtualizar.Execute;
        End;

      end;
      uqtabela.next;
    end;

  end;

end;

procedure Tfrardo.ActImprimirVendaREFEICAOExecute(Sender: TObject);
begin
  inherited;
  //
end;

procedure Tfrardo.ActAterarClienteExecute(Sender: TObject);
var
  vlEtdCodigo: string;
  vlEndereco: string;
  vlRetorno: String;
  vlTxtFiltro: string;
  vlEdrItem: String;

begin
  inherited;

  If (Self.uqtabelamesprotocolo.AsString <> '') Then
  begin
    ShowMessage('ATENÇÃO: Este registro é de uma NFE, não pode ser alterado!');
    Exit;
  end;

  vlEtdCodigo := MostraLista('mcli', '', '');
  if vlEtdCodigo <> '' then
  begin

    consulta.Close;
    consulta.SQL.Text := 'SELECT edr.edrcodigo FROM edr WHERE edr.tedcodigo IN (1, 3, 4) AND edr.etdcodigo = ' + vlEtdCodigo;
    consulta.Open;

    if not consulta.Locate('edrcodigo', vlEndereco, []) then
    begin
      vlEndereco := consulta.Fields[0].AsString;

      if consulta.RecordCount > 1 then
      begin
        vlTxtFiltro := 'etdcodigo = ' + vlEtdCodigo;
        vlRetorno := MostraLista('medr', vlTxtFiltro, vlEtdCodigo);

        if vlRetorno <> '' then
          vlEndereco := vlRetorno;
      end;
    end;

    If Application.MessageBox(PChar('Confirma a mofificação desta venda para o cliente Selecionado?'), PChar('Mofidicação de Cliente'),
      MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = idYes Then
    Begin

      consulta.Close;
      consulta.SQL.Text := 'select edritem from edr where etdcodigo=' + vlEtdCodigo + ' and edrcodigo=' + vlEndereco;
      consulta.Open;

      vlEdrItem := consulta.FieldByName('edritem').AsString;

      consulta.Close;
      consulta.SQL.Text := 'update mes set edritem=' + vlEdrItem + ', etdcodigo=' + vlEtdCodigo + ' where meschave=' + uqtabelameschave.AsString;
      consulta.ExecSQL;

    End;

  end;
end;

procedure Tfrardo.ActReimprimirNFEExecute(Sender: TObject);
Var
  retorno: String;
  arq: String;
  vmeschave: string;
Begin
  vmeschave := Self.uqtabelameschave.AsString;
  Inherited;

  If Self.uqtabelamesprotocolo.AsString <> '' Then
  Begin

    arq := geranomenfe(vmeschave, Self.uqtabelaflacodigo.AsString);
    If arq <> '' Then
    Begin
      modulonfe(arq, rnfImprimirNFe, vmeschave);
      ActAtualizar.Execute;
    End;
  End
  Else
  Begin
    ShowMessage('ATENÇÃO: Este registro não é uma NFE, não pode ser reimpressa!');
  End;

end;

function Tfrardo.ajustacliente(vorcchave, vusrcodigo: string): Boolean;

var
  ClienteSimples: TClienteSimples;

  vlPackIDC: cardinal;
begin
  vpMicEtdcodigo := '0';
  vlPackIDC := 0;
  vlPackIDC := LoadPackage('modulos\midc.bpl');
  if vlPackIDC <> 0 then
    @ClienteSimples := GetProcAddress(vlPackIDC, PChar('ClienteSimplesOrc'));

  if Assigned(ClienteSimples) then
  begin
    vpMicEtdcodigo := ClienteSimples(Application, Self.ZCone, vorcchave, vusrcodigo);
  end;

  DoUnLoadPackage(Application, vlPackIDC);

  if (vpMicEtdcodigo = '0') or (vpMicEtdcodigo = '') then
    Result := false
  else
  begin
    Result := true;

    mic.Close;
    mic.ParamByName('meschave').AsString := uqtabelameschave.AsString;
    mic.Open;

    if mic.RecordCount = 1 then
      mic.Edit
    else
      mic.Append;

    micidccodigo.AsString := vpMicEtdcodigo;
    micmeschave.AsString := uqtabelameschave.AsString;
    mic.Post;
  end;
end;

procedure Tfrardo.ActNFCeIdentificadaExecute(Sender: TObject);
var
  vlMesChave: string;
  vlConfirma: string;
  smsg: string;
begin
  inherited;
  ActNFCeIdentificada.Enabled := false;
  if ajustacliente(uqtabelaorcchave.AsString, Acesso.Usuario.ToString) then
  begin

    If (Self.uqtabelamesprotocolo.AsString = '') or (uqtabelatemcodigo.AsInteger = temNFEPendente) Then
    Begin
      vlMesChave := uqtabelameschave.AsString;

      ActAtualizar.Execute;
      vlMesChave := uqtabelameschave.AsString;
      ModuloNFCe('EmiteNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);
      ActAtualizar.Execute;
      ModuloNFCe('ImprimeNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);

    End
    Else
    Begin
      ShowMessage('ATENÇÃO: Este registro já é uma NFCe, só pode ser Reimpresso!');
    End;

  end;
  ActNFCeIdentificada.Enabled := true;
end;

procedure Tfrardo.ActNFCeRefeicaoExecute(Sender: TObject);

var
  vlMesChave: string;
  vlConfirma: string;
  smsg: string;
begin
  inherited;
  try
    ActNFCeRefeicao.Enabled := false;
    If (Self.uqtabelamesprotocolo.AsString = '') or (uqtabelatemcodigo.AsInteger = temNFEPendente) Then
    Begin
      vlMesChave := uqtabelameschave.AsString;

      if uqtabelamesrefeicao.AsInteger = 0 then
      begin
        cfg.Close;
        cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
        cfg.Open;

        smsg := 'Emitit como REFEIÇÃO ?';

        If Application.MessageBox(PChar(smsg), 'A T E N Ç Ã O:', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idYes Then
        Begin

          vlMesChave := '';

          refeicoes.Connection := ZCone;
          refeicoes.Close;
          refeicoes.ParamByName('pFlacodigo').AsInteger := Acesso.Filial;
          if uqtabelaorcchave.AsInteger = 0 then
          begin
            refeicoes.ParamByName('pTipoChave').AsInteger := 1;
            refeicoes.ParamByName('pChave').AsInteger := uqtabelameschave.AsInteger;
          end
          else
          begin
            refeicoes.ParamByName('pTipoChave').AsInteger := 0;
            refeicoes.ParamByName('pChave').AsInteger := uqtabelaorcchave.AsInteger;
          end;

          refeicoes.ParamByName('pClbCodigo').AsInteger := uqtabelaclbcodigo.AsInteger;
          refeicoes.ParamByName('pLteChave').AsInteger := dtlltechave.AsInteger;
          refeicoes.ParamByName('pValor').AsCurrency := uqtabelamestotal.AsCurrency;
          refeicoes.ParamByName('pChamada').AsInteger := 18;
          refeicoes.ParamByName('pConfirma').AsString := '0';
          refeicoes.ParamByName('pMesChave').AsString := '0';

          refeicoes.Open;

          vlMesChave := refeicoes.Fields[1].AsString;
          vlConfirma := refeicoes.Fields[0].AsString;

          fmd.Edit;
          fmddtfinal.Field.AsString := hoje(Application, ZCone);
          fmd.Post;

          ActAtualizar.Execute;
          if uqtabela.Locate('meschave', vlMesChave, []) then
          begin
            ModuloNFCe('EmiteNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);
            ActAtualizar.Execute;
            ModuloNFCe('ImprimeNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);

          end;

        End;

      end
      else
      begin
        ActAtualizar.Execute;
        vlMesChave := uqtabelameschave.AsString;
        ModuloNFCe('EmiteNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);
        ActAtualizar.Execute;
        ModuloNFCe('ImprimeNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);

      end;

    End
    Else
    Begin
      ShowMessage('ATENÇÃO: Este registro já é uma NFCe, só pode ser Reimpresso!');
    End;
  finally
    ActNFCeRefeicao.Enabled := true;
  end;

end;

procedure Tfrardo.ActNFCeRefIdentifExecute(Sender: TObject);

var
  vlMesChave: string;
  vlConfirma: string;
  smsg: string;
begin
  inherited;
  ActNFCeRefIdentif.Enabled := false;
  If (Self.uqtabelamesprotocolo.AsString = '') or (uqtabelatemcodigo.AsInteger = temNFEPendente) Then
  Begin
    vlMesChave := uqtabelameschave.AsString;

    if uqtabelamesrefeicao.AsInteger = 0 then
    begin
      cfg.Close;
      cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
      cfg.Open;

      smsg := 'Emitit como REFEIÇÃO ?';

      If Application.MessageBox(PChar(smsg), 'A T E N Ç Ã O:', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idYes Then
      Begin

        if ajustacliente(uqtabelaorcchave.AsString, Acesso.Usuario.ToString) then
        begin

          vlMesChave := '';

          refeicoes.Connection := ZCone;
          refeicoes.Close;
          refeicoes.ParamByName('pFlacodigo').AsInteger := Acesso.Filial;
          if uqtabelaorcchave.AsInteger = 0 then
          begin
            refeicoes.ParamByName('pTipoChave').AsInteger := 1;
            refeicoes.ParamByName('pChave').AsInteger := uqtabelameschave.AsInteger;
          end
          else
          begin
            refeicoes.ParamByName('pTipoChave').AsInteger := 0;
            refeicoes.ParamByName('pChave').AsInteger := uqtabelaorcchave.AsInteger;
          end;

          refeicoes.ParamByName('pClbCodigo').AsInteger := uqtabelaclbcodigo.AsInteger;
          refeicoes.ParamByName('pLteChave').AsInteger := dtlltechave.AsInteger;
          refeicoes.ParamByName('pValor').AsCurrency := uqtabelamestotal.AsCurrency;
          refeicoes.ParamByName('pChamada').AsInteger := 18;
          refeicoes.ParamByName('pConfirma').AsString := '0';
          refeicoes.ParamByName('pMesChave').AsString := '0';

          refeicoes.Open;

          vlMesChave := refeicoes.Fields[1].AsString;
          vlConfirma := refeicoes.Fields[0].AsString;

          fmd.Edit;
          fmddtfinal.Field.AsString := hoje(Application, ZCone);
          fmd.Post;

          mic.Close;
          mic.ParamByName('meschave').AsString := vlMesChave;
          mic.Open;

          if mic.RecordCount = 1 then
            mic.Edit
          else
            mic.Append;

          micidccodigo.AsString := vpMicEtdcodigo;
          micmeschave.AsString := uqtabelameschave.AsString;
          mic.Post;

          oic.Close;
          oic.ParamByName('orcchave').AsString := uqtabelaorcchave.AsString;
          oic.Open;

          if oic.IsEmpty then
            oic.Append
          else
            oic.Edit;
          oicidccodigo.AsString := vpMicEtdcodigo;
          oicorcchave.AsString := uqtabelaorcchave.AsString;
          oic.Post;

          ActAtualizar.Execute;
          if uqtabela.Locate('meschave', vlMesChave, []) then
          begin
            ModuloNFCe('EmiteNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);
            ActAtualizar.Execute;
            ModuloNFCe('ImprimeNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);

          end;

        end;
      End;

    end
    else
    begin
      ActAtualizar.Execute;
      vlMesChave := uqtabelameschave.AsString;
      ModuloNFCe('EmiteNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);
      ActAtualizar.Execute;
      ModuloNFCe('ImprimeNFCe', Acesso.Terminal.ToString, Self.uqtabelameschave.AsString, Acesso.Usuario.ToString);

    end;

  End
  Else
  Begin
    ShowMessage('ATENÇÃO: Este registro já é uma NFCe, só pode ser Reimpresso!');
  End;

  ActNFCeRefIdentif.Enabled := true;
end;

procedure Tfrardo.ActRenviaremailExecute(Sender: TObject);
Var
  retorno: String;
  arq: String;
  vmeschave: string;
Begin
  vmeschave := Self.uqtabelameschave.AsString;
  Inherited;

  arq := ''; // geranomenfe(vmeschave, self.uqtabelaflacodigo.AsString);

  modulonfe(arq, rnfGerarPrevia, vmeschave);
  ActAtualizar.Execute;

end;

procedure Tfrardo.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
Var
  bitmap: TBitmap;
  fixRect: TRect;
  bmpWidth: Integer;
  imgIndex: Integer;
Begin
  { inherited; }

  fixRect := Rect;

  If Odd(DSTabela.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      font.Style := [fsbold];
      // Font.Color := CLWHITE;
    End;

  If (Self.uqtabelasdecodigo.AsString = '02') Or (Self.uqtabelasdecodigo.AsString = '03') Or (Self.uqtabelasdecodigo.AsString = '04') Then
    DBGLista.Canvas.font.Color := clRed;

  { If (Self.uqtabelamesrefeicao.AsString = '1') then
    DBGLista.Canvas.font.color := clnavy
    else
    DBGLista.Canvas.font.color := clblack; }

  with TFriendly(DBGLista) do
    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID;
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfrardo.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  { if (not uqtabela.Executing) and (not uqtabela.Fetching) then
    begin }

  if uqtabelameschave.AsString <> '' then
  begin
    itm.Close;
    itm.ParamByName('flacodigo').AsInteger := Acesso.Filial;
    itm.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    itm.Open;

    dtl.Close;
    dtl.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    dtl.Open;

    dtlmda.Close;
    dtlmda.ParamByName('meschave').AsInteger := uqtabelameschave.AsInteger;
    dtlmda.Open;

  end;

  { end; }
end;

function Tfrardo.ModuloNFCe(vfuncao: string; vTrmCodigo: string; vmeschave: string; vClbCodigo: string): Boolean;
var
  ModuloNFCe: Tmodulonfce;
  vlRetorno: Boolean;
  vlPackNFCe: cardinal;
begin
  Result := false;
  vlPackNFCe := 0;
  vlPackNFCe := LoadPackage('modulos\mnfegourmet.bpl');
  if vlPackNFCe <> 0 then
    @ModuloNFCe := GetProcAddress(vlPackNFCe, PChar('modulonfce'));

  if Assigned(ModuloNFCe) then
  begin
    vlRetorno := ModuloNFCe(Application, Self.ZCone, vmeschave, vfuncao, Acesso, false, false, '');
    Result := vlRetorno;

  end;
  // DoUnLoadPackage(Application, vlPackNFCe);
End;

end.
