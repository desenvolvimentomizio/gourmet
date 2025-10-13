unit ufprinciaiqgfome;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls,
  DASQLMonitor, UniSQLMonitor, Data.DB, DBAccess, Uni, UniProvider,
  MySQLUniProvider, Vcl.ComCtrls, inifiles, MemDS, ClipBrd, Vcl.OleCtrls,
  SHDocVw, System.Win.IEInterfaces, DateUtils, Vcl.Grids, Vcl.DBGrids,
   Vcl.Clipbrd;

type
  Tfprinciaiqgfome = class(TForm)
    Inicializar: TTimer;
    LeitorArquivo: TTimer;
    btAtivar: TButton;
    btDesativar: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    UniSQLMonitor: TUniSQLMonitor;
    mensagens: TStatusBar;
    consulta: TUniQuery;
    etdimp: TUniQuery;
    edrimp: TUniQuery;
    etfimp: TUniQuery;
    etvimp: TUniQuery;
    Memo1: TMemo;
    Panel1: TPanel;
    Button3: TButton;
    verificacadastro: TUniQuery;
    verificacadastroetdcodigo: TIntegerField;
    verificacadastroetdidentificacao: TStringField;
    verificacadastroedrcodigo: TIntegerField;
    verificacadastroedrrua: TStringField;
    verificacadastroedrnumero: TStringField;
    verificacadastroetfcodigo: TIntegerField;
    verificacadastroetftelefone: TStringField;
    verificacadastroedrbairro: TStringField;
    baiimp: TUniQuery;
    baiimpbaicodigo: TIntegerField;
    baiimpbaiidentificacao: TStringField;
    baiimpprocodigo: TIntegerField;
    proimp: TUniQuery;
    proimpprocodigo: TIntegerField;
    proimppronome: TStringField;
    proimptpoidentificacao: TStringField;
    proimpmaridentificacao: TStringField;
    proimpgrpidentificacao: TStringField;
    proimpicmaliquotas: TStringField;
    proimpproncm: TStringField;
    proimpprosaldo: TFloatField;
    proimpprosaldodisp: TFloatField;
    proimpsipcodigo: TIntegerField;
    proimpproobs: TStringField;
    proimpproreferencia: TStringField;
    proimpunisimbolo: TStringField;
    proimppunprecoav: TFloatField;
    proimppunprecoap: TFloatField;
    proimptpocodigo: TIntegerField;
    proimpproanpcodigo: TIntegerField;
    proimpenpcodigo: TIntegerField;
    proimpenpendereco: TStringField;
    proimppropedecomple: TIntegerField;
    proimpcpbcodbalanca: TIntegerField;
    proimpgracodigo: TIntegerField;
    proimpdpridentificacao: TStringField;
    proimpproconsolidado: TIntegerField;
    proimppunpercav: TFloatField;
    proimppunpercap: TFloatField;
    proimppuncusto: TFloatField;
    proimpgrpcodigo: TIntegerField;
    proimpcstcodigo: TStringField;
    proimpprocest: TStringField;
    Dpro: TDataSource;
    DBGrid1: TDBGrid;
    etdimpUniQuery: TUniQuery;
    etdimpIntegerField: TIntegerField;
    etdimpStringField: TStringField;
    etdimpIntegerField2: TIntegerField;
    etdimpStringField2: TStringField;
    etdimpStringField3: TStringField;
    etdimpIntegerField3: TIntegerField;
    etdimpStringField4: TStringField;
    etdimpStringField5: TStringField;
    etdimpetdcodigo: TIntegerField;
    etdimpetdidentificacao: TStringField;
    etdimpetdapelido: TStringField;
    etdimpetddeletar: TIntegerField;
    etdimptpecodigo: TIntegerField;
    etdimpetddatacad: TDateField;
    etdimpetddataalt: TDateField;
    etdimpetddoc1: TStringField;
    etdimptsecodigo: TIntegerField;
    etdimpetdcarga: TIntegerField;
    etdimpetdativo: TIntegerField;
    etdimpetddescsituacao: TStringField;
    etdimpetdsped: TIntegerField;
    etdimpetdobs: TStringField;
    etdimpetdsuframa: TStringField;
    etdimptcbcodigo: TIntegerField;
    etdimpetdnfemodelos: TStringField;
    etdimpgrtcodigo: TIntegerField;
    etdimpatvcodigo: TIntegerField;
    etdimpjsncodigo: TIntegerField;
    etdimpetdpedidoobrigatorio: TIntegerField;
    etdimpetdregime: TIntegerField;
    edrimpedrcodigo: TIntegerField;
    edrimptedcodigo: TIntegerField;
    edrimpetdcodigo: TIntegerField;
    edrimpedrrua: TStringField;
    edrimpedrnumero: TStringField;
    edrimpedrcxpostal: TStringField;
    edrimpedrcomple: TStringField;
    edrimpedrbairro: TStringField;
    edrimpcddcodigo: TStringField;
    edrimpedrinscest: TStringField;
    edrimpedrcep: TStringField;
    edrimpedrinsestst: TStringField;
    edrimpufscodigo: TStringField;
    edrimpedrobs: TStringField;
    edrimpedrinscmun: TStringField;
    edrimpedritem: TIntegerField;
    edrimpedrnomefazenda: TStringField;
    edrimpedrrazaofazenda: TStringField;
    edrimpedrativo: TIntegerField;
    edrimpjsncodigo: TIntegerField;
    etvimpUniQuery: TUniQuery;
    etvimpIntegerField: TIntegerField;
    etvimpStringField: TStringField;
    etvimpIntegerField2: TIntegerField;
    etvimpStringField2: TStringField;
    etvimpStringField3: TStringField;
    etvimpIntegerField3: TIntegerField;
    etvimpStringField4: TStringField;
    etvimpStringField5: TStringField;
    etvimpetvcodigo: TIntegerField;
    etvimpetdcodigo: TIntegerField;
    etvimptvicodigo: TIntegerField;
    etvimppcgcodigo: TIntegerField;
    etfimpetfcodigo: TIntegerField;
    etfimpetdcodigo: TIntegerField;
    etfimpttfcodigo: TIntegerField;
    etfimpetftelefone: TStringField;
    etfimpetfcontato: TStringField;
    etfimpetfdepartamento: TStringField;
    etfimpetfativo: TIntegerField;
    etfimpjsncodigo: TIntegerField;
    etfimpetfsenha: TStringField;
    etfimpetfpontuacao: TIntegerField;
    procedure InicializarTimer(Sender: TObject);
    procedure LeitorArquivoTimer(Sender: TObject);
    procedure btAtivarClick(Sender: TObject);
    procedure btDesativarClick(Sender: TObject);
    procedure Memo1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure Memo1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure inicializaembiente;
    procedure ConectaBanco;
    procedure ProcessaPedido(vTexto: tstringList);
    procedure ProcessaItens(vTexto: tstringList);
    { Private declarations }
  public
    { Public declarations }
    vpNrPedidoAiqFome: string;
    vpHoraPedido: string;
    vpDataPedido: string;

    vPetdcodigo: string;
    vPetdidentificacao: string;
    vPedrcodigo: string;
    vPedrrua: string;
    vPedrnumero: string;
    vPetfcodigo: string;
    vPetftelefone: string;
    vPedrbairro: string;
    vpEdrComplemento: string;
  end;

  TMinhaThread = class(TThread)
  private

  protected
    procedure Execute; override;
  public
    constructor Create();
  end;

