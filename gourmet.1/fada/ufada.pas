unit ufada;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, dialogs,
  Vcl.ComCtrls, Vcl.Controls, Vcl.StdCtrls, System.Classes, Vcl.ExtCtrls, Vcl.forms,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, uni, Vcl.DBCGrids, ufuncoes,
  inifiles, Data.DB,
  MemDS, DBAccess, StrUtils, DAScript, UniScript, uPegaBase;

type
  Tffada = class(TForm)
    inicializar: TTimer;
    animacao: TAnimate;
    lmensagem: TLabel;
    lprocesseo: TLabel;
    mostra: TProgressBar;
    mensagens: TStatusBar;
    plnome: TPanel;
    cfg: tuniquery;
    consulta: tuniquery;

    USDeletaACTDupli: TUniScript;
    procedure inicializarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    Procedure conectabanco;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    Fzcone: tuniconnection;
    listArqError: TStringList;
    procedure VerificarAcessos;
    procedure CriaInfo(nomebpl: string);
  public
    { Public declarations }
    Acesso: TAcesso;
    Procedure defineacessos(nomebpl: string; vmodu: string; vtipo: string = '000');
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  end;

  // Tdefineacesso = procedure(AOwner: TComponent; Conexao: tuniconnection; vmodu: string; vtipo: string);
  Tdefineacesso = procedure(pCargaFrame: TCargaFrame);
  TSalvaInfoArquivo = function(onwer: TApplication; varquivo: String; vPasta: String; vExtensao: string): String;

var
  ffada: Tffada;

implementation

{$R *.dfm}

function VerificaAcessos(AOwner: TComponent; Conexao: tuniconnection; Acesso: TAcesso): string;
var
  vch: string;
begin
  try
    ffada := Tffada.Create(AOwner);
    ffada.Acesso := Acesso;
    ffada.zcone := Conexao;
    ffada.ShowModal;
    Result := vch;
  finally
    FreeAndNil(ffada);
  end;
end;

exports VerificaAcessos;

procedure DoUnLoadPackage(AOwner: TComponent; Module: HModule);

var
  i: Integer;
  m: TMemoryBasicInformation;
begin
  try
    for i := AOwner.ComponentCount - 1 downto 0 do
    begin
      VirtualQuery(GetClass(AOwner.Components[i].ClassName), m, SizeOf(m));
      if (Module = 0) or (HModule(m.AllocationBase) = Module) then
        AOwner.Components[i].Free;
    end;
    UnRegisterModuleClasses(Module);

    System.Classes.UnRegisterClass(TDBMemo);
    System.Classes.UnRegisterClass(TDBCtrlGrid);
    System.Classes.UnRegisterClass(TCustomdbgrid);

    UnLoadPackage(Module);
  except

  end;
end;

Procedure Tffada.conectabanco;
var
  i: Integer;

Begin

  For i := 0 To self.ComponentCount - 1 Do
  begin
    If (self.Components[i] Is tuniquery) Then
      (self.Components[i] As tuniquery).Connection := self.zcone;

    If (self.Components[i] Is TUniSQL) Then
      (self.Components[i] As TUniSQL).Connection := self.zcone;
  end;



  try
    consulta.Close;
    consulta.SQL.Text := 'grant all privileges on *.* to root@' + chr(39) + '%' + chr(39);
    consulta.ExecSQL;
  except
  end;

  consulta.Connection := zcone;
  cfg.Connection := zcone;

  cfg.Open;
  plnome.Caption := '[ ' + trim(UPPERCASE(self.cfg.Fields[0].AsString)) + ']';
  cfg.Close;

End;

procedure Tffada.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure Tffada.FormShow(Sender: TObject);
begin
  inicializar.Enabled := true;
end;

procedure Tffada.inicializarTimer(Sender: TObject);
begin
  inicializar.Enabled := false;
  conectabanco;
  lmensagem.Caption := 'Pesquisando arquivos ...';
  Application.ProcessMessages;

  animacao.Visible := true;
  animacao.Enabled := true;
  animacao.Active := true;

  VerificarAcessos;
  animacao.Enabled := false;
  animacao.Active := false;

  animacao.Visible := false;

  (* Deleta duplicidade de Ações - tabela act *)
  try
    consulta.Close;
    consulta.SQL.Text := 'DELETE FROM act USING act, (SELECT MAX(a1.actcodigo) AS actdeletar ';
    consulta.SQL.Add('FROM act a1 GROUP BY a1.actformulario , a1.actacao  ');
    consulta.SQL.Add('HAVING COUNT(a1.actcodigo) > 1) act1 ');
    consulta.SQL.Add('WHERE act1.actdeletar = act.actcodigo');
    consulta.ExecSQL;

    { USDeletaACTDupli.Connection:=zcone;
      USDeletaACTDupli.Execute; }
  except
  end;
  ShowMessage('Verificação realizada com sucesso!');

  Close;
end;

procedure Tffada.VerificarAcessos;
var
  listaarq: TStringList;

  dir: string;
  SearchRec: TSearchRec;
  arq: string;
  i: Integer;

  nomini: string;
  vmods: string;
  vbotao: string;
