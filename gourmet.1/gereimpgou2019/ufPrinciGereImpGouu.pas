unit ufPrinciGereImpGouu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, frxClass, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.VCLUI.Wait, Data.DB, FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.AppEvnts;

type
  TfPrinciGereImpGou = class(TForm)
    plCozinha: TPanel;
    plHora: TPanel;
    BtnImpressao: TButton;
    Button3: TButton;
    btlimpar: TButton;
    plTopo: TPanel;
    sbTop: TScrollBox;
    plFalhaBanco: TPanel;
    erros: TMemo;
    pedidos: TMemo;
    mensagens: TStatusBar;
    inicializar: TTimer;
    tmVerificarPedidos: TTimer;
    frxReport1: TfrxReport;
    conexao: TFDConnection;
    FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink;
    FDQuery1: TFDQuery;
    ApplicationEvents1: TApplicationEvents;
    procedure Button3Click(Sender: TObject);
    procedure btlimparClick(Sender: TObject);
    procedure BtnImpressaoClick(Sender: TObject);
    procedure conexaoBeforeConnect(Sender: TObject);
    procedure inicializarTimer(Sender: TObject);
    procedure conexaoAfterConnect(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure tmVerificarPedidosTimer(Sender: TObject);
    procedure ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
  private
    { Private declarations }

    vpConexaoServidor: string;
    vpConexaoUsuario: string;
    vpConexaoSenha: string;
    vpConexaoPorta: string;
    vpConexaoDatabase: string;
    vpConexaoDriver: string;
    procedure InicializaImpressoras;
    procedure VerificaPedidos;

  public
    { Public declarations }
    vpImpressora: string;
  end;

var
  fPrinciGereImpGou: TfPrinciGereImpGou;
  LastTick: DWORD;

implementation

{$R *.dfm}

procedure TrimAppMemorySize;
var
  MainHandle: THandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
  end;
  Application.ProcessMessages;
end;

procedure TfPrinciGereImpGou.ApplicationEvents1Message(var Msg: tagMSG; var Handled: Boolean);
begin
  case Msg.message of
    WM_RBUTTONDOWN, WM_RBUTTONDBLCLK, WM_LBUTTONDOWN, WM_LBUTTONDBLCLK, WM_KEYDOWN:
      LastTick := GetTickCount;
  end;
end;

procedure TfPrinciGereImpGou.btlimparClick(Sender: TObject);
begin
  erros.Lines.Clear;
end;

procedure TfPrinciGereImpGou.BtnImpressaoClick(Sender: TObject);
begin
  if BtnImpressao.Tag = 0 then
  begin
    BtnImpressao.Tag := 1;
    tmVerificarPedidos.ENABLED := false;
    BtnImpressao.Caption := 'Iniciar';
  end
  else
  begin
    BtnImpressao.Tag := 0;
    tmVerificarPedidos.ENABLED := True;
    BtnImpressao.Caption := 'Pausar';
  end;

end;

procedure TfPrinciGereImpGou.Button3Click(Sender: TObject);
begin
  close;
end;

procedure TfPrinciGereImpGou.conexaoAfterConnect(Sender: TObject);
begin
  mensagens.panels[0].text := 'Conectado';
end;

procedure TfPrinciGereImpGou.conexaoBeforeConnect(Sender: TObject);
begin

  try
    // Passa os parâmetros para o objeto Conexão
    conexao.Connected := false;
    conexao.LoginPrompt := false;
    conexao.Params.Clear;
    conexao.Params.Add('hostname=' + vpConexaoServidor);
    conexao.Params.Add('user_name=' + vpConexaoUsuario);
    conexao.Params.Add('password=' + vpConexaoSenha);
    conexao.Params.Add('port=' + vpConexaoPorta);
    conexao.Params.Add('Database=' + vpConexaoDatabase);
    conexao.Params.Add('DriverID=' + vpConexaoDriver);
  Except
    on E: Exception do
      ShowMessage('Erro ao carregar parâmetros de conexão!'#13#10 + E.message);
  end;

end;

procedure TfPrinciGereImpGou.FormCreate(Sender: TObject);
begin
  vpConexaoServidor := '127.0.0.1';
  vpConexaoUsuario := 'root';
  vpConexaoSenha := 'xda973';
  vpConexaoPorta := '3306';
  vpConexaoDatabase := 'kuskao0201';
  vpConexaoDriver := 'MySQl';
  inicializar.ENABLED := True;

end;

procedure TfPrinciGereImpGou.inicializarTimer(Sender: TObject);
begin
  conexao.Connected := True;
  inicializar.ENABLED := false;
  tmVerificarPedidos.ENABLED := True;
end;

procedure TfPrinciGereImpGou.tmVerificarPedidosTimer(Sender: TObject);
begin
  try
    if (((GetTickCount - LastTick) / 1000) > 120) or (Self.WindowState = wsMinimized) then
    begin
      TrimAppMemorySize;
    end;

    tmVerificarPedidos.ENABLED := false;

    plHora.Caption := timetostr(time);
    Application.ProcessMessages;

    InicializaImpressoras;

    VerificaPedidos;

  finally
    tmVerificarPedidos.ENABLED := True;
  end;

end;

procedure TfPrinciGereImpGou.VerificaPedidos;
var
  vlTentativas: Integer;
  vlCznCodigo: Integer;
  vlSql: String;
  vlImprime: Integer;

begin

  { imm.close;
    imm.ParamByName('cznchave').AsString := vpCznChave;

    if vpImpressora <> '999' then
    begin
    imm.FilterSQL := 'gri.tcicodigo=' + vpImpressora;
    end;

    imm.Open;

    vlTentativas := 0;
    vlSql := imm.SQL.Text;

    imm.First;
    while not imm.Eof do
    begin

    consulta.close;
    consulta.SQL.Text := 'select griimprimeauto from gri where grpcodigo=' + immgrpcodigo.AsString;
    consulta.Open;

    vlImprime := consulta.FieldByName('griimprimeauto').AsInteger;

    if ImprimePedido(immorcchave.AsString, vlImprime) then
    begin
    vlTentativas := 0;
    exit;
    end
    else
    begin
    vlTentativas := vlTentativas + 1;

    if vlTentativas > 5 then
    begin
    erros.Lines.Add('ERRO - Tentou e não imprimiu: ' + inttostr(vlTentativas) + ' Orc.: ' + immorcchave.AsString);
    vlTentativas := 0;
    imm.Next;
    end;
    end;
    // imm.next;
    end; }
end;

procedure TfPrinciGereImpGou.InicializaImpressoras;
var
  vlIdentificacao: string;
  vlTciPorta: string;
  vlTciCodigo: string;

  vlRetorno: Integer;
  vlRetornoStr: String;

  gri: TFDQuery;

begin
  try
    gri := TFDQuery.Create(Self);
    gri.Connection := conexao;

    gri.SQL.text := 'SELECT DISTINCT ';
    gri.SQL.Add('tci.tcicodigo ');
    gri.SQL.Add(',tci.tciporta ');
    gri.SQL.Add(',CONCAT(mit.mitidentificacao, ' + QuotedStr('[') + ' ,tci.tciporta, ' + QuotedStr(']') + ') mitidentificacao ');
    gri.SQL.Add(',gripedidoaux ');
    gri.SQL.Add('FROM tci ');
    gri.SQL.Add('INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo  ');
    gri.SQL.Add('INNER JOIN gri ');
    gri.SQL.Add('ON tci.tcicodigo = gri.tcicodigo and gri.griimprimeauto=1 ');

    if (vpImpressora <> '999') and (vpImpressora <> '') then
    begin
      gri.SQL.Add(' where tci.tcicodigo=' + vpImpressora);
    end;

    gri.Open;

    gri.First;
    while not gri.Eof do
    begin

      vlIdentificacao := gri.FieldByName('mitidentificacao').AsString;
      vlTciPorta := gri.FieldByName('tciporta').AsString;
      vlTciCodigo := gri.FieldByName('tcicodigo').AsString;

      if Self.FindComponent('plimp' + vlTciCodigo) <> nil then
      begin
        vlRetorno := 0;

        // vlRetornoStr := AtualizaIMpressora(vlTciPorta);

        if vlRetornoStr <> '' then
          vlRetorno := StrToInt(vlRetornoStr);

        { consulta.close;
          consulta.Connection := conexao;
          consulta.SQL.text := 'update gri set grisituacao=' + vlRetornoStr + ' where ' + 'tcicodigo=' + vlTciCodigo;
          consulta.ExecSQL;

          AjustaPainelImpressora(vlTciCodigo, vlIdentificacao, vlTciPorta, vlRetorno); }

        Application.ProcessMessages;
      end;

      gri.Next;

    end;

  finally
    gri.close;
    freeandnil(gri);
  end;
end;

end.
