unit ufIncluirFracionado;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, db,
  Controls, Forms, Dialogs, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUImClasses, uniGUIForm, uniGUImForm, uniGUImJSForm,
  uniBasicGrid, uniDBGrid, unimDBListGrid, uniLabel, unimLabel, uniEdit,
  uniDBEdit, unimDBEdit, uniButton, uniBitBtn, unimBitBtn, unimPanel, uniPanel,
  uniPageControl, unimTabPanel, uniGUIBaseClasses, unimDBGrid,
  Vcl.Imaging.pngimage, uniImage, unimImage, unimScrollBox, uni, MemDS, DBAccess;

type
  TDialogCallback = reference to procedure;

  TfIncluirFracionado = class(TUnimForm)
    TabPanelIncFracionado: TUnimTabPanel;
    TabFraGrupo: TUnimTabSheet;
    PnCardapio: TUnimPanel;
    TabFraSabores: TUnimTabSheet;
    UnimPanel11: TUnimPanel;
    UnimPanel12: TUnimPanel;
    UnimPanel4: TUnimPanel;
    UnimPanel5: TUnimPanel;
    UnimDBListGrid1: TUnimDBListGrid;
    TabFraIngredientes: TUnimTabSheet;
    UnimPanel13: TUnimPanel;
    UnimPanel14: TUnimPanel;
    UnimDBListGrid4: TUnimDBListGrid;
    UnimPanel2: TUnimPanel;
    TabFraAdicionais: TUnimTabSheet;
    UnimPanel3: TUnimPanel;
    UnimPanel10: TUnimPanel;
    UnimDBListGrid5: TUnimDBListGrid;
    TabFraBordas: TUnimTabSheet;
    UnimPanel17: TUnimPanel;
    UnimPanel19: TUnimPanel;
    UnimLabel3: TUnimLabel;
    BtnBordaRetorno: TUnimBitBtn;
    UnimDBListGrid7: TUnimDBListGrid;
    UnimDBListGrid8: TUnimDBListGrid;
    UnimPanel20: TUnimPanel;
    UnimPanel21: TUnimPanel;
    LbBordaFracao: TUnimLabel;
    UnimPanel15: TUnimPanel;
    UnimPanel16: TUnimPanel;
    PnQtde: TUnimPanel;
    UnimDBEdit2: TUnimDBEdit;
    UnimBitBtn12: TUnimBitBtn;
    UnimBitBtn13: TUnimBitBtn;
    UnimLabel8: TUnimLabel;
    LbCardapio: TUnimLabel;
    BtTabOpcaoRetorno: TUnimBitBtn;
    UnimPanel1: TUnimPanel;
    BtnTabSaborRetorno: TUnimBitBtn;
    BtnBordas: TUnimBitBtn;
    BtnTabSaborIngredientes: TUnimBitBtn;
    BtnTabSaborConfirmaMais: TUnimBitBtn;
    BtnTabSaborConfirmar: TUnimBitBtn;
    UnimPanel9: TUnimPanel;
    UnimPanel6: TUnimPanel;
    UnimLabel6: TUnimLabel;
    UnimBitBtn5: TUnimBitBtn;
    UnimDBEdit5: TUnimDBEdit;
    UnimBitBtn6: TUnimBitBtn;
    UnimPanel8: TUnimPanel;
    UnimLabel5: TUnimLabel;
    UnimBitBtn1: TUnimBitBtn;
    UnimBitBtn2: TUnimBitBtn;
    UnimDBEdit4: TUnimDBEdit;
    UnimPanel18: TUnimPanel;
    UnimLabel7: TUnimLabel;
    EdtObsGeral: TUnimDBEdit;
    UnimPanel23: TUnimPanel;
    BtnTabSaborExcluir: TUnimBitBtn;
    BtnTabSaborAdiciona: TUnimBitBtn;
    UnimBitBtn8: TUnimBitBtn;
    BtnBordaIncluir: TUnimBitBtn;
    UnimPanel7: TUnimPanel;
    BtnTabFraIngRetorna: TUnimBitBtn;
    UnimLabel1: TUnimLabel;
    UnimBitBtn11: TUnimBitBtn;
    BtnTabFraIngAdicionais: TUnimBitBtn;
    UnimPanel22: TUnimPanel;
    UnimLabel4: TUnimLabel;
    EdtObsIngredientes: TUnimDBEdit;
    UnimPanel24: TUnimPanel;
    UnimPanel25: TUnimPanel;
    UnimDBEdit1: TUnimDBEdit;
    UnimBitBtn9: TUnimBitBtn;
    UnimBitBtn10: TUnimBitBtn;
    UnimPanel26: TUnimPanel;
    UnimBitBtn7: TUnimBitBtn;
    UnimLabel2: TUnimLabel;
    btnTabIncAdicConfirma: TUnimBitBtn;
    UnimPanel27: TUnimPanel;
    UnimPanel28: TUnimPanel;
    UnimBitBtn3: TUnimBitBtn;
    UnimDBEdit3: TUnimDBEdit;
    UnimBitBtn4: TUnimBitBtn;
    LbFracao: TUnimLabel;
    UnimPanel29: TUnimPanel;
    painelletra: TUnimPanel;
    UnimDBListGrid2: TUnimDBListGrid;
    UnimDBListGrid3: TUnimDBListGrid;
    UnimDBListGrid6: TUnimDBListGrid;
    procedure MostraTab(Tab: TUnimTabSheet);
    procedure GravaIngredientes;
    procedure SetIngredientes;
    procedure GravaItens;
    procedure DCallBackExcluiItemFracionado(Sender: TComponent; Res: Integer);
    procedure DCallBackExcluiBorda(Sender: TComponent; Res: Integer);
    procedure DCallBackAbandona(Sender: TComponent; Res: Integer);

    procedure UnimFormClose(Sender: TObject; var Action: TCloseAction);
    procedure UnimDBListGrid2Click(Sender: TObject);
    procedure BtnTabSaborRetornoClick(Sender: TObject);
    procedure BtnTabSaborAdicionaClick(Sender: TObject);
    procedure BtnTabSaborExcluirClick(Sender: TObject);
    procedure BtnTabSaborIngredientesClick(Sender: TObject);
    procedure UnimDBListGrid4Click(Sender: TObject);
    procedure BtTabOpcaoRetornoClick(Sender: TObject);
    procedure BtnTabFraIngRetornaClick(Sender: TObject);
    procedure UnimBitBtn9Click(Sender: TObject);
    procedure UnimBitBtn10Click(Sender: TObject);
    procedure BtnTabFraIngAdicionaisClick(Sender: TObject);
    procedure UnimDBListGrid5Click(Sender: TObject);
    procedure btnTabIncAdicConfirmaClick(Sender: TObject);
    procedure UnimBitBtn3Click(Sender: TObject);
    procedure UnimBitBtn4Click(Sender: TObject);
    procedure BtnTabSaborConfirmarClick(Sender: TObject);
    procedure BtnTabSaborConfirmaMaisClick(Sender: TObject);
    procedure UnimBitBtn7Click(Sender: TObject);
    procedure BtnBordaRetornoClick(Sender: TObject);
    procedure BtnBordasClick(Sender: TObject);
    procedure UnimDBListGrid7Click(Sender: TObject);
    procedure BtnBordaIncluirClick(Sender: TObject);
    procedure UnimBitBtn6Click(Sender: TObject);
    procedure UnimBitBtn5Click(Sender: TObject);
    procedure UnimBitBtn1Click(Sender: TObject);
    procedure UnimBitBtn2Click(Sender: TObject);
    procedure UnimBitBtn8Click(Sender: TObject);
    procedure EdtObsIngredientesExit(Sender: TObject);
    procedure EdtObsGeralExit(Sender: TObject);
    procedure UnimBitBtn11Click(Sender: TObject);
    procedure UnimBitBtn13Click(Sender: TObject);
    procedure UnimBitBtn12Click(Sender: TObject);
    procedure UnimFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
    procedure UnimDBGrid1Click(Sender: TObject);
    procedure UnimDBEdit4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure UnimDBGridLetrasClick(Sender: TObject);
    procedure UnimDBListGrid3Click(Sender: TObject);
  private
    { Private declarations }
    fcallback: TDialogCallback;
    procedure DCallBackExcluiIngredienteAdicional(Sender: TComponent; Res: Integer);

    procedure btlLetraClick(Sender: TObject);

  public
    { Public declarations }

    vpConfirma: Boolean;
    vpPrimeiraLetra: string;
    procedure AjustaBotoesLetras;
    procedure ShowFormModal(aCallBack: TDialogCallback);

  end;

