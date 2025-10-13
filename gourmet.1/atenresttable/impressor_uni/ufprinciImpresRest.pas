unit ufprinciImpresRest;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, inifiles,
  Vcl.ExtCtrls, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, DBAccess, Uni, MemDS, UniProvider, MySQLUniProvider,
  DASQLMonitor, UniSQLMonitor, DateUtils;

Function IniciaPorta(Porta: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FechaPorta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function BematechTX(BufTrans: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ComandoTX(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function CaracterGrafico(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function DocumentInserted: Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';
Function AutenticaDoc(Texto: Ansistring; Tempo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status_Gaveta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraTamanhoExtrato(NumeroLinhas: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaExtratoLongo(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaEsperaImpressao(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function EsperaImpressao: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraModeloImpressora(ModeloImpressora: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AcionaGuilhotina(Modo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FormataTX(BufTras: Ansistring; TpoLtra: Integer; Italic: Integer; Sublin: Integer; Expand: Integer; Enfat: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';
Function HabilitaPresenterRetratil(IFlag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ProgramaPresenterRetratil(ITempo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function VerificaPapelPresenter: Integer; Stdcall; Far; External 'MP2032.DLL';

// Função para Configuração dos Códigos de Barras

Function ConfiguraCodigoBarras(Altura: Integer; Largura: Integer; PosicaoCaracteres: Integer; Fonte: Integer; Margem: Integer): Integer; Stdcall; Far;
  External 'MP2032.DLL';

// Funções para impressão dos códigos de barras

Function ImprimeCodigoBarrasUPCA(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasUPCE(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasEAN13(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasEAN8(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE39(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE93(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODE128(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasITF(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasCODABAR(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasISBN(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasMSI(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasPLESSEY(Codigo: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros: Integer; Altura: Integer; Largura: Integer; Colunas: Integer; Codigo: Ansistring): Integer;
  Stdcall; Far; External 'MP2032.DLL';
Function ImprimeCodigoQRCODE(ErrorCorrectionLevel: Integer; ModuleSize: Integer; CodeType: Integer; QRCodeVersion: Integer; EncodingModes: Integer;
  CodeQr: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';

// Funções para impressão de BitMap

Function ImprimeBitmap(Name: Ansistring; Mode: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeBmpEspecial(Name: Ansistring; XScale: Integer; YScale: Integer; Angle: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AjustaLarguraPapel(Width: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function SelectDithering(Mode: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function PrinterReset: Integer; Stdcall; Far; External 'MP2032.DLL';
Function LeituraStatusEstendido(A: Array Of Byte): Integer; Stdcall; Far; External 'MP2032.DLL';
Function IoControl(Flag: Integer; Mode: Boolean): Integer; Stdcall; Far; External 'MP2032.DLL';

type
  TfprinciImpresRest = class(TForm)
    plrodape: TPanel;
    plip: TPanel;
    plbanco: TPanel;
    zito: Tuniquery;
    zitoitoitem: TIntegerField;
    zitoprocodigo: TIntegerField;
    zitopronome: TStringField;
    zitoitoquantidade: TFloatField;
    zitoitovalor: TFloatField;
    zitoitototal: TFloatField;
    zitoitodesconto: TFloatField;
    zitoitosaldo: TFloatField;
    zitoprosaldodisp: TFloatField;
    zitoitochave: TIntegerField;
    zitounicodigo: TIntegerField;
    zitoorcchave: TIntegerField;
    zitotdecodigo: TIntegerField;
    zitoproreferencia: TStringField;
    zitoitoproservico: TStringField;
    zitoitoinfadprod: TStringField;
    zitotpocodigo: TIntegerField;
    zitoitoprocomple: TStringField;
    zitoimmhorapedido: TTimeField;
    zitoimmhoraentrega: TTimeField;
    zitogrpidentificacao: TStringField;
    zitopronomereduzido: TStringField;
    zitostocodigo: TIntegerField;
    zitoimmchave: TIntegerField;
    orc: Tuniquery;
    orcorcchave: TIntegerField;
    orcorcnome: TStringField;
    orcorcobs: TStringField;
    cfg: Tuniquery;
    cfgcfgidentificacao: TStringField;
    relogio: TTimer;
    plrelogio: TPanel;
    inicializar: TTimer;
    zitounisimbolo: TStringField;
    lito: Tuniquery;
    Panel1: TPanel;
    btMinimizar: TButton;
    bfechar: TButton;
    orctrmcodigo: TIntegerField;
    orcclbcodigo: TIntegerField;
    orcclbidentificacao: TStringField;
    corc: Tuniquery;
    corcorcchave: TIntegerField;
    corcorcnome: TStringField;
    corcorcobs: TStringField;
    corctrmcodigo: TIntegerField;
    corcclbcodigo: TIntegerField;
    corcclbidentificacao: TStringField;
    cfgcfgnumepedido: TIntegerField;
    zitoimmnumepedido: TIntegerField;
    zitoclbidentificacao: TStringField;
    consultai: Tuniquery;
    cfgi: Tuniquery;
    cfgicfgidentificacao: TStringField;
    cfgicfgnumepedido: TIntegerField;
    zorci: Tuniquery;
    conexaoi: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    Dorc: TDataSource;
    ListaComandas: TDBGrid;
    Panel2: TPanel;
    numeropedido: TImage;
    Panel3: TPanel;
    orcorchoraabert: TTimeField;
    erros: TMemo;
    zitoimmdestino: TIntegerField;
    zitoimmidentificacao: TStringField;
    procedure relogioTimer(Sender: TObject);
    procedure inicializarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btMinimizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
  private
    procedure GeraNumeroPedido(Texto, arquivo: string);
    { Private declarations }
  public
    { Public declarations }
    function enviarparacozinha(VOrcChave: string): string;
    procedure ImprimirCozinha(orcchave: string; immmodo: string);
    function Imprime(Texto: TStringList; Porta: Ansistring): String;
    function Conectabancoi: Boolean;

  end;

var
  fprinciImpresRest: TfprinciImpresRest;

implementation

{$R *.dfm}

function TfprinciImpresRest.enviarparacozinha(VOrcChave: string): string;
var
  retorno: string;
begin
  retorno := '';
  // self.conexaoi.Disconnect;
  if self.Conectabancoi then
  begin
    zorci.Close;
    zorci.sql.text := 'select orcchave,stocodigo from orc where orcchave=' + VOrcChave;
    zorci.Open;

    retorno := '';
    if zorci.fieldbyname('stocodigo').AsInteger <> 2 then
    begin
      zorci.Edit;
      zorci.fieldbyname('stocodigo').AsInteger := 2;
      zorci.Post;
    end;
    retorno := self.zorci.fieldbyname('orcchave').AsString;

    zorci.Close;

  end;
  result := retorno;

end;

Procedure TfprinciImpresRest.ImprimirCozinha(orcchave: string; immmodo: string);
Var
  Texto: TStringList;
  Vprodu1: String;
  Vprodu2: String;
  Vprodu3: String;
  Vprodu4: String;
  Vprodu5: String;

  Vcomple1: String;
  Vcomple2: String;
  Vcomple3: String;

  vtciPorta: string;

  vgrpidenti: string;
  vfoi: string;
  vImpresso: string;
  vTitulo: string;
  Textoimg: string;
Begin

  // conexaoi.Disconnect;

  if self.Conectabancoi then
  begin

    corc.Close;
    corc.Params[0].AsString := orcchave;
    corc.Open;

    cfgi.Close;
    cfgi.Open;

    zito.Close;
    zito.Params[0].AsString := orcchave;
    zito.Params[1].AsString := immmodo;
    zito.Open;

    vgrpidenti := '';

    if zito.RecordCount > 0 then
    begin
      application.ProcessMessages;

      zito.First;
      While Not zito.Eof Do
      Begin

        if vgrpidenti <> zitogrpidentificacao.AsString then
        BEGIN

          Texto := TStringList.Create;

          if self.zitostocodigo.AsInteger = 88 then
          begin
            Texto.Add('* * C A N C E L A R * * *#21111');
            Texto.Add(' #10000');
          end;

          Textoimg := 'Ped.: ' + formatfloat('000', self.zitoimmnumepedido.AsInteger);
          if directoryexists(extractfilepath(application.ExeName) + 'numeros') = False then
            createdir(extractfilepath(application.ExeName) + 'numeros');

          GeraNumeroPedido(Textoimg, extractfilepath(application.ExeName) + 'numeros\ped' + formatfloat('000', self.zitoimmnumepedido.AsInteger)
            + '.bmp');

          Texto.Add('Ped' + formatfloat('000', self.zitoimmnumepedido.AsInteger) + '&');

          Texto.Add(self.corcorcnome.AsString + ' - ' + self.zitoimmidentificacao.AsString + '#20011');

          Texto.Add('[Trm: ' + formatfloat('00', self.corctrmcodigo.AsInteger) + ' - ' + datetimetostr(now) + ' Op:' + format('%-7s',
            [copy(zitoclbidentificacao.AsString, 1, 7)]) + ']#10000');

          Texto.Add('----------------------------------------------------------------#10000');
          Texto.Add('Qtd    |           Descrição                                    #10000');
          Texto.Add('----------------------------------------------------------------#10000');

          vgrpidenti := zitogrpidentificacao.AsString;

          Texto.Add(' #10000');
          Texto.Add('' + trim(vgrpidenti) + '#20011');
          Texto.Add(' #10000');

        END;

        Vprodu1 := '';
        Vprodu2 := '';

        Vprodu1 := copy(self.zitopronome.AsString, 1, 17);
        Vprodu2 := copy(self.zitopronome.AsString, 18, 17);
        Vprodu3 := copy(self.zitopronome.AsString, 35, 17);
        Vprodu4 := copy(self.zitopronome.AsString, 52, 17);
        Vprodu5 := copy(self.zitopronome.AsString, 69, 17);

        Vcomple1 := copy(self.zitoitoprocomple.AsString, 1, 25);
        Vcomple2 := copy(self.zitoitoprocomple.AsString, 26, 25);
        Vcomple3 := copy(self.zitoitoprocomple.AsString, 51, 25);

        if self.zitoimmhoraentrega.AsString = '' then
          vfoi := ''
        else
          vfoi := 'FOI';

        vTitulo := '';

        if zitounicodigo.AsInteger = 3 then
          vTitulo := 'MÉDIA';

        if zitounicodigo.AsInteger = 4 then
          vTitulo := 'GRANDE';

        if zitounicodigo.AsInteger = 5 then
          vTitulo := 'GIGANTE';

        if zitounicodigo.AsInteger = 6 then
          vTitulo := 'Com Agua';

        if zitounicodigo.AsInteger = 7 then
          vTitulo := 'Com Leite';

        if vTitulo <> '' then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [vTitulo]) + '#20011');

        if self.zitoitoquantidade.AsFloat < 1 then
          Texto.Add(format('%2.1f', [self.zitoitoquantidade.AsFloat]) + ' ' + format('%-3s', [vfoi]) + ' ' + format('%-17s', [Vprodu1]) + '#20011')
        else
          Texto.Add(format('%2.0f', [self.zitoitoquantidade.AsFloat]) + ' ' + format('%-3s', [vfoi]) + ' ' + format('%-17s', [Vprodu1]) + '#20011');

        If Vprodu2 <> '' Then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [Vprodu2]) + '#20011');
        If Vprodu3 <> '' Then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [Vprodu3]) + '#20011');

        If Vprodu4 <> '' Then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [Vprodu4]) + '#20011');
        If Vprodu5 <> '' Then
          Texto.Add(format('%6s', ['     ']) + ' ' + format('%-17s', [Vprodu5]) + '#20011');

        If Vcomple1 <> '' Then
        begin
          Texto.Add(' #10000');

          Texto.Add(format('%-25s', [Vcomple1]) + '#10011');

          If Vcomple2 <> '' Then
            Texto.Add(format('%-25s', [Vcomple2]) + '#10011');

          If Vcomple3 <> '' Then
            Texto.Add(format('%-25s', [Vcomple3]) + '#10011');

        end;

        Texto.Add('----------------------------------------------------------------#10000');

        zito.Next;

        IF (vgrpidenti <> zitogrpidentificacao.AsString) or (zito.Eof) THEN
        BEGIN

          // resumo
          Texto.Add('QTD. TOTAL DE ITENS                                          ' + formatfloat('000', self.zito.RecordCount) + '#10000');
          Texto.Add('----------------------------------------------------------------#10000');
          Texto.Add(' #10000');

          if self.corcorcobs.AsString <> '' then
          begin
            Texto.Add('O B E R V A Ç Ã O : #20011');
            Texto.Add(' #10000');
            Texto.Add(copy(self.corcorcobs.AsString, 1, 30) + '#20011');
            Texto.Add(copy(self.corcorcobs.AsString, 31, 30) + '#20011');
            Texto.Add(copy(self.corcorcobs.AsString, 91, 30) + '#20011');

          end;

          if pos('ENT', self.corcorcnome.AsString) > 0 then
          begin
            Texto.Add(' #10000');
            Texto.Add('Para: E N T R E G A#20011');
            Texto.Add(' #10000');

          end;

          if zitoimmdestino.AsInteger = 2 then
          begin
            Texto.Add(' #10000');
            Texto.Add('Para: V I A G E M#20011');
            Texto.Add(' #10000');

          end;

          consultai.Close;
          consultai.sql.text := 'SELECT distinct tci.tciporta FROM tci,grp,gri ';
          consultai.sql.Add('WHERE grp.grpcodigo=gri.grpcodigo and gri.tcicodigo=tci.tcicodigo and grp.grpidentificacao= ' + chr(39) + vgrpidenti
            + chr(39));
          consultai.Open;

          vtciPorta := consultai.Fields[0].AsString;

          consultai.Close;

          // vgrpidenti := zitogrpidentificacao.AsString;
{$IFDEF Debug}
          Texto.SaveToFile('c:\pega' + vgrpidenti + formatfloat('000', self.zitoimmnumepedido.AsInteger) + '.txt');
          freeandnil(Texto);
          vImpresso := '1';
{$ENDIF}
{$IFNDEF Debug}
          if vtciPorta <> '' then
          begin

            vImpresso := Imprime(Texto, vtciPorta);
            freeandnil(Texto);

          end;
{$ENDIF}
        END;
      End;

      if vImpresso = '1' then
      begin

        lito.Close;
        lito.Params[0].AsString := orcchave;
        lito.Params[1].AsString := immmodo;
        lito.Open;

        lito.First;
        While Not lito.Eof Do
        Begin
          consultai.Close;
          consultai.sql.text := 'update imm set immimpresso=1 where itochave=' + self.lito.fieldbyname('itochave').AsString;
          consultai.execsql;

          lito.Next;
        End;
      end;

    end;

  end;
End;

procedure TfprinciImpresRest.inicializarTimer(Sender: TObject);
begin
  inicializar.Enabled := False;
  relogio.Enabled := true;
end;

procedure TfprinciImpresRest.bfecharClick(Sender: TObject);
begin
  IF application.MessageBox(PChar('Ao Fechar o servidor as COMANDAS não serão Impressas, deseja REALMENTE fechar o Servidor?!'), 'Atenção',
    MB_YESNO + MB_DEFBUTTON1 + MB_ICONWARNING) = IDNO then
  begin
    exit;
  end
  else
  begin
    application.Terminate;
  end;

end;

procedure TfprinciImpresRest.btMinimizarClick(Sender: TObject);
begin
  self.WindowState := wsminimized;

end;

function TfprinciImpresRest.Conectabancoi: Boolean;
Var
  Arquini: Tinifile;
  Vnomebanco: String;
  Vportabanco: String;
  Vservidor: String;
  vUsuario: String;
  vsenha: String;
Begin

  Arquini := Tinifile.Create(extractfilepath(application.ExeName) + 'gourmeterp.ini');
  With Arquini Do
  Begin
    Vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
    Vservidor := ReadString('posi', 'servidor', '127.0.0.1');
    vUsuario := ReadString('posi', 'usuario', 'root');
    vsenha := ReadString('posi', 'senha', 'xda973');
    Vportabanco := ReadString('posi', 'portabanco', '3306');
  End;
  Arquini.Destroy;

  if conexaoi.Connected = False then
  begin
    try

      conexaoi.Database := Vnomebanco;
      conexaoi.Username := 'root';
      conexaoi.ProviderName := 'MySql';
      conexaoi.Password := vsenha;
      conexaoi.Port := StrToInt(Vportabanco);
      conexaoi.server := Vservidor;
      conexaoi.Connected := true;

    except
      while true do
      begin
        sleep(1000);
        erros.Lines.Add(datetimetostr(now) + ' - Conectando ao servidor.');
        application.ProcessMessages;

        conexaoi.Connected := False;
        conexaoi.Database := Vnomebanco;
        conexaoi.Username := 'root';
        conexaoi.ProviderName := 'MySql';
        conexaoi.Password := vsenha;
        conexaoi.Port := StrToInt(Vportabanco);
        conexaoi.server := Vservidor;
        conexaoi.Connected := true;

        if conexaoi.Connected then
          break;

      end;
    end;

    plip.Caption := Vservidor;
    plbanco.Caption := Vnomebanco;

    result := conexaoi.Connected;

  end
  else
    result := conexaoi.Connected;

End;

procedure TfprinciImpresRest.relogioTimer(Sender: TObject);
var
  iorcchave: string;
begin
  relogio.Enabled := False;

  if self.Conectabancoi then
  begin
    // try
    try

      plrelogio.Caption := timetostr(Time);
      while true do
      begin
        // try
        if orc.Active then
          orc.Close;

        orc.Close;
        orc.sql.text := 'select distinct orc.orcchave, orcnome, orcobs,orc.trmcodigo,orc.clbcodigo,orchoraabert ';
        orc.sql.Add('from orc,ito,imm where orc.orcchave=ito.orcchave and ito.itochave=imm.itochave and ');
        orc.sql.Add('imm.immimpresso=0 and ito.stocodigo=88 and orc.stocodigo=2');
        orc.Open;

        orc.First;
        while not orc.Eof do
        begin
          iorcchave := self.orcorcchave.AsString;
          ImprimirCozinha(iorcchave, '0');
          orc.Next;
        end;

      orc.Close;
        orc.sql.text := 'select distinct orc.orcchave, orcnome, orcobs,orc.trmcodigo,orc.clbcodigo,orchoraabert ';
        orc.sql.Add('from orc,ito,imm where orc.orcchave=ito.orcchave and ito.itochave=imm.itochave and ');
        orc.sql.Add('imm.immimpresso=0 and ito.stocodigo=2 and orc.stocodigo=2');
        orc.Open;

        orc.First;

        while not orc.Eof do
        begin
          iorcchave := self.orcorcchave.AsString;
          ImprimirCozinha(iorcchave, '1');
          orc.Next;
        end;

        if orc.Eof then
          break;

        // except
        // sleep(500);
        // end;
      end;
    finally
      relogio.Enabled := true;
    end;
    { except
      //   sleep(500);
      relogio.Enabled := true;
      end; }
  end;

end;

procedure TfprinciImpresRest.FormShow(Sender: TObject);
begin
  if Conectabancoi then
  begin
    inicializar.Enabled := true;

  end;
end;

Function TfprinciImpresRest.Imprime(Texto: TStringList; Porta: Ansistring): String;
Var
  Vch: String;
  i: Integer;
  S_linha: Ansistring;
  S_comando: String;
  S_texto: Ansistring;
  I_tipo_letra: Integer;
  I_italico: Integer;
  I_sublinhado: Integer;
  I_expandido: Integer;
  I_enfatizado: Integer;
  I_retorno: Integer;

  ErrorCorrectionLevel: Integer;
  ModuleSize: Integer;
  CodeType: Integer;
  QRCodeVersion: Integer;
  EncodingModes: Integer;
  CodeQr: String;
  IRetorno: Integer;
  sRetorno: String;

Begin
  Try

    sRetorno := '1';
    // COMANDO EXECUTADO INTERNAMENTE PELA DLL PARA
    // CONFIGURAÇÃO DO MODELO DA IMPRESSORA QUE SERÁ CONECTADA

    ConfiguraModeloImpressora(7); // MP 4200 TH

    // COMANDO DE ABERTURA DA PORTA DE COMUNICAÇÃO

    I_retorno := IniciaPorta(PAnsichar(Porta));

    If I_retorno <> 1 Then
    Begin
      while true do
      begin

        I_retorno := IniciaPorta(PAnsichar(Porta));

        If I_retorno = 1 Then
        Begin

          break;
        End
        else
        begin
          erros.Lines.Add('VERIFIQUE IMPRESSORA: ' + Porta);
          application.ProcessMessages;
          sleep(500);
          sRetorno := '0';
          exit;
        end;
      end;
    End;

    If I_retorno = 1 Then
    Begin

      For i := 0 To Texto.Count - 1 Do
      Begin

        If pos('&', Texto[i]) > 0 Then // linha de texto
        Begin
          S_linha := copy(Texto[i], 1, pos('&', Texto[i]) - 1);

          BematechTX(#27 + #97 + '2');

          ImprimeBmpEspecial(PChar(extractfilepath(application.ExeName) + 'numeros\' + S_linha + '.bmp'), 70, 70, 0);

          BematechTX(#27 + #97 + '0');

        End;

        If pos('#', Texto[i]) > 0 Then // linha de texto
        Begin

          S_linha := copy(Texto[i], 1, pos('#', Texto[i]) - 1);
          S_texto := S_linha;
          S_comando := copy(Texto[i], pos('#', Texto[i]) + 1, 200);

          I_tipo_letra := StrToInt(copy(S_comando, 1, 1));
          // comprimido:=1;  normal:=2;  elite:=3;

          I_italico := StrToInt(copy(S_comando, 2, 1));
          // ligado:=1; desligado:=0;
          I_sublinhado := StrToInt(copy(S_comando, 3, 1));
          // ligado:=1; desligado:=0;
          I_expandido := StrToInt(copy(S_comando, 4, 1));
          // ligado:=1; desligado:=0;
          I_enfatizado := StrToInt(copy(S_comando, 5, 1));
          // ligado:=1; desligado:=0;

          I_retorno := FormataTX(PAnsichar(S_texto) + #13 + #10, I_tipo_letra, I_italico, I_sublinhado, I_expandido, I_enfatizado);

          If I_retorno <> 1 Then
          Begin
            while true do
            begin

              If I_retorno = 1 Then
              Begin
                erros.Lines.Add('Imprimindo ...');
                application.ProcessMessages;
                I_retorno := FormataTX(PAnsichar(S_texto) + #13 + #10, I_tipo_letra, I_italico, I_sublinhado, I_expandido, I_enfatizado);
                break;
              End
              else
              begin
                erros.Lines.Add('VERIFIQUE IMPRESSORA: ' + Porta);
                application.ProcessMessages;
                sleep(500);

              end;
            end;
          End;

        End;

        If pos('&cHashQRCode', Texto[i]) > 0 Then // linha de texto
        Begin

          ErrorCorrectionLevel := 2;
          ModuleSize := 5;
          CodeType := 0;
          QRCodeVersion := 10;
          EncodingModes := 1;

          CodeQr := Texto[i];

          BematechTX(#27 + #97 + '1');

          I_retorno := ImprimeCodigoQRCODE(ErrorCorrectionLevel, ModuleSize, CodeType, QRCodeVersion, EncodingModes, CodeQr);

        End;

      End;
      if Porta = '192.168.5.202' then
        AcionaGuilhotina(0)
      else
        AcionaGuilhotina(1);

      sleep(200);

    End;
    // VALIDAÇÃO DE EXECUÇÃO DO COMANDO

    If I_retorno = 0 Then
      exit;

    // Result := Inttostr(Fnfce.I_retorno);
  Finally

    FechaPorta();
    // FreeAndNil(Fnfce);
    result := sRetorno;
  End;
End;

Procedure TfprinciImpresRest.GeraNumeroPedido(Texto, arquivo: string);
var
  vlArqFundo: string;
begin

  if not fileexists(arquivo) then
  begin
    vlArqFundo := extractfilepath(application.ExeName) + 'numeros\fundo.bmp';
    if not fileexists(vlArqFundo) then
    begin
      numeropedido.Picture.SaveToFile(vlArqFundo);
    end;

    numeropedido.Picture.LoadFromFile(vlArqFundo);
    with numeropedido.Picture.Bitmap.Canvas do
    begin
      Font.Color := clblack;
      Brush.Style := bsclear;
      Font.Size := 30;
      Font.Name := 'Tahoma';
      Font.Style := [fsbold];
      TextOut(65, 5, Texto);
    end;
    numeropedido.Picture.SaveToFile(arquivo);
  end;
end;

end.
