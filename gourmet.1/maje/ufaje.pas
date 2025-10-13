unit ufaje;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.Dialogs, System.SysUtils, ufuncoes,
  System.ImageList;

type
  Tfaje = class(Tfrmbase)
    Bvregistro: TBevel;
    registromeschave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registromesemissao: TDateField;
    registromesregistro: TDateField;
    registrotdfcodigo: TStringField;
    registrosdecodigo: TStringField;
    registromesserie: TStringField;
    registromesnumero: TIntegerField;
    registromeschavenfe: TStringField;
    registrotoecodigo: TIntegerField;
    registromesvalor: TFloatField;
    registromesdesconto: TFloatField;
    registromesprodutos: TFloatField;
    registromestotal: TFloatField;
    registrorefcodigo: TIntegerField;
    registromesfrete: TFloatField;
    registrotfpcodigo: TIntegerField;
    registromesseguro: TFloatField;
    registromesoutras: TFloatField;
    registromesbicm: TFloatField;
    registromesicm: TFloatField;
    registromesbicms: TFloatField;
    registromesicms: TFloatField;
    registromesipi: TFloatField;
    registromespis: TFloatField;
    registromescofins: TFloatField;
    registromespiss: TFloatField;
    registromescofinss: TFloatField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    registromesprotocolo: TStringField;
    registrotrfcodigo: TStringField;
    registrotemcodigo: TIntegerField;
    registroedritem: TIntegerField;
    registromesservicos: TFloatField;
    Label1: TLabel;
    meschave: TDBEdit;
    Label4: TLabel;
    mesregistro: TDBEdit;
    PlDetalhe: TPanel;
    PlItens: TPanel;
    listaitens: TDBGrid;
    plbotoesitens: TPanel;
    BActIncluir: TBitBtn;
    BActAlterar: TBitBtn;
    BActEcluir: TBitBtn;
    Panel3: TPanel;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmcstcodigo: TStringField;
    itmitmquantidade: TFloatField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmitmmovifisico: TStringField;
    itmtoecodigo: TIntegerField;
    itmcfocfop: TStringField;
    itmitmbicm: TFloatField;
    itmicmcodigo: TStringField;
    itmitmaliqicm: TStringField;
    itmitmicm: TFloatField;
    itmitmbicms: TFloatField;
    itmitmaliqicms: TFloatField;
    itmitmicms: TFloatField;
    itmitmapuipi: TStringField;
    itmcsicodigo: TStringField;
    itmceicodigo: TStringField;
    itmitmbipi: TFloatField;
    itmitmaliqipi: TFloatField;
    itmitmipi: TFloatField;
    itmcspcodigo: TStringField;
    itmitmbpis: TFloatField;
    itmitmaliqpis: TFloatField;
    itmitmpis: TFloatField;
    itmitmquantpis: TFloatField;
    itmitmaliqpisvalor: TFloatField;
    itmcsfcodigo: TStringField;
    itmitmbcofins: TFloatField;
    itmitmaliqcofins: TFloatField;
    itmitmquantcofins: TFloatField;
    itmitmaliqcofinsvalor: TFloatField;
    itmitmcofins: TFloatField;
    itmpcccodigo: TStringField;
    itmunicodigo: TIntegerField;
    itmpuncodigo: TIntegerField;
    itmpunidentificacao: TStringField;
    itmitmicmsvalor: TFloatField;
    itmprogtin: TStringField;
    itmunisimbolo: TStringField;
    itmitmcontendo: TFloatField;
    itmcfocfopdestinacao: TStringField;
    itmunicodigobase: TIntegerField;
    itmunisimbolobase: TStringField;
    itmitmcusto: TFloatField;
    itmitmfrete: TFloatField;
    itmitmseguro: TFloatField;
    itmitmoutras: TFloatField;
    itmitmdescontototal: TFloatField;
    Dvitm: TUniDataSource;
    cfgcfgetdempresa: TIntegerField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    pun: TUniQuery;
    punpuncodigo: TIntegerField;
    punprocodigo: TIntegerField;
    pununicodigo: TIntegerField;
    punpunidentificacao: TStringField;
    pununicodigobase: TIntegerField;
    punpunmultiplicador: TFloatField;
    punpunquantidade: TFloatField;
    punpunprecoav: TFloatField;
    punpunprecoap: TFloatField;
    punpuncusto: TFloatField;
    punpunmargem: TFloatField;
    punpunpesobruto: TFloatField;
    punpunpesoliq: TFloatField;
    pundgrcodigo: TIntegerField;
    punpunbarra: TStringField;
    puntuncodigo: TIntegerField;
    punpununitrib: TIntegerField;
    punpunqtdtrib: TFloatField;
    Uni: TUniQuery;
    uniunicodigo: TIntegerField;
    uniunisimbolo: TStringField;
    uniuninome: TStringField;
    icm: TUniQuery;
    icmicmcodigo: TStringField;
    icmicmaliquotas: TStringField;
    itmitmquanticontada: TFloatField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure BActIncluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BActAlterarClick(Sender: TObject);
    procedure BActEcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    vpAcao: string;
    function RegistroAcessoOperacao(vactcodigo, vMotivo: string; vtabela:string='';vregistro:string=''): Boolean;

  end;

  TliberacaoRFI = function(AOwner: TComponent; conexao: TUniConnection; vusuario: string; vactcodigo: string; vMotivo: string; vtdecodigo, vorcchave, vmeschave: String;
    vltecodigo, vddfcodigo: String; vForcaLogin: Boolean = false;vtabela:string='';vregistro:string=''): string;

var
  faje: Tfaje;

implementation

{$R *.dfm}

uses ufitmaje, ufimpaje;