function fIncluirFracionado: TfIncluirFracionado;

implementation

{$R *.dfm}

uses
  Mainm, uniGUIApplication, MainModule;

function fIncluirFracionado: TfIncluirFracionado;
begin
  Result := TfIncluirFracionado(MainModule.UniMainModule.GetFormInstance(TfIncluirFracionado));
end;

procedure TfIncluirFracionado.BtnTabSaborAdicionaClick(Sender: TObject);
begin
  // incluindo sabor do produto
  // verificando se existe sabores cadastrados
  if not MainModule.UniMainModule.fsbr.IsEmpty then
  begin
    // verificando se quantidade de sabores informados não é
    // maior que a quantidade de sabores permitido para o produto
    if MainModule.UniMainModule.sfnsfnquantidade.AsInteger > MainModule.UniMainModule.vtpro.RecordCount then
    begin
      MainModule.UniMainModule.vtpro.DisableControls;

      // verifica se o sabor ja esta informado para o item se não tiver incluir
      if not MainModule.UniMainModule.vtpro.Locate('sbrcodigo', MainModule.UniMainModule.fsbrsbrcodigo.AsInteger, []) then
      begin
        MainModule.UniMainModule.vtpro.Append;
        MainModule.UniMainModule.vtprosfnid.AsInteger := MainModule.UniMainModule.vtItensitoitem.AsInteger;
        MainModule.UniMainModule.vtprosbrcodigo.AsInteger := MainModule.UniMainModule.fsbrsbrcodigo.AsInteger;
        MainModule.UniMainModule.vtprodescricao.AsString := MainModule.UniMainModule.fsbrsbridentificacao.AsString;
        MainModule.UniMainModule.vtprosfncodigo.AsInteger := MainModule.UniMainModule.sfnsfncodigo.AsInteger;
        MainModule.UniMainModule.vtpro.Post;

        // Atualizando labels de orientação ao usuário
        LbFracao.Caption := inttostr(MainModule.UniMainModule.vtpro.RecordCount) + ' de ' + inttostr(MainModule.UniMainModule.sfnsfnquantidade.AsInteger);

        MainModule.UniMainModule.vtpro.Locate('sbrcodigo', MainModule.UniMainModule.fsbrsbrcodigo.AsInteger, []);
      end;
      MainModule.UniMainModule.vtpro.EnableControls;
    end
    else
      ShowMessage('Atenção, quatidade máxima de sabores é ' + inttostr(MainModule.UniMainModule.sfnsfnquantidade.AsInteger));
  end;
end;

procedure TfIncluirFracionado.BtnTabSaborConfirmaMaisClick(Sender: TObject);
begin

  BtnTabSaborConfirmaMais.Enabled := false;
  if not MainModule.UniMainModule.vtpro.IsEmpty then
  begin

    if (trim(UnimDBEdit2.Field.AsString) = '') or (trim(UnimDBEdit2.Field.AsString) = '0') then
    begin
      UnimDBEdit2.Field.AsString := '1';
    end;

    GravaItens;
    // Inicia Nova montagem de item facionado
    with MainModule.UniMainModule do
    begin
      // sabores
      if not UniMainModule.vtpro.Active then
        UniMainModule.vtpro.Open
      else
        UniMainModule.vtpro.Clear;

      // ingredientes
      if not UniMainModule.vtfIng.Active then
        UniMainModule.vtfIng.Open
      else
        UniMainModule.vtfIng.Clear;

      // bordas
      if not UniMainModule.vtbrd.Active then
        UniMainModule.vtbrd.Open
      else
        UniMainModule.vtbrd.Clear;

    end;
    // chama tab de grupos de medidas

    MostraTab(TabFraGrupo);
  end
  else
  begin
    ShowMessage('Não existem sabores informados');
  end;

  BtnTabSaborConfirmaMais.Enabled := True;
end;

procedure TfIncluirFracionado.BtnTabSaborConfirmarClick(Sender: TObject);
begin
  BtnTabSaborConfirmar.Enabled:=false;

  if not MainModule.UniMainModule.vtpro.IsEmpty then
  begin

    if (trim(UnimDBEdit2.Field.AsString) = '') or (trim(UnimDBEdit2.Field.AsString) = '0') then
    begin
      UnimDBEdit2.Field.AsString := '1';
    end;

    GravaItens;

    vpConfirma := True;
    Close;
  end
  else
  begin
    ShowMessage('Não existem sabores informados');
  end;

    BtnTabSaborConfirmar.Enabled:=True;
end;

procedure TfIncluirFracionado.BtnTabSaborExcluirClick(Sender: TObject);
begin
  if not MainModule.UniMainModule.vtpro.IsEmpty then
    MessageDlg('Confirma exclusão de Sabor ?', mtConfirmation, mbYesNo, DCallBackExcluiItemFracionado)
  else
    ShowMessage('Não existem itens na comanda, não é possível excluir!');
end;

procedure TfIncluirFracionado.BtnTabSaborIngredientesClick(Sender: TObject);
begin
  MostraTab(TabFraIngredientes);
end;

