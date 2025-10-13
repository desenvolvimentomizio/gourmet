unit UntVendaRapida;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  UntPegaUtils, UntPegaConst, upegabase, ACBrBase, ACBrValidador, uBuscaProduto,
  Vcl.Mask, Vcl.DBCtrls;

type
  TFrmVendaRapida = class(Tfrmbase)
    Panel12: TPanel;
    LbItemQtde: TLabel;
    LbItemTotal: TLabel;
    Label9: TLabel;
    Panel18: TPanel;
    Label2: TLabel;
    Panel20: TPanel;
    Panel21: TPanel;
    EdtCodprod: TEdit;
    DBGrid1: TDBGrid;
    ACBrValidador: TACBrValidador;
    ito: TUniQuery;
    itoitochave: TIntegerField;
    itoprocodigo: TIntegerField;
    DSito: TUniDataSource;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    itopronome: TStringField;
    registroorcchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrostocodigo: TIntegerField;
    registroorcmesa: TIntegerField;
    registroorcpessoas: TIntegerField;
    registrostoidentificacao: TStringField;
    registroorcimpressao: TIntegerField;
    dIto: TUniDataSource;
    btChamaListaProdutos: TButton;
    gri: TUniQuery;
    btexcluiitemvendarapida: TButton;
    procedure EdtCodprodEnter(Sender: TObject);
    procedure EdtCodprodKeyPress(Sender: TObject; var Key: Char);
    procedure btChamaListaProdutosClick(Sender: TObject);
    procedure EdtCodprodKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure btexcluiitemvendarapidaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure bcancelaClick(Sender: TObject);

  private
    { Private declarations }

  Var
    vpMesaGer: Integer;
    vpTotal: Extended;

    vpRecebimentos: Extended;
    vpDesconto: Extended;
    vpSQL: String;

    VCBarra: String;
    vpOrcDelChave: String;
    vpPodeFechar: Boolean;

    function mostralista(pModulo, pUsuario: string; pFiltro: string): string;
    procedure BuscaProduto(CodPro: Integer; vBarra: String = ''; vQuantidade: Double = 1);
    procedure MostraItens;
    procedure IncluirItemFracionado;
    procedure ItemFracionado(pGrupo: Integer);
    procedure IncluirItemComum(vBarra: String = ''; vQuantidade: Double = 1);
    procedure RecalculaTotais;

  public

    { Public declarations }
    vpEtdCodigo: Integer;
    vpTerminal: Integer;
    vpUsaBalanca: Boolean;
    pack: Integer;
    AcessoRec: TAcesso;
    vlPackECF: Cardinal;
    vpCznChave: String;

    vpCcxChave: string;
    vpReimprimeCcxChave: string;
    vpOrcChave: String;
    vpSbrCodigo: Integer;
    vpQuantidade: Double;

  end;

  TCarregaOrc = function(AOwner: TComponent; conexao: tuniconnection; pOrcChave: string; pMesChave: string; pAcesso: TAcesso;
    AFaturar: Boolean = False): string;

var
  FrmVendaRapida: TFrmVendaRapida;

implementation

uses
  UntDmDados, UntIngredienteFracionado, UntIngredienteComum,
  UntIngredientePesado, UntIngredienteIndividual, UntPrincipal;

{$R *.dfm}

function TFrmVendaRapida.mostralista(pModulo, pUsuario: string; pFiltro: string): string;
type
  TExecFormu = function(AOwner: TComponent; conexao: tuniconnection; vUsuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
    vmodo: string): string;
var
  ExecFormu: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
  vlRetorno: string;
  pack: Cardinal;
