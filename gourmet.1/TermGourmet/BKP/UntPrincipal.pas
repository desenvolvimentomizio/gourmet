unit UntPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.themes,
  Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, DBAccess, uni, Vcl.Imaging.jpeg, IniFiles, UntPegaUtils,
  Vcl.Imaging.pngimage, Vcl.DBCtrls, Vcl.Buttons, Vcl.Menus, System.Actions, UntPegaConst,
  Vcl.ActnList, DASQLMonitor, UniSQLMonitor, System.Math;

type

  TGroupBox = class(Vcl.StdCtrls.TGroupBox) // declare this before of your form definition
  public
    procedure Paint; override;
  end;

  TFrmPrincipal = class(TForm)
    Panel2: TPanel;
    Panel3: TPanel;
    PnSuperior: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    Panel13: TPanel;
    Panel7: TPanel;
    LbMesa: TLabel;
    PCMesa: TPageControl;
    TabItens: TTabSheet;
    TabCardapio: TTabSheet;
    DBGrid1: TDBGrid;
    Panel12: TPanel;
    LbItemGeral: TLabel;
    PnCozinha: TPanel;
    LbCozinha: TLabel;
    TmCozinha: TTimer;
    Panel5: TPanel;
    BtnCardRetornar: TButton;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    LbOpcoes: TLabel;
    DBGrid3: TDBGrid;
    PnSabores: TPanel;
    Panel14: TPanel;
    LbIngredientes: TLabel;
    Panel15: TPanel;
    DBGrid4: TDBGrid;
    MemIngredientes: TMemo;
    dproc: TUniDataSource;
    PnLeft: TPanel;
    PnMesas: TPanel;
    pnInfoTopo: TPanel;
    GBdescmax: TGroupBox;
    LbDescMaximo: TLabel;
    pversao: TPanel;
    LbVersao: TLabel;
    lbtitversao: TLabel;
    GroupBox3: TGroupBox;
    LbHost: TLabel;
    GroupBox7: TGroupBox;
    LbEmpresa: TLabel;
    GroupBox13: TGroupBox;
    LbDados: TLabel;
    GBTerminal: TGroupBox;
    LbTerminal: TLabel;
    GBModoNFs: TGroupBox;
    LbModoNFe: TLabel;
    GBCaixa: TGroupBox;
    plAgora: TPanel;
    LbData: TLabel;
    LbColaborador: TLabel;
    LbOrcChave: TLabel;
    Panel8: TPanel;
    Label1: TLabel;
    dGrp: TUniDataSource;
    Panel16: TPanel;
    LbItemQtde: TLabel;
    Panel17: TPanel;
    PUMenuRelatorios: TPopupMenu;
    TmMesa: TTimer;
    Acoes: TActionList;
    ActAbreCaixa: TAction;
    ActFechaCaixa: TAction;
    ActSangria: TAction;
    ActSuprimento: TAction;
    ActImprimeCaixa: TAction;
    ActFechaMesa: TAction;
    LbRecebido: TLabel;
    PnOperacoes: TPanel;
    GBCaixaVar: TGroupBox;
    SBAbertura: TSpeedButton;
    SBRetirada: TSpeedButton;
    SBFechamento: TSpeedButton;
    SBSuprimento: TSpeedButton;
    SBImpFechamento: TSpeedButton;
    GBFuncoes: TGroupBox;
    SBCancelaItem: TSpeedButton;
    SBProduto: TSpeedButton;
    SBFechaMesa: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SBSair: TSpeedButton;
    SBCancelaPedido: TSpeedButton;
    GBUtilitarios: TGroupBox;
    SBTransfMesa: TSpeedButton;
    SBReabreMesa: TSpeedButton;
    Panel1: TPanel;
    Image2: TImage;
    SBRelatorio: TSpeedButton;
    SBPedido: TSpeedButton;
    SBJuntarMesas: TSpeedButton;
    ActJuntarMesas: TAction;
    ActTranferirMesas: TAction;
    ActIniciaFechamento: TAction;
    ActReemissaoFechamento: TAction;
    LbItemDesconto: TLabel;
    LbItemTotal: TLabel;
    LbReceber: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Panel22: TPanel;
    LbOperador: TLabel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    EdtOperador: TEdit;
    Panel26: TPanel;
    Panel27: TPanel;
    Label12: TLabel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    EdtProduto: TEdit;
    DBGrid2: TDBGrid;
    Label5: TLabel;
    Panel36: TPanel;
    Panel38: TPanel;
    Label13: TLabel;
    Panel31: TPanel;
    Panel33: TPanel;
    Label15: TLabel;
    Panel34: TPanel;
    Label16: TLabel;
    Panel32: TPanel;
    Label14: TLabel;
    ActReabirMesa: TAction;
    SBImpComanda: TSpeedButton;
    SbRecebimentos: TSpeedButton;
    SbFechaDelivery: TSpeedButton;
    ActReceberDelivery: TAction;
    SpeedButton1: TSpeedButton;
    ActReceberConvenio: TAction;
    SpeedButton2: TSpeedButton;
    ActExcluirJuncao: TAction;
    procedure FormShow(Sender: TObject);
    procedure BtnCardRetornarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dprocDataChange(Sender: TObject; Field: TField);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dGrpDataChange(Sender: TObject; Field: TField);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure FormMouseWheel(Sender: TObject; Shift: TShiftState;
      WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
    procedure ActAbreCaixaExecute(Sender: TObject);
    procedure ActFechaMesaExecute(Sender: TObject);
    procedure ActSuprimentoExecute(Sender: TObject);
    procedure ActSangriaExecute(Sender: TObject);
    procedure ActFechaCaixaExecute(Sender: TObject);
    procedure ActImprimeCaixaExecute(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure ActJuntarMesasExecute(Sender: TObject);
    procedure ActTranferirMesasExecute(Sender: TObject);
    procedure BtnTesteClick(Sender: TObject);
    procedure ActIniciaFechamentoExecute(Sender: TObject);
    procedure ActReemissaoFechamentoExecute(Sender: TObject);
    procedure EdtOperadorKeyPress(Sender: TObject; var Key: Char);
    procedure EdtOperadorEnter(Sender: TObject);
    procedure EdtProdutoEnter(Sender: TObject);
    procedure EdtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure ActReabirMesaExecute(Sender: TObject);
    procedure EdtOperadorExit(Sender: TObject);
    procedure ActReceberDeliveryExecute(Sender: TObject);
    procedure ActReceberConvenioExecute(Sender: TObject);
    procedure LbVersaoClick(Sender: TObject);
    procedure lbtitversaoDblClick(Sender: TObject);
    procedure SBSairClick(Sender: TObject);

  private
    { Private declarations }
    procedure CarregaMesa;
    procedure VerificaMesa;
    procedure ConsultaMesa;
    procedure CalculaRecebimentos;
    procedure AjustaBotoes(pEnabled: Boolean);
    procedure GeraMesa(Panel: TPanel; QtdPanel, Pos: Integer);
    procedure EventoBtnClick(Sender: TObject);
    procedure ImprimeResumo(pOrcChave: Integer);
    procedure MostraTab(Tab: TTabSheet);
    procedure BuscaOpcoes;
    procedure MostraItens;
    procedure IncluirItemFracionado;
    procedure IncluirItem;
    procedure CarregaUsuario;
    procedure LimpaMesa;
    procedure AbreMesa(pNumMesa: Integer);
    procedure MontaMenuRelatorios;
    procedure ChamaRelatorio(Sender: TObject);
    procedure ImprimirComprovantesCCX(vTocCodigo: Integer);
    procedure ApresentaItem(pOrcChave, pItoChave: Integer);
    procedure AlteraFonte(pObjeto: TRichEdit; pTamanho: Integer; pTipo: TFontStyle; pCor: TColor);

    function VerificaCozinha: Boolean;
    function Logarsistema: Boolean;
    function VersaoExe(Const FileNAme: String): String;
    function ImprimeRelatorio(varquivo: string): string;
    function RegistraOperacaoCaixa(vTocCodigo: Integer): string;
    procedure ItemFracionado(pGrupo: Integer);
    procedure IncluirItemComum;
    function mostralista(pModulo, pUsuario: string; pFiltro: string): string;
    procedure BuscaProduto(CodPro: integer);
    procedure SBCancelaItemClick(Sender: TObject);
    procedure SBCancelaPedidoClick(Sender: TObject);
    procedure SBImpComandaClick(Sender: TObject);
    procedure SBPedidoClick(Sender: TObject);
    procedure SBProdutoClick(Sender: TObject);
    procedure SBRelatorioClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure TabCardapioShow(Sender: TObject);
    procedure TmCozinhaTimer(Sender: TObject);
    procedure TmMesaTimer(Sender: TObject);

    Var
       vpMesaGer      : Integer;
       vpTotal        : Extended;
       vpRecebimentos : Extended;
       vpDesconto     : Extended;
       vpSQL          : String;

  public

       vpUsaBalanca   : Boolean;

    { Public declarations }
   // vpTrmCodigo: String;
   // function mrfrImprimir(Dados: TUniDataSource; DirRelatorio: String; TipoImpressao: Integer): String;

  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

uses
  UntDmDados, UntIngredienteComum, UntIngredienteFracionado, UntJuncaoMesa,
  UntIngredienteIndividual, UntTranfereMesa, UntCancelaItem, UntFinalizaMesa,
  UntVisualizarItem, UntResumoPessoa, UntReemissaoFechamento,
  UntIngredientePesado, UntObjetoDados, UntDmScripts;



// construtor / exportação de procedure
procedure MainForm(AOwner: TApplication);
begin
  FrmPrincipal := TFrmPrincipal.Create(AOwner);
end;

exports MainForm;


{$R *.dfm}

  { TGroupBox }

procedure TGroupBox.Paint;
var
  H: Integer;
  R: TRect;
  Flags: Longint;
  CaptionRect, OuterRect: TRect;
  Size: TSize;
  Box: TThemedButton;
  Details: TThemedElementDetails;
begin
  with Canvas do
  begin
    Font := Self.Font;

    if ThemeControl(Self) then
    begin
      if Text <> '' then
      begin
        GetTextExtentPoint32(Handle, PChar(Text), Length(Text), Size);
        CaptionRect := Rect(0, 0, Size.cx, Size.cy);
        if not UseRightToLeftAlignment then
          OffsetRect(CaptionRect, 8, 0)
        else
          OffsetRect(CaptionRect, Width - 8 - CaptionRect.Right, 0);
      end
      else
        CaptionRect := Rect(0, 0, 0, 0);

      OuterRect := ClientRect;
      OuterRect.Top := (CaptionRect.Bottom - CaptionRect.Top) div 2;
      with CaptionRect do
        ExcludeClipRect(Handle, Left, Top, Right, Bottom);
      if Enabled then
        Box := tbGroupBoxNormal
      else
        Box := tbGroupBoxDisabled;
      Details := ThemeServices.GetElementDetails(Box);
      // Draw the themed frame
      ThemeServices.DrawElement(Handle, Details, OuterRect);
      SelectClipRgn(Handle, 0);
      if Text <> '' then
      begin
        Font.Name := 'Tahoma';
        Font.Size := 9;
        Font.Style := [fsBold];
        H := TextHeight('0');
        if not UseRightToLeftAlignment then
          R := Rect(8, 0, 0, H)
        else
          R := Rect(R.Right - Canvas.TextWidth(Text) - 8, 0, 0, H);
        Flags := DrawTextBiDiModeFlags(DT_SINGLELINE);
        // Now using the Windows.DrawText
        DrawText(Handle, PChar(Text), Length(Text), R, Flags or DT_CALCRECT);
        if Tag > 0 then
          Font.Color := clwhite; // background color of the caption

        Brush.Color := Color; // background color of the caption
        DrawText(Handle, PChar(Text), Length(Text), R, Flags);
      end;
    end
    else
      inherited; // if the control is not themed then use the original paint method.
  end;
end;


procedure TFrmPrincipal.EdtOperadorEnter(Sender: TObject);
begin
     EdtOperador.Clear;
end;

procedure TFrmPrincipal.EdtOperadorExit(Sender: TObject);
begin
     EdtOperador.Clear;
end;

procedure TFrmPrincipal.EdtOperadorKeyPress(Sender: TObject; var Key: Char);
var
  vNumMesa: Integer;
begin
     if key = #13 then
     begin
          if Length(EdtOperador.Text) > 0 then
          begin
               vNumMesa := 0;
               // mesa do pedido
               vNumMesa := StrToInt(EdtOperador.Text);
               if (vNumMesa > 0) and (vNumMesa <= DmDAdos.Usuario.QtdMesa) then
               begin
                    AbreMesa(vNumMesa);
                    EdtOperador.Clear;
               end else
               begin
                    ShowMessage('Atenção, '+Dmdados.Usuario.TituloOperador +' '+IntToStr(vNumMesa) +' inexistente, verifique !');
                    EdtOperador.Clear;
                    EdtOperador.SetFocus;
               end;
          end;
     end;
     if key = #27 then
     begin
          EdtOperador.Clear;
          EdtOperador.SetFocus;
     end;

     if not (Key in ['0'..'9',#8]) then
        Key := #0
end;

procedure TFrmPrincipal.EdtProdutoEnter(Sender: TObject);
begin
     EdtOperador.Clear;
end;

procedure TFrmPrincipal.EdtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13 then
     begin
         if Length(EdtProduto.Text) > 0 then
            BuscaProduto(StrToInt(EdtProduto.Text));
     end;
          if key = #27 then
     begin
          EdtOperador.Clear;
          EdtOperador.SetFocus;
     end;

     if not (Key in ['0'..'9',#8]) then
        Key := #0;

end;


procedure TFrmPrincipal.BuscaProduto(CodPro: integer);
var vCodPro: Integer;
   vSabores: String;
begin
     vCodPro := CodPro;
     if vCodPro > 0 then
     begin
          dmDados.buscaPro.Close;
          dmDados.BuscaPro.Params[0].AsInteger := vCodPro;
          dmDados.buscaPro.Open;
          if not DmDados.BuscaPro.IsEmpty then
          begin
               DmDados.grp.Locate('grpcodigo', DmDados.BuscaProgrpcodigo.AsInteger, []);
               // produto facionado
               if dmdados.BuscaProsfnqtde.AsInteger > 0 then
               begin
                    dmdados.proc.Close;
                    dmdados.proc.Params[0].AsInteger := 0;
                    dmdados.proc.Open;

                    // abrindo a tabela de preços
                    dmdados.pun.Close;
                    dmdados.pun.Params[0].AsInteger := 0;
                    dmdados.pun.Open;

                    ItemFracionado(dmdados.BuscaProgrpcodigo.AsInteger);
               end else
               begin
                    dmdados.proc.Close;
                    dmdados.proc.Params[0].AsInteger := DmDados.BuscaProgrpcodigo.AsInteger;
                    dmdados.proc.Open;
                    if dmdados.proc.IsEmpty then
                    begin
                         ShowMessage('Opções de Cardapio não Disponível, verifica se existe impressora definida para esse Grupo !');
                         exit;
                    end else
                    begin
                         if dmdados.proc.Locate('procodigo', vCodPro, []) then
                         begin
                              MemIngredientes.Text := '';
                              // abrindo a tabela de preços
                              dmdados.pun.Close;
                              dmdados.pun.Params[0].AsInteger := dmdados.procprocodigo.AsInteger;
                              dmdados.pun.Open;

                              // ingredientes do produto
                              dmdados.sbr.Close;
                              dmdados.sbr.Params[0].AsInteger := dmdados.Usuario.tsicodigo;
                              dmdados.sbr.Params[1].AsInteger := dmdados.procprocodigo.AsInteger;
                              dmdados.sbr.Open;

                              if not dmdados.sbr.IsEmpty then
                              begin
                                   vSabores := '';
                                   dmdados.Sbr.DisableControls;
                                   dmdados.sbr.First;
                                   while not dmdados.sbr.Eof do
                                   begin
                                        if dmdados.sbr.Bof then
                                           vSabores := dmdados.sbrpronome.AsString
                                        else vSabores := vSabores +',  '+ dmdados.sbrpronome.AsString ;
                                             dmdados.Sbr.Next;
                                   end;
                                   dmdados.Sbr.EnableControls;
                                   MemIngredientes.Text := vSabores;
                              end;
                              // busca item
                             IncluirItemComum;
                         end else
                             ShowMessage('Opções de Cardapio não Disponível !');
                    end;
               end;
          end;
          EdtProduto.Clear;

     end;
end;

procedure TFrmPrincipal.EventoBtnClick(Sender: TObject);
var
  vNumMesa: Integer;
begin
     vNumMesa := 0;
     if (Sender is TBitBtn) then
     begin
          // mesa do pedido
          vNumMesa := (Sender as TBitBtn).Tag;
          if vNumMesa > 0 then
             AbreMesa(vNumMesa);
     end;
end;

procedure TFrmPrincipal.AbreMesa(pNumMesa: Integer);
var
  vContador: Integer;
begin
     if pNumMesa > 0 then
     begin
          // buscando pedido da mesa
          DmDados.unm.Close;
          DmDados.unm.Params[0].AsInteger := pNumMesa;
          DmDados.unm.Open;
          if not DmDados.unm.IsEmpty then
          begin
               ShowMessage('Atenção, '+DmDados.Usuario.TituloOperador+' esta unida à '+DmDados.Usuario.TituloOperador+' '+DmDados.unmorcmesa.AsString);
               Exit;
          end;

          // verifica se existe pedido aberto para mesa
          DmDados.orc.Close;
          DmDados.orc.Params[0].AsInteger := pNumMesa;
          DmDados.orc.Open;
          if DmDados.orcstocodigo.AsInteger = 1 then
          begin
               ShowMessage(DmDados.Usuario.TituloOperador+' esta sendo usado por outra terminal, verifique !');
               exit;
          end;

          // caso não existe abre orcamento
          if DmDados.orc.IsEmpty then
          begin
               DmDados.MobAbreMesa.Close;
               DmDados.MobAbreMesa.Params[0].AsInteger := 0;                 // etdcodigo
               DmDados.MobAbreMesa.Params[1].AsInteger := DmDados.Usuario.clbcodigo; // clbcodigo
               DmDados.MobAbreMesa.Params[2].AsInteger := 5;                 // moccodigo
               DmDados.MobAbreMesa.Params[3].AsInteger := pNumMesa;          // moccodigo
               DmDados.MobAbreMesa.ExecProc;
               // buscando pedido gerado para mesa
               if DmDados.MobAbreMesa.Params[4].AsInteger > 0 then
               begin
                    DmDados.orc.Close;
                    DmDados.orc.Params[0].AsInteger := pNumMesa;
                    DmDados.orc.Open;
               end else
               begin
                    LbMesa.Caption :=  DmDados.Usuario.TituloOperador;
                    LbOrcChave.Caption := 'Nº: 000000';
                    ShowMessage('Não foi possível abrir '+DmDados.Usuario.TituloOperador+' verifique com a gerência !');
                    Exit;
               end;
          end;

          // informando mesa do pedido
          LbMesa.Caption := DmDados.Usuario.TituloOperador+'  '+IntToStr(pNumMesa);
          // PnPessoas.Visible := False;
          LbOrcChave.Caption := 'Nº: '+ FormatFloat('######000000', DmDados.orcorcchave.AsInteger);

          // Abrindo Itens da mesa
          MostraItens;

          // borda de produtos
          DmDados.tbrd.Close;
          DmDados.tbrd.Open;

          DmDados.tisi.Close;
          DmDados.tisi.open;
     end else
         ShowMessage('Atenção Não foi possível abrir '+DmDados.Usuario.TituloOperador+' !');
end;

procedure TFrmPrincipal.FormCreate(Sender: TObject);
var  vIpServer
   , vDbServer : String;

begin
     if not FileExists(Extractfilepath(Application.ExeName) + 'relat\comprovante.fr3') then
     begin

          ShowMessage('Atenção, não foi encontrado o relatório "Comprovante" na pasta abaixo: '+ #13+
                      Extractfilepath(Application.ExeName) + 'relat\comprovante.fr3'+#13+#13+'Não será possível abrir o sistema, verifique !');
          Application.Terminate;
          Application.ShowMainForm := False;
          exit;
     end;

     if not FileExists(Extractfilepath(Application.ExeName) + 'relat\resumomesa.fr3') then
     begin

          ShowMessage('Atenção, não foi encontrado o relatório "Resumo da Mesa" na pasta abaixo: '+ #13+
                      Extractfilepath(Application.ExeName) + 'relat\resumomesa.fr3'+#13+#13+'Não será possível abrir o sistema, verifique !');
          Application.Terminate;
          Application.ShowMainForm := False;
          exit;
     end;

     if not FileExists(Extractfilepath(Application.ExeName) + 'relat\recibo.fr3') then
     begin

          ShowMessage('Atenção, não foi encontrado o relatório "Recibo de pagamento" na pasta abaixo: '+ #13+
                      Extractfilepath(Application.ExeName) + 'relat\recibo.fr3'+#13+#13+'Não será possível abrir o sistema, verifique !');
          Application.Terminate;
          Application.ShowMainForm := False;
          exit;
     end;

     // Cria Dmdados
     DmDados   := TDmDados.Create(self);
     DmScripts := TDmScripts.Create(self);

     //Carregando informações de configuração do servidor de banco de dados
     DmDados.vpConfigIni            := TIniFile.Create(ExtractFilePath(ParamSTR(0))+'gourmeterp.ini');
     vIpServer                      := DmDados.vpConfigIni.ReadString('posi', 'servidor', 'Não foi informado o IP SERVIDOR no arquivo de configuração');
     vDbServer                      := DmDados.vpConfigIni.ReadString('posi', 'nomebanco', 'Não foi informado o DB SERVIDOR no arquivo de configuração');
     DmDados.Usuario.TrmCodigo      := StrToInt(DmDados.vpConfigIni.ReadString('posi', 'terminal', 'Não foi informado o Terminal no arquivo de configuração'));
     DmDados.Usuario.QtdMesa        := StrToInt(DmDados.vpConfigIni.ReadString('gourmet', 'qtdmesa', 'Não foi informado a Quantidade de mesas no arquivo de configuração'));
     DmDados.Usuario.TituloOperador := DmDados.vpConfigIni.ReadString('gourmet', 'tipooperador', 'Não foi informado o Tipo de Operador no arquivo de configuração');
     DmDados.Balaca.Ativa           := ifthen(UpperCase(DmDados.vpConfigIni.ReadString('gourmet', 'balanca', 'Não foi informado o Tipo de Operador no arquivo de configuração')) = 'S',1,0);

     try
        dmDados.Conexao.Close;
        dmDados.Conexao.Server   := vIpServer;
        dmDados.Conexao.Database := vDbServer;
        dmDados.Conexao.Open;
        DmDados.ConsultaSQL('select current_date() dtatual, ctacodigo from ctr where trmcodigo = '''+IntToStr(DmDados.Usuario.TrmCodigo)+''' limit 1');
        if dmDados.Consulta.IsEmpty then
        begin
             Application.Terminate;
             exit;
             Application.ShowMainForm := False;
        end;

        DmDados.Usuario.DtAtual   := DmDados.Consulta.Fields[0].AsDateTime;
        DmDados.Usuario.CtaCodigo := DmDados.Consulta.Fields[1].AsInteger;
        DmDados.DtAtual           := DmDados.Consulta.Fields[0].AsDateTime;
        DmDados.vpConsultouSefaz  := False;

        if DmDados.ConsultaSQL('SELECT DISTINCT '
                              +'       mit.tipcodigo '
                              +'     , tci.tciporta '
                              +'  FROM trm '
                              +'  LEFT JOIN ctr ON trm.trmcodigo = ctr.trmcodigo '
                              +' INNER JOIN tci ON trm.trmcodigo = tci.trmcodigo '
                              +' INNER JOIN mit ON tci.mitcodigo = mit.mitcodigo '
                              +' WHERE trm.trmcodigo = '''+IntToStr(DmDados.Usuario.TrmCodigo)+''''
                              +'   AND mit.tipcodigo = 2 LIMIT 1') then
        begin
             DmDados.Usuario.MitTipCodigo := DmDados.Consulta.Fields[0].AsInteger;
             DmDados.Usuario.TciTciPorta  := DmDados.Consulta.Fields[1].AsString;
        end;

        if Dmdados.ConsultaSQL('SELECT cfgusatelentre cfgusatelentre FROM cfg WHERE cfgusatelentre = 1 LIMIT 1') then
           SbFechaDelivery.Visible := True
        else SbFechaDelivery.Visible := False;

        // carregando dados da balança
        vpUsaBalanca := False;
        if dmDados.Balaca.Ativa = 1 then
        begin
             vpSQL := 'SELECT trmbalamodelo '
                    + '     , trmbalaporta '
                    + '     , IFNULL(trmbalabaud,0) trmbalabaud '
                    + '     , trmbalahandshake '
                    + '     , trmbalaparity '
                    + '     , trmbalastop '
                    + '     , IFNULL(trmbaladata,0) trmbaladata '
                    + '  FROM trm '
                    + ' WHERE trm.trmcodigo = '''+IntToStr(DmDados.Usuario.TrmCodigo)+''' '
                    + '   AND trm.trmbalamodelo IS NOT NULL';
            if DmDados.ConsultaSQL(vpSQL) then
            begin
                 DmDados.Balaca.Modelo    := DmDados.Consulta.Fields[0].AsString;
                 DmDados.Balaca.Porta     := DmDados.Consulta.Fields[1].AsString;
                 DmDados.Balaca.Baud      := DmDados.Consulta.Fields[2].AsInteger;
                 DmDados.Balaca.HandShake := DmDados.Consulta.Fields[3].AsString;
                 DmDados.Balaca.Parity    := DmDados.Consulta.Fields[4].AsString;
                 DmDados.Balaca.Stop      := DmDados.Consulta.Fields[5].AsString;
                 DmDados.Balaca.Data      := DmDados.Consulta.Fields[6].AsInteger;
                 vpUsaBalanca := True;
            end;
        end;

        ActFechaMesa.Caption      := 'Fecha ' + DmDados.Usuario.TituloOperador;
        ActJuntarMesas.Caption    := 'Juntar ' + DmDados.Usuario.TituloOperador;
        ActTranferirMesas.Caption := 'Transferir ' + DmDados.Usuario.TituloOperador;
        ActReabirMesa.Caption     := 'Reabrir ' + DmDados.Usuario.TituloOperador;

        LbOperador.Caption := '[F2] ' + DmDados.Usuario.TituloOperador;
        LbMesa.Caption     := DmDados.Usuario.TituloOperador;

        Logarsistema;
     except
        on E : Exception do
        begin
              ShowMessage('Erro - Ao abrir Conexão verifique as configurações no arquivo Config.Ini'+ #13
                         +'['+E.ClassName+']'+#13
                         +' - mens - '+E.Message+']');
        end;
     end;
     // Dimencionando painel das mesas
     PnLeft.Width := 340;
end;

procedure TFrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     // Incluir itens na mesa
     if key = VK_F8 then
     begin
        if (PCMesa.ActivePage = TabItens) and (DmDados.orc.Active) then
           IncluirItem
        else
        if (PCMesa.ActivePage = TabCardapio) and (DmDados.orc.Active) then
        begin
             EdtProduto.Clear;
             EdtProduto.SetFocus;
        end;
     end;

     // Atualiza item da mesa
     if key = VK_F5 then
        if (PCMesa.ActivePage = TabItens) and (DmDados.orc.Active) then
           MostraItens;

     // Chamar Mesa
     if key = VK_F2 then
        if (PCMesa.ActivePage = TabItens) and (DmDados.orc.Active) then
           EdtOperador.SetFocus;

end;

procedure TFrmPrincipal.FormMouseWheel(Sender: TObject; Shift: TShiftState;
  WheelDelta: Integer; MousePos: TPoint; var Handled: Boolean);
var
  I: Integer;
  vScroll: TScrollBox;
begin
     vScroll := (PnMesas.Controls[0] as TScrollBox);
     Handled := PtInRect(vScroll.ClientRect, vScroll.ScreenToClient(MousePos));
     if Handled then
        for I := 1 to Mouse.WheelScrollLines do
        try
           if WheelDelta > 0 then
              vScroll.Perform(WM_VSCROLL, SB_PAGEUP, 0) // SB_LINEUP
           else
               vScroll.Perform(WM_VSCROLL, SB_PAGEDOWN, 0); // SB_LINEDOWN
        finally
               vScroll.Perform(WM_VSCROLL, SB_ENDSCROLL, 0);
        end;
end;

procedure TFrmPrincipal.FormShow(Sender: TObject);
begin
     // Carregando Paremetros dos Sistema;
     CarregaUsuario;

     // Verificando Versão do sistema
     LbVersao.Caption  := VersaoExe('mGourmet.bpl');
     dmDados.Usuario.tsicodigo := 3;

     // Carregando Mesas
     CarregaMesa;

     // mostra TabItens
     MostraTab(TabItens);

     // verifica se a cozinha já esta aberta
     VerificaCozinha;
     // Verifica quais mesas estão sendo antendidas
     VerificaMesa;

     EdtOperador.SetFocus;
end;

procedure TFrmPrincipal.GeraMesa(Panel: TPanel; QtdPanel, Pos: Integer);
var
  vBtn    : TBitBtn;
  vQtdBtn : Integer;
  vPos    : Integer;
  vLeft   : Integer;
begin
     // verificando quantidades de mesas por painel
     if Pos < QtdPanel  then
        vQtdBtn := 5
     else
     begin
          // Virificando a quantidade de mesas do ultimo painel
          if (DmDados.Usuario.QtdMesa mod 5) = 0 then
             vQtdBtn := 5
          else
          begin
               // caso as mesas não são exatas gera
               // penas as mesas restantes
               if 5 > ((Pos * 5) - DmDados.Usuario.QtdMesa)  then
                  vQtdBtn := 5 - ((Pos * 5) - DmDados.Usuario.QtdMesa)
               else vQtdBtn := 5;
          end;
     end;

     // gerando as mesas no painel atual
     vLeft := 3;
     vPos := 1;
     while vPos <= vQtdBtn do
     begin
          vpMesaGer             := vpMesaGer + 1;
          vBtn                  := TBitBtn.Create(self);
          vBtn.Parent           := Panel;
          vBtn.AlignWithMargins := True;
          vBtn.Name             := 'BtnMesa' + IntToStr(vpMesaGer);    //IntToStr(Pos)+ IntToStr(vPos);
          vBtn.Tag              := vpMesaGer;
          vBtn.Left             := vLeft;
          vBtn.Font.Size        := 16;
          // vBtn.Font.Style       := [fsBold];
          vBtn.Height           := 60;
          vBtn.Width            := 60;
          vBtn.Top              := 1;
          vBtn.ParentFont       := False;
          vBtn.Caption          := IntToStr(vpMesaGer);
          vBtn.OnClick          := EventoBtnClick;
          vPos                  := vPos + 1;
          vLeft := vLeft + 61;
     end;
end;

function TFrmPrincipal.ImprimeRelatorio(varquivo: string): string;
type
 TImprimeRelat = function(AOwner: TComponent; Conexao: tuniconnection; vtabela: tunidatasource; DirRelatorio: String; Impressora: String = ''; vUsuCodigo: string = ''): string;
var
   relat: TImprimeRelat;
      ch: string;
    pack: Cardinal;
begin
     pack := LoadPackage('modulos\mrfr.bpl');
     if pack <> 0 then
     try
        @relat := GetProcAddress(pack, Pchar('mrfrImpressao'));
        if Assigned(relat) then
        begin
             ch := relat(Application, DmDados.Conexao, DmDados.dorc, varquivo, '',DmDados.Usuario.clbcodigo.ToString);
             Result := ch;
        end;
     finally
            DoUnLoadPackage(Application, pack);
     end;
end;

procedure TFrmPrincipal.ImprimirComprovantesCCX(vTocCodigo: Integer);
var
  vDirRelat: String;
begin
     case vTocCodigo of
          tocAberturaCaixa:    vDirRelat := ExtractFilePath(Application.ExeName) + 'Report\AberturaCCX.fr3';
          tocSuprimentoCaixa:  vDirRelat := ExtractFilePath(Application.ExeName) + 'Report\SuprimentoCCX.fr3';
          tocSangriaCaixa:     vDirRelat := ExtractFilePath(Application.ExeName) + 'Report\SangriaCCX.fr3';
          tocFechamentoCaixa:  vDirRelat := ExtractFilePath(Application.ExeName) + 'Report\FechamentoCCX.fr3';
     end;

	   DmDados.ConsultaSQL('SELECT '+IntToStr(DmDados.Usuario.ccxchave)+' as ccxchave');
     mrfrImprimir(DmDados.dConsulta, vDirRelat, tiImprimir);
end;

procedure TFrmPrincipal.IncluirItem;
begin
     if not VerificaCozinha then
        Exit;

     if DmDados.orcorcchave.AsInteger > 0 then
     begin
        MostraTab(TabCardapio);

     end
     else Exit;
end;

procedure TFrmPrincipal.IncluirItemFracionado;
begin
     DmDados.brd.Close;
     DmDados.brd.Params[0].AsInteger :=  DmDados.grpgrpcodigo.AsInteger;
     DmDados.brd.Open;

     application.CreateForm(tFrmIngredienteFracionado, FrmIngredienteFracionado);
     FrmIngredienteFracionado.LbItem.Caption := DmDados.grpgrpidentificacao.AsString;

     // mostrando tela de ingredientes fracionados
     FrmIngredienteFracionado.ShowModal;

     // destruindo tela de ingredientes fracionados
     FreeAndNil(FrmIngredienteFracionado);

     // carregando itens
     MostraItens;

     // mostrando tela de itens
     MostraTab(TabItens);
end;

procedure TFrmPrincipal.lbtitversaoDblClick(Sender: TObject);
begin
     mrfrImprimir( dmDados.dOrc,'',tiGerador);
end;

procedure TFrmPrincipal.LbVersaoClick(Sender: TObject);
begin
     Application.CreateForm(TFrmObjetoDados, FrmObjetoDados);
     FrmObjetoDados.ShowModal;
     FreeAndNil(FrmObjetoDados);
end;

procedure TFrmPrincipal.LimpaMesa;
begin
     DmDados.orc.Close;
     DmDados.ito.Close;
     MostraItens;
     LbMesa.Caption      :=  DmDados.Usuario.TituloOperador;
     LbOrcChave.Caption  := 'Nº: 000000';
end;

function TFrmPrincipal.Logarsistema: Boolean;
type
   Taces = Function(AOwner: TComponent; Conexao: TUniConnection): String;
var
  Exec: Taces;
  vlUsrCodigo: String;
  vlPackacs: Cardinal;
begin
     Result := True;

     vlPackacs := LoadPackage('modulos\macs.bpl');
     if vlPackacs <> 0 then
        try
           @Exec := GetProcAddress(vlPackacs, PChar('acesso'));

           If Assigned(Exec) then
              vlUsrCodigo := Exec(Application, DmDados.Conexao);

        finally
               DoUnLoadPackage(Application, vlPackacs);
        end;

     if vlUsrCodigo = '' then
     begin
          Result := False;
          Application.Terminate;
          Application.ShowMainForm := False;

     end else
     begin
          DmDados.Usuario.clbcodigo := StrToInt(vlUsrCodigo);
     end;
end;

procedure TFrmPrincipal.MontaMenuRelatorios;
// função local
   function UpperNome(const sNome: string): string;
   const
      excecao: array [0 .. 5] of string = (' da ', ' de ', ' do ', ' das ', ' dos ', ' e ');
   var
      tamanho, j: Integer;
      i: byte;
   begin
        Result := AnsiLowerCase(sNome);
        tamanho := Length(Result);

        for j := 1 to tamanho do
            // Se é a primeira letra ou se o caracter anterior é um espaço
            if (j = 1) or ((j > 1) and (Result[j - 1] = Chr(32))) then
               Result[j] := AnsiUpperCase(Result[j])[1];
        for i := 0 to Length(excecao) - 1 do
            Result := StringReplace(Result, excecao[i], excecao[i], [rfReplaceAll, rfIgnoreCase]);
    end;

var
    ItemRel: TMenuItem;
begin
     With dmdados do
     begin
          rel.Close;
          rel.Params[0].AsString  := 'gourmet'; //'Gourmet';
          rel.Params[1].AsInteger := Usuario.clbcodigo;
          rel.Open;

          PUMenuRelatorios.Items.Clear;
          if not rel.IsEmpty then
          begin
               rel.First;
               while not rel.Eof do
               begin
                    ItemRel         := TMenuItem.Create(PUMenuRelatorios);
                    ItemRel.Caption := UpperNome(relrelidentificacao.AsString);
                    ItemRel.Hint    := relrelcodigo.AsString;
                    ItemRel.OnClick := ChamaRelatorio;
                    PUMenuRelatorios.Items.Add(ItemRel);
                    rel.Next;
               end;
          end;
     end;
end;

procedure TFrmPrincipal.MostraItens;
begin
     with dmDados do
     begin
          vpTotal := 0;
          LbItemQtde.Caption := 'Itens: 0';
          if not orc.IsEmpty then
          begin
               ito.Close;
               ito.Params[0].AsInteger := orcorcchave.AsInteger;
               ito.Open;

               if not ito.IsEmpty then
               begin
                    ito.DisableControls;
                    ito.First;
                    while not ito.Eof do
                    begin
                         if itostocodigo.AsInteger = 2  then
                            vpTotal := vpTotal + itoitototalav.AsCurrency;

                         ito.Next;
                    end;
                    ito.First;
                    ito.EnableControls;
                    LbItemQtde.Caption := 'Itens: '+IntToStr(Ito.RecordCount);
               end;
          end;
          CalculaRecebimentos;
          LbItemTotal.Caption := FormatFloat('#,##0.00',vpTotal-vpDesconto);
          LbItemGeral.Caption := FormatFloat('#,##0.00',(vpTotal));
          LbReceber.Caption   := FormatFloat('#,##0.00',(vpTotal-(vpRecebimentos+vpDesconto)));
     end;
end;

function TFrmPrincipal.mostralista(pModulo, pUsuario, pFiltro: string): string;
type
	  TExecFormu = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string; vmodo: string): string;
var
	 ExecFormu : TExecFormu;
	 vlRetorno : string;
	 pack      : Cardinal;
begin
	   pack := LoadPackage('modulos\' + pModulo + '.bpl');

	   (*Abandona pois não localizou o módulo (Pode ser adicionada mensagem informando o usuário)*)
	   if pack = 0 then
		    Exit;

     try
	      @ExecFormu := GetProcAddress(pack, PChar('formu'));
	      if Assigned(ExecFormu) then
	      begin
	           vlRetorno := ExecFormu(Application, Dmdados.Conexao, pUsuario, 1, '', pFiltro, '');
		         Result := vlRetorno;
        end;
     finally
	         //DoUnLoadPackage(pack);
     end;
end;

procedure TFrmPrincipal.MostraTab(Tab: TTabSheet);
begin
     // desabilitando TabSheets
     TabCardapio.TabVisible := False;
     TabItens.TabVisible    := False;

     if Tab = TabItens then
     begin
          PnMesas.Enabled     := True;
          PnOperacoes.Enabled := True;

     end;

     // Abrindo Grupos do Cardapio
     if Tab = TabCardapio then
     begin
          PnMesas.Enabled := False;
          PnOperacoes.Enabled := False;
          with Dmdados do
          begin
               tito.Close;
               tito.Open;

               pun.Close;
               proc.Close;

               grp.Close;
               grp.Open;
          end;
     end;
     Tab.TabVisible     := True;
     PCMesa.ActivePage  := Tab;
end;

{function TFrmPrincipal.mrfrImprimir(Dados: TUniDataSource; DirRelatorio: String;
  TipoImpressao: Integer): String;
type
    Impressao = function(AOwner: TComponent; Conexao: TUniConnection; vtabela: TUniDataSource; DirRelatorio: String; Impressora: String = ''; vUsuCodigo: string = ''): string;

var
   Pack: Cardinal;
   Exec: Impressao;
   vNomeRotina: String;

begin
     case TipoImpressao of
          tiImprimir      :  vNomeRotina := 'mrfrImpressao';
          tiGerador       :  vNomeRotina := 'mrfrGerador';
          tiImprimirDireto:  vNomeRotina := 'mrfrImpressaoDireta';
     end;

     Pack := LoadPackage('modulos\mrfr.bpl');
     if Pack <> 0 then
        try
           @Exec := GetProcAddress(Pack, PChar(vNomeRotina));

           if Assigned(Exec) then
              Result := Exec(Application, DmDados.Conexao, Dados, DirRelatorio, DmDados.Usuario.TciTciPorta, IntToStr(DmDados.Usuario.ClbCodigo));

        finally
               // DoUnLoadPackage(Application, Pack);
        end;
end; }

function TFrmPrincipal.RegistraOperacaoCaixa(vTocCodigo: Integer): string;
type
    TformuCaixa = function(AOwner: TComponent; Conexao: TUniConnection; vusuario: string; vCtaCodigo: string; vTurno: string; vTrmCodigo: string;
    vOperacao: Integer): string;
var
  RegistraCaixa: TformuCaixa;
  vlRetorno: string;
  vlPackccx: Cardinal;
begin
     Result := '';
     vlPackccx := LoadPackage('modulos\mccx.bpl');

     if vlPackccx <> 0 then
        try
           @RegistraCaixa := GetProcAddress(vlPackccx, PChar('formuCaixa'));

           if Assigned(RegistraCaixa) then
           begin
                vlRetorno := RegistraCaixa(Application, DmDados.Conexao, IntToStr(DmDados.Usuario.ClbCodigo), IntToStr(DmDados.Usuario.CtaCodigo), '1', IntToStr(DmDados.Usuario.TrmCodigo), vTocCodigo);
                Result := vlRetorno;
           end;
        finally
               // DoUnLoadPackage(Application, vlPackccx);
        end;
end;

procedure TFrmPrincipal.SBCancelaItemClick(Sender: TObject);
var   vRecno: Integer;
       vSQL : String;
     vSQLOrc: String;
vQuantidade : Integer;
begin
     if dmDados.itostocodigo.AsInteger <> 2 then
        Exit;

     vSQLOrc := ' UPDATE orc '
              + '  INNER JOIN (SELECT ito.orcchave '
              + '                   , SUM(itovalorav * itoquantidade) totav '
              + '                   , SUM(itodescontoav * itoquantidade) descav '
              + '                   , SUM(itovalorav * itoquantidade) totap '
              + '                   , SUM(itodescontoap * itoquantidade) descap '
              + '                FROM ito '
              + '               WHERE stocodigo != 88 '
              + '               GROUP BY ito.orcchave ) tito '
              + '         ON tito.orcchave = orc.orcchave '
              + '    SET orc.orcgeralav    = tito.totav '
              + '      , orc.orcdescontoav = tito.descav '
              + '      , orc.orcpercdescav = 0 '
              + '      , orc.orctotalav    = (tito.totav - tito.descav) '
              + '      , orc.orcgeralap    = tito.totap '
              + '      , orc.orcdescontoap = tito.descap '
              + '      , orc.orcpercdescap = 0 '
              + '      , orc.orctotalap    = (tito.totap - tito.descap) '
              + '  WHERE orc.orcchave = '+Dmdados.orcorcchave.AsString;

     if not Dmdados.ito.IsEmpty then
     begin
          if (DmDados.itoitovalorav.AsCurrency > (vpTotal - vpRecebimentos)) then
          begin
               Showmessage('Atenção valor do item maior que o saldo a receber. '+#13
                          + 'Cancelamento não permitido ! '+#13+#13
                          + 'Valor total R$.: '+ FormatFloat('#,##0.00', vpTotal)+#13
                          + 'Valor Recebido R$.: '+ FormatFloat('#,##0.00', vpRecebimentos)+#13+#13

                          + 'Saldo disponível R$.: '+ FormatFloat('#,##0.00', (vpTotal-vpRecebimentos))+#13+#13

                          + 'Valor do Produto R$....: '+ FormatFloat('#,##0.00', DmDados.itoitovalorav.AsCurrency));
               Exit;
          end;

          if MessageDlg(LbMesa.Caption+#13+#13
                       +'Item: '+DmDados.itopronome.AsString+#13
                       +'Qtde: '+DmDados.itoitoquantidade.AsString+#13
                       +'V.R$: '+FormatFloat('#,##0.00', DmDados.itoitototalav.AsCurrency)+#13+#13
                       +'Atenção deseja cancelar o item  ?', mtConfirmation, [mbYes, mbNo], 0, mbNo ) = mrYes then
          begin
               // cancelando item individualmente
               if DmDados.itoitoquantidade.AsInteger = 1 then
               begin
                   if DmDAdos.ExecutaSQL('UPDATE ito SET stocodigo = 88 WHERE itochave = '+DmDados.itoitochave.AsString) then
                   begin
                        vRecno:= DmDados.ito.RecNo;
                        MostraItens;
                        DmDados.ito.RecNo := vRecno;
                        DmDAdos.ExecutaSQL(vSQLOrc);
                        ShowMessage('Item cancelado com sucesso !');
                   end else
                           ShowMessage('Não foi possivel cancelar o item verifique !');
               end else
               begin
                    Application.CreateForm(TFrmCancelaItem, FrmCancelaItem);
                    FrmCancelaItem.vpRecebimentos := vpRecebimentos;
                    FrmCancelaItem.vpTotal        := vpTotal;
                    FrmCancelaItem.EdtQtde.Text   := DmDados.itoitoquantidade.AsString;

                    FrmCancelaItem.ShowModal;
                    if FrmCancelaItem.vpConfirma then
                    begin
                         if FrmCancelaItem.vpQuantidade = DmDados.itoitoquantidade.AsInteger then
                         begin
                              if DmDAdos.ExecutaSQL('UPDATE ito SET stocodigo = 88 WHERE itochave = '+DmDados.itoitochave.AsString) then
                              begin
                                   vRecno:= DmDados.ito.RecNo;
                                   MostraItens;
                                   DmDados.ito.RecNo := vRecno;
                                   DmDAdos.ExecutaSQL(vSQLOrc);
                                   ShowMessage('Item cancelado com sucesso !');
                              end else
                                     ShowMessage('Não foi possivel cancelar o item verifique !');
                         end else
                         begin
                              vQuantidade := FrmCancelaItem.vpQuantidade;
                              vSQL := 'INSERT INTO ito '
                                    + ' ( orcchave, procodigo, puncodigo, unicodigo, stocodigo, tdecodigo '
                                    + ' , itoquantidade, itovalorav, itodescontoav, itototalav, itosaldoav '
                                    + ' , itovalorap, itodescontoap, itototalap, itosaldoap, itocontendo '
                                    + ' , itoproservico, itoprocomple, itodataalter, itoitem, itogint '
                                    + ' , itopercdescap, itopercdescav, itoinfadprod, itoquanticondi, itoquantidevolcondi '
                                    + ' , vrpcodigo, itoobs) '
                                    + ' (SELECT orcchave, procodigo, puncodigo, unicodigo, 88, tdecodigo, '+IntToStr(vQuantidade)+' /* itoquantidade */ '
                                    + ' , itovalorav, 0 /* itodescontoav */, ('+IntToStr(vQuantidade)+' * itovalorav) /* itototalav */ '
                                    + ' , ('+IntToStr(vQuantidade)+' * itovalorav) /* itosaldoav */, itovalorav /* itovalorap */ , 0 /* itodescontoap */ '
                                    + ' , ('+IntToStr(vQuantidade)+' * itovalorav) /* itototalap */, ('+IntToStr(vQuantidade)+' * itovalorav) /* itosaldoap */ '
                                    + ' , itocontendo, itoproservico, itoprocomple, itodataalter '
                                    + ' , (SELECT COUNT(*)+1 FROM ito WHERE orcchave = '+DmDados.orcorcchave.AsString+' ) /* itoitem */ '
                                    + ' , itogint, itopercdescap, itopercdescav, itoinfadprod, itoquanticondi, itoquantidevolcondi '
                                    + ' , vrpcodigo, itoobs '
                                    + ' FROM ito '
                                    + ' WHERE itochave = '+  DmDados.itoitochave.AsString +')';

                              if DmDAdos.ExecutaSQL(vSQL) then
                              begin
                                   vQuantidade := (DmDados.itoitoquantidade.AsInteger - FrmCancelaItem.vpQuantidade);
                                   vSQL := ' UPDATE ito SET itoquantidade = '+inttostr(vQuantidade)
                                         + '      , itototalav = (itoquantidade * itovalorav) '
                                         + '      , itosaldoav = (itoquantidade * itovalorav) '
                                         + '      , itototalap = (itoquantidade * itovalorav) '
                                         +'   WHERE itochave = '+DmDados.itoitochave.AsString+'';

                                   if DmDAdos.ExecutaSQL(vSQL) then
                                   begin
                                        vRecno:= DmDados.ito.RecNo;
                                        MostraItens;
                                        DmDados.ito.RecNo := vRecno;
                                        DmDAdos.ExecutaSQL(vSQLOrc);
                                        ShowMessage('Item cancelado com sucesso !');
                                   end else
                                          ShowMessage('Não foi possivel cancelar o item verifique !');
                              end else
                                  ShowMessage('Não foi possivel cancelar o item verifique !');
                         end;
                    end;
                    FreeAndNil(FrmCancelaItem);
               end;

         end;
     end;
end;

procedure TFrmPrincipal.SBPedidoClick(Sender: TObject);
var vSQL: string;
begin
     if dmdados.ito.IsEmpty then
        exit;

     vSQL := 'UPDATE imm'
           + ' INNER JOIN ito ON imm.itochave = ito.itochave'
           + ' INNER JOIN orc ON ito.orcchave = orc.orcchave'
           + '   SET immhoraimpresso = null'
           + ' WHERE orc.orcchave = ' + DmDados.orcorcchave.AsString
           + '   AND ito.itochave = ' + DmDados.itoitochave.AsString
           + '   AND orc.stocodigo in (1,2)'
           + '   and orc.stocodigo IN (1,2,5)';


     if MessageDlg('Reimpressão de pedido: '+#13+#13
                  +' pedido nº '+Dmdados.itoimmnumepedido.AsString +#13
                  +' Produto: '+DmDados.itopronome.AsString+#13+#13
                  +'Confirma reimpressão ?', mtConfirmation, [mbYes, mbNo], 0, mbNo ) = mrYes then
        DmDados.ExecutaSQL(vSQL);
end;

procedure TFrmPrincipal.SBProdutoClick(Sender: TObject);
begin
     if DmDados.orc.Active then
        IncluirItem;
end;

procedure TFrmPrincipal.SBRelatorioClick(Sender: TObject);
var
  vlPoint: TPoint;
begin
     vlPoint := Point(0, 0);
     vlPoint := SBRelatorio.ClientToScreen(vlPoint);
     MontaMenuRelatorios;
     SBRelatorio.PopupMenu := PUMenuRelatorios;
     PUMenuRelatorios.Popup(vlPoint.X + SBRelatorio.Width, vlPoint.Y);
end;


procedure TFrmPrincipal.SBSairClick(Sender: TObject);
begin
     Application.Terminate;
end;

procedure TFrmPrincipal.SpeedButton2Click(Sender: TObject);
begin
     { if not Dmdados.orc.IsEmpty then
       begin
          if Dmdados.orcstocodigo.AsInteger = '' then
          begin
               if MessageDlg('* * * * *  A T E N Ç Â O * * * * * '+#13+#13
                            +'Num. Mesa: '+ LbMesa.Caption+#13+#13
                            +'Tem certeza que deseja Desagrupar da Junção  ?'+#13+#13+ mtConfirmation, [mbYes, mbNo], 0, mbNo  ) = mrYes then
               begin
                    if ExecutaSQL('SET @orcchave = '+orcorcchave.AsString+'; '
                                 +'UPDATE orc SET stocodigo = 88 WHERE orcchave = @orcchave; '
                                 +'UPDATE ito SET stocodigo = 88 WHERE orcchave = @orcchave; ') then
                    begin
                         LimpaMesa;
                         ShowMessage('Mesa cancelada com sucesso !');
                    end else
                            ShowMessage('Não foi possivel cancelar ' + Dmdados.Usuario.TituloOperador + ', verifique !');

              end;
          end;
     end;  }
end;

procedure TFrmPrincipal.SBCancelaPedidoClick(Sender: TObject);
begin
     CalculaRecebimentos;
     if vpRecebimentos > 0 then
     begin
          ShowMessage('Já existem recebimentos para essa mesas não foi possivel cancelar, verifique !');
          exit;
     end;

     with Dmdados do
     begin
          if not ito.IsEmpty then
          begin
               if MessageDlg('* * * * *  A T E N Ç Â O * * * * * '+#13+#13
                            +'Num. Mesa: '+ LbMesa.Caption+#13+#13
                            +'Qt. Itens: '+ copy(LbItemQtde.Caption,8, Length(LbItemQtde.Caption)) +#13
                            +'Total .R$: '+ copy(LbItemTotal.Caption,4,Length(LbItemTotal.Caption)) +#13+#13
                            +'Tem certeza que deseja cancelar o pedido ?'+#13+#13
                            +'Após o cancelamento não será mais possível recuperar os itens do pedido !', mtConfirmation, [mbYes, mbNo], 0, mbNo  ) = mrYes then
               begin
                    if ExecutaSQL('SET @orcchave = '+orcorcchave.AsString+'; '
                                 +'UPDATE orc SET stocodigo = 88 WHERE orcchave = @orcchave; '
                                 +'UPDATE ito SET stocodigo = 88 WHERE orcchave = @orcchave; ') then
                    begin
                         LimpaMesa;
                         ShowMessage('Mesa cancelada com sucesso !');
                    end else
                            ShowMessage('Não foi possivel cancelar ' + Dmdados.Usuario.TituloOperador + ', verifique !');

              end;
          end;
     end;
end;

procedure TFrmPrincipal.SBImpComandaClick(Sender: TObject);
begin
     if not dmdados.orc.IsEmpty then
     begin
          Application.CreateForm(tFrmResumoPessoa, FrmResumoPessoa);
          dmDados.orc.Edit;
          FrmResumoPessoa.ShowModal;
          ImprimeResumo(DmDados.orcorcchave.AsInteger);
     end;
end;

procedure TFrmPrincipal.ImprimeResumo(pOrcChave: Integer);
var
   vlNomeArq: string;
begin
     vlNomeArq := Extractfilepath(Application.ExeName) + 'relat\resumomesa.fr3';
     if FileExists(vlNomeArq) then
     begin
          DmDados.ExecutaSQL('update orc set orcimpressao = (IFNULL(orcimpressao,0) + 1) where orcchave = '+ IntToStr(pOrcChave));
	        DmDados.ConsultaSQL('SELECT '+IntToStr(pOrcChave)+' as orcchave');
          mrfrImprimir(DmDados.dConsulta, vlNomeArq, tiImprimirDireto);
     end
     else
         Showmessage('Aquivo não encontrado'+#13+vlNomeArq+#13+'Não é possível imprimir resumo de ' + Dmdados.Usuario.TituloOperador + ', verifique !');
end;

procedure TFrmPrincipal.TabCardapioShow(Sender: TObject);
begin
     EdtProduto.clear;
     EdtProduto.SetFocus;
end;

procedure TFrmPrincipal.TmCozinhaTimer(Sender: TObject);
begin
//     LbCozinha.Visible := (not LbCozinha.Visible);
end;

procedure TFrmPrincipal.TmMesaTimer(Sender: TObject);
begin
//     VerificaMesa;
end;

procedure TFrmPrincipal.VerificaMesa;
var vPos: Integer;
   vPosPanel: Integer;
   vScroll: TScrollBox;
   vPanel : TPanel;
begin
     TmMesa.Enabled := False;
     DmDados.msaocupada.Close;
     DmDados.msaocupada.Open;
     vScroll := (PnMesas.Controls[0] as TScrollBox);
     for vPos := 0 to vScroll.ControlCount - 1 do
     begin
          vPanel := (vScroll.Controls[vPos] as TPanel);
          for vPosPanel := 0 to vPanel.ControlCount - 1 do
          begin
               if (vPanel.Controls[vPosPanel] is TBitBtn) then
               begin
                    if DmDados.msaocupada.Locate('orcmesa', (vPanel.Controls[vPosPanel] as TBitBtn).Tag,[]) then
                    begin
                         if DmDados.msaocupadastocodigo.AsInteger in [1,2]  then
                         begin
                              (vPanel.Controls[vPosPanel] as TBitBtn).Font.Color := $00FF0080;
                              (vPanel.Controls[vPosPanel] as TBitBtn).Font.Style := [fsBold];

                         end else
                         if DmDados.msaocupadastocodigo.AsInteger in [5]  then
                         begin
                              (vPanel.Controls[vPosPanel] as TBitBtn).Font.Color := clRed;
                              (vPanel.Controls[vPosPanel] as TBitBtn).Font.Style := [fsBold];
                              sleep((10*dmdados.Usuario.ClbCodigo));
                              if not DmDados.ConsultaSQL('select orcimpressao FROM orc WHERE orcchave = '+ (DmDados.msaocupadaorcchave.AsString) +' and orcimpressao > 0') then
                                   ImprimeResumo(DmDados.msaocupadaorcchave.AsInteger);

                         end else
                         if DmDados.msaocupadastocodigo.AsInteger in [99]  then
                         begin
                              (vPanel.Controls[vPosPanel] as TBitBtn).Font.Color := clGreen;
                              (vPanel.Controls[vPosPanel] as TBitBtn).Font.Style := [fsBold];
                         end;
                    end else
                    begin
                         (vPanel.Controls[vPosPanel] as TBitBtn).Font.Color := clBlack;
                         (vPanel.Controls[vPosPanel] as TBitBtn).Font.Style := [];

                    end;
                end;
           end;
     end;
     TmMesa.Enabled := True;
end;

function TFrmPrincipal.VerificaCozinha: Boolean;
begin
     // verificando se existe abertura de cozinha em aberto
     if DmDados.ConsultaSQL('select cznchave from czn where cznfechamento IS null order by cznchave limit 1') then
     begin
          DmDados.Usuario.cznchave   := DmDados.Consulta.Fields[0].AsInteger;
          PnCozinha.Visible  := False;
          pnInfoTopo.Visible := True;
          TmCozinha.Enabled  := False;
          Result             := True;
     end else
     begin
          DmDados.Usuario.cznchave   := 0;
          PnCozinha.Visible  := True;
          pnInfoTopo.Visible := False;
          TmCozinha.Enabled  := True;
          Result             := False;
     end;
end;

function TFrmPrincipal.VersaoExe(const FileNAme: String): String;
type
    TVersionInfo = packed record
        Dummy: array [0 .. 7] of Byte;
        V2, V1, V4, V3: Word;
    end;
var
   Zero, Size: Cardinal;
   Data: Pointer;
   VersionInfo: ^TVersionInfo;
begin
     Size := GetFileVersionInfoSize(Pointer(FileName), Zero);
     if Size = 0 then
        result := ''
     else
     begin
          GetMem(Data, Size);
          try
             GetFileVersionInfo(Pointer(FileName), 0, Size, Data);
             VerQueryValue(Data, '\\\', Pointer(VersionInfo), Size);
             result := Format('%d.%d.%d.%d', [VersionInfo.V1, VersionInfo.V2, VersionInfo.V3, VersionInfo.V4]);
          finally
                 FreeMem(Data);
          end;
     end;
end;


procedure TFrmPrincipal.ActAbreCaixaExecute(Sender: TObject);
var
   vlValorOperacao: string;
   vSQL : String;
begin
     // por na abertura do sistema
     if not (DmDados.Usuario.CtaCodigo > 0) then
     begin
          Application.MessageBox(PChar('Não foi possível abrir o caixa.' + #13 + 'Este terminal não possui uma conta corrente vinculada.'), 'Atenção',
          MB_ICONWARNING + MB_OK);
          Exit;
     end;
     vSQL := 'SELECT ccx.ccxchave , ccx.ccxdataber , ccx.ccxhoraaber, clb.clbidentificacao '
           + '  FROM ccx '
           + ' INNER JOIN clb ON ccx.clbcodigo = clb.clbcodigo '
           + ' WHERE ccx.ctacodigo = ' + IntToStr(DmDados.Usuario.CtaCodigo)
           +   ' AND ccx.ccxdatafecha IS NULL';

     if not DmDados.ConsultaSQL(vSQL) then
     begin
          vlValorOperacao := RegistraOperacaoCaixa(tocAberturaCaixa);

          if (vlValorOperacao <> '') then
          begin
               if DmDados.ConsultaSQL(vSQL) then
                  DmDados.Usuario.ccxchave := DmDados.Consulta.Fields[0].AsInteger;
               AjustaBotoes(True);



               if FileExists(Extractfilepath(Application.ExeName) + 'Report\AberturaCCX.fr3') then
                  ImprimirComprovantesCCX(tocAberturaCaixa);
          end;
     end else
     begin
          ShowMessage('Atenção: ' + #13 + #13 + 'Este terminal já possui um caixa aberto, não pode ser aberto outro caixa ao mesmo tempo!' + #13 + #13
                     +'Caixa Aberto de: ' + DmDados.consulta.Fields[3].AsString + #13
                     +'Data Abertura  : ' + DmDados.consulta.Fields[1].AsString + #13
                     +'Hora Abertura  : ' + DmDados.consulta.Fields[2].AsString);

          Exit;
     end;
end;

procedure TFrmPrincipal.ActFechaCaixaExecute(Sender: TObject);
begin
     if RegistraOperacaoCaixa(tocFechamentoCaixa) <> '' then
     begin
          ImprimirComprovantesCCX(tocFechamentoCaixa);
          Ajustabotoes(False);
          DmDados.Usuario.CcxChave := 0;
     end;
end;

procedure TFrmPrincipal.ActFechaMesaExecute(Sender: TObject);
var vSQL: String;
begin
     if not dmdados.orc.IsEmpty then
        MostraItens;

     if not dmdados.ito.IsEmpty then
     begin
          vSQL := 'SELECT orc.stocodigo, sto.stoidentificacao '
                + '  FROM orc '
                + ' INNER JOIN sto ON orc.stocodigo = sto.stocodigo '
                + ' WHERE orc.orcchave = '+DmDados.orcorcchave.AsString;
          DmDados.ConsultaSQL(vSQL);
          if not (DmDados.Consulta.Fields[0].AsInteger in [1,2,5]) then
          begin
               ShowMessage('Atenção, ' + Dmdados.Usuario.TituloOperador + ' atual teve sua situação alterada para '+ DmDados.Consulta.Fields[1].asstring +', verifique ');
               LimpaMesa;
               Exit;
          end;

          application.CreateForm(tFrmFinalizaMesa, FrmFinalizaMesa);
          FrmFinalizaMesa.TabPedidos.Tag := 1;
          FrmFinalizaMesa.TabItens.Tag   := 0;
          FrmFinalizaMesa.LbMesa.Caption := 'Fechamento Mesa';
          FrmFinalizaMesa.vpTotalGeral := TBRound((vpTotal-vpDesconto),2);
          FrmFinalizamesa.LbMesa.Caption := LbMesa.Caption;
          FrmFinalizaMesa.ShowModal;
          if FrmFinalizaMesa.vpFechada then
             LimpaMesa
          else
              MostraItens;
          FreeAndNil(FrmFinalizaMesa);
     end;
end;

procedure TFrmPrincipal.ActImprimeCaixaExecute(Sender: TObject);
begin
 if not ActImprimeCaixa.Enabled then
    Exit;

  if DmDados.Usuario.CcxChave > 0 then
     ImprimirComprovantesCCX(tocFechamentoCaixa);

end;

procedure TFrmPrincipal.ActIniciaFechamentoExecute(Sender: TObject);
begin
     if (dmdados.orc.IsEmpty) or (dmdados.orcstocodigo.AsInteger = 5) then
        exit;

     if MessageDlg('Deseja iniciar Fechamento de ' + Dmdados.Usuario.TituloOperador + ' ?', mtConfirmation, [mbYes, mbNo], 0, mbNo ) = IdYes then
     begin
         DmDados.ExecutaSQL('update orc set stocodigo  = 5, orcimpressao = (IFNULL(orcimpressao,0) + 1), orc.clbvendedor = '+IntToStr(DmDados.Usuario.ClbCodigo)+' where orcchave = '+DmDados.orcorcchave.asstring);
         ImprimeResumo(DmDados.orcorcchave.AsInteger);
     end;
end;

procedure TFrmPrincipal.ActJuntarMesasExecute(Sender: TObject);
begin
     if dmdados.orc.IsEmpty then
        exit;

     if MessageDlg('Deseja realizar Junção de ' + Dmdados.Usuario.TituloOperador + '?', mtConfirmation, [mbYes, mbNo], 0, mbNo ) = mrYes then
     begin
          Application.CreateForm(TFrmJuncaoMesa, FrmJuncaoMesa);
          FrmJuncaoMesa.LbMesa.Caption := LbMesa.Caption;
          FrmJuncaoMesa.vpOrcChave     := DmDados.orcorcchave.AsInteger;
          FrmJuncaoMesa.ShowModal;
          MostraItens;
          FreeAndNil(FrmJuncaoMesa);
     end;
end;

procedure TFrmPrincipal.ActReabirMesaExecute(Sender: TObject);
begin
     if dmdados.orc.IsEmpty then
        exit;

     if MessageDlg('Deseja Cancelar solicitação de encerramento de ' + Dmdados.Usuario.TituloOperador + ' ?', mtConfirmation, [mbYes, mbNo], 0, mbNo ) = mrYes then
     begin
          if DmDAdos.ExecutaSQL('UPDATE orc SET stocodigo = 2, orcimpressao = 0 WHERE orcchave = '+DmDados.orcorcchave.AsString) then
             ShowMessage('Mesa reaberta com sucesso !')
          else ShowMessage('Não foi possivel reabrir ' + Dmdados.Usuario.TituloOperador + ', verifique !');
     end;

end;

procedure TFrmPrincipal.ActReceberConvenioExecute(Sender: TObject);
type
    TRecebCaixa = function(AOwner: TComponent; conexao: TUniConnection; pUsuario: string; pCtaCodigo: Integer; pEtdCodigo: String): string;
var
   RecebCaixa  : TRecebCaixa;
   vlPack      : HMODULE;
   vlRetorno   : String;
   vlEtdCodigo : string;
begin
     // vlEtdCodigo := MostraLista('mcli', (Sender As TAction).Caption, 'etdcodigo<>0', 1, '');
     vlEtdCodigo := mostralista('mcli', IntToStr(DmDados.Usuario.clbcodigo),'etdcodigo<>0');

     if vlEtdCodigo = '' then
        Exit;

     vlPack := LoadPackage('modulos\mbrr.bpl');
     if vlPack <> 0 Then
     try
        @RecebCaixa := GetProcAddress(vlPack, PChar('RecebCaixa'));

        if Assigned(RecebCaixa) then
           vlRetorno := RecebCaixa(Application, DmDados.Conexao, IntToStr(DmDados.Usuario.ClbCodigo), DmDados.Usuario.CtaCodigo, vlEtdCodigo);
     finally
            DoUnLoadPackage(Application, vlPack);
     end;
end;

procedure TFrmPrincipal.ActReceberDeliveryExecute(Sender: TObject);
var vSQL: String;
begin
     DmDados.orcdlv.Close;
     DmDados.orcdlv.Open;
     if not dmdados.orcdlv.IsEmpty then
     begin
          application.CreateForm(tFrmFinalizaMesa, FrmFinalizaMesa);
          FrmFinalizaMesa.TabPedidos.Tag := 0;
          FrmFinalizaMesa.TabItens.Tag   := 1;
          FrmFinalizaMesa.vpTotalGeral   := 0;
          FrmFinalizamesa.LbMesa.Caption := 'Recebimento Delivery'; // LbMesa.Caption;
          FrmFinalizaMesa.ShowModal;
          FreeAndNil(FrmFinalizaMesa);
     end;
end;

procedure TFrmPrincipal.ActReemissaoFechamentoExecute(Sender: TObject);
begin
     if MessageDlg('Deseja reemprimir fechamento ?', mtConfirmation, [mbYes, mbNo], 0, mbNo ) = mrYes then
     begin
          Dmdados.msapgto.Close;
          Dmdados.msapgto.Params[0].AsString := DmDados.Usuario.TituloOperador;
          DmDados.msapgto.Open;

          Application.CreateForm(tFrmReemissaoFechamento, FrmReemissaoFechamento);
          FrmReemissaoFechamento.ShowModal;
          FreeAndNil(FrmReemissaoFechamento);
          Dmdados.msapgto.Close;
     end;
end;

procedure TFrmPrincipal.ActSangriaExecute(Sender: TObject);
var
  vlValorOperacao: string;
begin

  vlValorOperacao := '0';

  vlValorOperacao := RegistraOperacaoCaixa(tocSangriaCaixa);

  if (vlValorOperacao <> '0') and (vlValorOperacao <> '') then
    if FileExists(Extractfilepath(Application.ExeName) + 'Report\SangriaCCX.fr3') then
      ImprimirComprovantesCCX(tocSangriaCaixa);
end;

procedure TFrmPrincipal.ActSuprimentoExecute(Sender: TObject);
var
  vlValorOperacao: string;
begin
  vlValorOperacao := '0';

  vlValorOperacao := RegistraOperacaoCaixa(tocSuprimentoCaixa);

  if (vlValorOperacao <> '0') and (vlValorOperacao <> '') then
    if FileExists(Extractfilepath(Application.ExeName) + 'Report\SuprimentoCCX.fr3') then
      ImprimirComprovantesCCX(tocSuprimentoCaixa);
end;

procedure TFrmPrincipal.ActTranferirMesasExecute(Sender: TObject);
begin
     if dmdados.orc.IsEmpty then
        exit;

     if MessageDlg('Deseja Tranferir '+DmdaDos.Usuario.TituloOperador+' ?', mtConfirmation, [mbYes, mbNo], 0, mbNo ) = mrYes then
     begin
          Application.CreateForm(TFrmTranfereMesa, FrmTranfereMesa);
          with FrmTranfereMesa do
          begin
               LbMesa.Caption := FrmPrincipal.LbMesa.Caption;
               vpOrcChave     := DmDados.orcorcchave.AsInteger;
               DmDados.trfmesa.Close;
               DmDados.trfmesa.Params[0].AsInteger := vpOrcChave;
               DmDados.trfmesa.Params[1].AsString  := DmDados.Usuario.TituloOperador;
               DmDados.trfmesa.Open;

               // aplicando filtro para mostrar apenas mesas que ainda não foram incluidas
               DmDados.trfmesa.Filter   := 'sel = 0';
               DmDados.trfmesa.Filtered := True;
          end;

          FrmTranfereMesa.ShowModal;
          MostraItens;
          FreeAndNil(FrmTranfereMesa);
     end;
end;

procedure TFrmPrincipal.AjustaBotoes(pEnabled: Boolean);
begin
     ActAbreCaixa.Enabled       := Not(pEnabled);
     ActFechaCaixa.Enabled      := pEnabled;
     ActSangria.Enabled         := pEnabled;
     ActSuprimento.Enabled      := pEnabled;
     ActFechaMesa.Enabled       := pEnabled;
     ActReceberDelivery.Enabled := pEnabled;
end;

procedure TFrmPrincipal.AlteraFonte(pObjeto: TRichEdit; pTamanho: Integer; pTipo: TFontStyle; pCor: TColor);
begin
     pObjeto.SelAttributes.Color := pCor;
     pObjeto.SelAttributes.Size  := pTamanho;
     pObjeto.SelAttributes.Name  := 'Tahoma';
     pObjeto.SelAttributes.Style := [pTipo];
end;

procedure TFrmPrincipal.ApresentaItem(pOrcChave, pItoChave: Integer);
var vSQL: String;
begin
     vSQL := 'SELECT COUNT(*) fsncount '
           + '  FROM sfn '
           + ' INNER JOIN pro ON sfn.procodigo = pro.procodigo '
           + ' INNER JOIN ito on pro.procodigo = ito.procodigo  '
           + ' WHERE ito.itochave = ' + IntToStr(pItoChave);
     DmDados.ConsultaSQL(vSQL);

     Application.CreateForm(tFrmVisualizaItem, FrmVisualizaItem);
     FrmVisualizaItem.MemPro.Clear;

     DmDados.Item.Close;
     DmDados.Item.Params[0].AsInteger := pOrcChave; // orcchave
     DmDados.Item.Params[1].AsInteger := pItoChave; // itochave
     DmDados.Item.Open;
     if not DmDados.Item.IsEmpty then
     begin
          // Escrevendo nome do produto
          AlteraFonte(FrmVisualizaItem.MemPro, 20, fsBold, clBlack);
          FrmVisualizaItem.MemPro.Lines.Add(DmDados.Itempronome.AsString);

          // caso produto seja fracionado
          if DmDados.Consulta.Fields[0].AsInteger > 0 then
          begin
               // Escrevendo bordas do produto quando existir
               DmDados.itemBorda.Close;
               DmDados.itemBorda.Params[0].AsInteger := pOrcChave; // orcchave
               DmDados.itemBorda.Params[1].AsInteger := pItoChave; // itochave
               DmDados.itemBorda.Open;
               if not DmDados.itemBorda.IsEmpty then
               begin
                    FrmVisualizaItem.MemPro.Lines.Add('');
                    AlteraFonte(FrmVisualizaItem.MemPro, 16, fsBold, clBlue);
                    FrmVisualizaItem.MemPro.Lines.Add('*** BORDAS ***');
                    DmDados.itemBorda.First;
                    while not DmDados.itemBorda.Eof do
                    begin
                         AlteraFonte(FrmVisualizaItem.MemPro, 12, fsBold, clBlack);
                         FrmVisualizaItem.MemPro.Lines.Add('   '+DmDados.ItemBordabrdidentificacao.AsString);
                         DmDados.itemBorda.Next;
                    end;
               end;

               // Escrevendo sabores do produto quando existir
               DmDados.itemSabor.Close;
               DmDados.itemSabor.Params[0].AsInteger := pOrcChave; // orcchave
               DmDados.itemSabor.Params[1].AsInteger := pItoChave; // itochave
               DmDados.itemSabor.Open;

               if not DmDados.itemSabor.IsEmpty then
               begin
                    FrmVisualizaItem.MemPro.Lines.Add('');
                    AlteraFonte(FrmVisualizaItem.MemPro, 16, fsBold, clGreen);
                    FrmVisualizaItem.MemPro.Lines.Add('*** SABORES ***');
                    DmDados.itemSabor.First;
                    while not DmDados.itemSabor.Eof do
                    begin
                         AlteraFonte(FrmVisualizaItem.MemPro, 14, fsBold, clBlack);
                         FrmVisualizaItem.MemPro.Lines.Add('   '+DmDados.ItemSaborsbridentificacao.AsString);
                         // Escrevendo sabores do produto quando existir
                         DmDados.ItemIngredientefra.Close;
                         DmDados.ItemIngredientefra.Params[0].AsInteger := pOrcChave; // orcchave
                         DmDados.ItemIngredientefra.Params[1].AsInteger := pItoChave; // itochave
                         DmDados.ItemIngredientefra.Params[2].AsInteger := DmDados.ItemSaborsbichave.AsInteger; // sbichave
                         DmDados.ItemIngredientefra.Open;
                         if not DmDados.ItemIngredientefra.IsEmpty then
                         begin
                              DmDados.ItemIngredientefra.First;
                              while not DmDados.ItemIngredientefra.Eof do
                              begin
                                   if DmDados.ItemIngredienteFraisitipo.AsInteger = 0 then
                                   begin
                                        AlteraFonte(FrmVisualizaItem.MemPro, 11, fsBold, clBlack);
                                        FrmVisualizaItem.MemPro.Lines.Add( '            '
                                                                         + DmDados.ItemIngredienteFratsiidentificacao.AsString
                                                                         + ' '  + DmDados.ItemIngredienteFraingnome.AsString)
                                   end else
                                   begin
                                        AlteraFonte(FrmVisualizaItem.MemPro, 11, fsBold, clMaroon);
                                        FrmVisualizaItem.MemPro.Lines.Add( '            '
                                                                         + 'ADICIONAR '
                                                                         + DmDados.ItemIngredienteFraingnome.AsString
                                                                         + ' ('+DmDados.ItemIngredienteFratsiidentificacao.AsString+')');
                                   end;
                                   DmDados.ItemIngredientefra.Next;
                              end;
                         end;

                         DmDados.itemSabor.Next;
                    end;
               end;
          end else
          // caso o item seja comum
          begin
               // Escrevendo sabores do produto quando existir
               DmDados.ItemIngredienteNormal.Close;
               DmDados.ItemIngredienteNormal.Params[0].AsInteger := pOrcChave; // orcchave
               DmDados.ItemIngredienteNormal.Params[1].AsInteger := pItoChave; // itochave
               DmDados.ItemIngredienteNormal.Open;
               if not DmDados.ItemIngredienteNormal.IsEmpty then
               begin
                    DmDados.ItemIngredienteNormal.First;
                    while not DmDados.ItemIngredienteNormal.Eof do
                    begin
                         if DmDados.ItemIngredienteNormalisitipo.AsInteger = 0 then
                         begin
                              AlteraFonte(FrmVisualizaItem.MemPro, 11, fsBold, clBlack);
                              FrmVisualizaItem.MemPro.Lines.Add( '            '
                                                               + DmDados.ItemIngredienteNormaltsiidentificacao.AsString
                                                               + ' '  + DmDados.ItemIngredienteNormalingnome.AsString)
                         end else
                         begin
                              AlteraFonte(FrmVisualizaItem.MemPro, 11, fsBold, clMaroon);
                              FrmVisualizaItem.MemPro.Lines.Add( '            '
                                                               + 'ADICIONAR '
                                                               + DmDados.ItemIngredienteNormalingnome.AsString
                                                               + ' ('+DmDados.ItemIngredienteNormaltsiidentificacao.AsString+')');
                         end;
                         DmDados.ItemIngredienteNormal.Next;
                    end;
               end;
          end;
     end;
     FrmVisualizaItem.ShowModal;
     FreeAndNil(FrmVisualizaItem);

end;

procedure TFrmPrincipal.BtnTesteClick(Sender: TObject);
begin
     //imgPaintCanvas(Sender.Canvas, 'Escreva um texto aqui' , 10, 6, 4);
end;

procedure TFrmPrincipal.BtnCardRetornarClick(Sender: TObject);
begin
     MostraTab(TabItens);
end;

procedure TFrmPrincipal.BuscaOpcoes;
begin
     if not dmdados.grp.IsEmpty then
     begin
          // verifica se o produto é facionado
          dmdados.sfn.Close;
          dmdados.sfn.Params[0].AsInteger := dmdados.grpgrpcodigo.AsInteger;
          dmdados.sfn.Open;
          // caso o produto não seja facionado abre aba de opções do grupo
          if dmdados.sfn.IsEmpty then
          begin
               dmdados.proc.Close;
               dmdados.proc.Params[0].AsInteger := dmdados.grpgrpcodigo.AsInteger;
               dmdados.proc.Open;
               if dmdados.proc.IsEmpty then
               begin
                    ShowMessage('Opções de Cardapio não Disponível, verifica se existe impressora definida para esse Grupo !');
                    exit;
               end else
               begin
                    LbOpcoes.Caption := dmdados.grpgrpidentificacao.AsString;
                    // MostraTab(TabCardOpcao);
               end;
          end else
          // caso o produto seja fracionado abre formulario de produtos facionados
          begin
               // chama produto fracionado
               dmdados.proc.Close;
               dmdados.proc.Params[0].AsInteger := 0;
               dmdados.proc.Open;

               // abrindo a tabela de preços
               dmdados.pun.Close;
               dmdados.pun.Params[0].AsInteger := 0;
               dmdados.pun.Open;
               LbOpcoes.Caption := 'Duplo click para abrir - '+ dmdados.grpgrpidentificacao.AsString;
               // IncluirItemFracionado; }

          end;
     end;
end;

procedure TFrmPrincipal.CalculaRecebimentos;
begin
     vpRecebimentos := 0;
     vpDesconto     := 0;
     // buscando dados de pagamentos
     DmDados.olt.close;
     DmDados.olt.Params[0].AsInteger := dmdados.orcorcchave.AsInteger;
     DmDados.olt.Open;

     // calculando valores recebidos
     if not DmDados.olt.IsEmpty then
     begin
          DmDados.olt.First;
          while not DmDados.olt.eof do
          begin
               if DmDados.olttipobaixa.AsInteger = 1 then
               begin
                    vpDesconto := vpDesconto + dmDados.oltltedesconto.AsCurrency;
                    vpRecebimentos := vpRecebimentos + dmDados.oltltetotal.AsCurrency;
               end;
               DmDados.olt.Next;
          end;
     end;
     LbRecebido.Caption      := FormatFloat('#,##0.00', vpRecebimentos);
     LbItemDesconto.Caption  := FormatFloat('#,##0.00', vpDesconto);
end;


procedure TFrmPrincipal.CarregaMesa;
var vScrollBox: TScrollBox;
    vPos      : Integer;
    vQtdPanel : Integer;
    vpanel    : TPanel;
    vTop      : Integer;
begin
     // criando scrollbox onde ficara as mesas
     // FreeAndNil(vScrollBox);

     //if (self.FindComponent('SBMesa') = nil) then
     //   FreeAndNil(vScrollBox);

     // self.FindComponent('teste').Name
     vScrollBox            := TScrollBox.Create(Nil);
     vScrollbox.Name       := 'SBMesa';
     vScrollbox.Parent     := PnMesas;
     vScrollbox.ParentColor := False;
     vScrollBox.ParentFont  := False;
     vScrollBox.Ctl3D      := False;
     vScrollBox.BevelInner := bvNone;
     vScrollBox.BevelOuter := bvNone;
     vScrollBox.Align      := alClient;

     // Calculando quantidade de paineis para disposição das mesa
     vQtdPanel := (DmDados.Usuario.QtdMesa div 5);

     if (DmDados.Usuario.QtdMesa mod 5) > 0 then
        vQtdPanel := vQtdPanel + 1;

     vTop := 0;
     vPos := 1;
     vpMesaGer := 0;
     while vPos <= vQtdPanel do
     begin
          // Criando Paineis para mesas
          vpanel            := tPanel.Create(vScrollBox);
          vpanel.Height     := 63;
          vpanel.Parent     := vScrollBox;
          vpanel.Caption    := '';
          vpanel.BevelInner := bvNone;
          vpanel.BevelKind  := bkNone;
          vpanel.BevelOuter := bvNone;
          vpanel.ParentFont := False;
          vpanel.ParentColor := False;
          vPanel.Top        := vTop;
          vpanel.Width      := 320;

          // Criadno Botões que repesentam as mesas
          GeraMesa(vpanel, vQtdPanel, vPos);

          vTop := vTop + 63;
          vPos :=  vPos + 1;
     end;
end;

procedure TFrmPrincipal.CarregaUsuario;
var vSQL: String;
begin
     if DmDados.Usuario.clbcodigo > 0  then
     begin
          vSQL := 'SELECT ccx.ccxchave '
                + '  FROM ccx '
                + '  WHERE ccx.clbcodigo = ' + IntToStr(DmDados.Usuario.clbcodigo)
                + '    AND ccx.ctacodigo = ' + IntToStr(DmDados.Usuario.CtaCodigo)
                + '    AND ccx.ccxdatafecha IS null '
                + ' ORDER BY ccx.ccxchave DESC LIMIT 1';

          with dmDados do
          begin
               clb.Close;
               clb.Params[0].AsInteger := Usuario.clbcodigo;
               clb.Open;
               if not clb.IsEmpty then
               begin
                    LbDescMaximo.Caption  := FormatFloat('#,##0.00', clbclbdescmaximo.AsCurrency);
                    Usuario.PercDesc      := clbclbdescmaximo.AsCurrency;
                    LbColaborador.Caption := clbclbidentificacao.AsString;
                    LbTerminal.Caption    := IntToStr(DmDados.Usuario.TrmCodigo);
                    cfgmcfg.close;
                    cfgmcfg.Open;

                    if ConsultaSQL(vSQL) then
                    begin
                         Usuario.CcxChave     := Consulta.Fields[0].AsInteger;
                         ActAbreCaixa.Enabled := False;

                    end else
                    begin
                         Usuario.CcxChave := 0;
                         AjustaBotoes(False);
                    end;

                    if not cfgmcfg.IsEmpty then
                    begin
                         LbEmpresa.Caption := cfgmcfgetdapelido.AsString;
                         LbModoNFe.Caption := cfgmcfgmodonfe.AsString;
                         LbDados.Caption   := Conexao.Database;
                         LbHost.Caption    := Conexao.Server;
                         LbData.Caption    := FormatDateTime('', cfgmcfgDtAtual.AsDateTime);

                    end;
               end;
          end;
     end;
end;

procedure TFrmPrincipal.ChamaRelatorio(Sender: TObject);
var
   vlRelCodigo: String;
   vlNomeArq: string;
   BlobField: TBlobField;
begin
     if Sender is TMenuItem then
     begin
          vlRelCodigo := (Sender as TMenuItem).Hint;
          if DmDados.rel.Locate('relcodigo', vlRelCodigo, []) then
          begin
               vlNomeArq := ExtractFilePath(Application.ExeName) + 'relat\rel' + vlRelCodigo + '.fr3';
               BlobField := DmDados.rel.FieldByName('relarquivo') as TBlobField;
               BlobField.SaveToFile(vlNomeArq);
               if FileExists(vlNomeArq) then
                  ImprimeRelatorio(vlNomeArq);
          end;
     end;
end;

procedure TFrmPrincipal.ConsultaMesa;
var vNumMesa: Integer;
begin
     // buscando pedido da mesa
     with DmDados do
     begin
          vNumMesa := orcorcchave.AsInteger;
          // verifica se existe pedido aberto para mesa
          orc.Close;
          orc.Params[0].AsInteger := vNumMesa;
          orc.Open;
          if orcstocodigo.AsInteger = 1 then
          begin
               ShowMessage('Messa esta sendo usada por outra terminal, verifique !');
               exit;
          end;

          // caso não existe abre orcamento
          if not orc.IsEmpty then
          begin
               // Abrindo Itens da mesa
               MostraItens;
          end;
     end;
end;

procedure TFrmPrincipal.DBGrid1DblClick(Sender: TObject);
begin
     if not dmDados.ito.IsEmpty then
        ApresentaItem(DmDados.orcorcchave.asinteger,dmDados.itoitochave.asinteger) ;
end;

procedure TFrmPrincipal.DBGrid1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
     if dmdados.itostocodigo.AsInteger <> 2 then
     begin
          TDBGrid(Sender).Canvas.Font.Color := clRed;
          TDBGrid(Sender).Canvas.FillRect(Rect);
          TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);
     end;
end;

procedure TFrmPrincipal.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
        Abort;

end;

procedure TFrmPrincipal.DBGrid2DblClick(Sender: TObject);
begin
     if not DmDados.grp.IsEmpty then
        ItemFracionado(DmDados.grpgrpcodigo.AsInteger);
end;

procedure TFrmPrincipal.ItemFracionado(pGrupo: Integer);
begin
     if not DmDados.grp.IsEmpty then
     begin
          // verifica se o produto é facionado
          DmDados.sfn.Close;
          DmDados.sfn.Params[0].AsInteger := pGrupo;
          DmDados.sfn.Open;
          // caso o produto não seja facionado abre aba de opções do grupo
          if not DmDados.sfn.IsEmpty then
             IncluirItemFracionado;
     end;
end;


procedure TFrmPrincipal.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
        Abort;

end;

procedure TFrmPrincipal.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
     if key = #13  then
     begin
          KEY := #0;
          if not DmDados.grp.IsEmpty then
          begin
               // verifica se o produto é facionado
               DmDados.sfn.Close;
               DmDados.sfn.Params[0].AsInteger := DmDados.grpgrpcodigo.AsInteger;
               DmDados.sfn.Open;
               // caso o produto não seja facionado abre aba de opções do grupo
               if not DmDados.sfn.IsEmpty then
                  IncluirItemFracionado;
          end;
     end;
end;

procedure TFrmPrincipal.DBGrid3DblClick(Sender: TObject);
begin
     IncluirItemComum;
end;

procedure TFrmPrincipal.IncluirItemComum;
begin
     MemIngredientes.Text := '';
     with dmdados do
     begin
          if not proc.IsEmpty then
          begin
               // preparando dados do item
               tito.Append;
               titoclbcodigo.AsInteger := Usuario.clbcodigo;
               titoobs.AsString        := '';
               titopessoas.AsInteger   := 0;
               titoprocodigo.AsInteger := procprocodigo.AsInteger;
               titopronome.AsString    := procpronomereduzido.AsString;
               titopuncodigo.AsInteger := punpuncodigo.AsInteger;
               titoqtde.AsInteger      := 1;
               titosfncodigo.AsInteger := sfnsfncodigo.AsInteger;
               titosfnid.AsInteger     := ito.RecordCount+1;
               titocopos.AsInteger     := 0;
               titopratos.AsInteger    := 0;

               // itens com ingredientes
               if not sbr.IsEmpty then
               begin
                    Application.CreateForm(TFrmIngredienteComum, FrmIngredienteComum);
                    FrmIngredienteComum.vpSbrCodigo := sbrsbrcodigo.AsInteger;
                    FrmIngredienteComum.ShowModal;
                    if FrmIngredienteComum.vpConfirma = True then
                    begin
                         MostraItens;
                         MostraTab(TabItens);
                    end else
                        tito.Cancel;
                    FreeAndNil(FrmIngredienteComum);
               end else
               // itens sem ingredientes
               begin
                    ConsultaSQL('SELECT IFNULL((SELECT sbrfracionado FROM sbr WHERE sbr.grpcodigo = '+grpgrpcodigo.AsString +' LIMIT 1),0) sbrfracionado');
                    if Consulta.Fields[0].AsInteger = 1 then
                    begin
                         Application.CreateForm(TFrmIngredientePesado, FrmIngredientePesado);
                         FrmIngredientePesado.vpSbrCodigo := 0;
                         FrmIngredientePesado.ShowModal;
                         if FrmIngredientePesado.vpConfirma = True then
                         begin
                              MostraItens;
                              MostraTab(TabItens);
                         end else
                             tito.Cancel;
                         freeAndNil(FrmIngredientePesado);
                    end else
                    begin
                         Application.CreateForm(TFrmIngredienteIndividual, FrmIngredienteIndividual);
                         FrmIngredienteIndividual.vpSbrCodigo := 0;
                         FrmIngredienteIndividual.ShowModal;
                         if FrmIngredienteIndividual.vpConfirma = True then
                         begin
                              MostraItens;
                              MostraTab(TabItens);
                         end else
                             tito.Cancel;
                         freeAndNil(FrmIngredienteIndividual);
                    end;
               end;
          end;
     end;
end;

procedure TFrmPrincipal.DBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
        Abort;

end;

procedure TFrmPrincipal.DBGrid4KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
     If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
        Abort;

end;

procedure TFrmPrincipal.dGrpDataChange(Sender: TObject; Field: TField);
begin
     BuscaOpcoes;
end;

procedure TFrmPrincipal.dprocDataChange(Sender: TObject; Field: TField);
var vSabores: String;
begin
     MemIngredientes.Text := '';
     with dmdados do
     begin
          if not proc.IsEmpty then
          begin
               // abrindo a tabela de preços
               pun.Close;
               pun.Params[0].AsInteger := procprocodigo.AsInteger;
               pun.Open;

               // ingredientes do produto
               sbr.Close;
               sbr.Params[0].AsInteger := Usuario.tsicodigo;
               sbr.Params[1].AsInteger := procprocodigo.AsInteger;
               sbr.Open;

               if not sbr.IsEmpty then
               begin
                    vSabores := '';
                    Sbr.DisableControls;
                    sbr.First;
                    while not sbr.Eof do
                    begin
                         if sbr.Bof then
                            vSabores := sbrpronome.AsString
                         else vSabores := vSabores +',  '+ sbrpronome.AsString ;
                         Sbr.Next;
                    end;
                    Sbr.EnableControls;
                    MemIngredientes.Text := vSabores;
               end;

          end;

     end;
end;

end.