procedure TfIncluirFracionado.BtnTabSaborRetornoClick(Sender: TObject);
begin
  MostraTab(TabFraGrupo);
end;

procedure TfIncluirFracionado.BtTabOpcaoRetornoClick(Sender: TObject);
begin
  MessageDlg('Deseja retornar ?', mtConfirmation, mbYesNo, DCallBackAbandona)
end;

procedure TfIncluirFracionado.DCallBackAbandona(Sender: TComponent; Res: Integer);
begin
  if Res = idYes then
  begin
    vpConfirma := false;
    Close;

  end;
end;

procedure TfIncluirFracionado.DCallBackExcluiBorda(Sender: TComponent; Res: Integer);
begin
  if Res = idYes then
  begin
    MainModule.UniMainModule.vtbrd.Delete;
    LbBordaFracao.Caption := 'Selecionado ' + inttostr(MainModule.UniMainModule.vtbrd.RecordCount);
  end;
end;

procedure TfIncluirFracionado.DCallBackExcluiIngredienteAdicional(Sender: TComponent; Res: Integer);
begin
  if Res = idYes then
    MainModule.UniMainModule.fIngrediente.Delete;
end;

procedure TfIncluirFracionado.DCallBackExcluiItemFracionado(Sender: TComponent; Res: Integer);
begin
  if Res = idYes then
  begin
    MainModule.UniMainModule.vtpro.Delete;
    LbFracao.Caption := inttostr(MainModule.UniMainModule.vtpro.RecordCount) + ' de ' + inttostr(MainModule.UniMainModule.sfnsfnquantidade.AsInteger);
  end;
end;

procedure TfIncluirFracionado.EdtObsGeralExit(Sender: TObject);
begin
  EdtObsGeral.Text := UpperCase(EdtObsGeral.Text);
end;

procedure TfIncluirFracionado.EdtObsIngredientesExit(Sender: TObject);
begin
  EdtObsIngredientes.Text := UpperCase(EdtObsIngredientes.Text);
end;

procedure TfIncluirFracionado.GravaIngredientes;
begin
  with MainModule.UniMainModule do
  begin
    // gravando observação
    if UniMainModule.vtpro.State = dsEdit then
      UniMainModule.vtpro.Post;
    UniMainModule.fIngrediente.DisableControls;
    UniMainModule.fIngrediente.First;
    while not UniMainModule.fIngrediente.Eof do
    begin
      if UniMainModule.vtfIng.Locate('sbrcodigo;procodigo;tipo', VarArrayOf([UniMainModule.fingredientesbrcodigo.AsInteger, UniMainModule.fingredienteprocodigo.AsInteger,
        UniMainModule.fIngredientetipo.AsInteger]), []) then
      begin
        // apagando itens que tiveram seus valores votados para quantidade padrao
        // essa operação não exclui ingredientes adicionais;
        { if (UniMainModule.fIngredientetsicodigo.AsInteger = mainmForm.Usuario.tsicodigo) and (UniMainModule.fIngredientetipo.AsInteger = 0) then
          UniMainModule.vtfIng.Delete
          else
          begin }
        // caso a quantidade foi alterada novamente faz o reajuste
        if UniMainModule.vtfingtsicodigo.AsInteger <> UniMainModule.fIngredientetsicodigo.AsInteger then
        begin
          UniMainModule.vtfIng.Edit;
          UniMainModule.vtfingtsicodigo.AsInteger := UniMainModule.fIngredientetsicodigo.AsInteger;

          if UniMainModule.vtfIng.State <> dsbrowse then
          begin
            UniMainModule.vtfIng.Post;
          end;
        end;
        { end; }
      end
      else
      begin
        // caso a quantidade do ingrediente tenha sido alterada ou seja um ingrediente adicional
        { if (UniMainModule.fIngredientetsicodigo.AsInteger <> mainmForm.Usuario.tsicodigo) or (UniMainModule.fIngredientetipo.AsInteger = 1) then
          begin }
        UniMainModule.vtfIng.Append;
        UniMainModule.vtfingsfnid.AsInteger := UniMainModule.vtprosfnid.AsInteger;
        UniMainModule.vtfIngsfncodigo.AsInteger := UniMainModule.vtprosfncodigo.AsInteger;
        UniMainModule.vtfIngsbrcodigo.AsInteger := UniMainModule.fingredientesbrcodigo.AsInteger;
        UniMainModule.vtfIngprocodigo.AsInteger := UniMainModule.fingredienteprocodigo.AsInteger;
        UniMainModule.vtfingtsicodigo.AsInteger := UniMainModule.fIngredientetsicodigo.AsInteger;
        UniMainModule.vtfingtipo.AsInteger := UniMainModule.fIngredientetipo.AsInteger;
        UniMainModule.vtfIngquantidade.AsInteger := UniMainModule.fIngredienteisiquantidade.AsInteger;
        UniMainModule.vtfIng.Post;
      end;
      { end; }
      UniMainModule.fIngrediente.Next;
    end;
    UniMainModule.fIngrediente.EnableControls;
  end;
end;

