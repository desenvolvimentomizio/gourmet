unit frm_xml;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Grids, ComCtrls, Buttons, CheckLst, ActnList, DBGrids, DbCtrls,
  Spin, EditBtn, dtm_xml, Sqlite3DS, db, ACBrNFe, MaskUtils, ACBrBase, ACBrDFe,
  pcnConversao, pcnConversaoNFe, ACBrUtil, dateutils;

type

  { Tfrmxml }

  Tfrmxml = class(TForm)
    btnPost: TBitBtn;
    Button1: TPanel;
    Button2: TPanel;
    Button3: TPanel;
    Button4: TPanel;
    Button5: TPanel;
    Button6: TButton;
    btnView: TButton;
    btnPrint: TButton;
    btnPDFs: TButton;
    ButtonMax: TPanel;
    ButtonMin: TPanel;
    edtAutoTimer: TDBEdit;
    edtAutoExecute: TDBCheckBox;
    edtDataInicial: TDateEdit;
    edtDataFinal: TDateEdit;
    edtERROR: TLabel;
    edtNumeroNFe: TSpinEdit;
    edtUF: TDBComboBox;
    edtSSLLib: TDBComboBox;
    edtultNSU: TDBEdit;
    edtNumeroSerie: TDBEdit;
    edtArquivoPFX: TDBEdit;
    edtSenha: TDBEdit;
    edtidDFeAutoInc: TDBEdit;
    DBGrid3: TDBGrid;
    dscfg: TDataSource;
    dsres: TDataSource;
    DBGrid2: TDBGrid;
    dsxml: TDataSource;
    Image1: TImage;
    Image2: TImage;
    imgCert: TImage;
    ImageMax: TImage;
    ImageClose: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ListBoxError: TListBox;
    Notebook1: TNotebook;
    OpenDialog: TOpenDialog;
    PageDFe: TPage;
    PageParams: TPage;
    PageXML: TPage;
    ButtonClose: TPanel;
    PanelLeft: TPanel;
    PanelNbk: TPanel;
    PanelTitle: TPanel;
    Panel5: TPanel;
    StatusShow: TStatusBar;
    btnCertificado: TToggleBox;
    btnArquivoPFX: TToggleBox;
    procedure btnCertificadoClick(Sender: TObject);
    procedure btnPDFsClick(Sender: TObject);
    procedure btnPostClick(Sender: TObject);
    procedure btnPrintClick(Sender: TObject);
    procedure Button0MouseLeave(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure btnViewClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ButtonMaxMouseEnter(Sender: TObject);
    procedure ButtonMaxMouseLeave(Sender: TObject);
    procedure ButtonMinMouseEnter(Sender: TObject);
    procedure ButtonMinMouseLeave(Sender: TObject);
    procedure dscfgStateChange(Sender: TObject);
    procedure edtAutoExecuteChange(Sender: TObject);
    procedure edtSSLLibChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure Button0MouseEnter(Sender: TObject);
    procedure ButtonCloseMouseEnter(Sender: TObject);
    procedure ButtonCloseMouseLeave(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure ImageCloseClick(Sender: TObject);
    procedure btnArquivoPFXClick(Sender: TObject);
    procedure PanelTitleMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure PanelTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure PanelTitleMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure StatusShowClick(Sender: TObject);
    procedure StatusShowDrawPanel(StatusBar: TStatusBar; Panel: TStatusPanel;
      const Rect: TRect);
  private
    { private declarations }
    xxx: Integer;
    yyy: Integer;
    Captura: Boolean;

    procedure DoDistribuicaoDFe;
    procedure SetCertificadoAtivo;
    procedure SetErrorList(AMsn: String);
    procedure SetColorButtons(Sender: TObject);
    procedure ImprimeDanfe;
  public
    { public declarations }
    FFileLog: String;
    procedure AutoExecuteProcessos;
  end;

var
  frmxml: Tfrmxml;

implementation

{$R *.lfm}

{ Tfrmxml }

procedure Tfrmxml.btnCertificadoClick(Sender: TObject);
begin
  try
    dtmxml.ACBrNFe.SSL.DescarregarCertificado;
    dtmxml.ACBrNFe.SSL.SelecionarCertificado;
    // Seta informações do certificado na barra e status
    SetCertificadoAtivo;
    with dtmxml.xmlcfg do
    begin
      Edit;
      FieldByName('NumeroSerie').AsString := dtmxml.ACBrNFe.SSL.CertNumeroSerie;
    end;
  except
    on E: Exception do
    begin
       SetErrorList(E.Message);
    end;
  end;
end;

procedure Tfrmxml.btnPDFsClick(Sender: TObject);
var
  sXmlPath: String;
  sPdfPath: String;
  sPathPdf: String;
begin
  dtmxml.xmlnfe.First;
  while not dtmxml.xmlnfe.EOF do
  begin
     with dtmxml.ACBrNFe do
     begin
        sXmlPath := PathWithDelim(Configuracoes.Arquivos.DownloadNFe.PathDownload) +
                    PathWithDelim(FormatDateTime('YYYYMM', dtmxml.xmlnfe.FieldByName('dhEmi').AsDateTime)) +
                    dtmxml.xmlnfe.FieldByName('chNFe').AsString + '-nfe.xml';
        if FileExists(sXmlPath) then
        begin
           // Gera Danfe em PDF
           sPdfPath := PathWithDelim(Configuracoes.Arquivos.DownloadNFe.PathDownload) +
                       PathWithDelim(FormatDateTime('YYYYMM', dtmxml.xmlnfe.FieldByName('dhEmi').AsDateTime)) +
                       dtmxml.xmlnfe.FieldByName('chNFe').AsString + '-nfe.pdf';
           if not FileExists(sPdfPath) then
           begin
              if FileExists(sXmlPath)then
              begin
                 NotasFiscais.Clear;
                 // Guarda o path atual dos PDFs
                 sPathPdf := DANFE.PathPDF;
                 try
                   if NotasFiscais.LoadFromFile(sXmlPath) then
                   begin
                      // Adiciona ao path atual dos PDFs YYYYMM
                      DANFE.PathPDF := PathWithDelim(sPathPdf) +
                                       PathWithDelim(FormatDateTime('YYYYMM', dtmxml.xmlnfe.FieldByName('dhEmi').AsDateTime));
                      // Gera o PDF
                      NotasFiscais.ImprimirPDF;
                   end;
                 finally
                   // Retorna o path original dos PDFs
                   DANFE.PathPDF := sPathPdf;
                   NotasFiscais.Clear;
                 end;
              end;
           end;
        end;
     end;
     dtmxml.xmlnfe.Next;
  end;
end;

procedure Tfrmxml.btnPostClick(Sender: TObject);
begin
  if dtmxml.xmlcfg.State in [dsInsert, dsEdit] then
     dtmxml.xmlcfg.Post;
end;

procedure Tfrmxml.btnPrintClick(Sender: TObject);
begin
  dtmxml.ACBrNFe.DANFE.MostrarPreview := False;
  // Imprime o Danfe
  ImprimeDanfe;
end;

procedure Tfrmxml.Button0MouseLeave(Sender: TObject);
begin
  if TPanel(Sender).Color = clGray then
  begin
     TPanel(Sender).Color := clBtnFace;
  end;
end;

procedure Tfrmxml.Button1Click(Sender: TObject);
var
  sXmlPath: String;
  sPdfPath: String;
  sPathPdf: String;
  sFileNew: string;
begin
  Notebook1.PageIndex := 1;
  SetColorButtons(Sender);
  if dtmxml.xmlnfe.Active then
     dtmxml.xmlnfe.Close;

  dtmxml.xmldfe.Close;
  dtmxml.xmldfe.Open;
  dtmxml.xmldfe.DisableControls;
  dtmxml.xmldfe.First;
  try
    with dtmxml.ACBrNFe do
    begin
      while not dtmxml.xmldfe.EOF do
      begin
        // Checa se o arquivo xml da chave manisfestada, já foi baixada
        // caso exista, muda a tag do banco informando que o xml já está na pasta.
        sXmlPath := PathWithDelim(Configuracoes.Arquivos.DownloadNFe.PathDownload) +
//                    PathWithDelim(dtmxml.xmldfe.FieldByName('xNome').AsString) +
                    PathWithDelim(FormatDateTime('YYYYMM', dtmxml.xmldfe.FieldByName('dhEmi').AsDateTime)) +
                    dtmxml.xmldfe.FieldByName('chNFe').AsString + '-nfe.xml';
        if FileExists(sXmlPath) then
        begin
          with dtmxml.ACBrNFe do
          begin
             NotasFiscais.Clear;
             try
               NotasFiscais.LoadFromFile(sXmlPath);
               if SSL.CertCNPJ <> NotasFiscais[0].NFe.Dest.CNPJCPF then
               begin
                  sFileNew := Copy(sXmlPath, 1, Length(sXmlPath) -4) + '-transp.xml';
                  // Renomeia o arquivo de transporte.
                  RenameFile(sXmlPath, sFileNew);
               end;
             finally
               dtmxml.ACBrNFe.NotasFiscais.Clear;
             end;
          end;
          // Só muda o status se ainda for "F" de False
          if dtmxml.xmldfe.FieldByName('NFe').AsString = 'F' then
          begin
            dtmxml.Conn.ExecuteDirect('update xmlnfe set NFe = ''T'' where idDFe = ' + dtmxml.xmldfe.FieldByName('idDFe').AsString);
            dtmxml.Conn.Transaction.CommitRetaining;
            //
            dtmxml.Conn.ExecuteDirect('update xmlnfe set DFe = ''T'' where idDFe = ' + dtmxml.xmldfe.FieldByName('idDFe').AsString);
            dtmxml.Conn.Transaction.CommitRetaining;
          end;
        end;
        // Gera Danfe em PDF
        sPdfPath := PathWithDelim(Configuracoes.Arquivos.DownloadNFe.PathDownload) +
                    PathWithDelim(FormatDateTime('YYYYMM', dtmxml.xmldfe.FieldByName('dhEmi').AsDateTime)) +
                    dtmxml.xmldfe.FieldByName('chNFe').AsString + '-nfe.pdf';
        if not FileExists(sPdfPath) then
        begin
          with dtmxml.ACBrNFe do
          begin
            if FileExists(sXmlPath)then
            begin
              NotasFiscais.Clear;
              // Guarda o path atual dos PDFs
              sPathPdf := DANFE.PathPDF;
              try
                if NotasFiscais.LoadFromFile(sXmlPath) then
                begin
                   // Adiciona ao path atual dos PDFs YYYYMM
                   DANFE.PathPDF := PathWithDelim(sPathPdf) +
                                    PathWithDelim(FormatDateTime('YYYYMM', dtmxml.xmldfe.FieldByName('dhEmi').AsDateTime));
                   // Gera o PDF
                   NotasFiscais.ImprimirPDF;
                end;
              finally
                // Retorna o path original dos PDFs
                DANFE.PathPDF := sPathPdf;
                NotasFiscais.Clear;
              end;
            end;
          end;
        end;
        dtmxml.xmldfe.Next;
      end;
    end;
  finally
    dtmxml.xmldfe.First;
    dtmxml.xmldfe.EnableControls;
  end;
end;

procedure Tfrmxml.Button2Click(Sender: TObject);
begin
  Notebook1.PageIndex := 1;
  SetColorButtons(Sender);
  if dtmxml.xmlnfe.Active then
     dtmxml.xmlnfe.Close;

  // Consulta os xmls emitidos por fornecedores.
  DoDistribuicaoDFe;
end;

procedure Tfrmxml.Button3Click(Sender: TObject);
begin
  Notebook1.PageIndex := 1;
  SetColorButtons(Sender);
  if dtmxml.xmlnfe.Active then
     dtmxml.xmlnfe.Close;

  if dtmxml.xmldfe.Active then
  begin
    with dtmxml.ACBrNFe do
    begin
      dtmxml.xmldfe.DisableControls;
      dtmxml.xmldfe.First;
      try
        while not dtmxml.xmldfe.EOF do
        begin
          if (dtmxml.xmldfe.FieldByName('DFe').AsString = 'F') and
             (dtmxml.xmldfe.FieldByName('NFe').AsString = 'F') then
          begin
            EventoNFe.Evento.Clear;
            with EventoNFe.Evento.Add do
            begin
              infEvento.cOrgao   := 91;
              infEvento.chNFe    := dtmxml.xmldfe.FieldByName('chNFe').AsString;
              infEvento.CNPJ     := SSL.CertCNPJ; // CNPJ;
              infEvento.dhEvento := Now;
              infEvento.tpEvento := teManifDestConfirmacao;
            end;
            // Manifesta e muda a tag do banco informando que foi manisfestada
            try
              if EnviarEvento(dtmxml.xmldfe.FieldByName('idDFe').AsInteger) then
              begin
                dtmxml.Conn.ExecuteDirect('update xmlnfe set DFe = ''T'' where idDFe = ' + dtmxml.xmldfe.FieldByName('idDFe').AsString);
                dtmxml.Conn.Transaction.CommitRetaining;
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
        EventoNFe.Evento.Clear;
        dtmxml.xmldfe.First;
        dtmxml.xmldfe.EnableControls;
      end;
    end;
  end;
end;

procedure Tfrmxml.Button4Click(Sender: TObject);
begin
  Notebook1.PageIndex := 0;
  SetColorButtons(Sender);
  if dtmxml.xmlnfe.Active then
     dtmxml.xmlnfe.Close;
end;

procedure Tfrmxml.Button5Click(Sender: TObject);
begin
  Notebook1.PageIndex := 2;
  SetColorButtons(Sender);
  edtNumeroNFe.SetFocus;
  edtDataInicial.Date := StartOfTheMonth(Date);
  edtDataFinal.Date   := EndOfTheMonth(Date);

  with dtmxml.xmlnfe do
  begin
    SQL.Text := ' select * from xmlnfe ' +
                ' where NFe = ''T'' ' +
                ' and dhEmi between :dateI' +
                ' and               :dateF' ;
    ParamByName('dateI').DataType   := ftDateTime;
    ParamByName('dateF').DataType   := ftDateTime;
    ParamByName('dateI').AsDateTime := edtDataInicial.Date;
    ParamByName('dateF').AsDateTime := edtDataFinal.Date;
    Prepare;
    Open;
  end;
end;

procedure Tfrmxml.btnViewClick(Sender: TObject);
begin
  dtmxml.ACBrNFe.DANFE.MostrarPreview := True;
  // Visualiza o Danfe
  ImprimeDanfe;
end;

procedure Tfrmxml.Button6Click(Sender: TObject);
begin
  dtmxml.xmlnfe.Close;
  if edtNumeroNFe.Value > 0 then
  begin
    dtmxml.xmlnfe.SQL.Text := ' select * from xmlnfe ' +
                              ' where NFe = ''T'' ' +
                              ' and xNumeroNFe =  ' + QuotedStr(FormatFloat('000000000', edtNumeroNFe.Value));
  end
  else
  begin
    with dtmxml.xmlnfe do
    begin
      SQL.Text := ' select * from xmlnfe ' +
                  ' where NFe = ''T'' ' +
                  ' and dhEmi between :dateI' +
                  ' and               :dateF' ;
      ParamByName('dateI').DataType   := ftDateTime;
      ParamByName('dateF').DataType   := ftDateTime;
      ParamByName('dateI').AsDateTime := edtDataInicial.Date;
      ParamByName('dateF').AsDateTime := edtDataFinal.Date;
      Prepare;
    end;
  end;
  dtmxml.xmlnfe.Open;
end;

procedure Tfrmxml.ButtonMaxMouseEnter(Sender: TObject);
begin
  if ButtonMax.Enabled then;
     ButtonMax.Color := clBtnFace;
end;

procedure Tfrmxml.ButtonMaxMouseLeave(Sender: TObject);
begin
  if ButtonMax.Enabled then;
     ButtonMax.Color := $00DFDFDF;
end;

procedure Tfrmxml.ButtonMinMouseEnter(Sender: TObject);
begin
  ButtonMin.Color := clBtnFace;
end;

procedure Tfrmxml.ButtonMinMouseLeave(Sender: TObject);
begin
  ButtonMin.Color := $00DFDFDF;
end;

procedure Tfrmxml.dscfgStateChange(Sender: TObject);
begin
   btnPost.Enabled := dscfg.State in [dsInsert, dsEdit];
end;

procedure Tfrmxml.edtAutoExecuteChange(Sender: TObject);
begin
  edtAutoTimer.Enabled := edtAutoExecute.Checked;
end;

procedure Tfrmxml.edtSSLLibChange(Sender: TObject);
begin
  edtNumeroSerie.Enabled := edtSSLLib.ItemIndex = 0;
  btnCertificado.Enabled := edtSSLLib.ItemIndex = 0;
  //
  edtArquivoPFX.Enabled := edtSSLLib.ItemIndex = 1;
  btnArquivoPFX.Enabled := edtSSLLib.ItemIndex = 1;
end;

procedure Tfrmxml.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  // Descarrega o certificado
  dtmxml.ACBrNFe.SSL.DescarregarCertificado;
  // Salva a lista de log atualizada
  ListBoxError.Items.SaveToFile(FFileLog);
end;

procedure Tfrmxml.Button0MouseEnter(Sender: TObject);
begin
  if TPanel(Sender).Color = clBtnFace then
  begin
     TPanel(Sender).Color := clGray;
  end;
end;

procedure Tfrmxml.ButtonCloseMouseEnter(Sender: TObject);
begin
  ButtonClose.Color := $000000F2;
end;

procedure Tfrmxml.ButtonCloseMouseLeave(Sender: TObject);
begin
  ButtonClose.Color := $00DFDFDF;
end;

procedure Tfrmxml.FormCreate(Sender: TObject);
var
  sPathEXE: String;
begin
  //ShowMessage('Essa versão é uma demonstração, de autoria da Tecsis Informatica Ltda Fone: (27) 9 9903-6808');
  //
  //if Date > EncodeDate(2016,8,31) then
  //   Application.Terminate;

  sPathEXE := ExtractFilePath(Application.ExeName);
  with dtmxml.ACBrNFe.Configuracoes.Arquivos do
  begin
    DownloadNFe.PathDownload := sPathEXE + '\Download\';
    PathEvento  := sPathEXE + '\Eventos\';
    PathInu     := sPathEXE + '\Inu\';
    PathNFe     := sPathEXE + '\NFe\';
    PathSalvar  := sPathEXE + '\Salvar\';
    PathSchemas := sPathEXE + '\Schemas\';
  end;
  // Atribue a pasta e nome do arquivo de log.
  FFileLog := '.\Log\log-' + FormatDateTime('DDMMYYYY', Date) + '.txt';
  // Ativa a 1a página
  Notebook1.PageIndex := 0;
  // Checa se o diretório de log existe, se não cria
  if not DirectoryExists('.\Log') then
     CreateDir('.\Log');
  // Se o log do dia já foi criado é carregado para a lista visual
  if FileExists(FFileLog) then
     ListBoxError.Items.LoadFromFile(FFileLog);
  // Seta informações do certificado na barra e status
  SetCertificadoAtivo;
end;

procedure Tfrmxml.Image2Click(Sender: TObject);
begin
  Application.Minimize;
end;

procedure Tfrmxml.ImageCloseClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmxml.btnArquivoPFXClick(Sender: TObject);
begin
  if OpenDialog.Execute then
  begin
     if OpenDialog.FileName <> '' then
     begin
       with dtmxml.xmlcfg do
       begin
         Edit;
         FieldByName('ArquivoPFX').AsString := OpenDialog.FileName;
       end;
     end;
  end;
end;

procedure Tfrmxml.PanelTitleMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  xxx := X;
  yyy := Y;
  Captura := True;
end;

procedure Tfrmxml.PanelTitleMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  if Captura then
  begin
    Screen.ActiveForm.Left := Screen.ActiveForm.Left + X - xxx;
    Screen.ActiveForm.Top  := Screen.ActiveForm.Top  + Y - yyy;
  end;
end;

procedure Tfrmxml.PanelTitleMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  Captura := False;
end;

procedure Tfrmxml.StatusShowClick(Sender: TObject);
var
  mouseIn: Tpoint;
  pWidth, iFor: Integer;
begin
  with StatusShow do
  begin
    if (SimplePanel) or (Panels.Count = 0) then
    begin
       iFor := 0
    end
    else
    begin
      mouseIn := ScreenToClient(Mouse.CursorPos);
      pWidth  := 0;
      for iFor := 0 to Panels.Count - 2 do
      begin
        pWidth := pWidth + Panels[iFor].Width;
        if mouseIn.x <= pWidth then
           Break;
      end;
    end;
    if iFor = 1 then
       btnCertificadoClick(Sender);
  end;
end;

procedure Tfrmxml.StatusShowDrawPanel(StatusBar: TStatusBar;
  Panel: TStatusPanel; const Rect: TRect);
begin
  if Panel.Style = psOwnerDraw then
  begin
    StatusShow.Canvas.Draw( Rect.Left+1, Rect.Top+1, imgCert.Picture.Bitmap );
  end;
end;

procedure Tfrmxml.DoDistribuicaoDFe;
var
  iFor: integer;
  eFor: Integer;
begin
  with dtmxml.ACBrNFe do
  begin
    try
      DistribuicaoDFe(Configuracoes.WebServices.UFCodigo,
                      SSL.CertCNPJ,
                      dtmxml.xmlcfg.FieldByName('ultNSU').AsString,
                      '');

      if WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 138 then
      begin
        // Abre a tabela para adicionar os resumos encontrados no banco
        dtmxml.xmlres.open;
        try
          for iFor := 0 to WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Count -1 do
          begin
            if WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[iFor].resNFe.chNFe <> '' then
            begin
              with dtmxml do
              begin
                with WebServices.DistribuicaoDFe.retDistDFeInt.docZip.Items[iFor] do
                begin
                  // Só grava NFe de entrada
                  if resNFe.tpNF = tnEntrada then;
                  begin
                    // Pesquisa se o xml resumo já foi adicionado no db, pela chave.
                    with dtmxml.find do
                    begin
                      Close;
                      SQL.Text := 'select idDFe from xmlnfe where chNFe IN(' + QuotedStr(resNFe.chNFe) + ')';
                      Open;
                    end;
                    // Se não foi, adiciona.
                    if dtmxml.find.RecordCount = 0 then
                    begin
                      xmlres.Append;
                      xmlres.FieldByName('idDFe').AsInteger     := xmlcfg.FieldByName('idDFeAutoInc').AsInteger + 1;
                      xmlres.FieldByName('xNumeroNFe').AsString := Copy(resNFe.chNFe, 26, 9);;
                      xmlres.FieldByName('xSerie').AsString     := Copy(resNFe.chNFe, 21, 2);
                      xmlres.FieldByName('chNFe').AsString      := resNFe.chNFe;
                      xmlres.FieldByName('CNPJCPF').AsString    := resNFe.CNPJCPF;
                      xmlres.FieldByName('xNome').AsString      := resNFe.xNome;
                      xmlres.FieldByName('IE').AsString         := resNFe.IE;
//                      xmlres.FieldByName('dhEmi').AsDateTime    := resNFe.dhEmi;
                      xmlres.FieldByName('dhEmi').AsString      := FormatDateTime('DD/MM/YYYY', resNFe.dhEmi);
                      xmlres.FieldByName('tpNF').AsInteger      := Integer(resNFe.tpNF);
                      xmlres.FieldByName('vNF').AsFloat         := resNFe.vNF;
                      xmlres.FieldByName('digVal').AsString     := resNFe.digVal;
                      xmlres.FieldByName('dhRecbto').AsDateTime := resNFe.dhRecbto;
                      xmlres.FieldByName('nProt').AsString      := resNFe.nProt;
                      xmlres.FieldByName('cSitNFe').AsInteger   := Integer(resNFe.cSitNFe);
                      xmlres.FieldByName('NSU').AsInteger       := StrToIntDef(NSU, 0);
                      xmlres.FieldByName('NFe').AsString        := 'F';
                      xmlres.FieldByName('DFe').AsString        := 'F';

                      xmlres.Post;
                      // Aplica e Comita
                      xmlres.ApplyUpdates;
                      Trans.CommitRetaining;
                    end;
                    // Atualiza contador autoinc para cada resumo recebido
                    xmlcfg.Edit;
                    xmlcfg.FieldByName('idDFeAutoInc').AsInteger := xmlcfg.FieldByName('idDFeAutoInc').AsInteger + 1;
                    xmlcfg.FieldByName('ultNSU').AsInteger       := StrToIntDef(NSU, 0);
                    xmlcfg.Post;
                  end;
                end;
              end;
            end;
          end;
        finally
          dtmxml.xmlres.Close;
        end;
      end
      else
      if WebServices.DistribuicaoDFe.retDistDFeInt.cStat = 137 then
      begin
        SetErrorList('Nenhuma XML de NFe consultada!');
      end;
    except
      on E: Exception do
      begin
         SetErrorList(E.Message);
      end;
    end;
  end;
end;

procedure Tfrmxml.SetCertificadoAtivo;
begin
  try
    with dtmxml.ACBrNFe.Configuracoes.Certificados do
    begin
      if NumeroSerie <> '' then
      begin
        with dtmxml.ACBrNFe.SSL do
        begin
          StatusShow.Panels[3].Text := CertRazaoSocial;
          StatusShow.Panels[5].Text := FormatMaskText('99.999.999/9999-99;0; ', CertCNPJ);
          StatusShow.Panels[7].Text := FormatDateTime('DD/MM/YYYY', CertDataVenc);
        end;
      end;
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

procedure Tfrmxml.SetColorButtons(Sender: TObject);
var
  iFor: Integer;
begin
   for iFor := 0 to PanelLeft.ControlCount -1 do
   begin
      TPanel(PanelLeft.Controls[iFor]).Color := clBtnFace;
   end;
   TPanel(Sender).Color := $00CACA00;
end;

procedure Tfrmxml.ImprimeDanfe;
var
  sXmlPath: String;
begin
  with dtmxml.ACBrNFe do
  begin
    sXmlPath := PathWithDelim(Configuracoes.Arquivos.DownloadNFe.PathDownload) +
                PathWithDelim(FormatDateTime('YYYYMM', dtmxml.xmlnfe.FieldByName('dhEmi').AsDateTime)) +
                dtmxml.xmlnfe.FieldByName('chNFe').AsString + '-nfe.xml';
    if FileExists(sXmlPath)then
    begin
      NotasFiscais.Clear;
      try
        if NotasFiscais.LoadFromFile(sXmlPath) then
        begin
           NotasFiscais.Imprimir;
        end;
      finally
        NotasFiscais.Clear;
      end;
    end;
  end;
end;

procedure Tfrmxml.AutoExecuteProcessos;
begin
  // Consultar SEFAZ
  Button2Click(Button2);
  Application.ProcessMessages;
  // Atualizar Lista
  Button1Click(Button1);
  Application.ProcessMessages;
  // Executar Distribuição
  Button3Click(Button3);
  Application.ProcessMessages;
end;

end.
