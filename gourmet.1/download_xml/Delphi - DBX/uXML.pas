unit uXML;

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, Windows,
  StdCtrls, Grids, ComCtrls, Buttons, CheckLst, ActnList, DBGrids, DbCtrls,
  Spin, db, ACBrNFe, MaskUtils, ACBrBase, ACBrDFe, pcnConversao,
  pcnConversaoNFe, ACBrUtil, dateutils, Vcl.Mask;

type

  { Tfrmxml }

  Tfrmxml = class(TForm)
    edtERROR: TLabel;
    dscfg: TDataSource;
    dsres: TDataSource;
    dtsXml: TDataSource;
    ListBoxError: TListBox;
    OpenDialog: TOpenDialog;
    PanelLeft: TPanel;
    PanelNbk: TPanel;
    StatusShow: TStatusBar;
    Notebook1: TNotebook;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    edtultNSU: TDBEdit;
    edtNumeroSerie: TDBEdit;
    btnPesquisarCertificado: TButton;
    edtUF: TDBComboBox;
    edtSenha: TDBEdit;
    edtidDFeAutoInc: TDBEdit;
    btnPost: TBitBtn;
    edtAutoExecute: TDBCheckBox;
    edtAutoTimer: TDBEdit;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    btnNFePesquisar: TButton;
    edtNumeroNFe: TSpinEdit;
    edtDataInicial: TDateTimePicker;
    edtDataFinal: TDateTimePicker;
    btnNFePreview: TButton;
    btnNFeImprimir: TButton;
    btnNFeGerarPDF: TButton;
    btnConfiguracoes: TSpeedButton;
    btnXMLsBaixados: TSpeedButton;
    btnManifestarNotas: TSpeedButton;
    btnAtualizarLista: TSpeedButton;
    btnConsultarSefaz: TSpeedButton;
    btnLimparBaseDados: TBitBtn;
    SSLLib: TDBRadioGroup;
    Label1: TLabel;
    edtArquivoPFX: TDBEdit;
    btnPesquisarArquivoPFX: TButton;
    procedure btnPesquisarCertificadoClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnNFeImprimirClick(Sender: TObject);
    procedure btnNFePreviewClick(Sender: TObject);
    procedure btnNFePesquisarClick(Sender: TObject);
    procedure dscfgStateChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure btnNFeGerarPDFClick(Sender: TObject);
    procedure btnConfiguracoesClick(Sender: TObject);
    procedure btnConsultarSefazClick(Sender: TObject);
    procedure btnAtualizarListaClick(Sender: TObject);
    procedure btnManifestarNotasClick(Sender: TObject);
    procedure btnXMLsBaixadosClick(Sender: TObject);
    procedure btnLimparBaseDadosClick(Sender: TObject);
    procedure btnPesquisarArquivoPFXClick(Sender: TObject);
    procedure SSLLibChange(Sender: TObject);
    procedure edtAutoExecuteClick(Sender: TObject);
  private
    FFileLog: String;
    procedure SetCertificadoAtivo;
    procedure SetErrorList(AMsn: String);
    procedure ImprimeDanfe;
  public
    procedure AutoExecuteProcessos;
  end;

var
  frmxml: Tfrmxml;

implementation

uses
  dXML, pcnRetDistDFeInt, pcnEnvEventoNFe;

{$R *.dfm}

{ Tfrmxml }

procedure Tfrmxml.edtAutoExecuteClick(Sender: TObject);
begin
  edtAutoTimer.Enabled := edtAutoExecute.Checked;
end;

procedure Tfrmxml.btnPesquisarArquivoPFXClick(Sender: TObject);
begin
  if dtmxml.XmlCfg.State in [dsInsert, dsEdit] then
    raise Exception.Create('Favor salvar as alterações antes de continuar!');

  if OpenDialog.Execute then
  begin
    if OpenDialog.FileName <> '' then
    begin
      dtmxml.xmlcfg.Edit;
      dtmxml.xmlcfg.FieldByName('ArquivoPFX').AsString := OpenDialog.FileName;
    end;
  end;
