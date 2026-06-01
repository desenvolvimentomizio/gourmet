unit ufimpgou;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, DBAccess, Uni,
  UniProvider, MySQLUniProvider, DASQLMonitor, UniSQLMonitor, inifiles, MemDS,
  Vcl.Imaging.pngimage, frxRich, ACBrPosPrinter;

type
  Tfimpgou = class(TForm)
    imprimir: TTimer;
    UniSQLMonitor: TUniSQLMonitor;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    consulta: TUniQuery;
    Image1: TImage;
    tcisituacao: TUniQuery;
    plmensagem: TPanel;
    frxRichObject1: TfrxRichObject;
    ACBrPosPrinter1: TACBrPosPrinter;
    procedure imprimirTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private

    function conectabanco: boolean;

    { Private declarations }
  public
    { Public declarations }
    vporta: string;
    vArquivo: string;
    vTciCodigo: string;
    vimms: string;
  end;

var
  fimpgou: Tfimpgou;

implementation

{$R *.dfm}

{ Traduz o conjunto de status do ACBrPosPrinter para os codigos legados da
  MP2032.DLL usados na logica original (24=ok, 32=sem papel, 5=pouco papel,
  9=tampa aberta, 0=offline). }
function StatusACBrParaCodigo(St: TACBrPosPrinterStatus): Integer;
begin
  if St = [] then
    Result := 24
  else if stSemPapel in St then
    Result := 32
  else if stPoucoPapel in St then
    Result := 5
  else if stTampaAberta in St then
    Result := 9
  else if stOffLine in St then
    Result := 0
  else
    Result := 99;
end;

{ Monta o valor de Porta do ACBr a partir do endereco gravado em tciporta.
  Como as impressoras sao de rede, um IP "puro" vira TCP:ip:9100; valores ja
  qualificados (TCP:..., \\host\impressora) sao mantidos. }
function MontaPortaACBr(const Endereco: string): string;
var
  vEnd: string;
begin
  vEnd := Trim(Endereco);
  if vEnd = '' then
    Result := vEnd
  else if (Pos(':', vEnd) > 0) or (Pos('\', vEnd) > 0) then
    Result := vEnd
  else
    Result := 'TCP:' + vEnd + ':9100';
end;

{ Mapeia o tipo da impressora (tip.tipcodigo, gravado em mit.tipcodigo) para o
  Modelo do ACBrPosPrinter: 8 = EscPOS -> ppEscPosEpson; demais (ex.: 6) ->
  ppEscBematech, mantendo o comportamento padrao. }
function ModeloACBrPorTip(TipCodigo: Integer): TACBrPosPrinterModelo;
begin
  if TipCodigo = 8 then
    Result := ppEscPosEpson
  else
    Result := ppEscBematech;
end;

{ Le o tipo (mit.tipcodigo) da impressora a partir do tci informado. Em caso de
  falha ou tci inexistente, assume 6 (EscBematech). }
function TipCodigoDoTci(AConexao: TUniConnection; const ATciCodigo: string): Integer;
var
  Q: TUniQuery;
begin
  Result := 6;
  if Trim(ATciCodigo) = '' then
    Exit;
  Q := TUniQuery.Create(nil);
  try
    try
      Q.Connection := AConexao;
      Q.SQL.Text := 'select mit.tipcodigo from tci, mit ' +
        'where tci.mitcodigo = mit.mitcodigo and tci.tcicodigo = ' + ATciCodigo;
      Q.Open;
      if not Q.Eof then
        Result := Q.FieldByName('tipcodigo').AsInteger;
    except
      Result := 6;
    end;
  finally
    Q.Free;
  end;
end;

procedure Tfimpgou.FormShow(Sender: TObject);
begin
  vArquivo := paramstr(1);
  vporta := paramstr(2);
  vimms := paramstr(3);
  vTciCodigo := paramstr(4);
  imprimir.Enabled := true;
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
  result := Conexao.Connected;

End;

procedure Tfimpgou.imprimirTimer(Sender: TObject);
var
  vlRetorno: Integer;
  vltentativas: Integer;
  vlImpresso: Boolean;
begin

  imprimir.Enabled := false;

  vltentativas := 0;
  if conectabanco then
  begin

    { Define o Modelo do ACBrPosPrinter conforme o tipo da impressora (tip):
      tipcodigo 8 = EscPOS (ppEscPosEpson); demais usam ppEscBematech. }
    ACBrPosPrinter1.Modelo := ModeloACBrPorTip(TipCodigoDoTci(Conexao, vTciCodigo));

    while true do
    begin

      self.Caption := 'Impressora ' + vporta;
      Application.ProcessMessages;

      { Abre a porta da impressora e le o status (substitui
        ConfiguraModeloImpressora/IniciaPorta/Le_Status da MP2032.DLL).
        O Modelo ja foi definido acima conforme o tipo (tip) da impressora. }
      vlRetorno := 0;
      try
        ACBrPosPrinter1.Desativar;
        ACBrPosPrinter1.Porta := MontaPortaACBr(vporta);
        ACBrPosPrinter1.Ativar;
        vlRetorno := StatusACBrParaCodigo(ACBrPosPrinter1.LerStatusImpressora);
      except
        vlRetorno := 0;
      end;

      if vlRetorno = 24 then
      begin

        tcisituacao.Close;
        tcisituacao.SQL.Text := 'select tcicodigo, tciimprimindo from tci where tcicodigo=' + vTciCodigo;
        tcisituacao.Open;

        tcisituacao.Edit;
        tcisituacao.FieldByName('tciimprimindo').AsString := datetimetostr(now());
        tcisituacao.post;
        plmensagem.Caption := 'imprimindo ...';
        Application.ProcessMessages;

        vlImpresso := false;
        try
          if fileexists(vArquivo) then
          begin
            ACBrPosPrinter1.ImprimirImagemArquivo(vArquivo);
            ACBrPosPrinter1.CortarPapel(false);
            RenameFile(vArquivo, ChangeFileExt(vArquivo, 'imp'));
          end
          else
            ACBrPosPrinter1.CortarPapel(false);

          vlImpresso := true;
        except
          vlImpresso := false;
        end;

        if vlImpresso then
        begin
          tcisituacao.Edit;
          tcisituacao.FieldByName('tciimprimindo').AsString := '';
          tcisituacao.post;
          ACBrPosPrinter1.Desativar;
          break;
        end;

        vltentativas := vltentativas + 1;

        if vltentativas > 10 then
        begin

          plmensagem.Caption := Inttostr(vltentativas) + ' Tentativa ...';
          Application.ProcessMessages;
          tcisituacao.Close;
          tcisituacao.SQL.Text := 'select tcicodigo, tciimprimindo from tci where tcicodigo=' + vTciCodigo;
          tcisituacao.Open;

          tcisituacao.Edit;
          tcisituacao.FieldByName('tciimprimindo').AsString := '';
          tcisituacao.post;

          consulta.Close;
          consulta.SQL.Text := 'update imm set immhoraimpresso=' + QuotedStr('') + ' where immchave in (' + vimms + ')';
          consulta.ExecSQL;
          break;
        end;

      end
      else
      begin
        ACBrPosPrinter1.Desativar;
        sleep(500);
      end;
    end;
    Close;
  end
  else
    Close;

end;


end.