var
  fprinciaiqgfome: Tfprinciaiqgfome;

implementation

{$R *.dfm}

constructor TMinhaThread.Create();
begin
  inherited Create(True);

  { Chama o contrutor herdado. Ele irá temporariamente colocar o
    thread em estado de espera para depois executá-lo. }
  FreeOnTerminate := True; // Libera da memoria o objeto após terminar.

  { Configura sua prioridade na lista de processos do Sistema operacional. }
  Priority := tpNormal;

  Resume; // Inicia o Thread.
end;

procedure TMinhaThread.Execute;
begin
  inherited;
  // Aqui fica o corpo da Thread onde você vai rodar seus
  // scripts que devem ser executados em processo individual

  fprinciaiqgfome.Label1.Caption := inttostr(strtoint(fprinciaiqgfome.Label1.Caption) + 1);
end;

procedure Tfprinciaiqgfome.btAtivarClick(Sender: TObject);
begin
  LeitorArquivo.Enabled := True;
end;

procedure Tfprinciaiqgfome.btDesativarClick(Sender: TObject);
begin
  LeitorArquivo.Enabled := false;
end;

procedure Tfprinciaiqgfome.Button3Click(Sender: TObject);
var
  vlTexto: tstringList;
begin
   Memo1.Lines.Text := Clipboard.AsText;
  vlTexto := tstringList.Create;

  vlTexto.Text := Memo1.Lines.Text;
  ProcessaPedido(vlTexto);