end;

procedure Tfrmxml.btnPesquisarCertificadoClick(Sender: TObject);
begin
  if dtmxml.XmlCfg.State in [dsInsert, dsEdit] then
    raise Exception.Create('Favor salvar as alterações antes de continuar!');

  try
    dtmxml.ACbrNFe1.SSL.SelecionarCertificado;

    // Seta informações do certificado na barra e status
    SetCertificadoAtivo;
    dtmxml.XmlCfg.Edit;
    dtmxml.XmlCfg.FieldByName('NumeroSerie').AsString := dtmxml.ACbrNFe1.SSL.CertNumeroSerie;
  except
    on E: Exception do
    begin
      SetErrorList(E.Message);
    end;
  end;
end;

procedure Tfrmxml.btnNFeGerarPDFClick(Sender: TObject);
var
  sXmlPath: String;
  sPdfPath: String;
  sPathPdf: String;
begin
  dtmxml.xmlnfe.First;
  while not dtmxml.xmlnfe.EOF do
  begin
    sXmlPath := dtmxml.GetPathXMLNFe(dtmxml.xmlnfe.FieldByName('dhEmi').AsDateTime,
                                     dtmxml.xmlnfe.FieldByName('chNFe').AsString);

    if FileExists(sXmlPath) then
    begin
      // Gera Danfe em PDF
      sPdfPath := dtmxml.GetPathPDFNFe(dtmxml.xmlnfe.FieldByName('dhEmi').AsDateTime,
                                       dtmxml.xmlnfe.FieldByName('chNFe').AsString);

      if not FileExists(sPdfPath) then
      begin
        if FileExists(sXmlPath) then
        begin
          dtmxml.ACbrNFe1.NotasFiscais.Clear;

          // Guarda o path atual dos PDFs
          sPathPdf := dtmxml.ACbrNFe1.DANFE.PathPDF;
          try
            if dtmxml.ACbrNFe1.NotasFiscais.LoadFromFile(sXmlPath) then
            begin
              // Adiciona ao path atual dos PDFs YYYYMM
              dtmxml.ACbrNFe1.DANFE.PathPDF := PathWithDelim(sPathPdf) +
                                               PathWithDelim(FormatDateTime('YYYYMM', dtmxml.xmlnfe.FieldByName('dhEmi').AsDateTime));

              // Gera o PDF
              dtmxml.ACbrNFe1.NotasFiscais.ImprimirPDF;
            end;
          finally
            // Retorna o path original dos PDFs
            dtmxml.ACbrNFe1.DANFE.PathPDF := sPathPdf;
            dtmxml.ACbrNFe1.NotasFiscais.Clear;
          end;
        end;
      end;
    end;

    dtmxml.xmlnfe.Next;
  end;
end;

procedure Tfrmxml.btnPostClick(Sender: TObject);
begin
  if dtmxml.XmlCfg.State in [dsInsert, dsEdit] then
    dtmxml.XmlCfg.Post;
end;

procedure Tfrmxml.btnNFeImprimirClick(Sender: TObject);
begin
  dtmxml.ACbrNFe1.DANFE.MostrarPreview := False;

  // Imprime o Danfe
  ImprimeDanfe;
end;

procedure Tfrmxml.btnNFePreviewClick(Sender: TObject);
begin
  dtmxml.ACbrNFe1.DANFE.MostrarPreview := True;
  ImprimeDanfe;
end;

procedure Tfrmxml.btnNFePesquisarClick(Sender: TObject);
begin
  dtmxml.xmlnfe.Close;

  if edtNumeroNFe.Value > 0 then
  begin
    dtmxml.xmlnfe.CommandText := ' select * from xmlnfe ' +
                                 ' where NFe = ''T'' ' +
                                 ' and xNumeroNFe =  ' + QuotedStr(FormatFloat('000000000', edtNumeroNFe.Value));
  end
  else
  begin
    dtmxml.xmlnfe.CommandText := ' select * from xmlnfe ' +
                                 ' where NFe = ''T'' ' +
                                 ' and dhEmi >= datetime(' + QuotedStr(FormatDateTime('YYYY-MM-DD', edtDataInicial.DateTime)) + ')' +
                                 ' and dhEmi <= datetime(' + QuotedStr(FormatDateTime('YYYY-MM-DD', edtDataFinal.DateTime)) + ')';
  end;

  dtmxml.xmlnfe.Open;
