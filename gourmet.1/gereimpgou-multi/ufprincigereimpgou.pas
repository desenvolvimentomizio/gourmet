unit ufprincigereimpgou;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB, MemDS, DBAccess, Uni, IniFiles, UniProvider,
  MySQLUniProvider, Vcl.ComCtrls, registry, frxClass, frxDBSet, frxDACComponents, frxUniDACComponents, frxExportImage,
  DateUtils, IdBaseComponent, frxDesgn, IdAntiFreezeBase, DASQLMonitor, UniSQLMonitor,
  frxBarcode, System.ImageList, Vcl.ImgList, IdAntiFreeze, shellapi, uImpressorThread;

// Declarando a MP2032.DLL e sua funções em Delphi
// Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';

type

  TfPrinciGereImpGou = class(TForm)
    inicializar: TTimer;
    plImpressoras: TPanel;
    plFalhaBanco: TPanel;
    consulta: TUniQuery;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    mensagens: TStatusBar;
    tmVerificarPedidos: TTimer;
    gri: TUniQuery;
    erros: TMemo;
    imm: TUniQuery;
    immorcchave: TIntegerField;
    immfoacodigo: TIntegerField;
    immstocodigo: TIntegerField;
    gritcicodigo: TIntegerField;
    gritciporta: TStringField;
    grimitidentificacao: TStringField;
    ito: TUniQuery;
    immrelarquivo: TBlobField;
    relatorio: TfrxReport;
    frxBMPExport: TfrxBMPExport;
    frxDados: TfrxDBDataset;
    immorcobs: TStringField;
    immorcgeralav: TFloatField;
    itoorcchave: TIntegerField;
    itoimmnumepedido: TIntegerField;
    itotcicodigo: TIntegerField;
    itotciporta: TStringField;
    itomitidentificacao: TStringField;
    itofoacodigo: TIntegerField;
    itopedidoaux: TIntegerField;
    frxDesigner: TfrxDesigner;
    czn: TUniQuery;
    frxUniDACComponents: TfrxUniDACComponents;
    immgricodigo: TIntegerField;
    immgrpcodigo: TIntegerField;
    sqlimprime: TUniQuery;
    sqlimprimegriimprimeauto: TIntegerField;
    itoitochave: TIntegerField;
    UniSQLMonitor: TUniSQLMonitor;
    sqlimprimefnccodigo: TIntegerField;
    jaimpresso: TUniQuery;
    vias: TUniQuery;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgmgoupedidelivery: TIntegerField;
    cfgcfgmgoupedideliveryaux: TIntegerField;
    grigripedidoaux: TIntegerField;
    itoaux: TUniQuery;
    immimmchave: TIntegerField;
    frxBarCodeObject1: TfrxBarCodeObject;
    czncznchave: TIntegerField;
    plTopo: TPanel;
    sbTop: TScrollBox;
    plCozinha: TPanel;
    plHora: TPanel;
    BtnImpressao: TButton;
    Button3: TButton;
    btlimpar: TButton;
    ImageList1: TImageList;
    pedidos: TMemo;
    IdAntiFreeze1: TIdAntiFreeze;
    imw: TUniQuery;
    imwimwchave: TIntegerField;
    imwitochave: TIntegerField;
    imwimwhoranotificadopedido: TDateTimeField;
    imwimwhorasaidadopedido: TDateTimeField;
    imwimwhoraentregadopedido: TDateTimeField;
    situacao: TUniQuery;
    immtempo: TUniQuery;
    Panel1: TPanel;
    mmFilaPedidos: TMemo;
    Panel2: TPanel;
    immimmnumepedido: TIntegerField;
    itoimmchave: TIntegerField;
    tped: TUniQuery;
    procedure inicializarTimer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure tmVerificarPedidosTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnImpressaoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btlimparClick(Sender: TObject);
  private

    IconeAtu: Integer;
    procedure ajustaPaineisImp(vquery: TUniQuery);
    procedure conectabanco;
    procedure AjustaPaines;
    procedure RunOnStartup(sProgTitle, sCmdLine: String; bRunOnce: boolean);

    function AtualizaIMpressora(vporta: string): string;
    procedure InicializaImpressoras(vsituacao: Integer = 0);
    procedure VerificaPedidos;
    function ImprimePedido(vOrcChave: string; vImprime: Integer = 1): boolean;
    function BaixaArqRel(vFoaCodigo: string): String;
    function AjustaSituacaoCozinha: boolean;
    procedure VerificaImpressoras;

    { Private declarations }
  public
    { Public declarations }
    vpPastaDia: string;
    vpCozinhaAberta: boolean;
    vpCznChave: string;
    vpImpressora: String;
    workthread1: TSendThread;
    procedure AjustaPainelImpressora(vlTciCodigo: string; vlIdentificacao: string; vlTciPorta: string; const vlRetorno: Integer);

  end;