procedure TfIncluirFracionado.GravaItens;
begin
  if not MainModule.UniMainModule.vtpro.IsEmpty then
  begin
    if (MainModule.UniMainModule.vtItens.State = dsInsert) then
    begin
      MainModule.UniMainModule.vtItenspuncodigo.AsInteger := MainModule.UniMainModule.sfnpuncodigo.AsInteger;
      MainModule.UniMainModule.vtItensunisimbolo.AsString := MainModule.UniMainModule.sfnunisimbolo.AsString;
      MainModule.UniMainModule.vtItenssfncodigo.AsInteger := MainModule.UniMainModule.sfnsfncodigo.AsInteger;
      MainModule.UniMainModule.vtItensStatus.AsInteger := 0;
      MainModule.UniMainModule.vtItenstipo.AsInteger := 0;
      MainModule.UniMainModule.vtItens.Post;
    end;

    if not MainModule.UniMainModule.vtbrd.IsEmpty then
    begin
      MainModule.UniMainModule.vtbrd.First;
      while not MainModule.UniMainModule.vtbrd.Eof do
      begin
        MainModule.UniMainModule.tbrd.Append;
        MainModule.UniMainModule.tbrdsfnid.AsInteger := MainModule.UniMainModule.vtItensitoitem.AsInteger;
        MainModule.UniMainModule.tbrdsfncodigo.AsInteger := MainModule.UniMainModule.sfnsfncodigo.AsInteger;
        MainModule.UniMainModule.tbrdbrdcodigo.AsInteger := MainModule.UniMainModule.vtbrdbrdcodigo.AsInteger;
        MainModule.UniMainModule.tbrd.Post;
        MainModule.UniMainModule.vtbrd.Next;
      end;
    end;

    if not MainModule.UniMainModule.vtpro.IsEmpty then
    begin
      if not MainModule.UniMainModule.tisi.Active then
        MainModule.UniMainModule.tisi.Open;

      MainModule.UniMainModule.vtpro.First;
      while not MainModule.UniMainModule.vtpro.Eof do
      begin
        MainModule.UniMainModule.tisi.Append;
        MainModule.UniMainModule.tisisfnid.AsInteger := MainModule.UniMainModule.vtprosfnid.AsInteger;
        MainModule.UniMainModule.tisisfncodigo.AsInteger := MainModule.UniMainModule.vtprosfncodigo.AsInteger;
        MainModule.UniMainModule.tisisbrcodigo.AsInteger := MainModule.UniMainModule.vtprosbrcodigo.AsInteger;
        MainModule.UniMainModule.tisiobs.AsString := MainModule.UniMainModule.vtproobs.AsString;
        MainModule.UniMainModule.tisiisiitem.AsInteger := MainModule.UniMainModule.vtprosfnid.AsInteger;
        MainModule.UniMainModule.tisiprocodigo.AsInteger := 0;
        MainModule.UniMainModule.tisitsicodigo.AsInteger := 0;
        MainModule.UniMainModule.tisiisitipo.AsInteger := 2;
        MainModule.UniMainModule.tisiisiquantidade.AsInteger := 1;
        MainModule.UniMainModule.tisi.Post;
        MainModule.UniMainModule.vtpro.Next;
      end;

      MainModule.UniMainModule.vtfIng.First;
      while not MainModule.UniMainModule.vtfIng.Eof do
      begin
        { if (MainModule.UniMainModule.vtfingtipo.AsInteger = 1) or (MainModule.UniMainModule.vtfingtsicodigo.AsInteger <> mainmForm.Usuario.tsicodigo) then
          begin }
        MainModule.UniMainModule.tisi.Append;
        MainModule.UniMainModule.tisisbrcodigo.AsInteger := MainModule.UniMainModule.vtfIngsbrcodigo.AsInteger;
        MainModule.UniMainModule.tisiprocodigo.AsInteger := MainModule.UniMainModule.vtfIngprocodigo.AsInteger;
        MainModule.UniMainModule.tisitsicodigo.AsInteger := MainModule.UniMainModule.vtfingtsicodigo.AsInteger;
        MainModule.UniMainModule.tisiisitipo.AsInteger := MainModule.UniMainModule.vtfingtipo.AsInteger;
        MainModule.UniMainModule.tisisfncodigo.AsInteger := MainModule.UniMainModule.vtprosfncodigo.AsInteger;
        MainModule.UniMainModule.tisisfnid.AsInteger := MainModule.UniMainModule.vtprosfnid.AsInteger;
        MainModule.UniMainModule.tisiisiitem.AsInteger := MainModule.UniMainModule.vtItensitoitem.AsInteger;
        MainModule.UniMainModule.tisiisiquantidade.AsInteger := MainModule.UniMainModule.vtfIngquantidade.AsInteger;

        MainModule.UniMainModule.tisi.Post;
        { end; }

        MainModule.UniMainModule.vtfIng.Next;
      end;
    end;

  end;
end;

procedure TfIncluirFracionado.MostraTab(Tab: TUnimTabSheet);
var
  vlGrpCodigo: string;
  vlProCodigo: string;
  vlLetra: string;