end;

procedure Tfrmxml.dscfgStateChange(Sender: TObject);
begin
  btnPost.Enabled := dscfg.State in [dsInsert, dsEdit];
end;

procedure Tfrmxml.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  ListBoxError.Items.SaveToFile(FFileLog);
end;

procedure Tfrmxml.FormCreate(Sender: TObject);
begin
  FFileLog := '.\Log\log-' + FormatDateTime('DDMMYYYY', Date) + '.txt';
  Notebook1.PageIndex := 1;

  if not DirectoryExists('.\Log') then
    ForceDirectories('.\Log');

  // Se o log do dia já foi criado é carregado para a lista visual
  if FileExists(FFileLog) then
    ListBoxError.Items.LoadFromFile(FFileLog);

  // Seta informações do certificado na barra e status
  SetCertificadoAtivo;
end;

procedure Tfrmxml.SetCertificadoAtivo;
begin
  try
    if (dtmxml.ACbrNFe1.Configuracoes.Certificados.NumeroSerie <> '') or
       (dtmxml.ACbrNFe1.Configuracoes.Certificados.ArquivoPFX <> '')
    then
    begin
      StatusShow.Panels[3].Text := dtmxml.ACbrNFe1.SSL.CertRazaoSocial;
      StatusShow.Panels[5].Text := FormatMaskText('99.999.999/9999-99;0; ', dtmxml.ACbrNFe1.SSL.CertCNPJ);
      StatusShow.Panels[7].Text := FormatDateTime('DD/MM/YYYY', dtmxml.ACbrNFe1.SSL.CertDataVenc);
    end;
  except
    on E: Exception do
    begin
      SetErrorList(E.Message);
    end;
  end;
end;

procedure Tfrmxml.SetErrorList(AMsn: String);
begin
  ListBoxError.Items.Add(DateTimeToStr(Now) + ' - ' + Trim(AMsn));
end;

procedure Tfrmxml.SSLLibChange(Sender: TObject);
begin
  edtNumeroSerie.Enabled := SSLLib.ItemIndex = 0;
  btnPesquisarCertificado.Enabled := edtNumeroSerie.Enabled;

  edtArquivoPFX.Enabled := SSLLib.ItemIndex = 1;
  btnPesquisarArquivoPFX.Enabled := edtArquivoPFX.Enabled;
end;

procedure Tfrmxml.btnConfiguracoesClick(Sender: TObject);
begin
  Notebook1.PageIndex := 0;
  dtmxml.xmlnfe.Close;
end;

procedure Tfrmxml.btnXMLsBaixadosClick(Sender: TObject);
begin
  Notebook1.PageIndex := 2;

  edtNumeroNFe.SetFocus;
  edtDataInicial.Date := StartOfTheMonth(Date);
  edtDataFinal.Date   := EndOfTheMonth(Date);

  dtmxml.xmlnfe.CommandText := ' select * from xmlnfe ' +
                               ' where NFe = ''T'' ' +
                               ' and dhEmi >= datetime(' + QuotedStr(FormatDateTime('YYYY-MM-DD', edtDataInicial.DateTime)) + ')' +
                               ' and dhEmi <= datetime(' + QuotedStr(FormatDateTime('YYYY-MM-DD', edtDataFinal.DateTime)) + ')';
  dtmxml.xmlnfe.Open;
end;

procedure Tfrmxml.btnManifestarNotasClick(Sender: TObject);
var
  Evento: TInfEventoCollectionItem;
