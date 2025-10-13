unit ufprincigereimpgoufast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  IdBaseComponent, IdAntiFreezeBase, IdAntiFreeze, System.ImageList,
  Vcl.ImgList, Data.DB, frxClass, frxBarcode, frxDesgn, frxDBSet, MemDS,
  DBAccess, Uni, frxExportImage, frxDACComponents, frxUniDACComponents,
  UniProvider, MySQLUniProvider, DASQLMonitor, UniSQLMonitor, shellapi, registry, inifiles,
  System.DateUtils, Vcl.Printers, System.StrUtils;

// Declarando a MP2032.DLL e sua funções em Delphi
Function IniciaPorta(Porta: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FechaPorta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaEsperaImpressao(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraModeloImpressora(ModeloImpressora: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function LeituraStatusEstendido(A: Array Of Byte): Integer; Stdcall; Far; External 'MP2032.DLL';

type
  Tfprincigereimpgoufast = class(TForm)
    plCozinha: TPanel;
    plHora: TPanel;
    BtnImpressao: TButton;
    Button3: TButton;
    btlimpar: TButton;
    plTopo: TPanel;
    sbTop: TScrollBox;
    Panel1: TPanel;
    mmFilaPedidos: TMemo;
    Panel2: TPanel;
    mensagens: TStatusBar;
    plFalhaBanco: TPanel;
    erros: TMemo;
    pedidos: TMemo;
    UniSQLMonitor: TUniSQLMonitor;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    frxUniDACComponents: TfrxUniDACComponents;
    frxBMPExport: TfrxBMPExport;
    situacao: TUniQuery;
    frxDados: TfrxDBDataset;
    frxDesigner: TfrxDesigner;
    inicializar: TTimer;
    gri: TUniQuery;
    gritcicodigo: TIntegerField;
    gritciporta: TStringField;
    grimitidentificacao: TStringField;
    grigripedidoaux: TIntegerField;
    tmVerificarPedidos: TTimer;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmgoupedidelivery: TIntegerField;
    cfgcfgmgoupedideliveryaux: TIntegerField;
    czn: TUniQuery;
    czncznchave: TIntegerField;
    frxBarCodeObject1: TfrxBarCodeObject;
    relatorio: TfrxReport;
    immtempo: TUniQuery;
    sqlimprime: TUniQuery;
    sqlimprimegriimprimeauto: TIntegerField;
    sqlimprimefnccodigo: TIntegerField;
    sqlimprimegripedidoaux: TIntegerField;
    sqlimprimeimmchave: TIntegerField;
    jaimpresso: TUniQuery;
    vias: TUniQuery;
    imm: TUniQuery;
    immorcchave: TIntegerField;
    immfoacodigo: TIntegerField;
    immstocodigo: TIntegerField;
    immrelarquivo: TBlobField;
    immorcobs: TStringField;
    immorcgeralav: TFloatField;
    immgricodigo: TIntegerField;
    immgrpcodigo: TIntegerField;
    immimmchave: TIntegerField;
    immimmnumepedido: TIntegerField;
    ito: TUniQuery;
    itoorcchave: TIntegerField;
    itoimmnumepedido: TIntegerField;
    itotcicodigo: TIntegerField;
    itotciporta: TStringField;
    itomitidentificacao: TStringField;
    itofoacodigo: TIntegerField;
    itopedidoaux: TIntegerField;
    itoitochave: TIntegerField;
    itoimmchave: TIntegerField;
    itoaux: TUniQuery;
    tcisituacao: TUniQuery;
    ImageList1: TImageList;
    IdAntiFreeze1: TIdAntiFreeze;
    imw: TUniQuery;
    imwimwchave: TIntegerField;
    imwitochave: TIntegerField;
    imwimwhoranotificadopedido: TDateTimeField;
    imwimwhorasaidadopedido: TDateTimeField;
    imwimwhoraentregadopedido: TDateTimeField;
    consulta: TUniQuery;
    mit: TUniQuery;
    mitmitcodigo: TIntegerField;
    mitmitidentificacao: TStringField;
    immmitidentificacao: TStringField;
    TimerImpressora01: TTimer;
    TimerImpressora02: TTimer;
    TimerImpressora03: TTimer;
    TimerImpressora04: TTimer;
    TimerImpressora05: TTimer;
    TimerImpressora06: TTimer;
    TimerImpressora07: TTimer;
    TimerImpressora08: TTimer;
    TimerImpressora09: TTimer;
    TimerImpressora10: TTimer;
    plRelagios: TPanel;
    ver10: TLabel;
    ver09: TLabel;
    ver08: TLabel;
    ver07: TLabel;
    ver06: TLabel;
    ver05: TLabel;
    ver04: TLabel;
    ver03: TLabel;
    ver02: TLabel;
    ver01: TLabel;
    procedure tmVerificarPedidosTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure inicializarTimer(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btlimparClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure BtnImpressaoClick(Sender: TObject);
    procedure TimerImpressora01Timer(Sender: TObject);
    procedure TimerImpressora02Timer(Sender: TObject);
    procedure TimerImpressora03Timer(Sender: TObject);
    procedure TimerImpressora04Timer(Sender: TObject);
    procedure TimerImpressora05Timer(Sender: TObject);
    procedure TimerImpressora06Timer(Sender: TObject);
    procedure TimerImpressora07Timer(Sender: TObject);
    procedure TimerImpressora08Timer(Sender: TObject);
    procedure TimerImpressora09Timer(Sender: TObject);
    procedure TimerImpressora10Timer(Sender: TObject);
  private
    procedure ajustaPaineisImp(vquery: TUniQuery);
    procedure AjustaPainelImpressora(vTciCodigo, vlIdentificacao, vlTciPorta: string; vlRetorno: Integer);
    procedure AjustaPaines;
    function AjustaSituacaoCozinha: Boolean;
    procedure AtualizaPaineisImpressoras;
    function BaixaArqRel(vFoaCodigo: string; vrelarquivo: TBlobField): String;
    function ConsultaEstadoImpressora(vporta: string): string;
    function enviaBMPImpressora(vlNumePedido: Integer; vporta: string; vlRetorno: Integer; vlimms, vTciCodigo: string): Boolean;
    procedure RunOnStartup(sProgTitle, sCmdLine: String; bRunOnce: Boolean);
    function ConsultaImpressora(Porta: string): String;
    procedure conectabanco;
    function EstadoImpressora(vporta: string): Integer;
    function ImprimePedido(vOrcChave: string; vFoaCodigo: string; vrelarquivo: TBlobField; vimmorigem: TUniQuery; vImprime: Integer = 1): Boolean;

    procedure VerificaPedidos;
    function EstadoMP2032(vporta: string): Integer;
    procedure VerificaPedidosImpressora(vImpressora: string);
    procedure VerificaPedidosImpressora01(vImpressora: string);

    { Private declarations }
  public
    { Public declarations }

    vpImpressora01: string;
    vpImpressora02: string;
    vpImpressora03: string;
    vpImpressora04: string;
    vpImpressora05: string;
    vpImpressora06: string;
    vpImpressora07: string;
    vpImpressora08: string;
    vpImpressora09: string;
    vpImpressora10: string;

    vpPastaDia: string;
    vpCozinhaAberta: Boolean;
    vpCznChave: string;
    vpImpressora: String;
    vpDebug: String;
  end;

var
  fprincigereimpgoufast: Tfprincigereimpgoufast;

implementation

uses
  ufimprimefast;

{$R *.dfm}

procedure TrimAppMemorySize;
var
  MainHandle: thandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, False, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
  end;
  Application.ProcessMessages;
end;

function Tfprincigereimpgoufast.AjustaSituacaoCozinha: Boolean;
begin

  result := False;

  czn.close;
  czn.Open;

  if czn.IsEmpty then
  begin
    plCozinha.Caption := 'Atenção: A Cozinha não esta aberta, solicite a abertura da Cozinha!';
    plCozinha.Font.Color := clYellow;
    plCozinha.Color := clred;

    vpCozinhaAberta := False;
    Application.ProcessMessages;
  end
  else
  begin

    { cria pasta para salvar as imagens dos pedidos do dia }
    vpPastaDia := ExtractFilePath(Application.ExeName) + 'pedidos';
    vpPastaDia := vpPastaDia + '\' + formatfloat('000000', czncznchave.AsInteger);

    if not DirectoryExists(vpPastaDia) then
    begin
      ForceDirectories(vpPastaDia);
    end;
    plCozinha.Caption := 'Cozinha aberta. Bom Trabalho!';
    plCozinha.Font.Color := clWhite;
    plCozinha.Color := clgreen;

    vpCozinhaAberta := True;
    Application.ProcessMessages;
    vpCznChave := czncznchave.AsString;
  end;
  result := vpCozinhaAberta;

end;

procedure Tfprincigereimpgoufast.AjustaPainelImpressora(vTciCodigo: string; vlIdentificacao: string; vlTciPorta: string; vlRetorno: Integer);
begin

  case vlRetorno of
    0:
      begin

        tcisituacao.close;
        tcisituacao.SQL.Text := 'select tciimprimindo from tci where tcicodigo=' + vTciCodigo;
        tcisituacao.Open;

        if tcisituacao.FieldByName('tciimprimindo').AsString <> '' then
        begin

          (self.FindComponent('plimp' + vTciCodigo) as TPanel).Color := clnavy;
          (self.FindComponent('plimp' + vTciCodigo) as TPanel).Font.Color := clWhite;
          (self.FindComponent('plimp' + vTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( IMPRIMINDO )';

        end
        else
        begin

          if tcisituacao.FieldByName('tciimprimindo').AsString <> '' then
          begin
            (self.FindComponent('plimp' + vTciCodigo) as TPanel).Color := clgreen;
            (self.FindComponent('plimp' + vTciCodigo) as TPanel).Font.Color := clWhite;
            (self.FindComponent('plimp' + vTciCodigo) as TPanel).Caption := vlIdentificacao + ' (Porta: ' + vlTciPorta + ')';
          end
          else
          begin

            (self.FindComponent('plimp' + vTciCodigo) as TPanel).Color := clred;
            (self.FindComponent('plimp' + vTciCodigo) as TPanel).Font.Color := clYellow;
            (self.FindComponent('plimp' + vTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( FALHA COMUNICAÇÃO' + ' )';
          end;

        end;

      end;
    1:
      begin

        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Color := clnavy;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Font.Color := clYellow;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( FALHA COMUNICAÇÃO' + ' )';

      end;
    5:
      begin
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Color := clYellow;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Font.Color := clred;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( POUCO PAPEL' + ' )';
      end;
    9:
      begin
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Color := clGray;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Font.Color := clred;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( TAMPA ABERTA' + ' )';
      end;
    24:
      begin
        // impressora ativa e on-line
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Color := clgreen;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Font.Color := clWhite;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Caption := vlIdentificacao + ' (Porta: ' + vlTciPorta + ')';
      end;
    32:
      begin
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Color := clblack;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Font.Color := clred;
        (self.FindComponent('plimp' + vTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( SEM PAPEL' + ' )';
      end;
  end;

end;

Procedure ExecuteProgram(Nome, Parametros: String);
Var
  Comando: Array [0 .. 1024] of Char;
  Parms: Array [0 .. 1024] of Char;
Begin
  StrPCopy(Comando, Nome);
  StrPCopy(Parms, Parametros);
  ShellExecute(0, nil, Comando, Parms, nil, SW_SHOWMINIMIZED);
End;

function Tfprincigereimpgoufast.enviaBMPImpressora(vlNumePedido: Integer; vporta: string; vlRetorno: Integer; vlimms: string; vTciCodigo: string): Boolean;
var
  vlArqBmp: string;
  vlArqFast: string;
  vlImpresso: Boolean;
  vlTentativas: Integer;
  vlRetImp: string;
  vlVias: Integer;
  vlOrcvias: Integer;
begin

  { imprime a imagem do pedido na impressora }

  try

    vlImpresso := False;

    if sqlimprimegripedidoaux.AsInteger = 1 then
    begin
      vlArqBmp := ExtractFilePath(frxBMPExport.filename) + 'ped' + formatfloat('0000', vlNumePedido) + 'a.bmp';
      vlArqFast := ExtractFilePath(frxBMPExport.filename) + 'ped' + formatfloat('0000', vlNumePedido) + 'a.fp3';
    end
    else
    begin
      vlArqBmp := ExtractFilePath(frxBMPExport.filename) + 'ped' + formatfloat('0000', vlNumePedido) + '.bmp';
      vlArqFast := ExtractFilePath(frxBMPExport.filename) + 'ped' + formatfloat('0000', vlNumePedido) + '.fp3';
    end;

    if fileexists(vlArqBmp) then
    begin

      vias.close;
      // vias.SQL.Text := 'select grivias orcvias from orc,ito,imm,gri where  imm.tcicodigo=gri.tcicodigo and orc.orcchave=ito.orcchave and ito.itochave=imm.itochave and  immnumepedido=' + inttostr(vlNumePedido) + ' limit 1';
      vias.SQL.Text :=
        'SELECT grivias orcvias from orc,ito,imm,gri,pro WHERE ito.procodigo=pro.procodigo and gri.grpcodigo=pro.grpcodigo and imm.tcicodigo=gri.tcicodigo and orc.orcchave=ito.orcchave and ito.itochave=imm.itochave and  immnumepedido='
        + inttostr(vlNumePedido) + ' limit 1';
      vias.Open;

      if vias.FieldByName('orcvias').AsInteger = 0 then
        vlOrcvias := 1
      else
        vlOrcvias := vias.FieldByName('orcvias').AsInteger;

      for vlVias := 1 to vlOrcvias do
      begin

        if fileexists(ExtractFilePath(Application.ExeName) + 'impgoufast.exe') then
        begin
          ExecuteProgram(ExtractFilePath(Application.ExeName) + 'impgoufast.exe ', vlArqFast + ' ' + vporta + ' ' + vlimms + ' ' + vTciCodigo);
        end
        else
        begin
          ExecuteProgram(ExtractFilePath(Application.ExeName) + 'impgou.exe ', vlArqBmp + ' ' + vporta + ' ' + vlimms + ' ' + vTciCodigo);
        end;
        vlImpresso := True;

        if vlOrcvias > 1 then
        begin

          // sleep(200 * vlOrcvias);
        end;

      end;

    end;

  finally
    result := vlImpresso;

  end;
end;

procedure Tfprincigereimpgoufast.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  tmVerificarPedidos.Enabled := False;
  sleep(5000);
  CanClose := True;

end;

procedure Tfprincigereimpgoufast.FormShow(Sender: TObject);
begin
  inicializar.Enabled := True;
  Screen.Cursors[crSQLWait] := Screen.Cursors[crDefault];
end;

procedure Tfprincigereimpgoufast.inicializarTimer(Sender: TObject);
var
  i: Integer;
begin
  inicializar.Enabled := False;
  // cria um mutex usando um nome único
  CreateMutex(nil, False, 'GereImpGouMulti.OnlyOne');
  // verifica se houve erro na criação
  if GetLastError = ERROR_ALREADY_EXISTS then
  begin
    MessageBox(0, 'Este programa já está sendo executado', 'Aviso', MB_ICONSTOP);
    Halt(0); // cancela execução
  end
  else
  begin

    RunOnStartup('Gerenciador Impressão Mizio Sistemas', Application.ExeName, False);

    for i := 0 to self.ComponentCount - 1 do
    begin
      if self.Components[i] is TUniQuery then
        (self.Components[i] as TUniQuery).Connection := Conexao;

    end;

    conectabanco;

    AjustaSituacaoCozinha;

    tmVerificarPedidos.Enabled := True;

  end;

end;

Procedure Tfprincigereimpgoufast.RunOnStartup(sProgTitle, sCmdLine: String; bRunOnce: Boolean);
Var
  sKey: String;
  Reg: TRegIniFile;
Begin
  Try
    If (bRunOnce) Then
      sKey := 'mizioGerenciaImpress'
    Else
      sKey := '';
    Reg := TRegIniFile.Create('');
    Reg.RootKey := HKEY_LOCAL_MACHINE;
    Reg.WriteString('Software\Microsoft\Windows\CurrentVersion\Run' + sKey + #0, sProgTitle, sCmdLine);

    Reg.Free;
  Except
    Reg.Free;
  End;
End;

procedure Tfprincigereimpgoufast.TimerImpressora01Timer(Sender: TObject);
begin

  if vpImpressora01 <> '' then
  begin
    VerificaPedidosImpressora01(vpImpressora01);
  end;

  ver01.Caption := datetimetostr(now());

end;

procedure Tfprincigereimpgoufast.TimerImpressora02Timer(Sender: TObject);
begin
  if vpImpressora02 <> '' then
  begin
    VerificaPedidosImpressora(vpImpressora02);
  end;

  ver02.Caption := datetimetostr(now());
end;

procedure Tfprincigereimpgoufast.TimerImpressora03Timer(Sender: TObject);
begin

  if vpImpressora03 <> '' then
  begin
    VerificaPedidosImpressora(vpImpressora03);
  end;

  ver03.Caption := datetimetostr(now());
end;

procedure Tfprincigereimpgoufast.TimerImpressora04Timer(Sender: TObject);
begin
  if vpImpressora04 <> '' then
  begin
    VerificaPedidosImpressora(vpImpressora04);
  end;

  ver04.Caption := datetimetostr(now());
end;

procedure Tfprincigereimpgoufast.TimerImpressora05Timer(Sender: TObject);
begin
  if vpImpressora05 <> '' then
  begin
    VerificaPedidosImpressora(vpImpressora05);
  end;

  ver05.Caption := datetimetostr(now());
end;

procedure Tfprincigereimpgoufast.TimerImpressora06Timer(Sender: TObject);
begin
  if vpImpressora06 <> '' then
  begin
    VerificaPedidosImpressora(vpImpressora06);
  end;

  ver06.Caption := datetimetostr(now());
end;

procedure Tfprincigereimpgoufast.TimerImpressora07Timer(Sender: TObject);
begin
  if vpImpressora07 <> '' then
  begin
    VerificaPedidosImpressora(vpImpressora07);
  end;

  ver07.Caption := datetimetostr(now());
end;

procedure Tfprincigereimpgoufast.TimerImpressora08Timer(Sender: TObject);
begin
  if vpImpressora08 <> '' then
  begin
    VerificaPedidosImpressora(vpImpressora08);
  end;

  ver08.Caption := datetimetostr(now());
end;

procedure Tfprincigereimpgoufast.TimerImpressora09Timer(Sender: TObject);
begin
  if vpImpressora09 <> '' then
  begin
    VerificaPedidosImpressora(vpImpressora09);
  end;

  ver09.Caption := datetimetostr(now());
end;

procedure Tfprincigereimpgoufast.TimerImpressora10Timer(Sender: TObject);
begin
  if vpImpressora10 <> '' then
  begin
    VerificaPedidosImpressora(vpImpressora10);
  end;

  ver10.Caption := datetimetostr(now());
end;

procedure Tfprincigereimpgoufast.tmVerificarPedidosTimer(Sender: TObject);
var

  vlListaImpressoras: tstringList;
  vlNomeImpressora: string;

  i: Integer;
begin
  TrimAppMemorySize;
  try

    vlListaImpressoras := tstringList.Create;

    imm.close;
    imm.ParamByName('cznchave').AsString := vpCznChave;
    imm.Open;

    imm.First;
    while not imm.Eof do
    begin
      vlNomeImpressora := immmitidentificacao.AsString;

      if pos(vlNomeImpressora, vlListaImpressoras.Text) = 0 then
      begin
        vlListaImpressoras.Add(vlNomeImpressora);
      end;

      imm.Next;
    end;

    vpImpressora01 := '';
    vpImpressora02 := '';
    vpImpressora03 := '';
    vpImpressora04 := '';
    vpImpressora05 := '';
    vpImpressora06 := '';
    vpImpressora07 := '';
    vpImpressora08 := '';
    vpImpressora09 := '';
    vpImpressora10 := '';

    for i := 0 to vlListaImpressoras.Count - 1 do
    begin
      if i = 0 then
      begin
        vpImpressora01 := vlListaImpressoras.Strings[i];
      end;
      if i = 1 then
      begin
        vpImpressora02 := vlListaImpressoras.Strings[i];
      end;

      if i = 2 then
      begin
        vpImpressora03 := vlListaImpressoras.Strings[i];
      end;

      if i = 3 then
      begin
        vpImpressora03 := vlListaImpressoras.Strings[i];
      end;

      if i = 4 then
      begin
        vpImpressora05 := vlListaImpressoras.Strings[i];
      end;

      if i = 5 then
      begin
        vpImpressora06 := vlListaImpressoras.Strings[i];
      end;

      if i = 6 then
      begin
        vpImpressora07 := vlListaImpressoras.Strings[i];
      end;

      if i = 7 then
      begin
        vpImpressora08 := vlListaImpressoras.Strings[i];
      end;

      if i = 8 then
      begin
        vpImpressora09 := vlListaImpressoras.Strings[i];
      end;
      if i = 9 then
      begin
        vpImpressora10 := vlListaImpressoras.Strings[i];
      end;

    end;

    if AjustaSituacaoCozinha then
    begin

      {TimerImpressora01.Enabled := True;
       TimerImpressora02.Enabled := True;
        TimerImpressora03.Enabled := True;
        TimerImpressora04.Enabled := True;
        TimerImpressora05.Enabled := True;
        TimerImpressora06.Enabled := True;
        TimerImpressora07.Enabled := True;
        TimerImpressora08.Enabled := True;
        TimerImpressora09.Enabled := True;
        TimerImpressora10.Enabled := True; }

      tmVerificarPedidos.Enabled := False;

      plHora.Caption := timetostr(time);
      Application.ProcessMessages;

      AtualizaPaineisImpressoras;

      VerificaPedidos;
    end;

  finally
    tmVerificarPedidos.Enabled := True;
    vlListaImpressoras.Free;
  end;

end;

Procedure Tfprincigereimpgoufast.conectabanco;
Var
  arquini: TIniFile;
  vnomebanco: String;
  vportabanco: String;
  vservidor: String;
  vusuario: String;
  vsenha: String;
  vCaminho: string;
Begin

  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'mizio.ini');
  vCaminho := ExtractFilePath(Application.ExeName);
  With arquini Do
  Begin

    vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
    vservidor := ReadString('posi', 'servidor', '127.0.0.1');
    vusuario := ReadString('posi', 'usuario', 'root');
    vsenha := ReadString('posi', 'senha', 'xda973');
    vportabanco := ReadString('posi', 'portabanco', '3306');
    vpImpressora := ReadString('posi', 'impressora', '999');
    vpDebug := ReadString('posi', 'debug', '0');

  End;
  arquini.Free;

  Conexao.Connected := False;
  Conexao.Database := vnomebanco;
  Conexao.Username := vusuario;
  Conexao.Password := vsenha;
  Conexao.Port := StrToInt(vportabanco);
  Conexao.Server := vservidor;
  Conexao.Connected := True;

  mensagens.Panels[0].Text := 'IP: ' + vservidor;
  mensagens.Panels[1].Text := 'BD: ' + vnomebanco;

  if not Conexao.Connected then
  begin
    ShowMessage('Falha de conexão com o Banco de Dados. Verifique as configurações do mizio.ini');
    Application.Terminate;
  end
  else
    AjustaPaines;

End;

function Tfprincigereimpgoufast.ConsultaEstadoImpressora(vporta: string): string;
begin
  result := ConsultaImpressora(vporta);
end;

function Tfprincigereimpgoufast.BaixaArqRel(vFoaCodigo: string; vrelarquivo: TBlobField): String;
var
  vlNomeArq: String;
  BlobField: TBlobField;
  vlNomeRelatorio: string;
begin
  result := '';
  vlNomeArq := ExtractFilePath(Application.ExeName) + 'Report\Pedido_' + vFoaCodigo + '.fr3';

  if fileexists(vlNomeArq) then
    deletefile(vlNomeArq);

  BlobField := vrelarquivo as TBlobField;

  BlobField.SaveToFile(vlNomeArq);

  if not fileexists(vlNomeArq) then
  begin
    // pedidos.Lines.Add('Arquivo nao localizado: ' + vlNomeArq);
    exit;
  end
  else
    result := vlNomeArq;

end;

procedure Tfprincigereimpgoufast.btlimparClick(Sender: TObject);
begin
  erros.Lines.Clear;
end;

procedure Tfprincigereimpgoufast.BtnImpressaoClick(Sender: TObject);
begin
  if BtnImpressao.Tag = 0 then
  begin
    BtnImpressao.Tag := 1;
    tmVerificarPedidos.Enabled := False;
    BtnImpressao.Caption := 'Iniciar';
  end
  else
  begin
    BtnImpressao.Tag := 0;
    tmVerificarPedidos.Enabled := True;
    BtnImpressao.Caption := 'Pausar';
  end;

end;

procedure Tfprincigereimpgoufast.Button3Click(Sender: TObject);
begin
  close;
end;

procedure Tfprincigereimpgoufast.AtualizaPaineisImpressoras;
var
  vlIdentificacao: string;
  vlTciPorta: string;
  vlTciCodigo: string;

  vlRetorno: Integer;
  vlRetornoStr: String;
begin

  gri.First;
  while not gri.Eof do
  begin

    vlIdentificacao := gri.FieldByName('mitidentificacao').AsString;
    vlTciPorta := gri.FieldByName('tciporta').AsString;
    vlTciCodigo := gri.FieldByName('tcicodigo').AsString;

    if self.FindComponent('plimp' + vlTciCodigo) <> nil then
    begin
      vlRetorno := 0;

      if vpDebug = '1' then
        vlRetornoStr := '24'
      else
      begin
        if pos('.', vlTciPorta) > 0 then
        begin

          vlRetornoStr := inttostr(EstadoMP2032(vlTciPorta));
        end
        else
        begin
          vlRetornoStr := ConsultaEstadoImpressora(vlIdentificacao);
        end;
      end;

      if vlRetornoStr <> '' then
        vlRetorno := StrToInt(vlRetornoStr);

      try

        consulta.close;
        consulta.Connection := Conexao;
        consulta.SQL.Text := 'select tcicodigo, grisituacao from gri where ' + 'tcicodigo=' + vlTciCodigo;
        consulta.Open;
        consulta.Edit;
        consulta.FieldByName('grisituacao').AsString := vlRetornoStr;
        consulta.Post;

      except

        consulta.Cancel;
        sleep(100);
        try
          consulta.close;
          consulta.Connection := Conexao;
          consulta.SQL.Text := 'select tcicodigo, grisituacao from gri where ' + 'tcicodigo=' + vlTciCodigo;
          consulta.Open;
          consulta.Edit;
          consulta.FieldByName('grisituacao').AsString := vlRetornoStr;
          consulta.Post;
        except
        end;

      end;

      AjustaPainelImpressora(vlTciCodigo, vlIdentificacao, vlTciPorta, vlRetorno);

      Application.ProcessMessages;
    end;

    gri.Next;

  end;

end;

procedure Tfprincigereimpgoufast.ajustaPaineisImp(vquery: TUniQuery);
var
  plImp: TPanel;
  A, E: Integer;
  vlWidth: Integer;
begin
  vquery.First;
  A := 0;
  E := 1;
  vlWidth := sbTop.Width;
  vquery.Connection := Conexao;
  while not vquery.Eof do
  begin

    if self.FindComponent('plimp' + vquery.FieldByName('tcicodigo').AsString) = nil then
    begin

      plImp := TPanel.Create(self);
      plImp.Parent := sbTop;
      plImp.Name := 'plimp' + vquery.FieldByName('tcicodigo').AsString;
      plImp.Caption := vquery.FieldByName('mitidentificacao').AsString;
      plImp.ParentBackground := False;
      plImp.ParentFont := False;
      plImp.Align := alNone;
      plImp.Height := 20;
      plImp.Width := 310;
      plImp.top := (23 * A) + 7;
      plImp.BorderWidth := 3;
      plImp.Alignment := taLeftJustify;
      plImp.Left := (315 * E) - plImp.Width;
      plImp.Font.Color := clblack;
      plImp.Font.Size := 9;
      plImp.Tag := vquery.FieldByName('tcicodigo').AsInteger;

    end;

    vquery.Next;
    A := A + 1;
    if A > 8 then
    begin
      E := E + 1;
      A := 0;
    end;
  end;
end;

procedure Tfprincigereimpgoufast.AjustaPaines;
begin
  { se exite destroi para recriar }
  cfg.close;
  cfg.Open;

  gri.close;
  if vpImpressora <> '999' then
  begin
    gri.FilterSQL := 'tci.tcicodigo=' + vpImpressora;
  end;

  gri.Open;

  ajustaPaineisImp(gri);

end;

Function Tfprincigereimpgoufast.ConsultaImpressora(Porta: string): String;
Var
  i_retorno: Integer;
  sRetorno: String;
Begin
  Try

    sRetorno := '1';

    if vpDebug = '1' then
      i_retorno := 24
    else
      i_retorno := EstadoImpressora(Porta);

    If i_retorno <> 1 Then
    Begin
      if i_retorno = 0 then
      begin
        erros.Lines.Add(datetimetostr(now) + ' 0 - IMPRESSORA - OFF LINE/SEM COMUNICAÇÃO ' + Porta);
      end
      else if i_retorno = 32 then
      begin
        erros.Lines.Add(datetimetostr(now) + '32 - IMPRESSORA - SEM PAPEL ' + Porta);
      end
      else if i_retorno = 5 then
      begin
        erros.Lines.Add(datetimetostr(now) + ' 5 - IMPRESSORA - ON LINE - POUCO PAPEL ' + Porta);
      end
      else if i_retorno = 9 then
      begin
        erros.Lines.Add(datetimetostr(now) + ' 9 - IMPRESSORA - OFF LINE - TAMPA ABERTA ' + Porta);
      end
      else if i_retorno <> 24 then
      begin
        erros.Lines.Add(datetimetostr(now) + '  ' + inttostr(i_retorno) + ' - IMPRESSORA - ERRO NÃO DEFINIDO ' + Porta);
      end;

      Application.ProcessMessages;

    End;

    If i_retorno = 1 Then
    Begin

      sleep(200);

    End;
    sRetorno := inttostr(i_retorno);

    If i_retorno = 0 Then
      exit;

  Finally
    result := sRetorno;
  End;
End;

procedure Tfprincigereimpgoufast.VerificaPedidosImpressora01(vImpressora: string);
var
  vlTentativas: Integer;
  vlCznCodigo: Integer;

  vlImprime: Integer;
  vlPedido: string;

begin

  mmFilaPedidos.Lines.Clear;

  imm.close;
  imm.ParamByName('cznchave').AsString := vpCznChave;
  imm.FilterSQL := 'mitidentificacao=' + QuotedStr(vImpressora);
  imm.Open;

  vlTentativas := 0;

  imm.First;
  while not imm.Eof do
  begin
    vlPedido := 'Pedido: ' + formatfloat('0000', immimmnumepedido.AsInteger) + '-' + immgricodigo.AsString;
    if pos(vlPedido, mmFilaPedidos.Lines.Text) = 0 then
    begin
      mmFilaPedidos.Lines.Add(vlPedido);
    end;

    imm.Next;
  end;

  Panel2.Caption := 'Pedidos na Fila: ' + inttostr(mmFilaPedidos.Lines.Count);
  Panel2.Repaint;

  imm.First;
  while not imm.Eof do
  begin

    consulta.close;
    consulta.SQL.Text := 'select griimprimeauto from gri where grpcodigo=' + immgrpcodigo.AsString;
    consulta.Open;

    vlImprime := consulta.FieldByName('griimprimeauto').AsInteger;
    vlPedido := 'Pedido: ' + formatfloat('0000', immimmnumepedido.AsInteger) + '-' + immgricodigo.AsString;

    Application.CreateForm(Tfimprimefast, fimprimefast);

    fimprimefast.Conexao := Conexao;
    fimprimefast.vpImpressora := vpImpressora;
    fimprimefast.vpCznChave := vpCznChave;
    fimprimefast.vpDebug := vpDebug;
    fimprimefast.vpPastaDia := vpPastaDia;
    fimprimefast.AjustaconexaoBanco;
    if fimprimefast.ImprimePedido(immorcchave.AsString, immfoacodigo.AsString, immrelarquivo, imm) then
    begin
      fimprimefast.Close;
      sleep(500);
      vlTentativas := 0;
      exit;
    end
    else
    begin
      pedidos.Lines.Add('Pedido: ' + vlPedido);
      imm.Next;
    end;

  end;
end;

procedure Tfprincigereimpgoufast.VerificaPedidosImpressora(vImpressora: string);
var
  vlTentativas: Integer;
  vlCznCodigo: Integer;

  vlImprime: Integer;
  vlPedido: string;

begin


  mmFilaPedidos.Lines.Clear;

  imm.close;
  imm.ParamByName('cznchave').AsString := vpCznChave;
  imm.FilterSQL := 'mitidentificacao=' + QuotedStr(vImpressora);
  imm.Open;

  vlTentativas := 0;

  imm.First;
  while not imm.Eof do
  begin
    vlPedido := 'Pedido: ' + formatfloat('0000', immimmnumepedido.AsInteger) + '-' + immgricodigo.AsString;
    if pos(vlPedido, mmFilaPedidos.Lines.Text) = 0 then
    begin
      mmFilaPedidos.Lines.Add(vlPedido);
    end;

    imm.Next;
  end;

  Panel2.Caption := 'Pedidos na Fila: ' + inttostr(mmFilaPedidos.Lines.Count);
  Panel2.Repaint;

  imm.First;
  while not imm.Eof do
  begin

    consulta.close;
    consulta.SQL.Text := 'select griimprimeauto from gri where grpcodigo=' + immgrpcodigo.AsString;
    consulta.Open;

    vlImprime := consulta.FieldByName('griimprimeauto').AsInteger;
    vlPedido := 'Pedido: ' + formatfloat('0000', immimmnumepedido.AsInteger) + '-' + immgricodigo.AsString;

    if ImprimePedido(immorcchave.AsString, immfoacodigo.AsString, immrelarquivo, imm) then
    begin
      sleep(500);
      vlTentativas := 0;
      exit;
    end
    else
    begin
      pedidos.Lines.Add('Pedido: ' + vlPedido);
      imm.Next;
    end;

  end;
end;

procedure Tfprincigereimpgoufast.VerificaPedidos;
var
  vlTentativas: Integer;
  vlCznCodigo: Integer;

  vlImprime: Integer;
  vlPedido: string;

begin
  mmFilaPedidos.Lines.Clear;

  imm.close;
  imm.ParamByName('cznchave').AsString := vpCznChave;
  if vpImpressora <> '999' then
  begin
    imm.FilterSQL := 'gri.tcicodigo=' + vpImpressora;
  end;
  imm.Open;

  vlTentativas := 0;

  imm.First;
  while not imm.Eof do
  begin
    vlPedido := 'Pedido: ' + formatfloat('0000', immimmnumepedido.AsInteger) + '-' + immgricodigo.AsString;
    if pos(vlPedido, mmFilaPedidos.Lines.Text) = 0 then
    begin
      mmFilaPedidos.Lines.Add(vlPedido);
    end;

    imm.Next;
  end;

  Panel2.Caption := 'Pedidos na Fila: ' + inttostr(mmFilaPedidos.Lines.Count);
  Panel2.Repaint;

  imm.First;
  while not imm.Eof do
  begin

    consulta.close;
    consulta.SQL.Text := 'select griimprimeauto from gri where grpcodigo=' + immgrpcodigo.AsString;
    consulta.Open;

    vlImprime := consulta.FieldByName('griimprimeauto').AsInteger;
    vlPedido := 'Pedido: ' + formatfloat('0000', immimmnumepedido.AsInteger) + '-' + immgricodigo.AsString;

    if ImprimePedido(immorcchave.AsString, immfoacodigo.AsString, immrelarquivo, imm) then
    begin
      sleep(500);
      vlTentativas := 0;
      exit;
    end
    else
    begin
      pedidos.Lines.Add('Pedido: ' + vlPedido);
      imm.Next;
    end;

  end;
end;

function Tfprincigereimpgoufast.ImprimePedido(vOrcChave: string; vFoaCodigo: string; vrelarquivo: TBlobField; vimmorigem: TUniQuery; vImprime: Integer = 1): Boolean;
var
  vlNomeArq: string;
  vlGerado: Boolean;
  vlNumePedido: Integer;
  vlRetorno: Integer;
  vporta: string;
  vIdentificacao: string;
  vlRetornoStr: string;

  vlIdentificacao: string;
  vlTciPorta: string;
  vlTciCodigo: string;
  vlTentativas: Integer;
  vlItoChave: String;
  vltciatual: string;
  vlTentivas: Integer;
  vlImmChave: string;
  vlImmHoraPedido: TDatetime;

  DataI: TDatetime;
  DataF: TDatetime;
  DifDias: double;
  vlDifTempo: string;
  vlimms: string;
  vltcis: string;

  vlGricodigo: string;
  vlOrcChave: string;
begin
  result := False;

  if pos('-', vOrcChave) > 0 then
  begin
    vlGricodigo := trim(copy(vOrcChave, pos('-', vOrcChave) + 1, 20));
    vlOrcChave := trim(copy(vOrcChave, 1, pos('-', vOrcChave) - 1));
  end
  else
  begin
    vlGricodigo := '';
    vlOrcChave := vOrcChave;
  end;

  ito.close;
  ito.Params[0].AsString := vlOrcChave;
  ito.Open;

  vlImmChave := ito.FieldByName('immchave').AsString;

  if ito.IsEmpty then
  begin

    consulta.close;
    consulta.SQL.Text := 'update imm set immhoraimpresso=NOW() where immchave =' + immimmchave.AsString;
    consulta.ExecSQL;

    result := True;
    exit;
  end;

  if vlImmChave <> '' then
  begin

    immtempo.close;
    immtempo.SQL.Text := 'select immhorapedido from imm where immchave=' + vlImmChave;
    immtempo.Open;
    vlImmHoraPedido := immtempo.FieldByName('ImmHoraPedido').AsFloat;

  end
  else
  begin
    vlImmHoraPedido := now();
  end;

  vlTentativas := 0;
  vltciatual := '';
  while not ito.Eof do
  begin

    vlNumePedido := ito.FieldByName('immnumepedido').AsInteger;
    vporta := ito.FieldByName('tciporta').AsString;
    vlRetorno := 0;

    if pos('.', vporta) > 0 then
    begin

      vlRetornoStr := inttostr(EstadoMP2032(vporta));

    end
    else
    begin
      vlRetornoStr := ConsultaEstadoImpressora(vporta);
    end;

    if vlRetornoStr = '0' then
    begin
      break;
    end;

    if vlRetornoStr <> '' then
      vlRetorno := StrToInt(vlRetornoStr);

    vlIdentificacao := ito.FieldByName('mitidentificacao').AsString;

    vlIdentificacao := StringReplace(vlIdentificacao, ' ', '_', [rfReplaceAll, rfIgnoreCase]);

    vlTciPorta := ito.FieldByName('tciporta').AsString;
    vlTciCodigo := ito.FieldByName('tcicodigo').AsString;

    tcisituacao.close;
    tcisituacao.SQL.Text := 'select tcicodigo, tciimprimindo, mitidentificacao from tci,mit where tci.mitcodigo=mit.mitcodigo and tcicodigo=' + vlTciCodigo;
    tcisituacao.Open;

    if vlRetorno <> 24 then
    begin
      AjustaPainelImpressora(vlTciCodigo, vlIdentificacao, vlTciPorta, 0);
      ito.Next;
    end
    else
    begin

      situacao.close;
      situacao.Connection := Conexao;
      situacao.SQL.Text := 'select gricodigo, grisituacao from gri where tcicodigo=' + vlTciCodigo;
      situacao.Open;

      vlTentivas := 0;
      while vlTentivas < 10 do
      begin
        try
          situacao.Edit;
          situacao.FieldByName('grisituacao').AsString := vlRetornoStr;
          situacao.Post;
          break;
        except

          situacao.Cancel;
          sleep(100);

          try
            situacao.Edit;
            situacao.FieldByName('grisituacao').AsString := vlRetornoStr;
            situacao.Post;
          except

            vlTentivas := vlTentivas + 1;
          end;

        end;
      end;

      AjustaPainelImpressora(vlTciCodigo, vlIdentificacao, vlTciPorta, vlRetorno);

      if vlRetorno = 24 then // impressora esta liberada
      begin

        vlNomeArq := BaixaArqRel(vFoaCodigo, vrelarquivo);

        if vlNomeArq = '' then
          exit;

        sqlimprime.close;
        sqlimprime.ParamByName('itochave').AsInteger := itoitochave.AsInteger;
        sqlimprime.Open;

        if sqlimprimegripedidoaux.AsInteger = 1 then
        begin

          consulta.close;
          consulta.SQL.Text := 'update imm set  tcicodigo=' + vlTciCodigo + ' ,immhoraimpresso=null where immchave in (' + sqlimprimeimmchave.AsString + ')';
          consulta.ExecSQL;

        end;



        relatorio.LoadFromFile(vlNomeArq);

        { atribui o valor para variavel de grupo do relatório }

        relatorio.Variables['tcicodigo'] := QuotedStr(vlTciCodigo);
        relatorio.Variables['immnumepedido'] := QuotedStr(inttostr(vlNumePedido));

        { defini configuração do fastreport para exibição }
        relatorio.PrepareReport(True);
        relatorio.PrintOptions.ShowDialog := False;
        relatorio.ShowProgress := False;

        vlGerado := False;
        { exporta a imagem do pedido }

        frxBMPExport.DefaultPath := vpPastaDia;
        if sqlimprimegripedidoaux.AsInteger = 1 then
        begin
          frxBMPExport.filename := 'ped' + formatfloat('0000', vlNumePedido) + 'a.bmp';
          relatorio.PreviewPages.SaveToFile(vpPastaDia + '\ped' + formatfloat('0000', vlNumePedido) + 'a.fp3');

        end

        else
        begin
          frxBMPExport.filename := 'ped' + formatfloat('0000', vlNumePedido) + '.bmp';
          relatorio.PreviewPages.SaveToFile(vpPastaDia + '\ped' + formatfloat('0000', vlNumePedido) + '.fp3');

        end;

        frxBMPExport.SeparateFiles := False;

        if fileexists(frxBMPExport.filename) then
        begin
          deletefile(frxBMPExport.filename);
          sleep(100);
        end;

        vlGerado := relatorio.Export(frxBMPExport);

        vlGerado := fileexists(frxBMPExport.filename);

        if vlGerado then
        begin
          jaimpresso.close;
          jaimpresso.SQL.Text := 'select immchave, immhorapedido from imm where immchave in (select immchave from imm, ito where imm.itochave=ito.itochave and orcchave=' +
            vOrcChave + ' and immnumepedido=' + inttostr(vlNumePedido) + ' and tcicodigo=' + vlTciCodigo + ' and immhoraimpresso is not null )';
          jaimpresso.Open;

          if (vImprime = 1) and (sqlimprimegriimprimeauto.AsInteger = 1) and ((jaimpresso.IsEmpty) or (vltciatual <> vlTciCodigo)) then
          begin

            if sqlimprimegripedidoaux.AsInteger = 1 then
            begin

              consulta.close;
              consulta.SQL.Text := 'update imm set  tcicodigo=' + vlTciCodigo + ' ,immhoraimpresso=null where immchave in (' + sqlimprimeimmchave.AsString + ')';
              consulta.ExecSQL;

            end;

            consulta.close;
            consulta.SQL.Text := 'select immchave from imm where immchave in (select immchave from tped where orcchave=' + vOrcChave + ' and immnumepedido=' +
              inttostr(vlNumePedido) + ' and tcicodigo=' + vlTciCodigo + ')';
            consulta.Open;

            consulta.First;
            while not consulta.Eof do
            begin
              vlimms := vlimms + consulta.FieldByName('immchave').AsString + ',';
              consulta.Next;
            end;
            vlimms := copy(vlimms, 1, length(vlimms) - 1);

            consulta.close;
            consulta.SQL.Text := 'update imm set tcicodigo=' + vlTciCodigo + ' ,immhoraimpresso=NOW() where immchave in (select immchave from tped where orcchave=' + vOrcChave +
              ' and immnumepedido=' + inttostr(vlNumePedido) + ' and tcicodigo=' + vlTciCodigo + ')';
            consulta.ExecSQL;

            if vlimms <> '' then
            begin

              vporta := StringReplace(vporta, ' ', '_', [rfReplaceAll, rfIgnoreCase]);

              if enviaBMPImpressora(vlNumePedido, vlIdentificacao, vlRetorno, vlimms, vlTciCodigo) then
              begin
                vlimms := '';
                vltciatual := vlTciCodigo;
                sleep(100);

                try

                  imw.close;
                  imw.ParamByName('itochave').AsInteger := itoitochave.AsInteger;
                  imw.Open;

                  if imw.IsEmpty then
                  begin
                    imw.Append;
                    imwitochave.AsInteger := itoitochave.AsInteger;
                    imw.Post;
                  end;

                except

                  on E: Exception do
                  begin
                    pedidos.Lines.Add('------------------');
                    pedidos.Lines.Add('Exception class name = ' + E.ClassName);
                    pedidos.Lines.Add('Exception message = ' + E.Message);
                    pedidos.Lines.Add('ERRO Orc.: ' + vlOrcChave + ' Ped.: ' + inttostr(vlNumePedido) + ' Imp.: ' + vlTciCodigo);
                    pedidos.Lines.Add('------------------');

                  end;

                end;
                DataI := now();
                DataF := vlImmHoraPedido;
                DifDias := DaySpan(DataF, DataI);
                vlDifTempo := inttostr(Trunc(DifDias)) + ' dias, ' + FormatDateTime('h" horas e "n" minutos"', DifDias);

                pedidos.Lines.Add('Orc: ' + vlOrcChave + ' P: ' + inttostr(vlNumePedido) + ' I: ' + vlTciCodigo + ' Hr: ' + datetimetostr(now()));
                pedidos.Lines.Add('Hora Pedido: ' + datetimetostr(vlImmHoraPedido) + ' hora impresso: ' + datetimetostr(now()) + ' Tempo: ' + vlDifTempo);

                pedidos.Lines.Add('--------------------------------------------------');

                consulta.close;
                consulta.SQL.Text := 'select tped.immchave, imm.itochave from tped, imm where tped.immchave=imm.immchave  and  tped.orcchave=' + vOrcChave +
                  ' and tped.immnumepedido=' + inttostr(vlNumePedido) + ' and tped.tcicodigo=' + vlTciCodigo;
                consulta.Open;

                vlItoChave := '';
                vlItoChave := consulta.Fields[1].AsString;

                consulta.close;
                consulta.SQL.Text := 'select tpocodigo from pro, ito where pro.procodigo=ito.procodigo and itochave=' + vlItoChave;
                consulta.Open;

                if consulta.Fields[0].AsString = '9' then
                begin
                  consulta.close;
                  consulta.SQL.Text := 'delete from ito where itototalav=0 and itochave=' + vlItoChave;
                  consulta.ExecSQL;

                end;

                ito.Next;
                vlTentativas := 0;

                result := True;
              end
              else
              begin
                vlTentativas := vlTentativas + 1;
                erros.Lines.Add('Tentativa: ' + inttostr(vlTentativas) + ' Orc.: ' + vlOrcChave + ' Ped.: ' + inttostr(vlNumePedido) + ' Imp.: ' + vlTciCodigo);
                sleep(100);

                if vlTentativas = 2 then
                begin
                  erros.Lines.Add('Não foi possivel a impressão Orc.: ' + vlOrcChave + ' Ped.: ' + inttostr(vlNumePedido) + ' Imp.: ' + vlTciCodigo);

                  break;
                end;

              end;

            end
            else
            begin
              pedidos.Lines.Add('------------------');
              pedidos.Lines.Add('IMM SEM ITENS');

              ito.Next;
              vlTentativas := 0;
              result := True;

            end;
          end
          else
          begin

            try
              consulta.close;
              consulta.SQL.Text := 'update imm set tcicodigo=' + vlTciCodigo + ' , immhoraimpresso=NOW() where immchave in (select immchave from tped where orcchave=' + vOrcChave +
                ' and immnumepedido=' + inttostr(vlNumePedido) + ' and tcicodigo=' + vlTciCodigo + ')';
              consulta.ExecSQL;

              // criado funcionalidade para remover serviço que sejá só para imprimir
              //
              //

              consulta.close;
              consulta.SQL.Text := 'select tped.immchave, imm.itochave from tped, imm where tped.immchave=imm.immchave  and  tped.orcchave=' + vOrcChave +
                ' and tped.immnumepedido=' + inttostr(vlNumePedido) + ' and tped.tcicodigo=' + vlTciCodigo;
              consulta.Open;

              vlItoChave := '';
              vlItoChave := consulta.Fields[1].AsString;

              consulta.close;
              consulta.SQL.Text := 'select tpocodigo from pro, ito where pro.procodigo=ito.procodigo and itochave=' + vlItoChave;
              consulta.Open;

              if consulta.Fields[0].AsString = '9' then
              begin
                pedidos.Lines.Add('------------------');
                pedidos.Lines.Add('ACHOU SERVIÇOS');

                consulta.close;
                consulta.SQL.Text := 'delete from ito where itototalav=0 and itochave=' + vlItoChave;
                consulta.ExecSQL;

              end;

            except
              on E: Exception do
              begin
                pedidos.Lines.Add('------------------');
                pedidos.Lines.Add('Exception class name = ' + E.ClassName);
                pedidos.Lines.Add('Exception message = ' + E.Message);
                pedidos.Lines.Add('ERRO Orc.: ' + vlOrcChave + ' Ped.: ' + inttostr(vlNumePedido) + ' Imp.: ' + vlTciCodigo);
                pedidos.Lines.Add('------------------');

              end;

            end;

            // pedidos.Lines.Add('Orc.: ' + vlOrcChave + ' Ped.: ' + inttostr(vlNumePedido) + ' Imp.: ' + vlTciCodigo + ' Hora: ' + datetimetostr(now()));

            ito.Next;
            vlTentativas := 0;
            result := True;

          end;
        end;
      end
      else
      begin
        result := False;
        exit;
      end;
    end;

  end;

end;

function IsValidatePrinter(LabelPrinter: String): Integer;
var
  i: Integer;
begin
  for i := 0 to Printer.Printers.Count - 1 do
    if AnsiContainsText(Printer.Printers[i], LabelPrinter) then
      exit(i);
  result := -1;
end;

function Tfprincigereimpgoufast.EstadoImpressora(vporta: string): Integer;
Var
  vu: string;
  vlRetorno, i_retorno, vlIndexPrinter: Integer;
  s_cmdtx: string;
  i, U, E: Integer;
Begin

  vlIndexPrinter := IsValidatePrinter(trim(vporta));
  if vlIndexPrinter <> -1 then // Identifica se é uma impressora válida
  begin

    Vcl.Printers.Printer.PrinterIndex := vlIndexPrinter;

    if Printer.Printing then
    begin
      vlRetorno := 99;
    end
    else
    begin
      vlRetorno := 24;
    end;

  end;

  Vcl.Printers.Printer.PrinterIndex := -1;
  result := vlRetorno;

End;

function Tfprincigereimpgoufast.EstadoMP2032(vporta: string): Integer;
Var
  vu: string;
  vlRetorno, i_retorno: Integer;
  s_cmdtx: string;
  i, U, E: Integer;
Begin

  vlRetorno := ConfiguraModeloImpressora(7);
  vlRetorno := IniciaPorta(vporta);

  if vlRetorno = 0 then
  begin
    result := 0;
    exit;
  end;

  vlRetorno := Le_Status();
  FechaPorta;
  result := vlRetorno;

End;

end.