begin

  pack := LoadPackage('modulos\' + pModulo + '.bpl');

  (* Abandona pois não localizou o módulo (Pode ser adicionada mensagem informando o usuário) *)
  if pack = 0 then
    Exit;

  try
    @ExecFormu := GetProcAddress(pack, PChar('formu'));
    if Assigned(ExecFormu) then
    begin

      vlCargaFrame := CargaFrameFormu(Application, pack, dmdados.conexao, FPrinciGou.AcessoRec, pFiltro, '');
      Result := ExecFormu(vlCargaFrame);

    end;
  finally
    // DoUnLoadPackage(pack);
  end;
end;

procedure TFrmVendaRapida.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  registroetdcodigo.AsInteger := vpEtdCodigo;
end;

procedure TFrmVendaRapida.MostraItens;
var
  vlProAtendimento: Integer;
begin

  vpTotal := 0;
  LbItemQtde.Caption := 'Itens: 0';

  vpTotal := 0;
  vpDesconto := 0;

  if not dmdados.orc.IsEmpty then
  begin
    dmdados.ito.Close;
    dmdados.ito.Params[0].AsInteger := dmdados.orcorcchave.AsInteger;
    dmdados.ito.Open;

    if dmdados.ito.Locate('procodigo', dmdados.cfgmcfgcfgmgouproatendimento.AsInteger, []) then
    begin

      dmdados.Consulta.Close;
      dmdados.Consulta.SQL.Text := 'update imm set immhoraimpresso=' + QuotedStr(timetostr(now())) + ' where itochave=' +
        dmdados.ito.FieldByName('itochave').AsString;
      dmdados.Consulta.ExecSQL;

      // dmDados.ExecutaSQL('delete from ito where itochave=' + dmDados.itoitochave.AsString);
    end;

    if not dmdados.ito.IsEmpty then
    begin
      dmdados.ito.DisableControls;
      dmdados.ito.First;
      while not dmdados.ito.Eof do
      begin
        if dmdados.itostocodigo.AsInteger = 1 then
        begin
          dmdados.ito.Edit;
          dmdados.itostocodigo.AsInteger := 2;
          dmdados.ito.Post;
        end;

        if (dmdados.itostocodigo.AsInteger = 2) and (dmdados.itoprocodigo.AsInteger <> dmdados.cfgmcfgcfgmgouproatendimento.AsInteger) then
          vpTotal := vpTotal + dmdados.itoitototalav.AsCurrency;

        dmdados.ito.Next;
      end;
      dmdados.ito.First;
      dmdados.ito.EnableControls;
      LbItemQtde.Caption := 'Itens: ' + InttoStr(dmdados.ito.RecordCount);
    end;
  end;
  // CalculaRecebimentos;

  if vpTotal > 0 then
  begin
    if dmdados.cfgmcfgcfgmgoutaxaatendimento.AsFloat > 0 then
    begin
      // RegistraTaxaServico(vpTotal - vpDesconto);
    end;
  end;
  RecalculaTotais;

end;

procedure TFrmVendaRapida.IncluirItemFracionado;
begin
  dmdados.brd.Close;
  dmdados.brd.Params[0].AsInteger := dmdados.grpgrpcodigo.AsInteger;
  dmdados.brd.Open;

  Application.CreateForm(tFrmIngredienteFracionado, FrmIngredienteFracionado);
  FrmIngredienteFracionado.LbItem.Caption := dmdados.grpgrpidentificacao.AsString;

  // mostrando tela de ingredientes fracionados
  FrmIngredienteFracionado.ShowModal;

  // destruindo tela de ingredientes fracionados
  FreeAndNil(FrmIngredienteFracionado);

  // carregando itens
  MostraItens;

  // mostrando tela de itens
  // MostraTab(TabItens);
end;

procedure TFrmVendaRapida.ItemFracionado(pGrupo: Integer);
begin
  if not dmdados.grp.IsEmpty then
  begin
    // verifica se o produto é facionado
    dmdados.sfn.Close;
    dmdados.sfn.Params[0].AsInteger := pGrupo;
    dmdados.sfn.Open;
    // caso o produto não seja facionado abre aba de opções do grupo
    if not dmdados.sfn.IsEmpty then
      IncluirItemFracionado;
  end;
end;

procedure TFrmVendaRapida.IncluirItemComum(vBarra: String = ''; vQuantidade: Double = 1);
begin
  with dmdados do
  begin
    if not proc.IsEmpty then
    begin
      // preparando dados do item
      tito.Append;
      titoclbcodigo.AsInteger := Usuario.clbcodigo;
      titoobs.AsString := '';
      titopessoas.AsInteger := 0;
      titoprocodigo.AsInteger := procprocodigo.AsInteger;
      titopronome.AsString := procpronomereduzido.AsString;
      titopuncodigo.AsInteger := punpuncodigo.AsInteger;
      titoqtde.AsFloat := vQuantidade;
      titosfncodigo.AsInteger := sfnsfncodigo.AsInteger;
      titosfnid.AsInteger := ito.RecordCount + 1;
      titocopos.AsInteger := 0;
      titopratos.AsInteger := 0;

      if vBarra <> '' then
      begin

        with dmdados do
        begin
          if tito.State in [DsInsert, DsEdit] then
          begin

            tito.Post;
            tito.ApplyUpdates;

            if not sbr.IsEmpty then
            begin
              if not tisi.Active then
                tisi.Open;

              // gravando saberes e ingredients
              sbr.DisableControls;

              sbr.First;
              while not sbr.Eof do
              begin
                if (sbrtsicodigo.AsInteger <> Usuario.tsicodigo) then
                begin
                  tisi.Append;
                  tisisbrcodigo.AsInteger := sbrsbrcodigo.AsInteger;
                  tisiprocodigo.AsInteger := sbrprocodigo.AsInteger;
                  tisitsicodigo.AsInteger := sbrtsicodigo.AsInteger;
                  tisiisitipo.AsInteger := sbrtipo.AsInteger;
                  tisisfnid.AsInteger := titosfnid.AsInteger;
                  tisisfncodigo.AsInteger := 0;
                  if Length(titoobs.AsString) > 0 then
                    tisiobs.AsString := titoobs.AsString;
                  tisi.Post;
                end;
                sbr.Next;
              end;
              sbr.EnableControls;
              sbr.Close;

              vtsbradc.DisableControls;
              if not vtsbradc.IsEmpty then
              begin
                vtsbradc.First;
                while not vtsbradc.Eof do
                begin
                  tisi.Append;
                  tisisbrcodigo.AsInteger := vpSbrCodigo;
                  // vtsbradcsbrcodigo.AsInteger;
                  tisiprocodigo.AsInteger := vtsbradcprocodigo.AsInteger;
                  tisitsicodigo.AsInteger := vtsbradctsicodigo.AsInteger;
                  tisiisitipo.AsInteger := 1;
                  tisisfnid.AsInteger := titosfnid.AsInteger;
                  tisisfncodigo.AsInteger := 0;
                  if Length(titoobs.AsString) > 0 then
                    tisiobs.AsString := titoobs.AsString;
                  tisi.Post;
                  vtsbradc.Next;
                end;
              end;
              vtsbradc.EnableControls;
            end;

            if tisi.Active then
              tisi.ApplyUpdates;

            // borda produtos fracionados
            if tbrd.Active then
              tbrd.ApplyUpdates;

            MobGravaItens.Close;
            MobGravaItens.Params[0].AsInteger := orcorcchave.AsInteger;
            MobGravaItens.Params[1].AsInteger := Usuario.clbcodigo;
            MobGravaItens.Params[2].AsInteger := dmdados.cfgmcfgflacodigo.AsInteger;
            MobGravaItens.ExecProc;
            if MobGravaItens.fields[0].AsInteger = 0 then
              vtItens.EmptyDataSet
            else
              Showmessage(MobGravaItens.fields[1].AsString);
          end;
          // PreparaInclusao;
          // vpConfirma := True;

        end;

      end
      else
      begin

        // itens com ingredientes
        if not sbr.IsEmpty then
        begin

          Application.CreateForm(TFrmIngredienteComum, FrmIngredienteComum);
          FrmIngredienteComum.vpSbrCodigo := sbrsbrcodigo.AsInteger;
          FrmIngredienteComum.ShowModal;
          if FrmIngredienteComum.vpConfirma = True then
          begin
            MostraItens;

          end
          else
            tito.Cancel;
          FreeAndNil(FrmIngredienteComum);
        end
        else
        // itens sem ingredientes
        begin
          ConsultaSQL('SELECT IFNULL((SELECT sbrfracionado FROM sbr WHERE sbr.grpcodigo = ' + grpgrpcodigo.AsString + ' LIMIT 1),0) sbrfracionado');

          if Consulta.fields[0].AsInteger = 1 then
          begin
            Application.CreateForm(TFrmIngredientePesado, FrmIngredientePesado);
            FrmIngredientePesado.vpSbrCodigo := 0;
            ConsultaSQL('SELECT cpbsetor FROM cpb WHERE cpb.procodigo = ' + procprocodigo.AsString);

            if not Consulta.IsEmpty then
              FrmIngredientePesado.vpSetor := Consulta.fields[0].AsInteger;

            FrmIngredientePesado.ShowModal;
            if FrmIngredientePesado.vpConfirma = True then
            begin
              MostraItens;
              // MostraTab(TabItens);
            end
            else
              tito.Cancel;
            FreeAndNil(FrmIngredientePesado);
          end
          else
          begin

            Application.CreateForm(TFrmIngredienteIndividual, FrmIngredienteIndividual);
            FrmIngredienteIndividual.vpSbrCodigo := 0;
            FrmIngredienteIndividual.ShowModal;
            if FrmIngredienteIndividual.vpConfirma = True then
            begin
              MostraItens;
              // MostraTab(TabItens);
            end
            else
              tito.Cancel;
            FreeAndNil(FrmIngredienteIndividual);
          end;
        end;
      end;
    end;

  end;
end;

procedure TFrmVendaRapida.RecalculaTotais;
begin
  vpTotal := 0;
  vpDesconto := 0;
  if not dmdados.orc.IsEmpty then
  begin
    dmdados.ito.Close;
    dmdados.ito.Params[0].AsInteger := dmdados.orcorcchave.AsInteger;
    dmdados.ito.Open;
    if not dmdados.ito.IsEmpty then
    begin
      dmdados.ito.DisableControls;
      dmdados.ito.First;
      while not dmdados.ito.Eof do
      begin
        if (dmdados.itostocodigo.AsInteger = 2) and (dmdados.itoprocodigo.AsInteger <> dmdados.cfgmcfgcfgmgouproatendimento.AsInteger) then
          vpTotal := vpTotal + dmdados.itoitototalav.AsCurrency;
        dmdados.ito.Next;
      end;
      dmdados.ito.First;
      dmdados.ito.EnableControls;
      LbItemQtde.Caption := 'Itens: ' + InttoStr(dmdados.ito.RecordCount);
    end;
  end;
  // CalculaRecebimentos;
  LbItemTotal.Caption := formatfloat('#,##0.00', vpTotal - vpDesconto);
end;

procedure TFrmVendaRapida.bcancelaClick(Sender: TObject);
begin
  if dmdados.dIto.DataSet.RecordCount > 0 then
  begin

    if MessageDlg('A T E N Ç Ã O:  Deseja cancelar TODOS os itens da venda rápida ?', mtConfirmation, [mbYes, mbNo], 0, mbNo) = IdYes then
    begin

      vpPodeFechar := True;
    end
    else
    begin
      vpPodeFechar := False;
    end;
  end
  else
  begin
    vpPodeFechar := True;
  end;
  inherited;

end;

procedure TFrmVendaRapida.bconfirmaClick(Sender: TObject);
var
  i: Integer;
  x: Integer;
begin
  { inherited; }
  vpPodeFechar := True;
  dmdados.tickets.Close;
  dmdados.tickets.SQL.Text := 'select itochave, ito.itoquantidade from ito where orcchave=' + dmdados.orcorcchave.AsString;
  dmdados.tickets.Open;
  while not dmdados.tickets.Eof do
  begin
    x := dmdados.tickets.FieldByName('itoquantidade').AsInteger;
    for i := 1 to x do
    begin
      FPrinciGou.imprimirTicket(dmdados.orcorcchave.AsString, dmdados.tickets.FieldByName('itochave').AsString);
    end;
    dmdados.tickets.Next;
  end;

  modalresult := mrok;

end;

procedure TFrmVendaRapida.BuscaProduto(CodPro: Integer; vBarra: String = ''; vQuantidade: Double = 1);
var
  vCodPro: Integer;
  vSabores: String;
begin
  vCodPro := CodPro;
  if vCodPro > 0 then
  begin
    dmdados.buscaPro.Close;
    dmdados.buscaPro.Params[0].AsInteger := vCodPro;
    dmdados.buscaPro.Open;
    if not dmdados.buscaPro.IsEmpty then
    begin
      dmdados.grp.Locate('grpcodigo', dmdados.BuscaProgrpcodigo.AsInteger, []);
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
      end
      else
      begin
        dmdados.proc.Close;
        dmdados.proc.Params[0].AsInteger := dmdados.BuscaProgrpcodigo.AsInteger;
        dmdados.proc.Open;
        if dmdados.proc.IsEmpty then
        begin
          Showmessage('Opções de Cardapio não Disponível, verifica se existe impressora definida para esse Grupo !');
          Exit;
        end
        else
        begin
          if dmdados.proc.Locate('procodigo', vCodPro, []) then
          begin
            // MemIngredientes.Text := '';
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
              dmdados.sbr.DisableControls;
              dmdados.sbr.First;
              while not dmdados.sbr.Eof do
              begin
                if dmdados.sbr.Bof then
                  vSabores := dmdados.sbrpronome.AsString
                else
                  vSabores := vSabores + ',  ' + dmdados.sbrpronome.AsString;
                dmdados.sbr.Next;
              end;
              dmdados.sbr.EnableControls;
              // MemIngredientes.Text := vSabores;
            end;
            // busca item

            // if vSabores<>'' then
            vBarra := '';

            IncluirItemComum(vBarra, vpQuantidade);
          end
          else
            Showmessage('Opções de Cardapio não Disponível !');
        end;
      end;
    end;
    // EdtProduto.Clear;
  end;
end;

procedure TFrmVendaRapida.btChamaListaProdutosClick(Sender: TObject);
var
  vlTecla: Char;
begin
  inherited;

  dmdados.tito.Close;
  dmdados.tito.Open;

  dmdados.tbrd.Close;
  dmdados.tbrd.Open;

  dmdados.tisi.Close;
  dmdados.tisi.Open;

  EdtCodprod.Text := mostralista('mpro', AcessoRec.Usuario.ToString, 'tpocodigo=0 and pro.sipcodigo=1');
  vlTecla := #13;
  if EdtCodprod.Text <> '' then
    EdtCodprodKeyPress(EdtCodprod, vlTecla);

end;

procedure TFrmVendaRapida.btexcluiitemvendarapidaClick(Sender: TObject);
begin
  inherited;

  If Application.MessageBox(PChar('Confirma a EXCLUSÃO do item selecionado ??'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IdYes Then
  begin

    dmdados.Consulta.Close;
    dmdados.Consulta.SQL.Text := 'delete from ito where itochave=' + dmdados.dIto.DataSet.FieldByName('itochave').AsString;
    dmdados.Consulta.ExecSQL;

    dmdados.dIto.DataSet.Edit;
    dmdados.dIto.DataSet.FieldByName('stocodigo').AsInteger := 88;
    dmdados.dIto.DataSet.Post;

    dmdados.dIto.DataSet.delete;

    RecalculaTotais;

  end;
end;

procedure TFrmVendaRapida.EdtCodprodEnter(Sender: TObject);
begin
  inherited;
  EdtCodprod.Color := $0080FFFF;
  EdtCodprod.Clear;
end;

procedure TFrmVendaRapida.EdtCodprodKeyDown(Sender: TObject; var Key: Word;

  Shift: TShiftState);
var
  vlTecla: Char;
begin
  inherited;
  // Incluir itens na mesa

  if Key = VK_F8 then
  begin

    EdtCodprod.Text := mostralista('mpro', AcessoRec.Usuario.ToString, '');
    vlTecla := #13;

    if EdtCodprod.Text <> '' then
      EdtCodprodKeyPress(EdtCodprod, vlTecla);
  end;
end;

procedure TFrmVendaRapida.EdtCodprodKeyPress(Sender: TObject; var Key: Char);
var
  vlOrcChave: String;
  vlPackopm: Cardinal;
  CarregaOrc: TCarregaOrc;
  vlProcodigo: Integer;
  vlValorBalanca: String;
  VCBarraAjustada: String;
  VProduto: Integer;
  vEmbalagem: Integer;
  vVariacao: Integer;
  i: Integer;
  vlNomeMesa: String;
  vlNomePanel: String;
  vlProcodigostr: string;

begin
  if (Key = 'c') or (Key = 'C') then
  begin

    Key := #0;
    bconfirma.SetFocus;
    bconfirma.Click;
  end
  else if Key = #13 then
  begin

    dmdados.tito.Close;
    dmdados.tito.Open;

    dmdados.tbrd.Close;
    dmdados.tbrd.Open;

    dmdados.tisi.Close;
    dmdados.tisi.Open;

    vpQuantidade := 1;

    VCBarra := EdtCodprod.Text;

    if Length(VCBarra) > 7 then
    begin
      ACBrValidador.Documento := VCBarra;
      if ACBrValidador.Validar = False then
        VCBarra := '';
    end;

    Key := #0;
    vEmbalagem := 0;
    vVariacao := 0;

    if Length(EdtCodprod.Text) = 0 then
    begin
      btChamaListaProdutos.Click;
    end
    else
    begin

      Key := #0;
      if (Copy(VCBarra, 1, 5) = '99999') and (Length(VCBarra) > 10) then
      begin
        ACBrValidador.Documento := VCBarra;

        if ACBrValidador.Validar = False then
        begin
          Showmessage('Falha de Leitura!');
          EdtCodprod.Text := '';
          VCBarra := '';

          Exit;
        end;

        vpOrcDelChave := Copy(VCBarra, 6, 7);

        Showmessage('Comanda ou Mesa não localizada!');
        EdtCodprod.Text := '';
        VCBarra := '';
        Exit;

      end;

      if dmdados.orcorcchave.AsInteger > 0 then
      begin
        with dmdados do
        begin
          tito.Close;
          tito.Open;

          pun.Close;
          proc.Close;

          grp.Close;
          grp.Open;
        end;

        if (Copy(VCBarra, 1, 1) = '2') and (Length(VCBarra) > 10) then
        begin

          dmdados.cpb.Close;
          dmdados.cpb.Params[0].AsString := Copy(VCBarra, 2, dmdados.cfgmcfgcfgdigitosbalanca.AsInteger);
          dmdados.cpb.Open;

          if dmdados.cpb.RecordCount = 1 then
          begin
            vlProcodigo := dmdados.cpbprocodigo.AsInteger;

            vlValorBalanca := Copy(VCBarra, (dmdados.cfgmcfgcfgdigitosbalanca.AsInteger + 2), 10);

            vlValorBalanca := Copy(vlValorBalanca, 1, 5) + '0';

            if dmdados.cfgmcfgcfgetiquetabalanca.AsInteger = 1 then
            begin

              case dmdados.cfgmcfgcfgdigitosbalanca.AsInteger of
                4:
                  VCBarraAjustada := '2' + formatfloat('0000', vlProcodigo) + vlValorBalanca;
                5:
                  VCBarraAjustada := '2' + formatfloat('00000', vlProcodigo) + vlValorBalanca;
                6:
                  VCBarraAjustada := '2' + formatfloat('000000', vlProcodigo) + vlValorBalanca;
                7:
                  VCBarraAjustada := '2' + formatfloat('0000000', vlProcodigo) + vlValorBalanca;
              end;

              vpQuantidade := 1;

            end
            else
            begin

              case dmdados.cfgmcfgcfgdigitosbalanca.AsInteger of
                4:
                  VCBarraAjustada := '2' + formatfloat('0000', vlProcodigo) + vlValorBalanca;
                5:
                  VCBarraAjustada := '2' + formatfloat('00000', vlProcodigo) + vlValorBalanca;
                6:
                  VCBarraAjustada := '2' + formatfloat('000000', vlProcodigo) + vlValorBalanca;
                7:
                  VCBarraAjustada := '2' + formatfloat('0000000', vlProcodigo) + vlValorBalanca;
              end;

              vpQuantidade := StrToFloat(vlValorBalanca) / 10000;

            end;

          end;

          dmdados.Consulta.Close;
          dmdados.Consulta.SQL.Text := 'select probalanca from pro where procodigo=' + InttoStr(vlProcodigo);
          dmdados.Consulta.Open;
          if dmdados.Consulta.fields[0].AsString <> '' then
          begin
            if (dmdados.Consulta.fields[0].AsInteger = 1) and (Copy(VCBarra, 1, 1) = '2') and (Length(VCBarra) > 10) then
            begin
              VCBarra := VCBarraAjustada;
            end;
          end;

        end;

        dmdados.Consulta.Close;

        { *  fim da rotina de troca de codigo de produtos pesados * }

        VProduto := BuscaProdutoBarra(Application, dmdados.conexao, VCBarra, vEmbalagem, vVariacao);

        if VProduto = -1 then
          VCBarra := ''
        else
          EdtCodprod.Text := InttoStr(VProduto);

        //
        try
          BuscaProduto(StrtoInt(EdtCodprod.Text), VCBarra, vpQuantidade);
        except

        end;
        MostraItens;
        EdtCodprod.Clear;
        EdtCodprod.SetFocus;
      end;
    end;
  end;

  if Key = #27 then
  begin
    Key := #0;
    EdtCodprod.Clear;
    EdtCodprod.SetFocus;
  end;

  If (Key = 'x') or (Key = 'X') Then
  Begin
    if VCBarra <> '' then
    begin

      VCBarra := EdtCodprod.Text;
      if trim(Copy(VCBarra, 1, Length(VCBarra))) <> '' then
      begin
        vpQuantidade := StrToFloat(Copy(VCBarra, 1, Length(VCBarra)));

        dmdados.Consulta.Close;
        dmdados.Consulta.SQL.Text := 'select itochave, itoquantidade, itovalorav, itototalav from ito where itochave=' + dmdados.itoitochave.AsString;
        dmdados.Consulta.Open;

        dmdados.Consulta.Edit;
        dmdados.Consulta.FieldByName('itoquantidade').AsFloat := vpQuantidade;
        dmdados.Consulta.FieldByName('itototalav').AsFloat := dmdados.Consulta.FieldByName('itoquantidade').AsFloat *
          dmdados.Consulta.FieldByName('itovalorav').AsFloat;
        dmdados.Consulta.Post;
        EdtCodprod.Text := '';

        MostraItens;
      end
      else
      begin
        EdtCodprod.Text := '';

      end;

    end;
    EdtCodprod.SetFocus;
  End;

  if not(Key in ['0' .. '9', #8, ',']) then
    Key := #0;

end;

procedure TFrmVendaRapida.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  CanClose := vpPodeFechar;
end;

procedure TFrmVendaRapida.FormCreate(Sender: TObject);
begin
  inherited;
  vpPodeFechar := False;
end;

procedure TFrmVendaRapida.FormShow(Sender: TObject);

var
  i: Integer;
begin
  vpPodeFechar := False;
  For i := 0 To Self.ComponentCount - 1 Do
    If Self.Components[i] Is TUniQuery Then
      If (Self.Components[i] As TUniQuery).Tag <> 0 Then
        If (Self.Components[i] As TUniQuery).SQL.Text <> '' Then
        Begin
          (Self.Components[i] As TUniQuery).Connection := ZCone;
        End;

  { inherited; }

end;

end.