begin
  Notebook1.PageIndex := 1;

  if dtmxml.xmldfe.Active then
  begin
    dtmxml.xmldfe.DisableControls;
    dtmxml.xmldfe.First;
    try
      while not dtmxml.xmldfe.EOF do
      begin
        if (dtmxml.xmldfe.FieldByName('DFe').AsString = 'F') and
           (dtmxml.xmldfe.FieldByName('NFe').AsString = 'F') then
        begin
          dtmxml.ACBrNFe1.EventoNFe.Evento.Clear;

          Evento := dtmxml.ACBrNFe1.EventoNFe.Evento.Add;
          Evento.infEvento.cOrgao   := 91;
          Evento.infEvento.chNFe    := dtmxml.xmldfe.FieldByName('chNFe').AsString;
          Evento.infEvento.CNPJ     := dtmxml.ACBrNFe1.SSL.CertCNPJ; // CNPJ;
          Evento.infEvento.dhEvento := Now;
          Evento.infEvento.tpEvento := teManifDestConfirmacao;

          // Manifesta e muda a tag do banco informando que foi manisfestada
          try
            if dtmxml.ACBrNFe1.EnviarEvento(dtmxml.xmldfe.FieldByName('idDFe').AsInteger) then
              dtmxml.Conn.ExecuteDirect('update xmlnfe set DFe = ''T'' where idDFe = ' + dtmxml.xmldfe.FieldByName('idDFe').AsString)
            else
            begin
              SetErrorList(Format(
                'Erro ao manifestar a nota: %s, %d - %s', [
                dtmxml.xmldfe.FieldByName('chNFe').AsString,
                dtmxml.ACBrNFe1.WebServices.EnvEvento.cStat,
                dtmxml.ACBrNFe1.WebServices.EnvEvento.xMotivo
              ]));
            end;
          except
            on E: Exception do
            begin
              SetErrorList(E.Message);
            end;
          end;
        end;

        dtmxml.xmldfe.Next;
        Application.ProcessMessages;
      end;
    finally
      dtmxml.ACBrNFe1.EventoNFe.Evento.Clear;
      dtmxml.xmldfe.First;
      dtmxml.xmldfe.EnableControls;
    end;
  end;
end;

procedure Tfrmxml.btnAtualizarListaClick(Sender: TObject);
var
  sXmlPath: String;
  sPdfPath: String;
  sPathPdf: String;
  sFileNew: string;
begin
  Notebook1.PageIndex := 1;

  dtmxml.xmldfe.Close;
  dtmxml.xmldfe.Open;
  dtmxml.xmldfe.DisableControls;
  dtmxml.xmldfe.First;
  try
    while not dtmxml.xmldfe.EOF do
    begin
      // Checa se o arquivo xml da chave manisfestada, já foi baixada
      // caso exista, muda a tag do banco informando que o xml já está na pasta.
      sXmlPath := dtmxml.GetPathXMLNFe(dtmxml.xmldfe.FieldByName('dhEmi').AsDateTime,
                                       dtmxml.xmldfe.FieldByName('chNFe').AsString);

      if FileExists(sXmlPath) then
      begin
        dtmxml.ACbrNFe1.NotasFiscais.Clear;
        try
          dtmxml.ACbrNFe1.NotasFiscais.LoadFromFile(sXmlPath);
          if dtmxml.ACbrNFe1.SSL.CertCNPJ <> dtmxml.ACbrNFe1.NotasFiscais[0].NFe.Dest.CNPJCPF then
          begin
            sFileNew := Copy(sXmlPath, 1, Length(sXmlPath) - 4) + '-transp.xml';
            RenameFile(sXmlPath, sFileNew);
          end;
        finally
          dtmxml.ACbrNFe1.NotasFiscais.Clear;
        end;

        // Só muda o status se ainda for "F" de False
        if dtmxml.xmldfe.FieldByName('NFe').AsString = 'F' then
        begin
          dtmxml.Conn.ExecuteDirect('update xmlnfe set NFe = ''T'' where idDFe = ' + dtmxml.xmldfe.FieldByName('idDFe').AsString);
          dtmxml.Conn.ExecuteDirect('update xmlnfe set DFe = ''T'' where idDFe = ' + dtmxml.xmldfe.FieldByName('idDFe').AsString);
        end;
      end;

      // Gera Danfe em PDF
      sPdfPath := dtmxml.GetPathPDFNFe(dtmxml.xmldfe.FieldByName('dhEmi').AsDateTime,
                                       dtmxml.xmldfe.FieldByName('chNFe').AsString);

      if not FileExists(sPdfPath) then
      begin
        if FileExists(sXmlPath) then
        begin
          dtmxml.ACBrNFe1.NotasFiscais.Clear;

          // Guarda o path atual dos PDFs
          sPathPdf := dtmxml.ACBrNFe1.DANFE.PathPDF;
          try
            if dtmxml.ACBrNFe1.NotasFiscais.LoadFromFile(sXmlPath) then
            begin
              dtmxml.ACBrNFe1.DANFE.PathPDF := PathWithDelim(sPathPdf) +
                                               PathWithDelim(FormatDateTime('YYYYMM', dtmxml.xmldfe.FieldByName('dhEmi').AsDateTime));

              dtmxml.ACBrNFe1.NotasFiscais.ImprimirPDF;
            end;
          finally
            // Retorna o path original dos PDFs
            dtmxml.ACBrNFe1.DANFE.PathPDF := sPathPdf;
            dtmxml.ACBrNFe1.NotasFiscais.Clear;
          end;
        end;
      end;

      dtmxml.xmldfe.Next;
    end;
  finally
    dtmxml.xmldfe.First;
    dtmxml.xmldfe.EnableControls;
  end;
