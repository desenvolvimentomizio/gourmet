unit ufimpgou;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uni, Data.DB, DBAccess, DASQLMonitor,
  UniSQLMonitor, UniProvider, MySQLUniProvider, frxDesgn, frxClass, frxDBSet,
  frxExportImage, frxDACComponents, frxUniDACComponents, MemDS, System.DateUtils, inifiles,
  Vcl.ExtCtrls, Vcl.StdCtrls;

// Declarando a MP2032.DLL e sua funções em Delphi

Function IniciaPorta(Porta: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FechaPorta: Integer; Stdcall; Far; External 'MP2032.DLL';
Function BematechTX(BufTrans: Ansistring): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ComandoTX(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function CaracterGrafico(BufTrans: Ansistring; TamBufTrans: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function DocumentInserted: Integer; Stdcall; Far; External 'MP2032.DLL';
Function Le_Status: Integer; Stdcall; Far; External 'MP2032.DLL';
Function HabilitaEsperaImpressao(Flag: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function EsperaImpressao: Integer; Stdcall; Far; External 'MP2032.DLL';
Function ConfiguraModeloImpressora(ModeloImpressora: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function AcionaGuilhotina(Modo: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function FormataTX(BufTras: Ansistring; TpoLtra: Integer; Italic: Integer; Sublin: Integer; Expand: Integer; Enfat: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function VerificaPapelPresenter: Integer; Stdcall; Far; External 'MP2032.DLL';

function DefineNVBitmap(count: Integer; filenames: array of string): Integer; stdcall; far; external 'MP2032.DLL';
function Define1NVBitmap(filename: string): Integer; stdcall; far; external 'MP2032.DLL';
function DefineDLBitmap(filename: string): Integer; stdcall; far; external 'MP2032.DLL';
function PrintNVBitmap(image: Integer; mode: Integer): Integer; stdcall; far; external 'MP2032.DLL';
function PrintDLBitmap(mode: Integer): Integer; stdcall; far; external 'MP2032.DLL';
function SelecionaQualidadeImpressao(mode: Integer): Integer; stdcall; far; external 'MP2032.DLL';
function SelectDithering(mode: Integer): Integer; stdcall; far; external 'MP2032.DLL';




// Função para Configuração dos Códigos de Barras

Function ConfiguraCodigoBarras(Altura: Integer; Largura: Integer; PosicaoCaracteres: Integer; Fonte: Integer; Margem: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';

// Funções para impressão dos códigos de barras

Function ImprimeCodigoQRCODE(ErrorCorrectionLevel: Integer; ModuleSize: Integer; CodeType: Integer; QRCodeVersion: Integer; EncodingModes: Integer; CodeQr: Ansistring): Integer;
  Stdcall; Far; External 'MP2032.DLL';

// Funções para impressão de BitMap

Function ImprimeBitmap(Name: Ansistring; mode: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function ImprimeBmpEspecial(Name: Ansistring; XScale: Integer; YScale: Integer; Angle: Integer): Integer; Stdcall; Far; External 'MP2032.DLL';
Function LeituraStatusEstendido(A: Array Of Byte): Integer; Stdcall; Far; External 'MP2032.DLL';

type
  Tfimpgou = class(TForm)
    MySQLUniProvider: TMySQLUniProvider;
    UniSQLMonitor: TUniSQLMonitor;
    Conexao: TUniConnection;
    frxUniDACComponents: TfrxUniDACComponents;
    vias: TUniQuery;
    imprimir: TTimer;
    Memo1: TMemo;
    procedure imprimirTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FRetorno: Integer;
    FNumePedido: Integer;
    FItochave: Integer;
    Fporta: string;
    Fimmchave: string;
    Fcaminhoarquivo: string;
    ftcicodigo: string;
    forcchave: string;
    procedure processar;
    function conectabanco: boolean;
    { Private declarations }
  public
    { Public declarations }
  published
    property retorno: Integer read FRetorno write FRetorno;
    property itochave: Integer read FItochave write FItochave;
    property NumePedido: Integer read FNumePedido write FNumePedido;
    property Porta: string read Fporta write Fporta;
    property tcicodigo: string read ftcicodigo write ftcicodigo;
    property orcchave: string read forcchave write forcchave;
    property immchave: string read Fimmchave write Fimmchave;
    property caminhoarquivo: string read Fcaminhoarquivo write Fcaminhoarquivo;
  end;

var
  fimpgou: Tfimpgou;

implementation

{$R *.dfm}

procedure Tfimpgou.FormShow(Sender: TObject);

begin

   FNumePedido := StrToInt(ParamStr(1)); // recebe o 1º parametro ( comando )
    Fporta := ParamStr(2); // recebe o 1º parametro ( comando )
    forcchave := ParamStr(3); // recebe o 1º parametro ( comando )
    FItochave := StrToInt(ParamStr(4));
    ftcicodigo := ParamStr(5);
    Fimmchave := ParamStr(6);
    Fcaminhoarquivo := ParamStr(7);

 { FNumePedido := 5015;
  Fporta := '192.168.0.32';
  forcchave := '279277';
  FItochave := 867997;
  ftcicodigo := '3';
  Fimmchave := '168667';
  Fcaminhoarquivo := '$(gourmet1)\pedidos\001340';}

  imprimir.Enabled := true;
end;

procedure Tfimpgou.imprimirTimer(Sender: TObject);
begin
  imprimir.Enabled := false;
  if conectabanco then
  begin
    processar;
    Application.Terminate;
  end;
end;

function Tfimpgou.conectabanco: boolean;
Var
  arquini: TIniFile;
  vnomebanco: String;
  vportabanco: String;
  vservidor: String;
  vusuario: String;
  vsenha: String;
  vCaminho: string;

Begin
  try
    arquini := TIniFile.Create(ExtractFilePath(Application.ExeName) + 'gourmeterp.ini');
    vCaminho := ExtractFilePath(Application.ExeName);
    With arquini Do
    Begin

      vnomebanco := ReadString('posi', 'nomebanco', 'mizio');
      vservidor := ReadString('posi', 'servidor', '127.0.0.1');
      vusuario := ReadString('posi', 'usuario', 'root');
      vsenha := ReadString('posi', 'senha', 'xda973');
      vportabanco := ReadString('posi', 'portabanco', '3306');

    End;
    arquini.Free;

    Conexao.Connected := false;
    Conexao.Database := vnomebanco;
    Conexao.Username := vusuario;
    Conexao.Password := vsenha;
    Conexao.Port := StrToInt(vportabanco);
    Conexao.Server := vservidor;
    Conexao.Connected := true;

    result := true;
  except
    if not Conexao.Connected then
    begin
      result := false;
      Application.Terminate;
    end;

  end;

End;

procedure Tfimpgou.processar;

var
  vlArqBmp: string;

  vlRetImp: string;
  vlVias: Integer;
  vlItoChave: string;

  consultath: TUniQuery;
  imwth: TUniQuery;
  immth: TUniQuery;

  immtempoth: TUniQuery;

  DataI: TDatetime;
  DataF: TDatetime;
  DifDias: double;
  vlDifTempo: string;
  vlImmHoraPedido: TDatetime;

  vlTenttivas: Integer;

begin
  { imprime a imagem do pedido na impressora }
  consultath := TUniQuery.Create(nil);
  consultath.Connection := Conexao;

  imwth := TUniQuery.Create(nil);
  imwth.Connection := Conexao;

  imwth := TUniQuery.Create(nil);
  imwth.Connection := Conexao;

  immth := TUniQuery.Create(nil);
  immth.Connection := Conexao;

  immtempoth := TUniQuery.Create(nil);

  immtempoth.Connection := Conexao;

  vlTenttivas := 0;

  while true do
  begin
    if vlTenttivas > 50 then
    begin
      break;
    end
    else
    begin
      consultath.close;
      consultath.SQL.Text := 'select tcicodigo, tciimprimindo from tci where tcicodigo=' + ftcicodigo;
      consultath.Open;
    end;

    if consultath.FieldByName('tciimprimindo').AsString <> '' then
    begin
      sleep(1000);
      vlTenttivas := vlTenttivas + 1;
      Memo1.Lines.Add('Tentativa: ' + inttostr(vlTenttivas));
      Application.ProcessMessages;
    end
    else
    begin

      FRetorno := ConfiguraModeloImpressora(7);
      FRetorno := IniciaPorta(Fporta);

      if FRetorno = 0 then
      begin
        FechaPorta;
      end;

      FRetorno := IniciaPorta(Fporta);

      if FRetorno = 1 then
      begin
        vlArqBmp := Fcaminhoarquivo + '\ped' + formatfloat('0000', FNumePedido) + '.bmp';
        FRetorno := 0;

        if fileexists(vlArqBmp) then
        begin

          vias.close;
          vias.SQL.Text := 'select orcvias from orc,ito,imm where orc.orcchave=ito.orcchave and ito.itochave=imm.itochave and  immnumepedido=' + inttostr(FNumePedido) + ' limit 1';
          vias.Open;

          for vlVias := 1 to vias.FieldByName('orcvias').AsInteger do
          begin

            if Fimmchave <> '' then
            begin

              immtempoth.close;

              immtempoth.SQL.Text := 'select immhorapedido from imm where immchave=' + Fimmchave;
              immtempoth.Open;
              vlImmHoraPedido := immtempoth.FieldByName('ImmHoraPedido').AsFloat;

            end
            else
            begin
              vlImmHoraPedido := now();
            end;

            consultath.Edit;
            consultath.FieldByName('tciimprimindo').AsString := datetimetostr(now());
            consultath.Post;
            sleep(1000);
            FRetorno := ImprimeBmpEspecial(pchar(vlArqBmp), 80, 80, 0);

            sleep(1000);
            if FRetorno = 1 then
            begin

              consultath.close;
              consultath.SQL.Text := 'select tcicodigo, tciimprimindo from tci where tcicodigo=' + ftcicodigo;
              consultath.Open;

              if consultath.FieldByName('tciimprimindo').AsString <> '' then
              begin
                consultath.Edit;
                consultath.FieldByName('tciimprimindo').AsString := '';
                consultath.Post;

              end;

              { consultath.close;
                consultath.SQL.Text := 'update imm set immhoraimpresso=NOW() where immchave in (select immchave from tped where orcchave=' + forcchave + ' and immnumepedido=' +
                inttostr(FNumePedido) + ' and tcicodigo=' + ftcicodigo + ')';
                consultath.ExecSQL; }

              immth.close;
              immth.SQL.Text := 'select immchave from imm,ito where imm.itochave=ito.itochave and ito.orcchave=' + forcchave + ' and immnumepedido=' + inttostr(FNumePedido) +
                ' and tcicodigo=' + ftcicodigo;
              immth.Open;

              while not immth.eof do
              begin
                consultath.close;
                consultath.SQL.Text := 'update imm set immhoraimpresso=NOW() where immchave=' + immth.FieldByName('immchave').AsString;
                consultath.ExecSQL;
                immth.Next;
              end;

              imwth.close;
              imwth.SQL.Text := 'SELECT   imwchave,  itochave,  imwhoranotificadopedido,  imwhorasaidadopedido,  imwhoraentregadopedido FROM imw where itochave=:itochave ';
              imwth.ParamByName('itochave').AsInteger := FItochave;
              imwth.Open;

              if imwth.IsEmpty then
              begin
                imwth.Append;
                imwth.FieldByName('itochave').AsInteger := FItochave;
                imwth.Post;
              end;

              DataI := now();
              DataF := vlImmHoraPedido;
              DifDias := DaySpan(DataI, DataF);
              vlDifTempo := FormatDateTime('n":"s""', DifDias);
              break;

              { consultath.close;
                consultath.SQL.Text := 'select tped.immchave, imm.itochave from tped, imm where tped.immchave=imm.immchave  and  tped.orcchave=' + forcchave +
                ' and tped.immnumepedido=' + inttostr(FNumePedido) + ' and tped.tcicodigo=' + ftcicodigo;
                consultath.Open;


                vlItoChave := '';
                vlItoChave := consultath.Fields[1].AsString;

                consultath.close;
                consultath.SQL.Text := 'select tpocodigo from pro, ito where pro.procodigo=ito.procodigo and itochave=' + vlItoChave;
                consultath.Open;

                if consultath.Fields[0].AsString = '9' then
                begin
                consultath.close;
                consultath.SQL.Text := 'delete from ito where itototalav=0 and itochave=' + vlItoChave;
                consultath.ExecSQL;

                end;

              }

            end;
          end;

          if FRetorno = 1 then
          begin
            FRetorno := IniciaPorta(Fporta);
            FRetorno := AcionaGuilhotina(0);
            FechaPorta;
          end;
          consultath.close;
          imwth.close;
          freeandnil(consultath);
          freeandnil(imwth);

          close;
          break;

        end;
      end;

    end;
  end;


end;

end.