begin
  if Tab = TabFraGrupo then
  begin
    // mostra ingredientes
    // abrindo ingredientes
    if not MainModule.UniMainModule.tsi.Active then
    begin
      MainModule.UniMainModule.tsi.Close;
      MainModule.UniMainModule.tsi.Open;
    end;

    if not MainModule.UniMainModule.sfn.IsEmpty then
    begin
      MainModule.UniMainModule.sfn.Filter := 'sfnquantidade >= ' + inttostr(MainModule.UniMainModule.vtpro.RecordCount);
      MainModule.UniMainModule.sfn.Filtered := True;
    end;
  end;

  if Tab = TabFraSabores then
  begin
    // Ja existe produto sendo registrado
    if MainModule.UniMainModule.vtItens.State in [dsInsert, dsEdit] then
    begin
      // alterando tamanho do produto
      MainModule.UniMainModule.vtItensprocodigo.AsInteger := MainModule.UniMainModule.sfnprocodigo.AsInteger;
      MainModule.UniMainModule.vtItenspronome.AsString := MainModule.UniMainModule.sfnpronomereduzido.AsString;

      MainModule.UniMainModule.vtpro.DisableControls;
      if not MainModule.UniMainModule.vtpro.IsEmpty then
      begin
        MainModule.UniMainModule.vtpro.First;
        while not MainModule.UniMainModule.vtpro.Eof do
        begin
          MainModule.UniMainModule.vtpro.Edit;
          MainModule.UniMainModule.vtprosfncodigo.AsInteger := MainModule.UniMainModule.sfnsfncodigo.AsInteger;
          MainModule.UniMainModule.vtpro.Post;
          MainModule.UniMainModule.vtpro.Next;
        end;
      end;
      MainModule.UniMainModule.vtpro.EnableControls;

    end
    else
    // abrindo registro de um novo produto
    begin
      MainModule.UniMainModule.vtItens.Append;
      MainModule.UniMainModule.vtItensitoitem.AsInteger := (MainModule.UniMainModule.vtItens.RecordCount + 1);
      MainModule.UniMainModule.vtItensprocodigo.AsInteger := MainModule.UniMainModule.sfnprocodigo.AsInteger;
      MainModule.UniMainModule.vtItenspronome.AsString := MainModule.UniMainModule.sfnpronomereduzido.AsString;
      MainModule.UniMainModule.vtItensitoquantidade.AsInteger := 1;
      MainModule.UniMainModule.vtItenscopos.AsInteger := 0;
      MainModule.UniMainModule.vtItenspratos.AsInteger := 0;
    end;

    // mostra ingredientes adicionais
    if not MainModule.UniMainModule.tsi.Active then
    begin
      MainModule.UniMainModule.tsi.Close;
      MainModule.UniMainModule.tsi.Open;
    end;

    // abrindo Sabores
    MainModule.UniMainModule.fsbr.Close;
    MainModule.UniMainModule.fsbr.Params[0].AsInteger := MainModule.UniMainModule.grpgrpcodigo.AsInteger;
    MainModule.UniMainModule.fsbr.Open;

    MainModule.UniMainModule.letras.Close;
    MainModule.UniMainModule.letras.Open;

    MainModule.UniMainModule.letras.Append;
    MainModule.UniMainModule.letras.FieldByName('letra').AsString := 'Tds';
    MainModule.UniMainModule.letras.Post;

    MainModule.UniMainModule.fsbr.First;
    vlLetra := copy(MainModule.UniMainModule.fsbrsbridentificacao.AsString, 1, 1);
    while not MainModule.UniMainModule.fsbr.Eof do
    begin
      if MainModule.UniMainModule.letras.Locate('letra', vlLetra, []) = false then
      begin
        MainModule.UniMainModule.letras.Append;
        MainModule.UniMainModule.letras.FieldByName('letra').AsString := vlLetra;
        MainModule.UniMainModule.letras.Post;

      end;

      MainModule.UniMainModule.fsbr.Next;
      vlLetra := copy(MainModule.UniMainModule.fsbrsbridentificacao.AsString, 1, 1);
    end;
    MainModule.UniMainModule.fsbr.First;

    // atualizando labels de orientação ao usuário
    LbFracao.Caption := inttostr(MainModule.UniMainModule.vtpro.RecordCount) + ' de ' + inttostr(MainModule.UniMainModule.sfnsfnquantidade.AsInteger);
    fIncluirFracionado.Caption := MainModule.UniMainModule.vtItenspronome.AsString;

    AjustaBotoesLetras;

  end;
  if Tab = TabFraIngredientes then
  begin
    // mostra ingredientes
    // abrindo ingredientes
    if not MainModule.UniMainModule.tsi.Active then
    begin
      MainModule.UniMainModule.tsi.Close;
      MainModule.UniMainModule.tsi.Open;
    end;

    // abrindo ingredientes
    if not MainModule.UniMainModule.fIngrediente.Active then
    begin
      MainModule.UniMainModule.fIngrediente.Close;
      MainModule.UniMainModule.fIngrediente.Params[0].AsInteger := mainmForm.Usuario.tsicodigo;
      MainModule.UniMainModule.fIngrediente.Params[1].AsInteger := MainModule.UniMainModule.vtprosbrcodigo.AsInteger;
      MainModule.UniMainModule.fIngrediente.Open;
    end
    else
      // se a tabela estiver aberte mas é um novo sabor abre os ingredientes do
      // novo sabor
      if MainModule.UniMainModule.fingredientesbrcodigo.AsInteger <> MainModule.UniMainModule.vtprosbrcodigo.AsInteger then
      begin
        MainModule.UniMainModule.fIngrediente.Close;
        MainModule.UniMainModule.fIngrediente.Params[0].AsInteger := mainmForm.Usuario.tsicodigo;
        MainModule.UniMainModule.fIngrediente.Params[1].AsInteger := MainModule.UniMainModule.vtprosbrcodigo.AsInteger;
        MainModule.UniMainModule.fIngrediente.Open;
      end;

    if MainModule.UniMainModule.fIngrediente.IsEmpty then
    begin
      ShowMessage('Não Existe ingredientes para esse produto !');
      Exit;
    end;
    // atualizando labels de orientação ao usuário
    fIncluirFracionado.Caption := MainModule.UniMainModule.vtprodescricao.AsString;

    // verifica se teve algum ingrediente do sabor que foi alterado ou se
    // foi adicionado novos ingredientes ao sabor.
    SetIngredientes;

    MainModule.UniMainModule.tsi.Locate('tsicodigo', MainModule.UniMainModule.fIngredientetsicodigo.AsInteger, []);
  end;
  if Tab = TabFraAdicionais then
  begin
    // mostra ingredientes adicionais
    // abrindo lista de ingredientes adicionais
    { if not MainModule.UniMainModule.adc.Active then
      begin }

    MainModule.UniMainModule.consulta.Close;
    MainModule.UniMainModule.consulta.SQL.Text := 'select grpcodigo,procodigo from sbr where sbrcodigo=' + UniMainModule.fingredientesbrcodigo.AsString;
    MainModule.UniMainModule.consulta.Open;

    if MainModule.UniMainModule.consulta.FieldByName('grpcodigo').AsString <> '' then
    begin
      vlGrpCodigo := MainModule.UniMainModule.consulta.FieldByName('grpcodigo').AsString;
      UniMainModule.adc.Close;
      UniMainModule.adc.Params[0].AsInteger := mainmForm.Usuario.tsicodigo;
      UniMainModule.adc.Params[1].AsString := vlGrpCodigo;
      UniMainModule.adc.Open;

    end
    else
    begin
      MainModule.UniMainModule.consulta.Close;
      MainModule.UniMainModule.consulta.SQL.Text := 'select grpcodigo,procodigo from sbr where sbrcodigo=' + UniMainModule.fingredientesbrcodigo.AsString;
      MainModule.UniMainModule.consulta.Open;

      vlProCodigo := MainModule.UniMainModule.consulta.FieldByName('procodigo').AsString;
      MainModule.UniMainModule.consulta.Close;
      MainModule.UniMainModule.consulta.SQL.Text := 'select grpcodigo,procodigo from pro where procodigo=' + vlProCodigo;
      MainModule.UniMainModule.consulta.Open;

      vlGrpCodigo := MainModule.UniMainModule.consulta.FieldByName('grpcodigo').AsString;

      UniMainModule.adc.Close;
      UniMainModule.adc.Params[0].AsInteger := mainmForm.Usuario.tsicodigo;
      UniMainModule.adc.Params[1].AsString := vlGrpCodigo;
      UniMainModule.adc.Open;

    end;

    // end;
    if MainModule.UniMainModule.adc.IsEmpty then
    begin
      ShowMessage('Não Existe adicionais cadastrados !');
      Exit;
    end
    else
    begin
      UniMainModule.adc.First;
      while not UniMainModule.adc.Eof do
      begin
        UniMainModule.adc.Edit;
        UniMainModule.Adcisiquantidade.AsInteger := 1;
        UniMainModule.adc.Post;

        UniMainModule.adc.Next;

      end;

    end;
    MainModule.UniMainModule.tsi.Locate('tsicodigo', MainModule.UniMainModule.adctsicodigo.AsInteger, []);
  end;
  if Tab = TabFraBordas then
  begin
    if MainModule.UniMainModule.brd.IsEmpty then
    begin
      ShowMessage('Não Existe Bordas cadastrada para o item selecionado !');
      Exit;
    end;
    if MainModule.UniMainModule.vtpro.IsEmpty then
    begin
      ShowMessage('Não Existe Sabores Selecionados para inclusão de bordas !');
      Exit;
    end;
    // atualizando labels de orientação ao usuário
    LbBordaFracao.Caption := 'Selecionado ' + inttostr(MainModule.UniMainModule.vtbrd.RecordCount);
  end;

  // desabilitando TabSheets
  TabFraBordas.Enabled := false;
  TabFraGrupo.Enabled := false;
  TabFraSabores.Enabled := false;
  TabFraIngredientes.Enabled := false;
  TabFraAdicionais.Enabled := false;
  Tab.Enabled := True;
  TabPanelIncFracionado.ActivePage := Tab;
end;

procedure TfIncluirFracionado.SetIngredientes;
var
  vlGrpCodigo: string;
  vlProCodigo: string;