end;

procedure Tfrmxml.btnConsultarSefazClick(Sender: TObject);
var
  iFor: Integer;
  TmpDataset: TDataSet;
  DocZipItem: TdocZipCollectionItem;
begin
  Notebook1.PageIndex := 1;

  // Consulta os xmls emitidos por fornecedores.
  dtmxml.xmlnfe.Close;
  try
    dtmxml.ACbrNFe1.DistribuicaoDFe(
      dtmxml.ACbrNFe1.Configuracoes.WebServices.UFCodigo,
      dtmxml.ACbrNFe1.SSL.CertCNPJ,
      dtmxml.XmlCfg.FieldByName('ultNSU').AsString,
      ''
    );

    if dtmxml.ACbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then
    begin
      // Abre a tabela para adicionar os resumos encontrados no banco
      dtmxml.xmlres.Open;
      try
        for iFor := 0 to dtmxml.ACbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count - 1 do
        begin
          if dtmxml.ACbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[iFor].resNFe.chNFe <> '' then
          begin
            DocZipItem := dtmxml.ACbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[iFor];

            // Só grava NFe de entrada
            if DocZipItem.resNFe.tpNF = tnEntrada then;
            begin
              // Pesquisa se o xml resumo já foi adicionado no db, pela chave.
              dtmxml.Conn.Execute(
                'select idDFe from xmlnfe where chNFe IN(' + QuotedStr(DocZipItem.resNFe.chNFe) + ')',
                nil,
                TmpDataset
              );
              try
                // Se não foi, adiciona.
                if TmpDataset.RecordCount = 0 then
                begin
                  dtmxml.xmlres.Append;
                  dtmxml.xmlres.FieldByName('idDFe').AsInteger     := dtmxml.XmlCfg.FieldByName('idDFeAutoInc').AsInteger + 1;
                  dtmxml.xmlres.FieldByName('xNumeroNFe').AsString := Copy(DocZipItem.resNFe.chNFe, 26, 9);;
                  dtmxml.xmlres.FieldByName('xSerie').AsString     := Copy(DocZipItem.resNFe.chNFe, 21, 2);
                  dtmxml.xmlres.FieldByName('chNFe').AsString      := DocZipItem.resNFe.chNFe;
                  dtmxml.xmlres.FieldByName('CNPJCPF').AsString    := DocZipItem.resNFe.CNPJCPF;
                  dtmxml.xmlres.FieldByName('xNome').AsString      := DocZipItem.resNFe.xNome;
                  dtmxml.xmlres.FieldByName('IE').AsString         := DocZipItem.resNFe.IE;
                  dtmxml.xmlres.FieldByName('dhEmi').AsString      := FormatDateTime('DD/MM/YYYY', DocZipItem.resNFe.dhEmi);
                  dtmxml.xmlres.FieldByName('tpNF').AsInteger      := Integer(DocZipItem.resNFe.tpNF);
                  dtmxml.xmlres.FieldByName('vNF').AsFloat         := DocZipItem.resNFe.vNF;
                  dtmxml.xmlres.FieldByName('digVal').AsString     := DocZipItem.resNFe.digVal;
                  dtmxml.xmlres.FieldByName('dhRecbto').AsDateTime := DocZipItem.resNFe.dhRecbto;
                  dtmxml.xmlres.FieldByName('nProt').AsString      := DocZipItem.resNFe.nProt;
                  dtmxml.xmlres.FieldByName('cSitNFe').AsInteger   := Integer(DocZipItem.resNFe.cSitNFe);
                  dtmxml.xmlres.FieldByName('NSU').AsInteger       := StrToIntDef(DocZipItem.NSU, 0);
                  dtmxml.xmlres.FieldByName('NFe').AsString        := 'F';
                  dtmxml.xmlres.FieldByName('DFe').AsString        := 'F';
                  dtmxml.xmlres.Post;

                  // Aplica e Comita
                  dtmxml.xmlres.ApplyUpdates(0);
                end;
              finally
                TmpDataset.Free;
              end;

              // Atualiza contador autoinc para cada resumo recebido
              dtmxml.XmlCfg.Edit;
              dtmxml.XmlCfg.FieldByName('idDFeAutoInc').AsInteger := dtmxml.XmlCfg.FieldByName('idDFeAutoInc').AsInteger + 1;
              dtmxml.XmlCfg.FieldByName('ultNSU').AsInteger       := StrToIntDef(DocZipItem.NSU, 0);
              dtmxml.XmlCfg.Post;
            end;
          end;
        end;

        ShowMessage('Consulta terminada!');
      finally
        dtmxml.xmlres.Close;
      end;
    end
    else
    if dtmxml.ACbrNFe1.WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 137 then
      SetErrorList('Nenhuma XML de NFe consultada!');
  except
    on E: Exception do
    begin
      SetErrorList(E.Message);
    end;
  end;