// Início ID do Módulo faje
const
  vPlIdMd = '02.04.05.002-02';

function Tfaje.RegistroAcessoOperacao(vactcodigo: string; vMotivo: string; vtabela:string='';vregistro:string=''): Boolean;
var
  auto: TliberacaoRFI;
  vRetornoUsr: string;
  vLiberacao: Boolean;
  Pack: Cardinal;
begin

  vLiberacao := True;

  Pack := LoadPackage('modulos\mlia.bpl');
  if Pack <> 0 then
    try
      @auto := GetProcAddress(Pack, PChar('liberacao'));

      if Assigned(auto) then
      begin
        vRetornoUsr := auto(Application, Self.zcone, Acesso.Usuario.ToString, vactcodigo, vMotivo, '', '', '', '', '', True);

        if (vRetornoUsr = '0') or (vRetornoUsr = '') then // retornou NÃO AUTORIZADO
          vLiberacao := false;
      end;
    finally
      DoUnLoadPackage(Pack);
    end;

  Result := vLiberacao;
end;

procedure Tfaje.BActAlterarClick(Sender: TObject);

begin
  inherited;

  if RegistroAcessoOperacao(vpAcao, 'Registro') then
  begin

    If registro.State <> dsBrowse Then
      registro.Post;

    If Not itm.active Then
      itm.Open;

    CriaFormulario(Tfitmaje, Self.itmitmchave.AsString, Self.registromeschave.AsString);

    itm.Refresh;

  end;
end;

procedure Tfaje.BActEcluirClick(Sender: TObject);
begin
  inherited;

  If Application.MessageBox(PChar('Confirma a exclusão do registro selecionado?'), PChar('Excluir'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2) = IDYES Then
  Begin
    Self.itm.Delete;

  End;

end;

procedure Tfaje.BActIncluirClick(Sender: TObject);
var
  ult: Integer;
begin
  inherited;

  if (Self.registromeschavenfe.AsString = '') or (Self.registromeschavenfe.AsString = '0') then
  begin

    If registro.State <> dsBrowse Then
      registro.Post;

    If Not itm.active Then
      itm.Open;

    consulta.Close;
    consulta.SQL.Text := 'select sum(itmtotal) as total from itm where meschave=' + Self.registromeschave.AsString + ' group by meschave';
    consulta.Open;

    CriaFormulario(Tfitmaje, '', Self.registromeschave.AsString);

    consulta.Close;
    consulta.SQL.Text := 'select max(itmchave) as ultimo from itm where meschave=' + Self.registromeschave.AsString;
    consulta.Open;

    ult := 0;

    if consulta.Fields[0].AsInteger > 0 then
      ult := consulta.Fields[0].AsInteger;

    itm.Refresh;

  end
  else
    ShowMessage('Este registro já é uma NFE emitida, não é possível incluir mais itens!');

  if ult > 0 then
    itm.Locate('itmchave', ult, []);

  BActIncluir.SetFocus;

end;

procedure Tfaje.bconfirmaClick(Sender: TObject);
begin
  if Self.Dvitm.DataSet.RecordCount = 0 then
  begin
    ShowMessage('Não é possível salvar ajuste sem registros!');
    Self.bcancela.Click;
  end
  else
  begin
    inherited;
  end;

end;

procedure Tfaje.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;
  if psituacao.Caption = 'Alterando' then
  begin
    If Not itm.active Then
      itm.Open;

  end;
  if vChaveMestre <> '' then
  begin
    vpAcao := vChaveMestre;
    vChaveMestre := '';
  end;

end;

procedure Tfaje.listaitensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);

end;

procedure Tfaje.registroAfterInsert(DataSet: TDataSet);
var
  vlCfop: string;
begin
  inherited;
  registrosdecodigo.AsString := '00';
  registromesvalor.AsFloat := 0;
  registromesdesconto.AsFloat := 0;
  registromesprodutos.AsFloat := 0;
  registromesservicos.AsFloat := 0;
  registromestotal.AsFloat := 0;
  registromesfrete.AsFloat := 0;
  registromesseguro.AsFloat := 0;
  registromesoutras.AsFloat := 0;
  registromesbicm.AsFloat := 0;
  registromesicm.AsFloat := 0;
  registromesbicms.AsFloat := 0;
  registromesicms.AsFloat := 0;
  registromesipi.AsFloat := 0;
  registromespis.AsFloat := 0;
  registromescofins.AsFloat := 0;
  registromespiss.AsFloat := 0;
  registromescofinss.AsFloat := 0;
  registrorefcodigo.AsInteger := 1;
  registroclbcodigo.AsInteger := Acesso.Usuario;
  registrotrmcodigo.AsInteger := Acesso.Terminal;
  Self.registromesregistro.AsFloat := Date;
  Self.registromesemissao.AsFloat := Date;
  Self.registrotemcodigo.AsInteger := 1;
  Self.registromeschavenfe.AsString := '0';
  Self.registrotrfcodigo.AsInteger := 1;
  Self.registromesserie.AsInteger := 0;
  Self.registromesnumero.AsInteger := 0;
  Self.registrotfpcodigo.AsInteger := 9;
  cfg.Close;
  cfg.ParamByName('cfgcodigo').AsInteger := Acesso.Filial;
  cfg.Open;
  Self.registroetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
  registroedritem.AsInteger := 1;
  registrotdfcodigo.AsString := 'AE';
  consulta.Close;
  consulta.SQL.Text := 'select toecodigo from toe where toecfopsaida=' + chr(39) + '1.000' + chr(39);
  consulta.Open;
  vlCfop := consulta.Fields[0].AsString;
  consulta.Close;

  registrotoecodigo.AsString := vlCfop;

end;

end.