begin
  with MainModule.UniMainModule do
  begin
    // verificas se existe ingridientes alterados ou adicinais
    if not UniMainModule.vtfIng.IsEmpty then
    begin
      UniMainModule.fIngrediente.DisableControls;

      // Tratando ingredientes adicionais
      if UniMainModule.vtfIng.Locate('tipo', 1, []) then
      begin
        // verificadndo se existe ingredientes alterados
        UniMainModule.fIngrediente.First;
        while not UniMainModule.fIngrediente.Eof do
        begin
          if UniMainModule.vtfIng.Locate('sbrcodigo;procodigo;tipo', VarArrayOf([UniMainModule.fingredientesbrcodigo.AsInteger, UniMainModule.fingredienteprocodigo.AsInteger,
            UniMainModule.fIngredientetipo.AsInteger]), []) then
          begin
            if UniMainModule.tsi.Locate('tsicodigo', UniMainModule.vtfingtsicodigo.AsInteger, []) then
            begin
              UniMainModule.fIngrediente.Edit;
              UniMainModule.fIngredientetsicodigo.AsInteger := UniMainModule.vtfingtsicodigo.AsInteger;
              UniMainModule.fIngredientetsiidentificacao.AsString := UniMainModule.tsitsiidentificacao.AsString;
              UniMainModule.fIngrediente.Post;
            end;
          end;
          UniMainModule.fIngrediente.Next;
        end;

        // abrindo tabela de ingredientes adicionais
        if not UniMainModule.adc.Active then
        begin

          consulta.Close;
          consulta.SQL.Text := 'select grpcodigo,procodigo from sbr where sbrcodigo=' + UniMainModule.fingredientesbrcodigo.AsString;
          consulta.Open;

          if consulta.FieldByName('grpcodigo').AsString <> '' then
          begin
            vlGrpCodigo := consulta.FieldByName('grpcodigo').AsString;
          end
          else
          begin
            consulta.Close;
            consulta.SQL.Text := 'select grpcodigo,procodigo from sbr where sbrcodigo=' + UniMainModule.fingredientesbrcodigo.AsString;
            consulta.Open;

            vlProCodigo := consulta.FieldByName('procodigo').AsString;
            consulta.Close;
            consulta.SQL.Text := 'select grpcodigo,procodigo from pro where procodigo=' + vlProCodigo;
            consulta.Open;

            vlGrpCodigo := consulta.FieldByName('grpcodigo').AsString;

          end;

          UniMainModule.adc.Close;
          UniMainModule.adc.Params[0].AsInteger := mainmForm.Usuario.tsicodigo;
          UniMainModule.adc.Params[1].AsString := vlGrpCodigo;
          UniMainModule.adc.Open;
        end;

        // verificado se existe ingredientes adicionais para o saber caso exista inclui na lista de ingredientes
        UniMainModule.vtfIng.First;
        while not UniMainModule.vtfIng.Eof do
        begin
          if (UniMainModule.vtfingtipo.AsInteger = 1) and (UniMainModule.vtfIngsbrcodigo.AsInteger = UniMainModule.vtprosbrcodigo.AsInteger) then
          begin
            if UniMainModule.adc.Locate('procodigo', UniMainModule.vtfIngprocodigo.AsInteger, []) then
            begin
              UniMainModule.fIngrediente.Append;
              UniMainModule.fingredientesbrcodigo.AsInteger := UniMainModule.vtprosbrcodigo.AsInteger;
              UniMainModule.fIngredientetipo.AsInteger := 1;
              UniMainModule.fingredienteprocodigo.AsInteger := UniMainModule.Adcprocodigo.AsInteger;
              UniMainModule.fIngredientepronome.AsString := UniMainModule.Adcpronome.AsString;
              UniMainModule.fIngredientetsicodigo.AsInteger := UniMainModule.adctsicodigo.AsInteger;
              UniMainModule.fIngredientetsiidentificacao.AsString := UniMainModule.Adctsiidentificacao.AsString;
              UniMainModule.fIngredienteisiquantidade.AsInteger := UniMainModule.Adcisiquantidade.AsInteger;
              UniMainModule.fIngrediente.Post;
            end;
          end;
          UniMainModule.vtfIng.Next;
        end;
      end;
      UniMainModule.fIngrediente.First;

      UniMainModule.fIngrediente.EnableControls;
    end;
  end;
end;

procedure TfIncluirFracionado.ShowFormModal(aCallBack: TDialogCallback);
begin
  // limpando tabelas temporarias
  with MainModule.UniMainModule do
  begin
    // sabores
    if not UniMainModule.vtpro.Active then
      UniMainModule.vtpro.Open
    else
      UniMainModule.vtpro.Clear;

    // ingredientes
    if not UniMainModule.vtfIng.Active then
      UniMainModule.vtfIng.Open
    else
      UniMainModule.vtfIng.Clear;

    // bordas
    if not UniMainModule.vtbrd.Active then
      UniMainModule.vtbrd.Open
    else
      UniMainModule.vtbrd.Clear;
  end;

  // chama tab de grupos de medidas
  MostraTab(TabFraGrupo);
  fcallback := aCallBack;
  ShowModal;
end;

procedure TfIncluirFracionado.UnimBitBtn10Click(Sender: TObject);
begin
  with MainModule.UniMainModule do
  begin
    UniMainModule.tsi.Next;
    UniMainModule.fIngrediente.Edit;
    UniMainModule.fIngredientetsicodigo.AsInteger := MainModule.UniMainModule.tsitsicodigo.AsInteger;
    UniMainModule.fIngredientetsiidentificacao.AsString := MainModule.UniMainModule.tsitsiidentificacao.AsString;
    UniMainModule.fIngrediente.Post;
  end;
end;

procedure TfIncluirFracionado.UnimBitBtn11Click(Sender: TObject);
begin
  if not MainModule.UniMainModule.fIngrediente.IsEmpty then
  begin
    if MainModule.UniMainModule.fIngredientetipo.AsInteger = 1 then
      MessageDlg('Confirma ingrediente adicional?', mtConfirmation, mbYesNo, DCallBackExcluiIngredienteAdicional)
    else
      ShowMessage('Só ingredientes adicionados podem ser excluidos, não é possível excluir!');
  end
  else
    ShowMessage('Não ingredientes, não é possível excluir!');
end;

procedure TfIncluirFracionado.UnimBitBtn12Click(Sender: TObject);
begin
  if MainModule.UniMainModule.vtItensitoquantidade.AsInteger > 1 then
    MainModule.UniMainModule.vtItensitoquantidade.AsInteger := MainModule.UniMainModule.vtItensitoquantidade.AsInteger - 1;

end;

procedure TfIncluirFracionado.UnimBitBtn13Click(Sender: TObject);
begin
  MainModule.UniMainModule.vtItensitoquantidade.AsInteger := MainModule.UniMainModule.vtItensitoquantidade.AsInteger + 1;
end;