end;

Function SoNumeros(Const Texto: String): String;

//
// Remove caracteres de uma string deixando apenas numeros
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 1 To length(Texto) Do
  Begin
    If (Texto[i] In ['0' .. '9']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  result := S;
End;

function PosaDireita(Const Letra: string; Const Texto: String): Integer;

Var
  i: Integer;
  S: String;
begin
  result := 0;
  for i := length(Texto) - 1 downto 0 do
  begin
    S := Copy(Texto, i, 1);
    if S = Letra then
    begin
      result := i;
    end;
  end;
end;





procedure Tfprinciaiqgfome.ProcessaItens(vTexto: tstringList);
var
  i: Integer;
  vlLinha: string;
  vlTipoLinha: string;
  vlTexto: string;
  vlGrupo: string;

  vlProduto: string;
  vlProdutoObs: string;
  vlTamanho: string;
  vlValor: string;
  vlBorda: string;

begin

  for i := 0 to vTexto.Count - 1 do
  begin
    vlLinha := uppercase(vTexto[i]);
    vlTipoLinha := Copy(vlLinha, 1, pos(' ', vlLinha) - 1);
    if (vlTipoLinha = '1X') or (vlTipoLinha = '2X') or (vlTipoLinha = '3X') or (vlTipoLinha = '4X') or (vlTipoLinha = '5X') or (vlTipoLinha = '6X') or (vlTipoLinha = '7X') or
      (vlTipoLinha = '8X') or (vlTipoLinha = '9X') then
    begin
      vlTexto := Copy(vlLinha, pos(' ', vlLinha) + 1);

      if pos('R$', vlTexto) = 0 then
      begin
        vlBorda := '';
        vlTexto := Copy(vlTexto, 2, pos(':', vlTexto) - 2);
        vlGrupo := vlTexto;
        vlTamanho := Copy(vlLinha, pos(' ', vlLinha) + 1);
        vlTamanho := trim(Copy(vlTamanho, pos(':', vlTamanho) + 1, 200));
        vlTamanho := Copy(vlTamanho, 1, pos(')', vlTamanho) - 1);
        vlProduto := trim(Copy(vlLinha, PosaDireita(')', vlLinha) + 2, 200));
      end
      else if pos('R$', vlTexto) > 0 then
      begin
        vlValor := trim(Copy(vlTexto, 3, 20));

        proimp.FilterSQL := 'grpidentificacao=' + QuotedStr(vlGrupo) + ' and  pronome  like ' + QuotedStr('%' + vlProduto + '%') + ' and punprecoav=' +
          StringReplace(StringReplace(vlValor, '.', '', [rfReplaceAll, rfIgnoreCase]), ',', '.', [rfReplaceAll, rfIgnoreCase]);

      end;

      {
        1x (bebidas: 1,5 litros) Coca Cola

        1x R$9,00

        1x (hambúrguer: Uni) Roceiro

        Hambúrguer 200g, queijo mussarela bacon, alface, tomate e cebola roxa agridoce

        +R$0,00 qual pão? Pão tradicional

        1x R$20,00

      }

    end

    else if Copy(vlLinha, 1, 1) = '+' then
    begin
      if pos('PãO?', uppercase(vlLinha)) > 0 then // pão ou borda
      begin

        vlBorda := trim(Copy(uppercase(vlLinha), pos('PãO?', uppercase(vlLinha)) + 5, 200));
      end
      else // outros adicionais
      begin

      end;

    end
    else if vlLinha = 'SUBTOTAL' then
    begin
      break;

    end;

  end;

end;

procedure Tfprinciaiqgfome.ProcessaPedido(vTexto: tstringList);
var
  i: Integer;
  vlLinha: string;
  vlSubtotal: string;
  vlTaxaEntrega: string;
  vlDesconto: string;
  vlVoucher: string;
  vltotal: string;
  vlTipoFinalizador: string;
  VlTroco: string;

begin
  vpNrPedidoAiqFome := '';
  vPetdcodigo := '';
  vPetdidentificacao := '';
  vPedrcodigo := '';
  vPedrrua := '';
  vPedrnumero := '';
  vPetfcodigo := '';
  vPetftelefone := '';
  vPedrbairro := '';
  vpEdrComplemento := '';
  vpHoraPedido := '';
  vpDataPedido := '';

  for i := 0 to vTexto.Count - 1 do
  begin

    vlLinha := uppercase(vTexto[i]);

    if pos(uppercase('Tempo de entrega: '), vlLinha) > 0 then
    begin

      ProcessaItens(vTexto);

    end
    else if pos(uppercase('Pedido #'), vlLinha) > 0 then
    begin
      vpNrPedidoAiqFome := Copy(vlLinha, pos('Pedido #', vlLinha) + 8, 250);
      vpNrPedidoAiqFome := Copy(vpNrPedidoAiqFome, 1, pos('(', vpNrPedidoAiqFome) - 2);

      vpHoraPedido := Copy(vlLinha, pos('(', vlLinha) + 9, 8);
      vpDataPedido := Copy(vlLinha, pos('(', vlLinha) + 1, 5) + '/' + inttostr(yearof(date));

    end
    else if pos(uppercase('Referência:'), vlLinha) > 0 then
    begin

    end
    else if (Copy(vlLinha, length(vlLinha), 1) = ')') and (pos('R$', vlLinha) = 0) then
    begin
      // nome
      vPetdidentificacao := uppercase(trim(Copy(vlLinha, 1, pos('(', vlLinha) - 2)));

      // telefone
      vlLinha := Copy(vTexto[i + 2], 1, pos(',', vTexto[i + 2]) - 1);
      vPetftelefone := SoNumeros(vlLinha);

      // endereço         teste - 123
      vlLinha := vTexto[i + 4];
      vPedrrua := uppercase(trim(Copy(vlLinha, 1, PosaDireita('-', vlLinha) - 1)));
      vPedrnumero := uppercase(trim(Copy(vlLinha, PosaDireita('-', vlLinha) + 2, 20)));
      vlLinha := vTexto[i + 6];


      // bairro Centro, Complemento: Rua boa

      if pos(uppercase('Complemento:'), vlLinha) > 0 then
      begin
        vPedrbairro := uppercase(Copy(vlLinha, 1, pos(uppercase('Complemento:'), vlLinha) - 3));
        vpEdrComplemento := '';
      end
      else
      begin
        vPedrbairro := uppercase(vlLinha);

      end;
      verificacadastro.Close;
      verificacadastro.ParamByName('etdidentificacao').AsString := vPetdidentificacao;
      verificacadastro.ParamByName('edrrua').AsString := vPedrrua;
      verificacadastro.ParamByName('edrnumero').AsString := vPedrnumero;
      verificacadastro.ParamByName('etftelefone').AsString := vPetftelefone;
      verificacadastro.ParamByName('edrbairro').AsString := vPedrbairro;
      verificacadastro.Open;

      if verificacadastro.IsEmpty then
      begin
        etdimp.Open;
        etdimp.Append;

        etdimpetdidentificacao.AsString := vPetdidentificacao;
        etdimpetdapelido.AsString := vPetdidentificacao;
        etdimpetddeletar.AsInteger := 0;
        etdimptpecodigo.AsInteger := 1;
        etdimpetddatacad.AsFloat := strtodate(vpDataPedido);
        etdimpetddataalt.AsFloat := strtodate(vpDataPedido);
        etdimpetddoc1.AsString := '0';
        etdimptsecodigo.AsInteger := 2;
        etdimpetdcarga.AsInteger := 1;
        etdimpetdativo.AsInteger := 1;
        etdimpetdsped.AsInteger := 0;
        etdimptcbcodigo.AsInteger := 3;
        etdimpetdnfemodelos.AsInteger := 99;
        etdimpgrtcodigo.AsInteger := 1;
        etdimpatvcodigo.AsInteger := 0;
        etdimpetdregime.AsInteger := 1;
        etdimp.Post;

        vPetdcodigo := etdimpetdcodigo.AsString;

        etvimp.Close;
        etvimp.Open;
        etvimp.Append;
        etvimpetdcodigo.AsString := vPetdcodigo;
        etvimptvicodigo.AsInteger := 1;
        etvimp.Post;

        edrimp.Close;
        edrimp.Open;
        edrimp.Append;
        edrimptedcodigo.AsInteger := 1;
        edrimpetdcodigo.AsString := vPetdcodigo;
        edrimpedrrua.AsString := vPedrrua;
        edrimpedrnumero.AsString := vPedrnumero;
        edrimpedrcomple.AsString := vpEdrComplemento;
        edrimpedrbairro.AsString := vPedrbairro;
        edrimpcddcodigo.AsString := '5107925';
        edrimpedrinscest.AsString := '';
        edrimpedrcep.AsString := '78890-000';
        edrimpedrinsestst.AsString := '';
        edrimpufscodigo.AsString := '51';
        edrimpedrobs.AsString := '';
        edrimpedrinscmun.AsString := '';
        edrimpedritem.AsInteger := 1;
        edrimpedrnomefazenda.AsString := '';
        edrimpedrrazaofazenda.AsString := '';
        edrimpedrativo.AsInteger := 1;
        edrimp.Post;

        etfimp.Close;
        etfimp.Open;
        etfimp.Append;

        etfimpetdcodigo.AsString := vPetdcodigo;
        etfimpttfcodigo.AsInteger := 1;
        etfimpetftelefone.AsString := vPetftelefone;
        etfimpetfativo.AsInteger := 1;
        etfimp.Post;

      end
      else
      begin
        vPetdcodigo := verificacadastroetdcodigo.AsString;
        vPedrcodigo := verificacadastroedrcodigo.AsString;
        vPetfcodigo := verificacadastroetfcodigo.AsString;
      end;

    end
    else if vlLinha = 'SUBTOTAL' then
    begin
      vlSubtotal := trim(Copy(vTexto[i + 2], 3, 20));

    end
    else if vlLinha = 'TAXA DE ENTREGA' then
    begin
      vlTaxaEntrega := trim(Copy(vTexto[i + 2], 3, 20));

    end
    else if pos('CUPOM:', vlLinha) > 0 THEN
    BEGIN
      vlVoucher := trim(Copy(vlLinha, 8, 200));
    END

    else if vlLinha = 'FORMA DE PAGAMENTO' then
    begin
      vlTipoFinalizador := trim(Copy(vTexto[i + 2], 1, 200));

      if pos('DINHEIRO', vlTipoFinalizador) > 0 then
      begin
        if pos('(', vlTipoFinalizador) > 0 then
        begin
          VlTroco := '';
        end
        else
        begin
          VlTroco := '';
        end;

      end;
    end

    else if vlLinha = 'TOTAL' then
    begin
      vltotal := trim(Copy(vTexto[i + 2], 3, 20));

    end;

  end;

end;

procedure Tfprinciaiqgfome.inicializaembiente;
var
  vlDiretorioBase: string;

begin
  vlDiretorioBase := extractfilepath(application.ExeName) + 'integracacaoaiqfome';
  if not DirectoryExists(vlDiretorioBase) then
  begin
    ForceDirectories(vlDiretorioBase);
  end;

end;

procedure Tfprinciaiqgfome.InicializarTimer(Sender: TObject);
begin
  Inicializar.Enabled := false;
  inicializaembiente;
  ConectaBanco;
end;

procedure TrimAppMemorySize;
var
  MainHandle: thandle;
begin
  try
    MainHandle := OpenProcess(PROCESS_ALL_ACCESS, false, GetCurrentProcessID);
    SetProcessWorkingSetSize(MainHandle, $FFFFFFFF, $FFFFFFFF);
    CloseHandle(MainHandle);
  except
  end;
  application.processmessages;
end;

function IsFileInUse(FileName: String): Boolean;
var
  HFileRes: HFILE;
  hdl: thandle;
begin
  result := false;
  if not FileExists(FileName) then
    Exit;
  HFileRes := CreateFile(PChar(FileName), GENERIC_READ or GENERIC_WRITE, 0, nil, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
  result := (HFileRes = INVALID_HANDLE_VALUE);
  if not result then
    CloseHandle(HFileRes);
end;

procedure Tfprinciaiqgfome.LeitorArquivoTimer(Sender: TObject);
var
  vlDiretorioBase: string;
  vlArquivo: string;
  vlNomeNovo: string;
  vThread: TMinhaThread;
begin

  vlDiretorioBase := extractfilepath(application.ExeName) + 'integracacaoaiqfome';
  vlArquivo := vlDiretorioBase + '\' + 'pedido.txt';
  vlNomeNovo := FormatDateTime('yyyymmddnnsszzzz', now());

  vThread := TMinhaThread.Create;
  vThread.Execute;

  TrimAppMemorySize;
  if FileExists(vlArquivo) then
  begin
    if not IsFileInUse(vlArquivo) then
    begin
      RenameFile(vlArquivo, vlDiretorioBase + '\' + vlNomeNovo + '.txt');
    end;
  end;

end;

procedure Tfprinciaiqgfome.Memo1DragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  Accept := True; // aceita a ação
end;

procedure Tfprinciaiqgfome.Memo1EndDrag(Sender, Target: TObject; X, Y: Integer);
begin
  // processar

end;

Procedure Tfprinciaiqgfome.ConectaBanco;
Var
  arquini: TIniFile;
  vlNomeBanco: String;
  vlPortaBanco: String;
  vlServidor: String;
  vlUsuario: String;
  vlSenha: String;
  vlMonitor: String;
  vlTipoBanco: String;
Begin
  // try
  arquini := TIniFile.Create(extractfilepath(application.ExeName) + 'gourmeterp.ini');
  With arquini Do
  Begin
    vlNomeBanco := ReadString('posi', 'nomebanco', 'mizio');
    vlServidor := ReadString('posi', 'servidor', '127.0.0.1');
    vlUsuario := ReadString('posi', 'usuario', 'root');
    vlSenha := ReadString('posi', 'senha', 'xda973');
    vlPortaBanco := ReadString('posi', 'portabanco', '3306');
    vlMonitor := ReadString('posi', 'monitor', '0');
    vlTipoBanco := ReadString('posi', 'tipo', 'mysql');

    if vlNomeBanco = 'sulani' then
      vlSenha := 'riticami';

  End;
  arquini.Free;

  (* Configuração para DBMonitor *)
  if vlMonitor = '1' then
    UniSQLMonitor.Active := True
  else
    UniSQLMonitor.Active := false;

  if lowercase(vlTipoBanco) = 'mysql' then
    Conexao.ProviderName := 'mySQL';

  if lowercase(vlTipoBanco) = 'postgresql' then
    Conexao.ProviderName := 'PostgreSQL';

  Conexao.Connected := false;
  Conexao.Database := vlNomeBanco;
  Conexao.Username := vlUsuario;
  Conexao.Password := vlSenha;
  Conexao.Port := strtoint(vlPortaBanco);
  Conexao.Server := vlServidor;

  Conexao.Connected := True;

  (* Chama execução dos Scripts e CSVs *)
  if Conexao.Connected then
  begin
    consulta.Close;
    consulta.Connection := Conexao;
    consulta.SQL.Text := 'set global net_buffer_length=1000000';
    consulta.ExecSQL;

    consulta.Close;
    consulta.Connection := Conexao;
    consulta.SQL.Text := 'set global net_buffer_length=1000000';
    consulta.ExecSQL;

    consulta.Close;
    consulta.Connection := Conexao;
    consulta.SQL.Text := 'SET @@GLOBAL.SQL_MODE=' + QuotedStr('');
    consulta.ExecSQL;

    mensagens.Panels[0].Text := vlServidor;
    mensagens.Panels[1].Text := vlNomeBanco;
  end;

End;

procedure Tfprinciaiqgfome.FormShow(Sender: TObject);
begin
  proimp.Close;
  proimp.Open;
end;

end.