var
  fPrinciGereImpGou: TfPrinciGereImpGou;

implementation

{$R *.dfm}

function TfPrinciGereImpGou.AjustaSituacaoCozinha: boolean;
begin

  result := false;

  czn.close;
  czn.Open;

  if czn.IsEmpty then
  begin
    plCozinha.Caption := 'Atenção: A Cozinha não esta aberta, solicite a abertura da Cozinha!';
    plCozinha.Font.Color := clYellow;
    plCozinha.Color := clred;

    vpCozinhaAberta := false;
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

procedure TfPrinciGereImpGou.AjustaPainelImpressora(vlTciCodigo: string; vlIdentificacao: string; vlTciPorta: string; const vlRetorno: Integer);
begin
  try
    case vlRetorno of
      0:
        begin
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color := clred;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Font.Color := clYellow;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( FALHA COMUNICAÇÃO' + ' )';
          plFalhaBanco.Color := clred;
        end;
      1:
        begin
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color := clNavy;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Font.Color := clYellow;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( FALHA COMUNICAÇÃO' + ' )';
        end;
      5:
        begin
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color := clYellow;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Font.Color := clred;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( POUCO PAPEL' + ' )';
        end;
      9:
        begin
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color := clGray;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Font.Color := clred;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( TAMPA ABERTA' + ' )';
        end;
      24:
        begin
          // impressora ativa e on-line
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color := clgreen;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Font.Color := clWhite;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Caption := vlIdentificacao + ' (Porta: ' + vlTciPorta + ')';
        end;
      28:
        begin
          // impressora ativa e on-line
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color :=  clNavy;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Font.Color := clWhite;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Caption := 'Imprimindo '+ ' (Porta: ' + vlTciPorta + ')';
        end;


      32:
        begin
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color := clMaroon;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Font.Color := clred;
          (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Caption := vlIdentificacao + ' ( SEM PAPEL' + ' )';
        end;
    end;




  except
  end;
end;

{ Thread1 }

Procedure TfPrinciGereImpGou.RunOnStartup(sProgTitle, sCmdLine: String; bRunOnce: boolean);
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

function TfPrinciGereImpGou.AtualizaIMpressora(vporta: string): string;
begin
  // result := ConsultaImpressora(vporta);
end;

function TfPrinciGereImpGou.BaixaArqRel(vFoaCodigo: string): String;
var
  vlNomeArq: String;
  BlobField: TBlobField;
begin
  result := '';
  vlNomeArq := ExtractFilePath(Application.ExeName) + 'Report\Pedido_' + vFoaCodigo + '.fr3';

  if fileexists(vlNomeArq) then
    deletefile(vlNomeArq);

  BlobField := immrelarquivo as TBlobField;
  BlobField.SaveToFile(vlNomeArq);

  if not fileexists(vlNomeArq) then
  begin
    // pedidos.Lines.Add('Arquivo nao localizado: ' + vlNomeArq);
    exit;
  end
  else
    result := vlNomeArq;

end;

procedure TfPrinciGereImpGou.btlimparClick(Sender: TObject);
begin
  erros.Lines.Clear;
end;

procedure TfPrinciGereImpGou.InicializaImpressoras(vsituacao: Integer = 0);
var
  vlIdentificacao: string;
  vlTciPorta: string;
  vlTciCodigo: string;

  vlRetorno: Integer;
  vlRetornoStr: String;
begin

  gri.First;
  while not gri.eof do
  begin

    vlIdentificacao := gri.FieldByName('mitidentificacao').AsString;
    vlTciPorta := gri.FieldByName('tciporta').AsString;
    vlTciCodigo := gri.FieldByName('tcicodigo').AsString;

    if self.FindComponent('plimp' + vlTciCodigo) <> nil then
    begin
      vlRetorno := vsituacao;

      vlRetornoStr := AtualizaIMpressora(vlTciPorta);

      if vlRetornoStr <> '' then
        vlRetorno := StrToInt(vlRetornoStr);

      try

        // consulta.SQL.Text := 'update gri set grisituacao=' + vlRetornoStr + ' where ' + 'tcicodigo=' + vlTciCodigo;

        consulta.close;
        consulta.Connection := Conexao;
        consulta.SQL.Text := 'select gricodigo, tcicodigo, grisituacao from gri where ' + 'tcicodigo=' + vlTciCodigo;
        consulta.Open;
        consulta.Edit;
        consulta.FieldByName('grisituacao').AsString := vlRetornoStr;
        consulta.Post;

      except

        consulta.Cancel;
        sleep(500);
        try
          consulta.close;
          consulta.Connection := Conexao;
          consulta.SQL.Text := 'select gricodigo, tcicodigo, grisituacao from gri where ' + 'tcicodigo=' + vlTciCodigo;
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

procedure TfPrinciGereImpGou.ajustaPaineisImp(vquery: TUniQuery);
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
  while not vquery.eof do
  begin
    if self.FindComponent('plimp' + vquery.FieldByName('tcicodigo').AsString) = nil then
    begin

      plImp := TPanel.Create(self);
      plImp.Parent := sbTop;
      plImp.Name := 'plimp' + vquery.FieldByName('tcicodigo').AsString;
      plImp.Caption := vquery.FieldByName('mitidentificacao').AsString;
      plImp.ParentBackground := false;
      plImp.ParentFont := false;
      plImp.Align := alNone;
      plImp.Height := 20;
      plImp.Width := 310;
      plImp.top := (23 * A) + 7;
      plImp.BorderWidth := 3;
      plImp.Alignment := taLeftJustify;
      plImp.Left := (315 * E) - plImp.Width;
      plImp.Font.Color := clBlack;
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

procedure TfPrinciGereImpGou.AjustaPaines;
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

procedure TfPrinciGereImpGou.Button1Click(Sender: TObject);
begin
  close;
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

procedure TfPrinciGereImpGou.inicializarTimer(Sender: TObject);
var
  i: Integer;
begin
  inicializar.ENABLED := false;

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is TUniQuery then
      (self.Components[i] as TUniQuery).Connection := Conexao;

  end;

  conectabanco;

  AjustaSituacaoCozinha;

  InicializaImpressoras(24);

  tmVerificarPedidos.ENABLED := True;

end;

procedure TfPrinciGereImpGou.VerificaImpressoras;
begin

end;

procedure TfPrinciGereImpGou.tmVerificarPedidosTimer(Sender: TObject);
begin
  try

    tmVerificarPedidos.ENABLED := false;

    plHora.Caption := timetostr(time);
    Application.ProcessMessages;

    if AjustaSituacaoCozinha then
    begin
      VerificaPedidos;
    end;

  finally
    tmVerificarPedidos.ENABLED := True;
  end;

end;

Procedure TfPrinciGereImpGou.conectabanco;
Var
  arquini: TIniFile;
  vnomebanco: String;
  vportabanco: String;
  vservidor: String;
  vusuario: String;
  vsenha: String;
  vCaminho: string;
Begin

  arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
  vCaminho := ExtractFilePath(Application.ExeName);
  With arquini Do
  Begin

    vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
    vservidor := ReadString('posi', 'servidor', '127.0.0.1');
    vusuario := ReadString('posi', 'usuario', 'root');
    vsenha := ReadString('posi', 'senha', 'xda973');
    vportabanco := ReadString('posi', 'portabanco', '3306');
    vpImpressora := ReadString('posi', 'impressora', '999');

  End;
  arquini.Free;

  Conexao.Connected := false;
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
    ShowMessage('Falha de conexão com o Banco de Dados. Verifique as configurações do gourmeterp.ini');
    Application.Terminate;
  end
  else
    AjustaPaines;

End;

procedure TfPrinciGereImpGou.FormCreate(Sender: TObject);
begin

  RunOnStartup('Gerenciador Impressão Mizio Sistemas', Application.ExeName, false);
end;

procedure TfPrinciGereImpGou.FormShow(Sender: TObject);
begin
  inicializar.ENABLED := True;
  Screen.Cursors[crSQLWait] := Screen.Cursors[crDefault];
end;

procedure TfPrinciGereImpGou.VerificaPedidos;
var
  vlTentativas: Integer;
  vlCznCodigo: Integer;
  vlSql: String;
  vlImprime: Integer;
  vlPedido: string;
  vlTciCodigo: string;

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
  vlSql := imm.SQL.Text;

  imm.First;
  while not imm.eof do
  begin
    vlPedido := 'Pedido: ' + formatfloat('0000', immimmnumepedido.AsInteger);
    if pos(vlPedido, mmFilaPedidos.Lines.Text) = 0 then
    begin
      mmFilaPedidos.Lines.Add(vlPedido);
    end;

    imm.Next;
  end;

  imm.First;
  while not imm.eof do
  begin

    consulta.close;
    consulta.SQL.Text := 'select gricodigo, tcicodigo, griimprimeauto from gri where grpcodigo=' + immgrpcodigo.AsString;
    consulta.Open;

    vlImprime := consulta.FieldByName('griimprimeauto').AsInteger;
    vlTciCodigo := consulta.FieldByName('tcicodigo').AsString;


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

function TfPrinciGereImpGou.ImprimePedido(vOrcChave: string; vImprime: Integer = 1): boolean;
var
  vlNomeArq: string;
  vlGerado: boolean;
  vlNumePedido: Integer;
  vlRetorno: Integer;
  vporta: string;
  vlRetornoStr: string;

  vlIdentificacao: string;
  vlTciPorta: string;
  vlTciCodigo: string;
  vlTentativas: Integer;
  vlItoChave: String;
  vltciatual: string;
  vlTentivas: Integer;

  DataI: TDatetime;
  DataF: TDatetime;
  DifDias: double;
  vlDifTempo: string;
  vlImmHoraPedido: TDatetime;

begin
  result := false;

  ito.close;
  ito.Params[0].AsString := vOrcChave;
  ito.Open;

  if ito.IsEmpty then
  begin

    consulta.close;
    consulta.SQL.Text := 'update imm set immhoraimpresso=NOW() where immchave =' + immimmchave.AsString;
    consulta.ExecSQL;

    result := True;
    exit;
  end;

  vlTentativas := 0;
  vltciatual := '';
  while not ito.eof do
  begin

    vlNumePedido := ito.FieldByName('immnumepedido').AsInteger;
    vporta := ito.FieldByName('tciporta').AsString;
    vlRetorno := 0;

    vlIdentificacao := ito.FieldByName('mitidentificacao').AsString;
    vlTciPorta := ito.FieldByName('tciporta').AsString;
    vlTciCodigo := ito.FieldByName('tcicodigo').AsString;


      { vlRetornoStr := AtualizaIMpressora(vporta);

        if vlRetornoStr <> '' then
        vlRetorno := StrToInt(vlRetornoStr); }

      situacao.close;
      situacao.Connection := Conexao;
      situacao.SQL.Text := 'select gricodigo, grisituacao from gri where tcicodigo=' + vlTciCodigo;
      situacao.Open;

      if ((self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color = clgreen) then
      begin
        vlRetorno := 24;
        vlRetornoStr := '24';
      end;

      vlTentivas := 0;
      while vlTentivas < 10 do
      begin
        // try
        situacao.Edit;
        situacao.FieldByName('grisituacao').AsString := vlRetornoStr;
        situacao.Post;
        break;
        { except

          situacao.Cancel;
          sleep(500);

          try
          situacao.Edit;
          situacao.FieldByName('grisituacao').AsString := vlRetornoStr;
          situacao.Post;
          except

          vlTentivas := vlTentivas + 1;
          end;

          end; }
      end;

      { consulta.close;
        consulta.Connection := Conexao;
        consulta.SQL.Text := 'update gri set grisituacao=' + vlRetornoStr + ' where ' + 'tcicodigo=' + vlTciCodigo;
        consulta.ExecSQL; }

      AjustaSituacaoCozinha;

      if ((self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color = clgreen) then
      begin
        vlRetorno := 24;
      end;
      AjustaPainelImpressora(vlTciCodigo, vlIdentificacao, vlTciPorta, vlRetorno);





      { if vlRetorno <> 24 then // impressora esta com falha
        begin
        result := false;
        exit;
        end; }

      vlNomeArq := BaixaArqRel(immfoacodigo.AsString);

      if vlNomeArq = '' then
        exit;

      relatorio.LoadFromFile(vlNomeArq);

      { atribui o valor para variavel de grupo do relatório }

      relatorio.Variables['tcicodigo'] := QuotedStr(vlTciCodigo);
      relatorio.Variables['immnumepedido'] := QuotedStr(inttostr(vlNumePedido));

      { defini configuração do fastreport para exibição }
      relatorio.PrepareReport(True);
      relatorio.PrintOptions.ShowDialog := false;
      relatorio.ShowProgress := false;

      vlGerado := false;
      { exporta a imagem do pedido }
      frxBMPExport.DefaultPath := vpPastaDia;
      frxBMPExport.filename := 'ped' + formatfloat('0000', vlNumePedido) + '.bmp';
      frxBMPExport.SeparateFiles := false;

      if fileexists(frxBMPExport.filename) then
      begin
        deletefile(frxBMPExport.filename);
        sleep(100);
      end;

      vlGerado := relatorio.Export(frxBMPExport);

      vlGerado := fileexists(frxBMPExport.filename);

      sqlimprime.close;
      sqlimprime.ParamByName('itochave').AsInteger := itoitochave.AsInteger;
      sqlimprime.Open;

      if vlGerado then
      begin
        jaimpresso.close;
        jaimpresso.SQL.Text := 'select immchave, immhorapedido from imm where immchave in (select immchave from imm, ito where imm.itochave=ito.itochave and orcchave=' + vOrcChave
          + ' and immnumepedido=' + inttostr(vlNumePedido) + ' and tcicodigo=' + vlTciCodigo + ' and immhoraimpresso is not null )';
        jaimpresso.Open;

        if (vImprime = 1) and (sqlimprimegriimprimeauto.AsInteger = 1) and (sqlimprimefnccodigo.AsInteger <> 6) and ((jaimpresso.IsEmpty) or (vltciatual <> vlTciCodigo)) then
        begin

          if (self.FindComponent('plimp' + vlTciCodigo) as TPanel).Color = clgreen then
          begin

            tped.close;
            tped.SQL.Text := 'select immchave from imm,ito where imm.itochave=ito.itochave and orcchave=' + vOrcChave + ' and immnumepedido=' + inttostr(vlNumePedido) +
              ' and tcicodigo=' + vlTciCodigo;
            tped.Open;

            while not tped.eof do
            begin

              consulta.close;
              consulta.SQL.Text := 'update imm set immhoraimpresso=NOW() where immchave=' + tped.FieldByName('immchave').AsString;
              consulta.ExecSQL;
              tped.Next;
            end;


            workthread1 := TSendThread.Create(false, vporta, frxBMPExport.filename, vlTciCodigo, vlIdentificacao);

            ito.Next;
            vlTentativas := 0;
            result := True;

          end;

        end
        else
        begin

          try
            consulta.close;
            consulta.SQL.Text := 'update imm set immhoraimpresso=NOW() where immchave in (select immchave from tped where orcchave=' + vOrcChave + ' and immnumepedido=' +
              inttostr(vlNumePedido) + ' and tcicodigo=' + vlTciCodigo + ')';
            consulta.ExecSQL;

            // criado funcionalidade para remover serviço que sejá só para imprimir
            //
            //

            consulta.close;
            consulta.SQL.Text := 'select tped.immchave, imm.itochave from tped, imm where tped.immchave=imm.immchave  and  tped.orcchave=' + vOrcChave + ' and tped.immnumepedido='
              + inttostr(vlNumePedido) + ' and tped.tcicodigo=' + vlTciCodigo;
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

          except
            on E: Exception do
            begin
              pedidos.Lines.Add('------------------');
              pedidos.Lines.Add('Exception class name = ' + E.ClassName);
              pedidos.Lines.Add('Exception message = ' + E.Message);
              pedidos.Lines.Add('ERRO Orc.: ' + vOrcChave + ' Ped.: ' + inttostr(vlNumePedido) + ' Imp.: ' + vlTciCodigo);
              pedidos.Lines.Add('------------------');

            end;

          end;
          ito.Next;
          vlTentativas := 0;
          result := True;

        end;
      end
      else
      begin
        ito.Next;
      end;



  end;

end;

end.