procedure TfIncluirFracionado.UnimBitBtn1Click(Sender: TObject);
begin
  if MainModule.UniMainModule.vtItenspratos.AsInteger > 0 then
    MainModule.UniMainModule.vtItenspratos.AsInteger := MainModule.UniMainModule.vtItenspratos.AsInteger - 1;
end;

procedure TfIncluirFracionado.UnimBitBtn2Click(Sender: TObject);
begin

  MainModule.UniMainModule.vtItenspratos.AsInteger := MainModule.UniMainModule.vtItenspratos.AsInteger + 1;
end;

procedure TfIncluirFracionado.UnimBitBtn3Click(Sender: TObject);
begin
  { MainModule.UniMainModule.tsi.Prior;
    MainModule.UniMainModule.adc.Edit;
    MainModule.UniMainModule.adctsicodigo.AsInteger := MainModule.UniMainModule.tsitsicodigo.AsInteger;
    MainModule.UniMainModule.Adctsiidentificacao.AsString := MainModule.UniMainModule.tsitsiidentificacao.AsString;
    MainModule.UniMainModule.adc.Post; }

  if MainModule.UniMainModule.Adcisiquantidade.AsInteger > 1 then
  begin
    MainModule.UniMainModule.adc.Edit;
    MainModule.UniMainModule.Adcisiquantidade.AsInteger := MainModule.UniMainModule.Adcisiquantidade.AsInteger - 1;
    MainModule.UniMainModule.Adctsiidentificacao.AsString := MainModule.UniMainModule.tsitsiidentificacao.AsString;
    MainModule.UniMainModule.adc.Post;
  end;

end;

procedure TfIncluirFracionado.UnimBitBtn4Click(Sender: TObject);
begin
  { MainModule.UniMainModule.tsi.Next;
    MainModule.UniMainModule.adc.Edit;
    MainModule.UniMainModule.adctsicodigo.AsInteger := MainModule.UniMainModule.tsitsicodigo.AsInteger;
    MainModule.UniMainModule.Adctsiidentificacao.AsString := MainModule.UniMainModule.tsitsiidentificacao.AsString;
    MainModule.UniMainModule.adc.Post; }

  MainModule.UniMainModule.adc.Edit;
  MainModule.UniMainModule.Adcisiquantidade.AsInteger := MainModule.UniMainModule.Adcisiquantidade.AsInteger + 1;
  MainModule.UniMainModule.Adctsiidentificacao.AsString := MainModule.UniMainModule.tsitsiidentificacao.AsString;
  MainModule.UniMainModule.adc.Post;

end;

procedure TfIncluirFracionado.UnimBitBtn5Click(Sender: TObject);
begin
  if MainModule.UniMainModule.vtItenscopos.AsInteger > 0 then
    MainModule.UniMainModule.vtItenscopos.AsInteger := MainModule.UniMainModule.vtItenscopos.AsInteger - 1;
end;

procedure TfIncluirFracionado.UnimBitBtn6Click(Sender: TObject);
begin
  MainModule.UniMainModule.vtItenscopos.AsInteger := MainModule.UniMainModule.vtItenscopos.AsInteger + 1;
end;

procedure TfIncluirFracionado.UnimBitBtn7Click(Sender: TObject);
begin
  MostraTab(TabFraIngredientes);
end;

procedure TfIncluirFracionado.UnimBitBtn8Click(Sender: TObject);
begin
  if not MainModule.UniMainModule.vtbrd.IsEmpty then
    MessageDlg('Confirma exclusão de Borda ?', mtConfirmation, mbYesNo, DCallBackExcluiBorda)
  else
    ShowMessage('Não existem bordas selecionadas, não é possível excluir!');
end;

procedure TfIncluirFracionado.BtnBordaIncluirClick(Sender: TObject);
begin
  // incluindo sabor do produto
  with MainModule.UniMainModule do
  begin
    // verificando se existe sabores cadastrados
    if not UniMainModule.brd.IsEmpty then
    begin
      UniMainModule.vtbrd.DisableControls;

      // verifica se o sabor ja esta informado para o item se não tiver incluir
      if not UniMainModule.vtbrd.Locate('brdcodigo', UniMainModule.brdbrdcodigo.AsInteger, []) then
      begin
        UniMainModule.vtbrd.Append;
        UniMainModule.vtbrdbrdcodigo.AsInteger := UniMainModule.brdbrdcodigo.AsInteger;
        UniMainModule.vtbrdbrdidentificacao.AsString := UniMainModule.brdbrdidentificacao.AsString;
        UniMainModule.vtbrd.Post;

        // Atualizando labels de orientação ao usuário
        LbBordaFracao.Caption := 'Selecionado ' + inttostr(UniMainModule.vtbrd.RecordCount);

        UniMainModule.vtbrd.Locate('brdcodigo', UniMainModule.brdbrdcodigo.AsInteger, []);
      end;
      UniMainModule.vtbrd.EnableControls;
    end;
  end;
end;

procedure TfIncluirFracionado.BtnBordaRetornoClick(Sender: TObject);
begin
  UniMainModule.fsbr.FilterSQL := '';
  MostraTab(TabFraSabores);
end;

procedure TfIncluirFracionado.BtnBordasClick(Sender: TObject);
begin
  MostraTab(TabFraBordas);
end;

procedure TfIncluirFracionado.BtnTabFraIngAdicionaisClick(Sender: TObject);
begin
  MostraTab(TabFraAdicionais);
end;

procedure TfIncluirFracionado.BtnTabFraIngRetornaClick(Sender: TObject);
begin
  GravaIngredientes;
  MostraTab(TabFraSabores);
end;

procedure TfIncluirFracionado.btnTabIncAdicConfirmaClick(Sender: TObject);
begin
  with MainModule.UniMainModule do
  begin
    // incluindo ingredientes adicionais
    if not UniMainModule.fIngrediente.Locate('sbrcodigo;procodigo', VarArrayOf([UniMainModule.vtprosbrcodigo.AsInteger, UniMainModule.Adcprocodigo.AsInteger]), []) then
    begin
      UniMainModule.fIngrediente.Append;
      UniMainModule.fingredientesbrcodigo.AsInteger := UniMainModule.vtprosbrcodigo.AsInteger;
      UniMainModule.fIngredientetipo.AsInteger := 1;
      UniMainModule.fingredienteprocodigo.AsInteger := UniMainModule.Adcprocodigo.AsInteger;
      UniMainModule.fIngredientepronome.AsString := UniMainModule.Adcpronome.AsString;
      UniMainModule.fIngredientetsicodigo.AsInteger := UniMainModule.adctsicodigo.AsInteger;
      UniMainModule.fIngredientetsiidentificacao.AsString := UniMainModule.Adctsiidentificacao.AsString;
      UniMainModule.fIngredienteitochave.AsInteger := UniMainModule.vtItensitoitem.AsInteger;
      UniMainModule.fIngredienteisiquantidade.AsInteger := UniMainModule.Adcisiquantidade.AsInteger;
      UniMainModule.fIngrediente.Post;

      // voltado o ingrediente adicional selecionado para dosagem normal
      UniMainModule.tsi.Locate('tsicodigo', mainmForm.Usuario.tsicodigo, []);
      UniMainModule.adc.Edit;
      UniMainModule.adctsicodigo.AsInteger := mainmForm.Usuario.tsicodigo;
      UniMainModule.Adctsiidentificacao.AsString := UniMainModule.tsitsiidentificacao.AsString;
      UniMainModule.adc.Post;
    end;
  end;
  MostraTab(TabFraIngredientes);