end;

procedure Tfrmxml.btnLimparBaseDadosClick(Sender: TObject);
begin
  if Application.MessageBox(
    'Deseja realmente apagar todas as notas fiscais?',
    'Apagar',
    MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2
  ) = ID_YES then
  begin
    dtmxml.Conn.ExecuteDirect('delete from xmlnfe');
  end;
end;

procedure Tfrmxml.ImprimeDanfe;
var
  sXmlPath: String;
begin
  sXmlPath := dtmxml.GetPathXMLNFe(dtmxml.xmlnfe.FieldByName('dhEmi').AsDateTime,
                                   dtmxml.xmlnfe.FieldByName('chNFe').AsString);

  if FileExists(sXmlPath) then
  begin
    dtmxml.ACBrNFe1.NotasFiscais.Clear;
    try
      if dtmxml.ACBrNFe1.NotasFiscais.LoadFromFile(sXmlPath) then
        dtmxml.ACBrNFe1.NotasFiscais.Imprimir;
    finally
      dtmxml.ACBrNFe1.NotasFiscais.Clear;
    end;
  end;
end;

procedure Tfrmxml.AutoExecuteProcessos;
begin
  // Consultar SEFAZ
  btnConsultarSefazClick(btnConsultarSefaz);
  Application.ProcessMessages;

  // Atualizar Lista
  btnAtualizarListaClick(btnAtualizarLista);
  Application.ProcessMessages;

  // Executar Distribuição
  btnManifestarNotasClick(btnManifestarNotas);
  Application.ProcessMessages;
end;

end.