begin
  try
    try
      listaarq := TStringList.Create;
      listArqError := TStringList.Create;

      dir := extractfilepath(Application.ExeName) + 'modulos';
      if DirectoryExists(dir) then
      begin

        SetCurrentDir(dir);

        If FindFirst('*.bpl', faAnyFile, SearchRec) = 0 Then
        Begin
          Repeat
            listaarq.Add(SearchRec.Name);
          Until FindNext(SearchRec) <> 0;

          FindClose(SearchRec);
        End;
        listaarq.SaveToFile(extractfilepath(Application.ExeName) + 'listabpls.txt');

        lprocesseo.Caption := 'Processando os arquivos ...';
        mostra.Visible := true;
        mostra.Max := listaarq.Count;
        Application.ProcessMessages;

        for i := listaarq.Count - 1 downto  0   do
       // for i := 0 to listaarq.Count - 1 do
        begin
          try
            mostra.Position := mostra.Position + 1;
            Application.ProcessMessages;

            arq := listaarq.Strings[i];
            lprocesseo.Caption := 'Analisando módulo: ' + extractfilename(arq);
            Application.ProcessMessages;



            arq := Copy(arq, 1, pos('.', arq) - 1);
            CriaInfo(arq);
            self.defineacessos(arq, '');
          except
          end;
        end;
      end;
    finally
      FreeAndNil(listaarq);
    end;
  except

  end;
end;
Procedure Tffada.CriaInfo(nomebpl: string);
var
  exec: TSalvaInfoArquivo;
  vlPack: Integer;
begin
  if not fileexists(extractfilepath(Application.ExeName) + 'modulos\matz.bpl') then
  begin
    exit;
  end;

  try

    if not FileExists(extractfilepath(Application.ExeName) + 'modulos\' + nomebpl + '.bpl') then
      Exit;

    if AnsiMatchStr(nomebpl, ['base', 'mrfr', 'fada', 'mnfc', 'pacote', 'mipo', 'mbxm', 'mImpressorEtiqueta', 'mGourmet', 'mGerContingenciaNFCe', 'ModuNFCe',
      'ModuCUPOM', 'mnfe', 'mcov', 'minfe', 'infce', 'mrel', 'mAtendCax', 'mAtendPDV', 'mAtendVar', 'mAtendEnt', 'mbase', 'mAtendSai', 'mmizio']) then
      Exit;
    vlPack := LoadPackage('modulos\matz.bpl');

    if vlPack <> 0 then
    begin

      @exec := GetProcAddress(vlPack, PChar('SalvaInfoArquivo'));

      if Assigned(exec) then
      begin
        exec(Application,nomebpl,'modulos','.bpl');
      end;
        DoUnLoadPackage(Application, vlPack);
    end;
  except
    // ShowMessage(nomebpl);
    DoUnLoadPackage(Application, vlPack);
  end;
End;



Procedure Tffada.defineacessos(nomebpl: string; vmodu: string; vtipo: string = '000');
var
  exec: Tdefineacesso;
  vlPack: Integer;
  vlCargaFrame: TCargaFrame;
  vlFormuFrame: function(pCargaFrame: TCargaFrame): string;
  vlFormu: function(pCargaFrame: TCargaFrame): string;
  pack: Integer;
begin
  try
    if not FileExists(extractfilepath(Application.ExeName) + 'modulos\' + nomebpl + '.bpl') then
      Exit;

    if AnsiMatchStr(nomebpl, ['base', 'mrfr', 'fada', 'mnfc', 'pacote', 'mipo', 'mbxm', 'mImpressorEtiqueta', 'mGourmet', 'mGerContingenciaNFCe', 'ModuNFCe',
      'ModuCUPOM', 'mnfe', 'mcov', 'minfe', 'infce', 'mrel', 'mAtendCax', 'mAtendPDV', 'mAtendVar', 'mAtendEnt', 'mbase', 'mAtendSai', 'mmizio']) then
      Exit;

    try
      vlPack := LoadPackage('modulos\' + nomebpl + '.bpl');

   

    except
      on e: Exception do
      begin
        vlPack := 0;
        // Application.MessageBox(PChar('Erro arquivo: ' + nomebpl + #13 + #13'Mensagem: ' + e.Message), '', MB_ICONERROR + MB_OK);
        listArqError.Add(nomebpl);
        Exit;
      end;
    end;

    if vlPack <> 0 then
    begin
      @exec := GetProcAddress(vlPack, PChar('defineacesso'));

      if Assigned(exec) then
      begin
        vlCargaFrame := CargaFrameFormu(Application, pack, zcone, Acesso, '');
        // vlFormu(vlCargaFrame);

        exec(vlCargaFrame); // Application, Fzcone, vmodu, vtipo);

      end;

      if (nomebpl <> 'mpeg') and (nomebpl <> 'mrfr') and (nomebpl <> 'fada') and (nomebpl <> 'mipo') and (lowercase(nomebpl) <> 'matendcax') and
        (lowercase(nomebpl) <> 'matendpdv') and (lowercase(nomebpl) <> 'matendvar') and (lowercase(nomebpl) <> 'mmizio') and
        (lowercase(nomebpl) <> 'gercontingencianfce') then
        DoUnLoadPackage(Application, vlPack);
    end;
  except

    on e: Exception do
    begin
   //   ShowMessage(nomebpl+' '+e.Message);
          DoUnLoadPackage(Application, vlPack);
    end;



  end;
End;

end.