end;

procedure TfIncluirFracionado.UnimBitBtn9Click(Sender: TObject);
begin
  with MainModule.UniMainModule do
  begin
    UniMainModule.tsi.Prior;
    UniMainModule.fIngrediente.Edit;
    UniMainModule.fIngredientetsicodigo.AsInteger := UniMainModule.tsitsicodigo.AsInteger;
    UniMainModule.fIngredientetsiidentificacao.AsString := UniMainModule.tsitsiidentificacao.AsString;
    UniMainModule.fIngrediente.Post;
  end;
end;

procedure TfIncluirFracionado.UnimDBEdit4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  Key := 0;
end;

procedure TfIncluirFracionado.UnimDBGrid1Click(Sender: TObject);
begin
  // escolher sabores do item
  UniMainModule.fsbr.FilterSQL := '';

  MostraTab(TabFraSabores);
end;

procedure TfIncluirFracionado.UnimDBGridLetrasClick(Sender: TObject);
var
  vlLetra: string;
begin
  // selecionar a letra
  vlLetra := UniMainModule.letrasletra.AsString;

  if vlLetra = 'Tds' then
  begin
    (UniMainModule.dfsbr.DataSet as TUniQuery).FilterSQL := '';
    (UniMainModule.dfsbr.DataSet as TUniQuery).Filtered := false;
  end
  else
  begin

    (UniMainModule.dfsbr.DataSet as TUniQuery).FilterSQL := 'sbridentificacao like ' + QuotedStr(vlLetra + '%');
    (UniMainModule.dfsbr.DataSet as TUniQuery).Filtered := True;
  end;

end;

procedure TfIncluirFracionado.UnimDBListGrid2Click(Sender: TObject);
begin
  // escolher sabores do item
  MostraTab(TabFraSabores);
end;

procedure TfIncluirFracionado.UnimDBListGrid3Click(Sender: TObject);
begin
 // escolher sabores do item
  UniMainModule.fsbr.FilterSQL := '';

  MostraTab(TabFraSabores);
end;

procedure TfIncluirFracionado.UnimDBListGrid4Click(Sender: TObject);
begin
  MainModule.UniMainModule.tsi.Locate('tsicodigo', MainModule.UniMainModule.fIngredientetsicodigo.AsInteger, []);
end;

procedure TfIncluirFracionado.UnimDBListGrid5Click(Sender: TObject);
begin
  MainModule.UniMainModule.tsi.Locate('tsicodigo', MainModule.UniMainModule.adctsicodigo.AsInteger, []);
end;

procedure TfIncluirFracionado.UnimDBListGrid7Click(Sender: TObject);
{ var vOpecao: String;
  vRecno : Integer; }
begin
  { if Not MainModule.UniMainModule.brd.IsEmpty then
    begin
    MainModule.UniMainModule.brd.edit;
    if MainModule.UniMainModule.brdsel.AsString = '' then
    MainModule.UniMainModule.brdsel.AsString := '***'
    else MainModule.UniMainModule.brdsel.AsString := '';
    MainModule.UniMainModule.brd.post;

    MainModule.UniMainModule.brd.DisableControls;
    vRecno := MainModule.UniMainModule.brd.RecNo;
    vOpecao := '';
    MainModule.UniMainModule.brd.First;
    while not MainModule.UniMainModule.brd.Eof do
    begin
    if MainModule.UniMainModule.brdsel.AsString <> '' then
    begin
    if vOpecao = '' then
    vOpecao:= MainModule.UniMainModule.brdbrdidentificacao.AsString
    else vOpecao:= vOpecao+' | '+MainModule.UniMainModule.brdbrdidentificacao.AsString;
    end;
    MainModule.UniMainModule.brd.Next;
    end;

    if vOpecao <> '' then
    LbBordas.Caption := 'Bordas: '+ vOpecao
    else LbBordas.Caption := 'Opções de Bordas';
    MainModule.UniMainModule.brd.RecNo := vRecno;
    MainModule.UniMainModule.brd.EnableControls;
    end; }
end;

procedure TfIncluirFracionado.UnimFormClose(Sender: TObject; var Action: TCloseAction);
begin
  if MainModule.UniMainModule.vtItens.State in [dsInsert, dsEdit] then
    MainModule.UniMainModule.vtItens.Cancel;

  if MainModule.UniMainModule.fIngrediente.Active then
    MainModule.UniMainModule.fIngrediente.Close;

  if Assigned(fcallback) then
    fcallback;
end;

procedure TfIncluirFracionado.UnimFormScreenResize(Sender: TObject; AWidth, AHeight: Integer);
begin

  if AWidth < 400 then
  begin
    BtnTabSaborIngredientes.Width := 50;
    BtnTabSaborIngredientes.Caption := 'Ing';
    BtnBordas.Caption := 'Ing';
    BtnBordas.Width := 50;
  end;
end;

procedure TfIncluirFracionado.btlLetraClick(Sender: TObject);
var
  i, g, l, la, c, u, v: Integer;
  btTitSabor: TUnimPanel;
  btSabor: TUnimPanel;
  plIngre: TUnimPanel;

  plLinha: TUnimPanel;

  vlLInha: string;

  vlLetra: string;
begin
  if (Sender as TUnimBitBtn).Caption = 'Tds' then
  begin
    (UniMainModule.dfsbr.DataSet as TUniQuery).FilterSQL := '';
    (UniMainModule.dfsbr.DataSet as TUniQuery).Filtered := false;
  end
  else
  begin

    vlLetra := copy((Sender as TUnimBitBtn).Caption, 1, 1);
    (UniMainModule.dfsbr.DataSet as TUniQuery).FilterSQL := 'sbridentificacao like ' + QuotedStr(vlLetra + '%');
    (UniMainModule.dfsbr.DataSet as TUniQuery).Filtered := True;
  end;

end;

procedure TfIncluirFracionado.AjustaBotoesLetras;
var
  vlLetra: string;
  btLetra: TUnimBitBtn;
  btPrimeiraLetra: TUnimBitBtn;
  btDestroi: TUnimBitBtn;

  i, a: Integer;
  vlLetraIni: Integer;

begin

end;

end.
