unit ufimprimefast;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, frxClass,
  frxDBSet, frxExportImage, Vcl.StdCtrls, Vcl.ExtCtrls,printers,System.StrUtils,shellapi,
  System.DateUtils, UniProvider, MySQLUniProvider, frxDACComponents,
  frxUniDACComponents, frxDesgn, frxBarcode, DASQLMonitor, UniSQLMonitor,
  System.ImageList, Vcl.ImgList,inifiles, ACBrPosPrinter;

type
  Tfimprimefast = class(TForm)
    consulta: TUniQuery;
    sqlimprime: TUniQuery;
    sqlimprimegriimprimeauto: TIntegerField;
    sqlimprimefnccodigo: TIntegerField;
    sqlimprimegripedidoaux: TIntegerField;
    sqlimprimeimmchave: TIntegerField;
    jaimpresso: TUniQuery;
    immtempo: TUniQuery;
    tcisituacao: TUniQuery;
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
    immmitidentificacao: TStringField;
    vias: TUniQuery;
    Panel1: TPanel;
    mmFilaPedidos: TMemo;
    Panel2: TPanel;
    erros: TMemo;
    situacao: TUniQuery;
    imw: TUniQuery;
    imwimwchave: TIntegerField;
    imwitochave: TIntegerField;
    imwimwhoranotificadopedido: TDateTimeField;
    imwimwhorasaidadopedido: TDateTimeField;
    imwimwhoraentregadopedido: TDateTimeField;
    pedidos: TMemo;
    frxUniDACComponents: TfrxUniDACComponents;
    frxDesigner: TfrxDesigner;
    relatorio: TfrxReport;
    frxBarCodeObject1: TfrxBarCodeObject;
    frxBMPExport: TfrxBMPExport;
    frxDados: TfrxDBDataset;
    ImageList1: TImageList;
    UniSQLMonitor: TUniSQLMonitor;
    MySQLUniProvider: TMySQLUniProvider;
    Conexao: TUniConnection;
    ACBrPosPrinter1: TACBrPosPrinter;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure VerificaPedidos(vimpressora: string);

    function EstadoMP2032(vporta: string): Integer;
    function ConsultaEstadoImpressora(vporta: string): string;
    function ConsultaImpressora(Porta: string): String;
    function EstadoImpressora(vporta: string): Integer;
    function BaixaArqRel(vFoaCodigo: string; vrelarquivo: TBlobField): String;
    function enviaBMPImpressora(vlNumePedido: Integer; vporta: string;
      vlRetorno: Integer; vlimms, vTciCodigo: string): Boolean;

    function ImprimePedido(vOrcChave: string; vFoaCodigo: string; vrelarquivo: TBlobField; vimmorigem: TUniQuery; vImprime: Integer = 1): Boolean;
    procedure conectabanco;
    { Private declarations }
  public
    { Public declarations }
    vpImpressora:string;
    vpCznChave:string;
    vpDebug:String;
    vpPastaDia:string;
    procedure AjustaconexaoBanco;

    procedure VerificaPedidosImpressora(vImpressora: string);
  end;

var
  fimprimefast: Tfimprimefast;

implementation

{$R *.dfm}

Procedure Tfimprimefast.conectabanco;
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




End;


procedure Tfimprimefast.FormCreate(Sender: TObject);
begin
conectabanco;
end;

procedure Tfimprimefast.FormShow(Sender: TObject);
begin
  AjustaconexaoBanco;
end;

procedure Tfimprimefast.VerificaPedidos(vimpressora:string);
var
  vlTentativas: Integer;
  vlCznCodigo: Integer;

  vlImprime: Integer;
  vlPedido: string;

begin
  mmFilaPedidos.Lines.Clear;

  imm.close;
  imm.ParamByName('cznchave').AsString := vpCznChave;
  imm.FilterSQL := 'gri.tcicodigo=' + vimpressora;
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

      imm.Next;
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


function Tfimprimefast.EstadoImpressora(vporta: string): Integer;
Var
  vu: string;
  vlRetorno, i_retorno, vlIndexPrinter: Integer;
  s_cmdtx: string;
  i, U, E: Integer;
Begin

  vlIndexPrinter := IsValidatePrinter(trim(vporta));
  if vlIndexPrinter <> -1 then // Identifica se � uma impressora v�lida
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


Function Tfimprimefast.ConsultaImpressora(Porta: string): String;
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
        erros.Lines.Add(datetimetostr(now) + ' 0 - IMPRESSORA - OFF LINE/SEM COMUNICA��O ' + Porta);
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
        erros.Lines.Add(datetimetostr(now) + '  ' + inttostr(i_retorno) + ' - IMPRESSORA - ERRO N�O DEFINIDO ' + Porta);
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


function Tfimprimefast.ConsultaEstadoImpressora(vporta: string): string;
begin
  result := ConsultaImpressora(vporta);
end;


function Tfimprimefast.BaixaArqRel(vFoaCodigo: string; vrelarquivo: TBlobField): String;
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

Procedure ExecuteProgram(Nome, Parametros: String);
Var
  Comando: Array [0 .. 1024] of Char;
  Parms: Array [0 .. 1024] of Char;
Begin
  StrPCopy(Comando, Nome);
  StrPCopy(Parms, Parametros);
  ShellExecute(0, nil, Comando, Parms, nil, SW_SHOWMINIMIZED);
End;



function Tfimprimefast.enviaBMPImpressora(vlNumePedido: Integer; vporta: string; vlRetorno: Integer; vlimms: string; vTciCodigo: string): Boolean;
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


procedure Tfimprimefast.VerificaPedidosImpressora(vImpressora: string);
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


function Tfimprimefast.ImprimePedido(vOrcChave: string; vFoaCodigo: string; vrelarquivo: TBlobField; vimmorigem: TUniQuery; vImprime: Integer = 1): Boolean;
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

        { atribui o valor para variavel de grupo do relat�rio }

        relatorio.Variables['tcicodigo'] := QuotedStr(vlTciCodigo);
        relatorio.Variables['immnumepedido'] := QuotedStr(inttostr(vlNumePedido));

        { defini configura��o do fastreport para exibi��o }
        relatorio.ShowReport; // .PrepareReport(True);
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
                  erros.Lines.Add('N�o foi possivel a impress�o Orc.: ' + vlOrcChave + ' Ped.: ' + inttostr(vlNumePedido) + ' Imp.: ' + vlTciCodigo);

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

              // criado funcionalidade para remover servi�o que sej� s� para imprimir
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
                pedidos.Lines.Add('ACHOU SERVI�OS');

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

procedure Tfimprimefast.AjustaconexaoBanco;
var
  I: Integer;
begin
  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is TUniQuery then
      (self.Components[i] as TUniQuery).Connection := Conexao;
  end;
  frxUniDACComponents.DefaultDatabase:=conexao;

end;


{ Traduz o conjunto de status do ACBrPosPrinter para os codigos legados da
  MP2032.DLL (24=ok, 32=sem papel, 5=pouco papel, 9=tampa aberta, 0=offline). }
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

{ IP "puro" vira TCP:ip:9100; valores ja qualificados sao mantidos. }
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

function Tfimprimefast.EstadoMP2032(vporta: string): Integer;
Begin
  Result := 0;
  try
    ACBrPosPrinter1.Desativar;
    ACBrPosPrinter1.Porta := MontaPortaACBr(vporta);
    ACBrPosPrinter1.Ativar;
    try
      Result := StatusACBrParaCodigo(ACBrPosPrinter1.LerStatusImpressora);
    finally
      ACBrPosPrinter1.Desativar;
    end;
  except
    Result := 0;
  end;
End;


end.
