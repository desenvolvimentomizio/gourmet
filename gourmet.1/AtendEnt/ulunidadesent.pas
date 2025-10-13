unit ulunidadesent;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, MemDS, DBAccess, Uni, VirtualTable, ufuncoes, math, Vcl.Mask,
  System.Diagnostics, uPegaBase, Vcl.DBCGrids;

type
  Tlunidadesent = class(TForm)
    Dqpro: TDataSource;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Dsbr: TDataSource;
    sbi: TDataSource;
    Dsbi: TDataSource;
    plSabores: TPanel;
    plLetra: TPanel;
    plPesquisaSabor: TPanel;
    plListaSabor: TPanel;
    plSaboresSelecionados: TPanel;
    plUnidades: TPanel;
    plTamanho: TPanel;
    btAbreSabor: TBitBtn;
    btTamanho: TBitBtn;
    plValorTamanho: TPanel;
    plTitTamanhosPrecos: TPanel;
    Panel3: TPanel;
    plTitSaboresSelecionados: TPanel;
    plTitSelecionados: TPanel;
    Dtsi: TDataSource;
    plProNome: TPanel;
    Disi: TDataSource;
    plListaSabores: TScrollBox;
    plBordas: TPanel;
    Dbrg: TDataSource;
    plTitBordas: TPanel;
    plTitBordSelecionados: TPanel;
    DBBordas: TDBGrid;
    Dbri: TDataSource;
    edPesquisaSabor: TEdit;
    btMaisQuanti: TBitBtn;
    Dito: TDataSource;
    btMenosQuanti: TBitBtn;
    btLimpaPesquisa: TSpeedButton;
    consulta: TUniQuery;
    plEspacoTitulo: TPanel;
    plSelecoes: TPanel;
    plResultado: TPanel;
    gbobsitem: TGroupBox;
    itoobs: TDBMemo;
    itoquantidade: TDBEdit;
    DBCtrlGrid1: TDBCtrlGrid;
    sbridentificacao: TDBText;
    DsSabores: TDataSource;
    isaingredientes: TDBMemo;
    Dpco: TDataSource;
    procedure listaDblClick(Sender: TObject);
    procedure listaKeyPress(Sender: TObject; var Key: Char);
    procedure bconfirmaClick(Sender: TObject);
    procedure DqproDataChange(Sender: TObject; Field: TField);
    procedure btlLetraClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btAbreSaborClick(Sender: TObject);
    procedure btTamanhoClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure DBBordasCellClick(Column: TColumn);
    procedure DBBordasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btMenosQuantiClick(Sender: TObject);
    procedure btMaisQuantiClick(Sender: TObject);
    procedure edPesquisaSaborKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btLimpaPesquisaClick(Sender: TObject);
    procedure plListaSaboresMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure plListaSaboresMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
    procedure DBBordasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBCtrlGrid1Click(Sender: TObject);
  private
    procedure AjustaIngredienteSabor(Sender: TObject; Field: TField);
    procedure AjustaBotoesLetras;
    procedure AjustaBotoesTamanhos;
    procedure btlUnidadeClick(Sender: TObject);
    procedure btSaborclick(Sender: TObject);
    procedure btRemovSbrClick(Sender: TObject);
    procedure removerpainel(vPainel: TPanel);
    procedure MostraIngredientes(vPainel: TPanel);
    procedure btMostraIngredientesClick(Sender: TObject);
    procedure AjustaTitSaboresSel;
    procedure AjustaAltSaboresSel;
    procedure btMaisIngreClick(Sender: TObject);
    procedure btMenosIngreClick(Sender: TObject);
    procedure AjustaTituloNivel(vPanel: TPanel);
    procedure AdicionaIngrediente(vSabSel, vIngreSab: TPanel; vProCodigo, vProNome: string);
    procedure btIncluiIngreClick(Sender: TObject);
    procedure AjustaAlturaIngredientes(vPainel: TPanel);
    function MostraLista(pModulo: String; pFiltro: string = ''; pChaveMestre: string = ''): string;
    // function MostraLista(Pacote, Modulo: String; Filtro: String = ''; TipoLista: Integer = 1; Modo: String = ''): String;
    procedure AdicionaSabor(vlSbrCodigo: string; vlNomePnl: string; vlNomeTit: string; vSbiChave: string = ''; vSbiObs: string = '';
      vTipo: Integer = 0);
    procedure carregasabores;
    function SalvaNivelIngre(vPanel: TPanel; vSbrCodigo: string; vlProCodigo: string; vIsiTipo: string = '0'): string;
    function ExcluiNivelIngre(vPanel: TPanel; vSbrCodigo: string; vlProCodigo: string; vIsiTipo: string = '0'): string;

    function CarregaNivelIngre(vPanel: TPanel; vSbrCodigo, vlProCodigo: string): string;
    procedure SalvarNivelIngrediente(vPanel: TPanel; vExcluir: Boolean = false);
    procedure AoSairObs(Sender: TObject);
    procedure SelecionaTamanho(vPunCodigo: string);
    procedure CriaListaSabores;
    procedure CriaListaSabores2;
    procedure SelecionaSabor(vNome: string; vlNomeTit: string; vTipo: Integer = 0)Overload;
    procedure SelecionaSabor(vSbrCodigo: Integer; vlNomeTit: string; vTipo: Integer = 0)Overload;

    procedure MostraTodosSabres;
    procedure VerAtualizacao(pacote: string);
    procedure btExclQuantiClick(Sender: TObject);
    procedure AtualizaValordaUnidade;

    { Private declarations }
  public
    { Public declarations }
    zcone: TUniConnection;
    vpTipoLista: string;

    vpQtdMaxSabores: Integer;
    vpQtdSaboresSel: Integer;
    vpQtdBordasSel: Integer;

    vpItoChave: string;
    vpUniCodigo: string;
    vpPunCodigo: string;
    vpPrimeiraLetra: string;
    vpUsrCodigo: string;
    vpOrcChave: string;
    Acesso: TAcesso;
    procedure AjustaSabores;
    procedure AjustaBotaoUnidades;

  end;

  TMostraLista = Function(AOwner: TComponent; Conexao: TUniConnection; vusuario: String; Vtipolista: Integer; Vmodulo: String; Vfiltro: String;
    vModo: String): String;

var
  lunidadesent: Tlunidadesent;

implementation

uses
  uFprinciEnt;

{$R *.dfm}

procedure Tlunidadesent.bcancelaClick(Sender: TObject);
begin
  FprinciEnt.sabores.FilterSQL := '';
  FprinciEnt.sabores.Filtered := false;

  modalresult := mrcancel;
end;

procedure Tlunidadesent.bconfirmaClick(Sender: TObject);

begin
  if (vpQtdSaboresSel = 0) and (Dsbr.DataSet.RecordCount > 0) then
  begin
    showmessage('É Necessário ao menos um Sabor !');
    exit;
  end;
  if Dito.State = dsedit then
    Dito.DataSet.Post;

  Dsbi.DataSet.First;
  while not Dsbi.DataSet.Eof do
  begin
    consulta.Close;
    consulta.SQL.Text := 'delete from isi where isi.sbichave IN (SELECT sbichave from sbi where itochave=' + Dito.DataSet.FieldByName('itochave')
      .AsString + ') and tsicodigo=-1';
    consulta.ExecSQL;
    Dsbi.DataSet.Next;
  end;

  FprinciEnt.sabores.FilterSQL := '';
  FprinciEnt.sabores.Filtered := false;

  modalresult := mrok;
end;

procedure Tlunidadesent.DBBordasCellClick(Column: TColumn);
var
  regi: Integer;
begin

  DBBordas.DataSource.DataSet.DisableControls;
  if DBBordas.SelectedField.FieldName = 'briincluir' then
  begin
    if Dbrg.DataSet.FieldByName('briincluir').AsString = '0' then
    begin
      Dbrg.DataSet.Edit;
      Dbrg.DataSet.FieldByName('briincluir').AsString := '1';
      Dbrg.DataSet.Post;
    end
    else
    begin
      Dbrg.DataSet.Edit;
      Dbrg.DataSet.FieldByName('briincluir').AsString := '0';
      Dbrg.DataSet.Post;
    end;

    vpQtdBordasSel := 0;
    regi := self.Dbrg.DataSet.RecNo;
    self.Dbrg.DataSet.Close;
    self.Dbrg.DataSet.open;
    self.Dbrg.DataSet.First;
    while not self.Dbrg.DataSet.Eof do
    begin

      if self.Dbrg.DataSet.FieldByName('briincluir').AsString = '1' then
        vpQtdBordasSel := vpQtdBordasSel + 1;

      self.Dbrg.DataSet.Next;
    end;

    self.Dbrg.DataSet.RecNo := regi;
    plTitBordSelecionados.Caption := 'Selecionadas ' + inttostr(vpQtdBordasSel);
    DBBordas.DataSource.DataSet.EnableControls;

  end
  else
  begin
    inherited;
  end;

  AtualizaValordaUnidade;

end;

procedure Tlunidadesent.DBBordasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
  i: Integer;
begin
  inherited;

  if Column.FieldName = 'briincluir' then
  begin

    // Desenha um checkbox no dbgrid

    DBBordas.Canvas.FillRect(Rect);

    Check := 0;
    if Dbrg.DataSet.FieldByName('briincluir').AsString <> '0' then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
    DrawFrameControl(DBBordas.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;

end;

procedure Tlunidadesent.DBBordasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;

end;

procedure Tlunidadesent.DBCtrlGrid1Click(Sender: TObject);
var
  vlNomeTit: string;
  vlSbrCodigo: Integer;
  vlQtdSbrs: Integer;
  i: Integer;
begin

  vlSbrCodigo := DsSabores.DataSet.FieldByName('sbrcodigo').AsInteger;
  vlNomeTit := DsSabores.DataSet.FieldByName('sbridentificacao').AsString;

  vlQtdSbrs := 0;
  for i := 0 to plSaboresSelecionados.ComponentCount - 1 do
  begin
    if plSaboresSelecionados.Components[i].Tag = 10 then
      vlQtdSbrs := vlQtdSbrs + 1;
  end;

  vpQtdMaxSabores := Dqpro.DataSet.FieldByName('sfnquantidade').AsInteger;
  vpQtdSaboresSel := vlQtdSbrs;

  if (vpQtdSaboresSel <> 0) or (vpQtdMaxSabores <> 0) then
  begin
    if vpQtdSaboresSel = vpQtdMaxSabores then
    begin
      showmessage('Não é possível incluir mais sabores');
    end
    else
    begin
      SelecionaSabor(vlSbrCodigo, vlNomeTit);

    end;

  end;

  AtualizaValordaUnidade;

end;

procedure Tlunidadesent.DqproDataChange(Sender: TObject; Field: TField);
begin

  if not Dqpro.DataSet.Active then
    exit;

  vpPrimeiraLetra := '';

end;

procedure Tlunidadesent.MostraTodosSabres;
begin
  FprinciEnt.sabores.FilterSQL := '';
  FprinciEnt.sabores.Filtered := false;
end;

procedure Tlunidadesent.plListaSaboresMouseWheelDown(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  TScrollBox(Sender).Perform(WM_VSCROLL, 1, 0);
end;

procedure Tlunidadesent.plListaSaboresMouseWheelUp(Sender: TObject; Shift: TShiftState; MousePos: TPoint; var Handled: Boolean);
begin
  TScrollBox(Sender).Perform(WM_VSCROLL, 0, 0);
end;

procedure Tlunidadesent.edPesquisaSaborKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  i, x: Integer;
begin

  try
    LockWindowUpdate(Handle);
    try

      x := 0;
      if edPesquisaSabor.Text = '' then
      begin
        FprinciEnt.sabores.FilterSQL := '';
        FprinciEnt.sabores.Filtered := false;

      end
      else
      begin

        FprinciEnt.sabores.FilterSQL := 'sbridentificacao LIKE ' + QuotedStr('%' + UPPERCASE(edPesquisaSabor.Text) + '%');
        FprinciEnt.sabores.Filtered := true;

      end;

    finally
      LockWindowUpdate(0);
    end;
  except
    LockWindowUpdate(0);
  end;

  { try
    LockWindowUpdate(Handle);
    try

    x := 0;
    if edPesquisaSabor.Text = '' then
    begin
    MostraTodosSabres;
    end
    else
    begin

    for i := 0 to plListaSabores.ComponentCount - 1 do
    begin
    if (pos(edPesquisaSabor.Text, (plListaSabores.Components[i] as TPanel).Caption) > 0) and (x <= 6) then
    begin
    (plListaSabores.Components[i] as TPanel).Visible := true;
    x := x + 1;
    end
    else
    begin
    (plListaSabores.Components[i] as TPanel).Visible := false;
    end;
    end;
    end;

    finally
    LockWindowUpdate(0);
    end;
    except
    LockWindowUpdate(0);
    end; }

end;

procedure Tlunidadesent.FormShow(Sender: TObject);
var
  vlProCodigo: string;
  vlSbrCodigo: string;
  vNome: string;
  vlNomeTit: string;
  vlGrpCodigo: string;
begin
  Acesso.IdAcesso := 0;
  Acesso.Usuario := 1;
  Acesso.Filial := 1;
  Acesso.Terminal := 1;

  AjustaBotoesTamanhos;
  if (vpTipoLista = 'Ingredientes') or (Dsbr.DataSet.RecordCount = 0) then
  begin
    SelecionaTamanho(vpPunCodigo);
    plSaboresSelecionados.Visible := true;
    btTamanho.Visible := false;
    consulta.Close;
    consulta.SQL.Text := 'select procodigo from pun where puncodigo=' + vpPunCodigo;
    consulta.open;

    vlProCodigo := consulta.Fields[0].AsString;

    consulta.Close;
    consulta.SQL.Text := 'select sbrcodigo from sbr where procodigo=' + vlProCodigo;
    consulta.open;
    vlSbrCodigo := consulta.Fields[0].AsString;

    vNome := 'vvProdc' + vlSbrCodigo;

    consulta.Close;
    consulta.SQL.Text := 'select pronome,grpcodigo from pro where procodigo=' + vlProCodigo;
    consulta.open;

    vlNomeTit := consulta.Fields[0].AsString;
    vlGrpCodigo := consulta.Fields[1].AsString;
    if vlSbrCodigo <> '' then
      SelecionaSabor(vNome, vlNomeTit, 1);

    // plSabores.Visible := false;
    // self.Width := 570;
    btAbreSabor.Visible := false;

    consulta.Close;
    consulta.SQL.Text := 'select uninome from uni,pun where pun.puncodigo=' + vpPunCodigo + ' and  uni.unicodigo=pun.unicodigo';
    consulta.open;
    plTitSaboresSelecionados.Visible := false;
    plEspacoTitulo.Caption := '  ' + consulta.Fields[0].AsString;

  end
  else
  begin
    btTamanho.Visible := true;
    plSabores.Visible := true;
    self.Width := 1120;

    btAbreSabor.Visible := true;

    { if psituacao.Caption = 'Incluindo' then
      begin }

    if vpPunCodigo <> '' then
    begin
      SelecionaTamanho(vpPunCodigo);
      AjustaSabores;
    end
    else
    begin
      btAbreSabor.Click;
      AjustaBotoesLetras;
    end;
    { end
      else
      begin
      SelecionaTamanho(vpPunCodigo);
      end; }

    consulta.Close;
    consulta.SQL.Text := 'select procodigo from pun where puncodigo=' + vpPunCodigo;
    consulta.open;

    vlProCodigo := consulta.Fields[0].AsString;

    consulta.Close;
    consulta.SQL.Text := 'select pronome,grpcodigo from pro where procodigo=' + vlProCodigo;
    consulta.open;

    vlNomeTit := consulta.Fields[0].AsString;
    vlGrpCodigo := consulta.Fields[1].AsString;

    { INICIO visualicao de bordas }

    consulta.Close;
    consulta.SQL.Text := 'select grpcodigo from brg where grpcodigo=' + vlGrpCodigo;
    consulta.open;

    if not consulta.IsEmpty then
    begin

      Dbrg.DataSet.Close;
      (Dbrg.DataSet as TUniQuery).Params[0].AsString := vlGrpCodigo;
      (Dbrg.DataSet as TUniQuery).Params[1].AsString := vpItoChave;
      Dbrg.DataSet.open;

      if not Dbrg.DataSet.IsEmpty then
        lunidadesent.plBordas.Visible := true;

      { FINAL visualicao de bordas }

    end
    else
    begin
      lunidadesent.plBordas.Visible := false;
    end;

  end;

  if Dpco.DataSet.Active then
  begin
    if Dpco.DataSet.RecordCount > 0 then
    begin

      btMenosQuanti.Visible := false;
      btMaisQuanti.Visible := false;
      itoquantidade.Enabled := false;
      btTamanho.Enabled := false;

    end
    else
    begin
      btMenosQuanti.Visible := true;
      btMaisQuanti.Visible := true;
      itoquantidade.Enabled := true;
      btTamanho.Enabled := true;

    end;
  end;

end;

procedure Tlunidadesent.carregasabores;
var
  vlSbrCodigo: string;
  vlNomePnl: string;
  vlNomeTit: string;
  vlplIng: string;
begin
  Dsbi.DataSet.First;
  while not Dsbi.DataSet.Eof do
  begin
    vlSbrCodigo := Dsbi.DataSet.FieldByName('sbrcodigo').AsString;
    if Dsbr.DataSet.Locate('sbrcodigo', vlSbrCodigo, []) then
    begin
      vlNomePnl := 'pnlSbr' + 'btSabor' + vlSbrCodigo + 'W' + formatfloat('00', Dsbi.DataSet.FieldByName('sbiitem').AsInteger);
      vlNomeTit := Dsbr.DataSet.FieldByName('sbridentificacao').AsString;
      AdicionaSabor(vlSbrCodigo, vlNomePnl, vlNomeTit, Dsbi.DataSet.FieldByName('sbichave').AsString, Dsbi.DataSet.FieldByName('sbiobs').AsString);
    end;

    if Disi.DataSet <> nil then
    begin
      Disi.DataSet.Close;
      (Disi.DataSet as TUniQuery).Params[0].AsInteger := Dsbi.DataSet.FieldByName('sbichave').AsInteger;
      Disi.DataSet.open;
      vlplIng := 'plIngreSab' + vlNomePnl + '_' + Disi.DataSet.FieldByName('procodigo').AsString;
    end;

    Dsbi.DataSet.Next;
  end;

  if not Dsbi.DataSet.IsEmpty then
  begin
    self.plSaboresSelecionados.Visible := true;
  end;

end;

procedure Tlunidadesent.listaDblClick(Sender: TObject);
begin
  self.bconfirma.Click;
end;

procedure Tlunidadesent.listaKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    self.bconfirma.Click;
  end;
end;

procedure Tlunidadesent.btlUnidadeClick(Sender: TObject);
var
  i: Integer;
  vlPunCodigo: string;
begin

  AjustaSabores;

  if (Sender is TBitBtn) then
    vlPunCodigo := (Sender as TBitBtn).name;
  if (Sender is TPanel) then
    vlPunCodigo := (Sender as TPanel).name;
  vlPunCodigo := copy(vlPunCodigo, 10, 10);

  SelecionaTamanho(vlPunCodigo);

end;

procedure Tlunidadesent.SelecionaTamanho(vPunCodigo: string);
begin

  if Dqpro.DataSet.Locate('puncodigo', vPunCodigo, []) then
  begin
    vpPunCodigo := vPunCodigo;
    AjustaBotaoUnidades;
  end
  else
    plValorTamanho.Caption := 'R$ ' + formatfloat('##,##0.00', 0.00);
end;

procedure Tlunidadesent.btTamanhoClick(Sender: TObject);
begin
  if btTamanho.Caption = 'Selecione o Tamanho' then
  begin
    btAbreSabor.Click;
  end
  else
  begin
    btTamanho.Caption := 'Selecione o Tamanho';
    plValorTamanho.Caption := 'R$ ' + formatfloat('##,##0.00', 0.00);

    btAbreSabor.Click;
  end;
end;

procedure Tlunidadesent.btAbreSaborClick(Sender: TObject);
begin

  if plUnidades.Visible then
  begin
    self.AjustaTitSaboresSel;
    plUnidades.Visible := false;
    plSaboresSelecionados.Visible := true;
  end
  else
  begin
    plUnidades.Visible := true;
    vpQtdMaxSabores := 0;
    vpQtdSaboresSel := 0;
    self.AjustaTitSaboresSel;
    plSaboresSelecionados.Visible := false;
  end;

end;

procedure Tlunidadesent.CriaListaSabores2;
var
  i, g, l, la, c, u, v: Integer;
  vlLInha: string;
  sw: TStopwatch;

begin

  FprinciEnt.sabores.Close;

  FprinciEnt.sabores.ParamByName('grpcodigo').AsString := FprinciEnt.qprogrpcodigo.AsString;
  FprinciEnt.sabores.open;

  try
    LockWindowUpdate(self.Handle);

    Dsbr.DataSet.First;

    { while not Dsbr.DataSet.Eof do
      begin
      FprinciEnt.sabores.Append;
      FprinciEnt.saboressbridentificacao.AsString := Dsbr.DataSet.FieldByName('sbridentificacao').AsString;
      FprinciEnt.saboressbrcodigo.AsString := Dsbr.DataSet.FieldByName('sbrcodigo').AsString;
      FprinciEnt.saboresprocodigo.AsString := Dsbr.DataSet.FieldByName('procodigo').AsString;

      FprinciEnt.ingredientes.Close;
      FprinciEnt.ingredientes.SQL.Text := 'select isa.sbrcodigo, isa.procodigo, pro.pronome from isa,pro WHERE ';
      FprinciEnt.ingredientes.SQL.Add(' isa.senadicionavel=0 and isa.procodigo=pro.procodigo and sbrcodigo=' + Dsbr.DataSet.FieldByName('sbrcodigo').AsString);
      FprinciEnt.ingredientes.open;
      vlLInha := '';

      FprinciEnt.ingredientes.First;
      while not FprinciEnt.ingredientes.Eof do
      begin
      vlLInha := vlLInha + UpperNome(FprinciEnt.ingredientes.FieldByName('pronome').AsString) + ', ';
      FprinciEnt.ingredientes.Next;
      end;
      vlLInha := copy(vlLInha, 1, length(vlLInha) - 2);

      FprinciEnt.saboresisaingredientes.AsString := vlLInha;

      FprinciEnt.sabores.Post;

      Dsbr.DataSet.Next;
      end; }

  finally
    LockWindowUpdate(0);
  end;

end;

procedure Tlunidadesent.CriaListaSabores;
var
  i, g, l, la, c, u, v: Integer;
  btTitSabor: TPanel;
  btSabor: TPanel;
  plIngre: TPanel;
  qIsa: TUniQuery;

  plLinha: TPanel;

  mmIngre: TMemo;
  vlLInha: string;
  sw: TStopwatch;

begin

  try
    LockWindowUpdate(self.Handle);

    for i := 0 to plListaSabores.ComponentCount - 1 do
    begin
      try
        plListaSabores.Components[i].Destroy;
      except
      end;
    end;

    Dsbr.DataSet.First;

    while not Dsbr.DataSet.Eof do
    begin
      if plListaSabores.FindComponent('btSabor' + Dsbr.DataSet.FieldByName('sbrcodigo').AsString) = nil then
      begin

        btSabor := TPanel.Create(plListaSabores);
        btSabor.Parent := plListaSabores;
        btSabor.Height := 55;
        btSabor.name := 'btSabor' + Dsbr.DataSet.FieldByName('sbrcodigo').AsString;
        btSabor.Caption := Dsbr.DataSet.FieldByName('sbridentificacao').AsString;
        btSabor.Align := alBottom;
        btSabor.Font.Color := btSabor.Color;
        btSabor.Color := clInfoBk;
        btSabor.ParentColor := false;
        btSabor.ParentBackground := false;
        btSabor.BorderWidth := 2;
        btSabor.Align := alTop;
        btSabor.Hint := Dsbr.DataSet.FieldByName('sbridentificacao').AsString;
        btSabor.OnClick := btSaborclick;

        btTitSabor := TPanel.Create(btSabor);
        btTitSabor.Parent := btSabor;
        btTitSabor.Align := alTop;
        btTitSabor.Height := 30;
        btTitSabor.Font.name := 'Tahoma';
        btTitSabor.ParentFont := false;
        btTitSabor.ParentBackground := false;
        btTitSabor.Font.Size := 16;
        btTitSabor.Font.Style := [fsBold];
        btTitSabor.Font.Color := clBlack;
        // btTitSabor.BevelOuter := bvNone;
        btTitSabor.Alignment := taLeftJustify;
        btTitSabor.name := 'btTiSab' + Dsbr.DataSet.FieldByName('sbrcodigo').AsString;
        btTitSabor.Caption := Dsbr.DataSet.FieldByName('sbridentificacao').AsString;
        btTitSabor.Hint := Dsbr.DataSet.FieldByName('sbridentificacao').AsString;
        btTitSabor.ParentColor := false;
        btTitSabor.ParentBackground := false;
        btTitSabor.Color := clYellow;
        btTitSabor.OnClick := btSaborclick;

        qIsa := TUniQuery.Create(btSabor);
        qIsa.name := 'qIsa' + btSabor.name;
        qIsa.Connection := zcone;
        qIsa.SQL.Text := 'select isa.sbrcodigo, isa.procodigo, pro.pronome from isa,pro WHERE ';
        qIsa.SQL.Add(' isa.senadicionavel=0 and isa.procodigo=pro.procodigo and sbrcodigo=' + Dsbr.DataSet.FieldByName('sbrcodigo').AsString);
        qIsa.open;

        mmIngre := TMemo.Create(btSabor);
        mmIngre.Parent := btSabor;
        mmIngre.name := 'mmIngre' + Dsbr.DataSet.FieldByName('sbrcodigo').AsString;
        // mmIngre.OnClick := btSaborclick;
        mmIngre.ReadOnly := true;

        qIsa.First;
        while not qIsa.Eof do
        begin
          vlLInha := vlLInha + UpperNome(qIsa.FieldByName('pronome').AsString) + ', ';
          qIsa.Next;
        end;
        vlLInha := copy(vlLInha, 1, length(vlLInha) - 2);

        mmIngre.Lines.Text := vlLInha;

        v := length(trim(vlLInha));

        if v <= 60 then
        begin
          v := 1;
        end
        else if (v >= 61) and (v < 120) then
        begin
          v := 2;
        end
        else if (v >= 121) and (v < 180) then
        begin
          v := 3;
        end
        else if (v >= 181) and (v < 240) then
        begin
          v := 4;
        end
        else
          v := 5;

        mmIngre.Height := v * 25;
        mmIngre.Font.name := 'Tahoma';
        mmIngre.ParentFont := false;
        mmIngre.Font.Size := 10;
        mmIngre.Font.Style := [];
        mmIngre.Align := alBottom;
        mmIngre.Hint := Dsbr.DataSet.FieldByName('sbridentificacao').AsString;
        mmIngre.Font.Color := clgray;
        mmIngre.BorderStyle := bsNone;
        mmIngre.BevelInner := bvNone;
        mmIngre.BevelOuter := bvNone;
        mmIngre.WordWrap := true;
        mmIngre.ReadOnly := true;

        u := 0;
        for i := 0 to btSabor.ComponentCount - 1 do
        begin
          if btSabor.Components[i] is TPanel then
            u := u + (btSabor.Components[i] as TPanel).Height;

          if btSabor.Components[i] is TMemo then
            u := u + (btSabor.Components[i] as TMemo).Height;

        end;
        btSabor.Height := u + 5;
        vlLInha := '';
        btSabor.Align := alBottom;
        btSabor.Align := alTop;

      end;
      Dsbr.DataSet.Next;
    end;

  finally
    LockWindowUpdate(0);
  end;

end;

procedure Tlunidadesent.btlLetraClick(Sender: TObject);
var
  i, g, l, la, c, u, v: Integer;
  btTitSabor: TPanel;
  btSabor: TPanel;
  plIngre: TPanel;
  qIsa: TUniQuery;

  plLinha: TPanel;

  mmIngre: TMemo;
  vlLInha: string;
  sw: TStopwatch;

begin

  FprinciEnt.sabores.FilterSQL := 'sbridentificacao LIKE ' + QuotedStr('' + UPPERCASE(copy((Sender as TPanel).Caption, 1, 1)) + '%');
  FprinciEnt.sabores.Filtered := true;

  { for i := 0 to plListaSabores.ComponentCount - 1 do
    begin
    if copy((plListaSabores.Components[i] as TPanel).Caption, 1, 1) = copy((Sender as TPanel).Caption, 1, 1) then
    begin
    (plListaSabores.Components[i] as TPanel).Visible := true;
    end
    else
    begin
    (plListaSabores.Components[i] as TPanel).Visible := false;
    end;

    end; }

end;

procedure Tlunidadesent.SelecionaSabor(vSbrCodigo: Integer; vlNomeTit: string; vTipo: Integer = 0);
var
  vlNomePnl: string;
  vlSbrCodigo: string;
  i, x: Integer;
  qSbi: TUniQuery;
  qSbr: TUniQuery;
  vNome: string;

begin
  try

    vlSbrCodigo := vSbrCodigo.ToString;

    vNome := 'btTiSab' + vlSbrCodigo;

    qSbr := TUniQuery.Create(self);
    qSbr.name := 'qSbr' + vlSbrCodigo;
    qSbr.Connection := zcone;
    qSbr.Close;
    qSbr.SQL.Text := 'select grpcodigo from sbr where sbrcodigo=' + vlSbrCodigo;
    qSbr.open;

    qSbi := TUniQuery.Create(self);
    qSbi.name := 'qSbi' + vlSbrCodigo;
    qSbi.Connection := zcone;
    qSbi.Close;

    qSbi.SQL.Text := 'SELECT sbi.sbichave FROM sbi ';
    qSbi.SQL.Add('INNER JOIN ito ON sbi.itochave = ito.itochave ');
    qSbi.SQL.Add('INNER JOIN sbr ON sbi.sbrcodigo = sbi.sbrcodigo ');
    qSbi.SQL.Add('where ito.orcchave=' + vpOrcChave + ' and ito.itochave=' + vpItoChave + ' and ');
    qSbi.SQL.Add('sbi.sbrcodigo=' + vlSbrCodigo + ' ');
    qSbi.SQL.Add('group by sbi.sbrcodigo, sbi.sbiitem ');
    qSbi.SQL.Add('order by sbi.sbrcodigo, sbi.sbiitem ');

    qSbi.open;

    if qSbi.IsEmpty then
    begin
      i := 1;
    end
    else
    begin
      if qSbr.FieldByName('grpcodigo').AsString = '' then
        i := 1
      else
        i := qSbi.RecordCount + 1;
    end;

    for x := 1 to i do
    begin

      qSbi.SQL.Text := 'SELECT sbi.sbichave FROM sbi ';
      qSbi.SQL.Add('INNER JOIN ito ON sbi.itochave = ito.itochave ');
      qSbi.SQL.Add('where ito.orcchave=' + vpOrcChave + ' and ito.itochave=' + vpItoChave + ' and ');
      qSbi.SQL.Add('sbi.sbrcodigo=' + vlSbrCodigo + ' and ');
      qSbi.SQL.Add('sbi.sbiitem=' + inttostr(x) + ' ');
      qSbi.SQL.Add('group by sbi.sbrcodigo, sbi.sbiitem ');
      qSbi.SQL.Add('order by sbi.sbrcodigo, sbi.sbiitem ');

      qSbi.open;

      if qSbi.IsEmpty then
      begin
        Dsbi.DataSet.Append;
        Dsbi.DataSet.FieldByName('sbiitem').AsInteger := x;
        Dsbi.DataSet.FieldByName('sbrcodigo').AsString := vlSbrCodigo;
      end
      else
      begin
        Dsbi.DataSet.Edit;
      end;

      Dsbi.DataSet.FieldByName('itochave').AsString := vpItoChave;

      Dsbi.DataSet.Post;

      vlNomePnl := 'pnlSbr' + vNome + 'W' + formatfloat('00', x);
      vlNomeTit := vlNomeTit;

      AdicionaSabor(vlSbrCodigo, vlNomePnl, vlNomeTit, Dsbi.DataSet.FieldByName('sbichave').AsString,
        Dsbi.DataSet.FieldByName('sbiobs').AsString, vTipo);
      if edPesquisaSabor.Text <> '' then
        btLimpaPesquisa.Click;

    end;
  finally
    qSbr.Close;
    qSbi.Close;
    freeandnil(qSbi);
    freeandnil(qSbr);
  end;
end;

procedure Tlunidadesent.SelecionaSabor(vNome: string; vlNomeTit: string; vTipo: Integer = 0);
var
  vlNomePnl: string;
  vlSbrCodigo: string;
  i, x: Integer;
  qSbi: TUniQuery;
  qSbr: TUniQuery;

begin
  try

    vlSbrCodigo := vNome;

    vlSbrCodigo := copy(vlSbrCodigo, 8, 10);

    qSbr := TUniQuery.Create(self);
    qSbr.name := 'qSbr' + vlSbrCodigo;
    qSbr.Connection := zcone;
    qSbr.Close;
    qSbr.SQL.Text := 'select grpcodigo from sbr where sbrcodigo=' + vlSbrCodigo;
    qSbr.open;

    qSbi := TUniQuery.Create(self);
    qSbi.name := 'qSbi' + vlSbrCodigo;
    qSbi.Connection := zcone;
    qSbi.Close;

    qSbi.SQL.Text := 'SELECT sbi.sbichave FROM sbi ';
    qSbi.SQL.Add('INNER JOIN ito ON sbi.itochave = ito.itochave ');
    qSbi.SQL.Add('INNER JOIN sbr ON sbi.sbrcodigo = sbi.sbrcodigo ');
    qSbi.SQL.Add('where ito.orcchave=' + vpOrcChave + ' and ito.itochave=' + vpItoChave + ' and ');
    qSbi.SQL.Add('sbi.sbrcodigo=' + vlSbrCodigo + ' ');
    qSbi.SQL.Add('group by sbi.sbrcodigo, sbi.sbiitem ');
    qSbi.SQL.Add('order by sbi.sbrcodigo, sbi.sbiitem ');

    qSbi.open;

    if qSbi.IsEmpty then
    begin
      i := 1;
    end
    else
    begin
      if qSbr.FieldByName('grpcodigo').AsString = '' then
        i := 1
      else
        i := qSbi.RecordCount + 1;
    end;

    for x := 1 to i do
    begin

      qSbi.SQL.Text := 'SELECT sbi.sbichave FROM sbi ';
      qSbi.SQL.Add('INNER JOIN ito ON sbi.itochave = ito.itochave ');
      qSbi.SQL.Add('where ito.orcchave=' + vpOrcChave + ' and ito.itochave=' + vpItoChave + ' and ');
      qSbi.SQL.Add('sbi.sbrcodigo=' + vlSbrCodigo + ' and ');
      qSbi.SQL.Add('sbi.sbiitem=' + inttostr(x) + ' ');
      qSbi.SQL.Add('group by sbi.sbrcodigo, sbi.sbiitem ');
      qSbi.SQL.Add('order by sbi.sbrcodigo, sbi.sbiitem ');

      qSbi.open;

      if qSbi.IsEmpty then
      begin
        Dsbi.DataSet.Append;
        Dsbi.DataSet.FieldByName('sbiitem').AsInteger := x;
        Dsbi.DataSet.FieldByName('sbrcodigo').AsString := vlSbrCodigo;
      end
      else
      begin
        Dsbi.DataSet.Edit;
      end;

      Dsbi.DataSet.FieldByName('itochave').AsString := vpItoChave;

      Dsbi.DataSet.Post;

      vlNomePnl := 'pnlSbr' + vNome + 'W' + formatfloat('00', x);
      vlNomeTit := vlNomeTit;

      AdicionaSabor(vlSbrCodigo, vlNomePnl, vlNomeTit, Dsbi.DataSet.FieldByName('sbichave').AsString,
        Dsbi.DataSet.FieldByName('sbiobs').AsString, vTipo);
      if edPesquisaSabor.Text <> '' then
      begin
        btLimpaPesquisa.Click;
      end;

      AtualizaValordaUnidade;

    end;
  finally
    qSbr.Close;
    qSbi.Close;
    freeandnil(qSbi);
    freeandnil(qSbr);
  end;
end;

procedure Tlunidadesent.btSaborclick(Sender: TObject);
var
  vlNomeTit: string;
  vNome: string;

begin

  if Sender is TPanel then
  begin
    vNome := (Sender as TPanel).name;
    vlNomeTit := (Sender as TPanel).Hint;
  end;

  if Sender is TMemo then
  begin
    vNome := (Sender as TMemo).name;
    vlNomeTit := (Sender as TMemo).Hint;

  end;
  if (vpQtdSaboresSel <> 0) or (vpQtdMaxSabores <> 0) then
  begin
    if vpQtdSaboresSel = vpQtdMaxSabores then
    begin
      showmessage('Não é possível incluir mais sabores');
    end
    else
    begin
      SelecionaSabor(vNome, vlNomeTit);

    end;

  end;

end;

procedure Tlunidadesent.btIncluiIngreClick(Sender: TObject);
var
  plSabor: TPanel;
  plIngredientes: TPanel;

  vlNomeplSbr: string;
  vlSbrCodigo: string;
  vlNomeplIng: string;
  vlNomeIng: string;
  vlGrpCodigo: string;

  vlProCodigo: string;
  vlIngCodigo: string;
  qIng: TUniQuery;
  qIto: TUniQuery;
  i: Integer;

begin

  plSabor := ((((Sender as TBitBtn).Parent as TPanel).Parent as TPanel).Parent as TPanel);
  vlNomeplSbr := plSabor.name;
  vlSbrCodigo := copy(vlNomeplSbr, 14, 10);

  plIngredientes := (((plSabor.Parent) as TPanel).FindComponent('plIngreSab' + vlNomeplSbr) as TPanel);

  vlNomeplIng := plIngredientes.name;

  if pos('W', vlSbrCodigo) > 0 then
    vlSbrCodigo := copy(vlSbrCodigo, 1, pos('W', vlSbrCodigo) - 1);

  consulta.Close;
  consulta.SQL.Text := 'select grpcodigo,procodigo from sbr where sbrcodigo=' + vlSbrCodigo;
  consulta.open;
  if consulta.FieldByName('grpcodigo').AsString <> '' then
  begin
    vlGrpCodigo := consulta.FieldByName('grpcodigo').AsString;

    vlProCodigo := MostraLista('miga', 'pro.grpcodigo=' + vlGrpCodigo, '');

  end
  else
  begin
    consulta.Close;
    consulta.SQL.Text := 'select grpcodigo,procodigo from sbr where sbrcodigo=' + vlSbrCodigo;
    consulta.open;

    vlProCodigo := consulta.FieldByName('procodigo').AsString;
    consulta.Close;
    consulta.SQL.Text := 'select grpcodigo,procodigo from pro where procodigo=' + vlProCodigo;
    consulta.open;

    vlGrpCodigo := consulta.FieldByName('grpcodigo').AsString;

    vlProCodigo := MostraLista('miga', 'pro.grpcodigo=' + vlGrpCodigo, '');

  end;

  if vlProCodigo = '' then
    exit;

  qIng := TUniQuery.Create(self);
  qIng.Connection := zcone;
  qIng.SQL.Text := 'select procodigo, pronome from pro where procodigo=' + vlProCodigo;
  qIng.open;

  if not qIng.IsEmpty then
  begin
    if plIngredientes <> nil then
    begin
      AdicionaIngrediente(plSabor, plIngredientes, vlProCodigo, qIng.FieldByName('pronome').AsString);

    end;
  end;

  AtualizaValordaUnidade;

end;

procedure Tlunidadesent.btLimpaPesquisaClick(Sender: TObject);
begin
  edPesquisaSabor.Text := '';
  if plSabores.Visible then
    edPesquisaSabor.SetFocus;

  MostraTodosSabres;
end;

procedure Tlunidadesent.AdicionaIngrediente(vSabSel, vIngreSab: TPanel; vProCodigo, vProNome: string);
var
  plIngre: TPanel;
  plNivelIngre: TPanel;
  btMenosIngre: TBitBtn;
  btMaisIngre: TBitBtn;
  btExclIngre: TBitBtn;
  vlSbrCodigo: String;
  vlAltSabor: Integer;
  vParente: TPanel;
begin
  if vSabSel.FindComponent(vIngreSab.name + '_' + vProCodigo) <> nil then
  begin
    (vSabSel.FindComponent(vIngreSab.name + '_' + vProCodigo) as TPanel).Destroy;
  end;

  vlSbrCodigo := '';
  vlSbrCodigo := copy(vSabSel.name, 14, 20);
  plIngre := TPanel.Create(vSabSel);
  plIngre.Parent := vIngreSab;
  plIngre.name := vIngreSab.name + '_' + vProCodigo;
  plIngre.Caption := '                                               ' + vProNome;
  plIngre.Align := alBottom;
  plIngre.Align := alTop;
  plIngre.Hint := vIngreSab.name;
  plIngre.Height := 20;
  plIngre.BevelOuter := bvNone;
  plIngre.Alignment := taLeftJustify;
  plIngre.BorderWidth := 1;
  plIngre.ParentBackground := false;
  plIngre.ParentFont := false;
  plIngre.Font.Size := 8;
  plIngre.Font.Color := clNavy;

  plNivelIngre := TPanel.Create(vSabSel);
  plNivelIngre.Parent := plIngre;
  plNivelIngre.name := 'plNivel' + plIngre.name;
  plNivelIngre.Caption := '1';
  plNivelIngre.Tag := 0;
  plNivelIngre.Width := 140;
  plNivelIngre.Align := alLeft;
  plNivelIngre.ParentBackground := false;
  plNivelIngre.ParentFont := false;
  plNivelIngre.Font.Size := 8;

  btMenosIngre := TBitBtn.Create(plNivelIngre);
  btMenosIngre.Parent := plNivelIngre;
  btMenosIngre.name := 'btMenosIngre' + plIngre.name;
  btMenosIngre.Caption := '-';
  btMenosIngre.Align := alLeft;
  btMenosIngre.Width := btMenosIngre.Height;
  btMenosIngre.ParentFont := false;
  btMenosIngre.Font.Size := 12;
  btMenosIngre.OnClick := btMenosIngreClick;

  btExclIngre := TBitBtn.Create(plNivelIngre);
  btExclIngre.Parent := plNivelIngre;
  btExclIngre.name := 'btExclIngre' + plIngre.name;
  btExclIngre.Caption := 'E';
  btExclIngre.Align := alRight;
  btExclIngre.Width := btMenosIngre.Height;
  btExclIngre.ParentFont := false;
  btExclIngre.Font.Size := 12;
  btExclIngre.Font.Color := clred;
  btExclIngre.Hint := 'Excluir';
  btExclIngre.OnClick := btExclQuantiClick;

  btMaisIngre := TBitBtn.Create(plNivelIngre);
  btMaisIngre.Parent := plNivelIngre;
  btMaisIngre.name := 'btMaisIngre' + plIngre.name;
  btMaisIngre.Caption := '+';
  btMaisIngre.Align := alRight;
  btMaisIngre.Width := btMaisIngre.Height;
  btMaisIngre.ParentFont := false;
  btMaisIngre.Font.Size := 12;
  btMaisIngre.OnClick := btMaisIngreClick;

  (vSabSel.Parent as TPanel).Height := (vSabSel.Parent as TPanel).Height + plIngre.Height;
  (vSabSel as TPanel).Height := (vSabSel as TPanel).Height + plIngre.Height;
  plNivelIngre.Tag := strtoint(CarregaNivelIngre(plNivelIngre, vlSbrCodigo, vProCodigo));
  AjustaTituloNivel(plNivelIngre);
  SalvarNivelIngrediente(plNivelIngre);

end;

procedure Tlunidadesent.AjustaTituloNivel(vPanel: TPanel);
var

  vlplNivel: TPanel;
  vlnomeNivel: string;
  vlplNivelIngre: TPanel;
  plNomePainel: string;
  plExcluirNomePainel: string;

  s: String;
  iValue, iCode: Integer;

begin

  vlplNivelIngre := vPanel;
  vlplNivel := ((vlplNivelIngre as TPanel).Parent as TPanel);
  vlnomeNivel := vlplNivel.name;

  s := vPanel.Caption;
  val(s, iValue, iCode);
  if iCode = 0 then
  begin
    plExcluirNomePainel := 'btMenosIngre' + vlnomeNivel;
  end
  else
  begin
    plExcluirNomePainel := '';
  end;

  if vlplNivelIngre.FindComponent(plExcluirNomePainel) <> nil then
  begin
    if vlplNivelIngre.Caption = '' then
    begin
      vlplNivelIngre.Caption := '1';
    end;

  end
  else
  begin

    if Dtsi.DataSet.Locate('tsicodigo', vPanel.Tag, []) then
    begin
      vPanel.Caption := Dtsi.DataSet.FieldByName('tsiidentificacao').AsString;

    end;
  end;
end;

procedure Tlunidadesent.btMaisIngreClick(Sender: TObject);
var
  plNivelIngre: TPanel;
  s: String;
  iValue, iCode: Integer;

begin
  plNivelIngre := ((Sender as TBitBtn).Parent as TPanel);

  s := plNivelIngre.Caption;
  val(s, iValue, iCode);

  if iCode = 0 then
  begin
    plNivelIngre.Caption := inttostr(strtoint(plNivelIngre.Caption) + 1);
    SalvarNivelIngrediente(plNivelIngre);

  end
  else
  begin

    plNivelIngre.Tag := plNivelIngre.Tag + 1;

    Dtsi.DataSet.last;

    if plNivelIngre.Tag >= Dtsi.DataSet.FieldByName('tsicodigo').AsInteger then
      plNivelIngre.Tag := Dtsi.DataSet.FieldByName('tsicodigo').AsInteger;

    AjustaTituloNivel(plNivelIngre);
    SalvarNivelIngrediente(plNivelIngre);
  end;

  AtualizaValordaUnidade;

end;

procedure Tlunidadesent.btExclQuantiClick(Sender: TObject);
var
  plNivelIngre: TPanel;

begin
  if Dito.DataSet.State <> dsedit then
    Dito.DataSet.Edit;

  // itoquantidade.Field.AsInteger := 0;
  Dito.DataSet.Post;

  plNivelIngre := ((Sender as TBitBtn).Parent as TPanel);
  plNivelIngre.Tag := -1;

  AjustaTituloNivel(plNivelIngre);
  SalvarNivelIngrediente(plNivelIngre, true);

  plNivelIngre.Visible := false;
  (plNivelIngre.Parent as TPanel).Visible := false;

  AtualizaValordaUnidade;

end;

procedure Tlunidadesent.btMaisQuantiClick(Sender: TObject);
begin
  if Dito.DataSet.State <> dsedit then
    Dito.DataSet.Edit;

  itoquantidade.Field.AsInteger := itoquantidade.Field.AsInteger + 1;
  Dito.DataSet.Post;

  FprinciEnt.vpQuantidade := itoquantidade.Field.AsFloat;
end;

procedure Tlunidadesent.btMenosIngreClick(Sender: TObject);
var
  vlplNivel: TPanel;
  vlnomeNivel: string;
  vlplNivelIngre: TPanel;
  plNomePainel: string;
  plExcluirNomePainel: string;
  s: String;
  iValue, iCode: Integer;

begin

  vlplNivelIngre := ((Sender as TBitBtn).Parent as TPanel);
  vlplNivel := ((vlplNivelIngre as TPanel).Parent as TPanel);
  vlnomeNivel := vlplNivel.name;

  plExcluirNomePainel := 'btMenosIngre' + vlnomeNivel;

  s := vlplNivelIngre.Caption;
  val(s, iValue, iCode);
  if iCode = 0 then
  begin
    if strtoint(vlplNivelIngre.Caption) > 1 then
    begin

      vlplNivelIngre.Caption := inttostr(strtoint(vlplNivelIngre.Caption) - 1);
      SalvarNivelIngrediente(vlplNivelIngre);
    end;
  end
  else
  begin

    vlplNivelIngre.Tag := vlplNivelIngre.Tag - 1;

    Dtsi.DataSet.First;

    if vlplNivelIngre.Tag <= Dtsi.DataSet.FieldByName('tsicodigo').AsInteger then
      vlplNivelIngre.Tag := Dtsi.DataSet.FieldByName('tsicodigo').AsInteger;

    AjustaTituloNivel(vlplNivelIngre);
    SalvarNivelIngrediente(vlplNivelIngre);
  end;

  AtualizaValordaUnidade;

end;

procedure Tlunidadesent.btMenosQuantiClick(Sender: TObject);
begin

  if Dito.DataSet.State <> dsedit then
    Dito.DataSet.Edit;

  if itoquantidade.Field.AsInteger >= 2 then
    itoquantidade.Field.AsInteger := itoquantidade.Field.AsInteger - 1;
  Dito.DataSet.Post;
  FprinciEnt.vpQuantidade := itoquantidade.Field.AsInteger;

end;

procedure Tlunidadesent.AjustaAltSaboresSel;
var
  i: Integer;
  vlAlt: Integer;
  v: string;
begin
  vlAlt := 0;
  plSaboresSelecionados.Height := (vpQtdSaboresSel * 35);

  for i := 0 to plSaboresSelecionados.ComponentCount - 1 do
  begin
    v := plSaboresSelecionados.Components[i].name;
    if pos('pnlSbr', plSaboresSelecionados.Components[i].name) > 0 then
    begin
      if (plSaboresSelecionados.Components[i] is TPanel) then
        if (plSaboresSelecionados.Components[i] as TPanel).Tag = 10 then
          vlAlt := vlAlt + (plSaboresSelecionados.Components[i] as TPanel).Height;
    end;
  end;
  { if vlAlt = 35 then
    vlAlt := 150; }

  plSaboresSelecionados.Height := vlAlt;

end;

procedure Tlunidadesent.AjustaTitSaboresSel;
var
  vlQtdSbrs: Integer;
  i: Integer;
begin
  if vpTipoLista <> 'Ingredientes' then
  begin
    if btTamanho.Caption = 'Selecione o Tamanho' then
      exit;

  end;
  vlQtdSbrs := 0;
  for i := 0 to plSaboresSelecionados.ComponentCount - 1 do
  begin
    if plSaboresSelecionados.Components[i].Tag = 10 then
      vlQtdSbrs := vlQtdSbrs + 1;
  end;

  plTitSelecionados.Caption := 'Selecionados ' + inttostr(vlQtdSbrs) + ' de ' + Dqpro.DataSet.FieldByName('sfnquantidade').AsString;
  vpQtdMaxSabores := Dqpro.DataSet.FieldByName('sfnquantidade').AsInteger;
  vpQtdSaboresSel := vlQtdSbrs;

  AjustaAltSaboresSel;
  if (vpQtdSaboresSel <> 0) or (vpQtdMaxSabores <> 0) then
  begin
    if vpQtdSaboresSel = vpQtdMaxSabores then
    begin

    end
    else
    begin

      if vpQtdMaxSabores = 0 then
      begin
        plSabores.Visible := false;
        self.Width := 570;

      end
      else
      begin

        plSabores.Visible := true;
        self.Width := 1120;
      end;

    end;
  end;

end;

procedure Tlunidadesent.MostraIngredientes(vPainel: TPanel);
begin

  if vPainel.Parent.Height = 35 then
  begin
    AjustaAlturaIngredientes(vPainel);
  end
  else
  begin
    vPainel.Parent.Height := 35;
  end;
  vPainel.Tag := 10;
  AjustaTitSaboresSel;
  AjustaAltSaboresSel;
end;

procedure Tlunidadesent.btMostraIngredientesClick(Sender: TObject);
var
  plBtSab: TPanel;
begin
  if (Sender as TBitBtn).Caption = 'Ver Ingredientes' then
    (Sender as TBitBtn).Caption := 'Ocultar Ingredientes'
  else
    (Sender as TBitBtn).Caption := 'Ver Ingredientes';

  plBtSab := ((Sender as TBitBtn).Parent as TPanel);

  MostraIngredientes(plBtSab);
end;

procedure Tlunidadesent.removerpainel(vPainel: TPanel);
var
  i: Integer;
begin

  vPainel.Parent.Visible := false;

  for i := 0 to vPainel.ComponentCount - 1 do
  begin
    vPainel.Components[i].Tag := 0;
    (vPainel.Components[i] as TPanel).Parent.Tag := 0;
  end;
  vPainel.Parent.Tag := 0;

  (vPainel.Parent as TPanel).free;

end;

procedure Tlunidadesent.btRemovSbrClick(Sender: TObject);
var
  plBtSab: TPanel;
  edObs: TEdit;
  plNome: string;
  plNivelNome: string;
  plObsNome: string;
  vlSbrCodigo: string;
  i: Integer;
begin
  plBtSab := ((Sender as TBitBtn).Parent as TPanel);
  plNome := plBtSab.name;
  vlSbrCodigo := copy(plNome, 14, 10);

  if pos('W', vlSbrCodigo) > 0 then
    vlSbrCodigo := copy(vlSbrCodigo, 1, pos('W', vlSbrCodigo) - 1)
  else
    vlSbrCodigo := vlSbrCodigo;

  if Dsbi.DataSet.Locate('sbrcodigo', vlSbrCodigo, []) then
  begin

    consulta.Close;
    consulta.SQL.Text := 'delete from isi where sbichave=' + Dsbi.DataSet.FieldByName('sbichave').AsString;
    consulta.ExecSQL;

    Dsbi.DataSet.Delete;
  end;
  i := 1;
  {

    for i := 0 to (plSaboresSelecionados.FindComponent(plNome) as TPanel).ComponentCount - 1 do
    begin
    if ((plSaboresSelecionados.FindComponent(plNome) as TPanel).Components[i] is TPanel) then
    plNivelNome := ((plSaboresSelecionados.FindComponent(plNome) as TPanel).Components[i] as TPanel).name;

    if pos('plNivel', plNivelNome) > 0 then
    begin
    ((plSaboresSelecionados.FindComponent(plNome) as TPanel).Components[i] as TPanel).Tag := 3;
    AjustaTituloNivel(((plSaboresSelecionados.FindComponent(plNome) as TPanel).Components[i] as TPanel));
    end;

    if pos('plObsSabor', plNivelNome) > 0 then
    begin
    edObs := TEdit(((plSaboresSelecionados.FindComponent(plNome) as TPanel).Components[i] as TPanel).FindComponent('edObsIngre' + plNivelNome));
    if edObs <> nil then
    edObs.Text := '';

    end;

    end;


  }

  for i := 0 to (plSaboresSelecionados.FindComponent(plNome) as TPanel).ComponentCount - 1 do
  begin
    try
      if ((plSaboresSelecionados.FindComponent(plNome) as TPanel).Components[i] is TPanel) then
        plNivelNome := ((plSaboresSelecionados.FindComponent(plNome) as TPanel).Components[i] as TPanel).name;

      if pos('plIngreSabpnlSbrbtT', plNivelNome) > 0 then
      begin

        ((plSaboresSelecionados.FindComponent(plNome) as TPanel).Components[i] as TPanel).Destroy;

      end;

      if pos('plObsSabor', plNivelNome) > 0 then
      begin

        ((plSaboresSelecionados.FindComponent(plNome) as TPanel).Components[i] as TPanel).Destroy;

      end;

    except

    end;
  end;

  removerpainel(plBtSab);
  AjustaAltSaboresSel;
  AjustaTitSaboresSel;
  AtualizaValordaUnidade;
end;

procedure Tlunidadesent.AjustaSabores;
var
  i: Integer;
begin
  for i := 0 to plSaboresSelecionados.ComponentCount - 1 do
  begin
    plSaboresSelecionados.Components[0].Destroy;
    if plSaboresSelecionados.ComponentCount = 0 then
      break;
  end;

  if self.Dsbr.DataSet <> nil then
  begin
    AjustaBotoesLetras;
  end;

  if psituacao.Caption = 'Alterando' then
  begin
    SelecionaTamanho(vpPunCodigo);

  end;

end;

procedure Tlunidadesent.AjustaBotaoUnidades;

begin

  if Dqpro.DataSet.Locate('puncodigo', vpPunCodigo, []) then
  begin

    AtualizaValordaUnidade;

    plSaboresSelecionados.Visible := true;

    plUnidades.Visible := false;

    carregasabores;
    AjustaAltSaboresSel;
  end;
end;

procedure Tlunidadesent.AtualizaValordaUnidade;
var
  vladicional: double;
  vlQtSbi: Integer;
  vlTotal: Currency;
  vlValorSabor: Currency;

begin
  vladicional := 0;
  if FprinciEnt.lito.Active then
  begin
    if vpItoChave <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text :=
        'SELECT  sum(isiquantidade*punprecoav) adicional FROM isi,pun WHERE pun.unicodigo=1 and  pun.procodigo=isi.procodigo AND isitipo=1 AND isi.itochave='
        + vpItoChave;
      consulta.open;
      vladicional := consulta.FieldByName('adicional').AsCurrency;
      consulta.Close;
    end;
  end;
  btTamanho.Caption := Dqpro.DataSet.FieldByName('uninome').AsString;
  vlQtSbi := sbi.DataSet.RecordCount;

  vlTotal := 0;
  vlValorSabor := 0;
  if vlQtSbi > 0 then
  begin
    sbi.DataSet.First;
    while not sbi.DataSet.Eof do
    begin
      if (Dqpro.DataSet.FieldByName('puncodigo').AsString <> '') and (sbi.DataSet.FieldByName('sbrcodigo').AsString <> '') then
      begin
        consulta.Close;
        consulta.SQL.Text := 'select spupreco from spu where sbrcodigo=' + sbi.DataSet.FieldByName('sbrcodigo').AsString + ' and puncodigo=' +
          Dqpro.DataSet.FieldByName('puncodigo').AsString + ' and spuadicional=0 and  spu.procodigo=' +
          Dqpro.DataSet.FieldByName('procodigo').AsString;
        consulta.open;

        if not consulta.IsEmpty then
        begin

          vlValorSabor := consulta.FieldByName('spupreco').AsFloat / vlQtSbi;

        end
        else
        begin
          vlValorSabor := Dqpro.DataSet.FieldByName('punprecoav').AsFloat / vlQtSbi;
        end;
      end
      else
      begin

      end;

      sbi.DataSet.Next;

      vlTotal := vlTotal + vlValorSabor;
    end;

  end;

  // plValorTamanho.Caption := 'R$ ' + formatfloat('##,##0.00', Dqpro.DataSet.FieldByName('punprecoav').AsFloat + vladicional);
  plValorTamanho.Caption := 'R$ ' + formatfloat('##,##0.00', vlTotal + vladicional);

end;

procedure Tlunidadesent.SalvarNivelIngrediente(vPanel: TPanel; vExcluir: Boolean = false);
var
  vlSbrCodigo: string;
  vlProCodigo: string;
begin
  vlSbrCodigo := copy(vPanel.Parent.name, 24, 20);
  vlSbrCodigo := copy(vlSbrCodigo, 1, pos('_', vlSbrCodigo) - 1);

  if pos('W', vlSbrCodigo) > 0 then
    vlSbrCodigo := copy(vlSbrCodigo, 1, pos('W', vlSbrCodigo) - 1)
  else
    vlSbrCodigo := vlSbrCodigo;

  vlProCodigo := copy(vPanel.Parent.name, pos('_', vPanel.Parent.name) + 1, 10);
  if not vExcluir then
  begin

    if vPanel.Font.Color = clNavy then
      SalvaNivelIngre(vPanel, vlSbrCodigo, vlProCodigo, '1')
    else
      SalvaNivelIngre(vPanel, vlSbrCodigo, vlProCodigo);
  end
  else
  begin
    ExcluiNivelIngre(vPanel, vlSbrCodigo, vlProCodigo);
  end;
end;

function Tlunidadesent.CarregaNivelIngre(vPanel: TPanel; vSbrCodigo: string; vlProCodigo: string): string;
var
  vlIsaChave: string;
  vlSbiChave: string;
  qSbi: TUniQuery;
  qIsa: TUniQuery;
  qIsi: TUniQuery;
  qSbiItem: TUniQuery;

  vlSbrCodigo: String;
  vNome: string;
  vsbiitem: string;

begin
  vNome := vPanel.name;

  if pos('W', vNome) > 0 then
  begin
    vlSbrCodigo := copy(vNome, 31, pos('W', vNome) - 1);
    vlSbrCodigo := copy(vlSbrCodigo, 1, pos('W', vlSbrCodigo) - 1);
  end
  else
    vlSbrCodigo := vSbrCodigo;

  try
    result := '3';
    qIsa := TUniQuery.Create(vPanel);
    qIsa.name := 'qIsa' + vlSbrCodigo;
    qIsa.Connection := zcone;
    qIsa.Close;
    qIsa.SQL.Text := 'select isachave from isa WHERE procodigo=' + vlProCodigo + ' and ';
    qIsa.SQL.Add('sbrcodigo=' + vlSbrCodigo);
    qIsa.open;
    qIsa.First;

    vlIsaChave := qIsa.FieldByName('isachave').AsString;

    qSbi := TUniQuery.Create(vPanel);
    qSbi.name := 'qSbi' + vlSbrCodigo;
    qSbi.Connection := zcone;
    qSbi.Close;
    qSbi.SQL.Text := 'SELECT sbichave,itochave, sbrcodigo, sbiobs,sbiitem FROM sbi ';
    qSbi.SQL.Add('where itochave=' + vpItoChave + ' and ');

    if pos('W', vNome) > 0 then
    begin
      qSbi.SQL.Add('sbrcodigo=' + vlSbrCodigo);
      vsbiitem := copy(vNome, pos('W', vNome) + 1, 2);
      qSbi.SQL.Add(' and sbiitem=' + vsbiitem);
    end
    else
    begin
      qSbi.SQL.Add('sbrcodigo=' + vlSbrCodigo);
      qSbi.SQL.Add(' and sbiitem=' + inttostr(vPanel.ComponentCount - 1));
    end;
    qSbi.SQL.Add(' order by sbi.sbrcodigo, sbi.sbiitem');
    qSbi.open;

    if qSbi.IsEmpty then
      qSbi.Append
    else
      qSbi.Edit;
    qSbi.FieldByName('itochave').AsString := vpItoChave;

    if pos('W', vNome) > 0 then
    begin
      qSbi.FieldByName('sbrcodigo').AsString := vlSbrCodigo;
      vsbiitem := copy(vNome, pos('W', vNome) + 1, 2);
      qSbi.FieldByName('sbiitem').AsString := vsbiitem;

    end
    else
    begin
      qSbi.FieldByName('sbrcodigo').AsString := vlSbrCodigo;
      qSbi.FieldByName('sbiitem').AsString := '1';
    end;

    qSbi.Post;

    qSbiItem := TUniQuery.Create(vPanel);
    qSbiItem.name := 'qSbiItem' + vlSbrCodigo;
    qSbiItem.Connection := zcone;
    qSbiItem.Close;
    qSbiItem.SQL.Text := 'select count(sbichave) itens from sbi where itochave=' + vpItoChave;
    qSbiItem.open;

    vlSbiChave := qSbi.FieldByName('sbichave').AsString;

    qIsi := TUniQuery.Create(vPanel);
    qIsi.name := 'qIsi' + vlSbiChave;
    qIsi.Connection := zcone;
    qIsi.Close;
    qIsi.SQL.Text := 'SELECT isichave, sbichave, tsicodigo, procodigo, isitipo,itochave, isiitem, isiquantidade FROM isi where ';
    qIsi.SQL.Add('sbichave=' + vlSbiChave + ' and (procodigo=' + vlProCodigo + ')'); // or isitipo=1)') ;
    qIsi.open;
    if (vPanel.Tag <> 3) or (vPanel.Tag = 0) then
    begin
      if qIsi.IsEmpty then
      begin
        vPanel.Tag := 3;
        qIsi.Append;
        qIsi.FieldByName('isitipo').AsString := '0';
        qIsi.FieldByName('isiitem').AsInteger := qSbiItem.FieldByName('itens').AsInteger;

      end
      else
      begin
        vPanel.Tag := qIsi.FieldByName('tsicodigo').AsInteger;
        if qIsi.FieldByName('isitipo').AsInteger = 1 then
          vPanel.Caption := qIsi.FieldByName('isiquantidade').AsString;

        qIsi.Edit;
      end;
      qIsi.FieldByName('sbichave').AsString := vlSbiChave;
      qIsi.FieldByName('tsicodigo').AsInteger := vPanel.Tag;
      qIsi.FieldByName('procodigo').AsString := vlProCodigo;
      qIsi.FieldByName('isiquantidade').AsInteger := 1;
      qIsi.FieldByName('itochave').AsString := vpItoChave;
      qIsi.Post;
      result := qIsi.FieldByName('tsicodigo').AsString;
    end
    else
    begin
      if not qIsi.IsEmpty then
      begin
        qIsi.Delete;
        result := '3';
      end;

    end;

  finally
    qSbi.Close;
    qIsa.Close;
    qIsi.Close;
    qSbiItem.open;

    freeandnil(qSbi);
    freeandnil(qIsa);
    freeandnil(qIsi);
    freeandnil(qSbiItem);

  end;
end;

function Tlunidadesent.ExcluiNivelIngre(vPanel: TPanel; vSbrCodigo: string; vlProCodigo: string; vIsiTipo: string = '0'): string;
var
  vlIsaChave: string;
  vlSbiChave: string;
  qSbi: TUniQuery;
  qIsa: TUniQuery;
  qIsi: TUniQuery;
  vlSbrCodigo: string;
  vNome: string;
  vsbiitem: string;

begin
  vNome := vPanel.name;

  try
    if pos('W', vNome) > 0 then
    begin
      // vlProCodigo:=copy(vNome, pos('_', vNome) - 1,10);
      vlSbrCodigo := copy(vNome, 31, pos('W', vNome) - 1);
      vlSbrCodigo := copy(vlSbrCodigo, 1, pos('W', vlSbrCodigo) - 1);
    end
    else
      vlSbrCodigo := vSbrCodigo;

    result := '3';
    qIsa := TUniQuery.Create(vPanel);
    qIsa.name := 'qIsa' + vlSbrCodigo;
    qIsa.Connection := zcone;
    qIsa.Close;
    qIsa.SQL.Text := 'select isachave from isa WHERE procodigo=' + vlProCodigo + ' and ';
    qIsa.SQL.Add('sbrcodigo=' + vlSbrCodigo);
    qIsa.open;
    vlIsaChave := qIsa.FieldByName('isachave').AsString;
    qSbi := TUniQuery.Create(vPanel);
    qSbi.name := 'qSbi' + vlSbrCodigo;
    qSbi.Connection := zcone;
    qSbi.Close;
    qSbi.SQL.Text := 'SELECT sbichave,itochave, sbrcodigo, sbiobs, sbiitem FROM sbi ';
    qSbi.SQL.Add('where itochave=' + vpItoChave + ' and ');

    if pos('W', vNome) > 0 then
    begin
      qSbi.SQL.Add('sbrcodigo=' + vlSbrCodigo);
      vsbiitem := copy(vNome, pos('W', vNome) + 1, 2);
      qSbi.SQL.Add(' and sbiitem=' + vsbiitem);
    end
    else
    begin
      qSbi.SQL.Add('sbrcodigo=' + vlSbrCodigo);
      qSbi.SQL.Add(' and sbiitem=' + inttostr(vPanel.ComponentCount - 1));
    end;

    qSbi.open;

    vlSbiChave := qSbi.FieldByName('sbichave').AsString;

    qIsi := TUniQuery.Create(vPanel);
    qIsi.name := 'qIsi' + vlIsaChave;
    qIsi.Connection := zcone;
    qIsi.Close;
    qIsi.SQL.Text := 'SELECT isichave, sbichave, tsicodigo, procodigo, isitipo,itochave,isiitem,isiquantidade FROM isi where ';
    qIsi.SQL.Add('sbichave=' + vlSbiChave + ' and procodigo=' + vlProCodigo);
    qIsi.open;

    if not qIsi.IsEmpty then
    begin
      (vPanel.Parent as TPanel).Height := (vPanel.Parent as TPanel).Height - vPanel.Height;
      qIsi.Delete;
    end;
    AjustaBotoesTamanhos;
  finally
    qSbi.Close;
    qIsa.Close;
    qIsi.Close;

    freeandnil(qSbi);
    freeandnil(qIsa);
    freeandnil(qIsi);

  end;
end;

function Tlunidadesent.SalvaNivelIngre(vPanel: TPanel; vSbrCodigo: string; vlProCodigo: string; vIsiTipo: string = '0'): string;
var
  vlIsaChave: string;
  vlSbiChave: string;
  qSbi: TUniQuery;
  qIsa: TUniQuery;
  qIsi: TUniQuery;
  vlSbrCodigo: string;
  vNome: string;
  vsbiitem: string;
  s: String;
  iValue, iCode: Integer;

begin
  try

    vNome := vPanel.name;

    if pos('W', vNome) > 0 then
    begin
      vlSbrCodigo := copy(vNome, 31, pos('W', vNome) - 1);
      vsbiitem := copy(vlSbrCodigo, pos('W', vlSbrCodigo) + 1);
      vsbiitem := copy(vsbiitem, 1, pos('_', vsbiitem) - 1);

      vlSbrCodigo := copy(vlSbrCodigo, 1, pos('W', vlSbrCodigo) - 1);

    end
    else
      vlSbrCodigo := vSbrCodigo;

    result := '3';
    qIsa := TUniQuery.Create(vPanel);
    qIsa.name := 'qIsa' + vlSbrCodigo;
    qIsa.Connection := zcone;
    qIsa.Close;
    qIsa.SQL.Text := 'select isachave from isa WHERE procodigo=' + vlProCodigo + ' and ';
    qIsa.SQL.Add('sbrcodigo=' + vlSbrCodigo);
    qIsa.open;
    vlIsaChave := qIsa.FieldByName('isachave').AsString;
    qSbi := TUniQuery.Create(vPanel);
    qSbi.name := 'qSbi' + vlSbrCodigo;
    qSbi.Connection := zcone;
    qSbi.Close;
    qSbi.SQL.Text := 'SELECT sbichave,itochave, sbrcodigo, sbiobs, sbiitem FROM sbi ';
    qSbi.SQL.Add('where itochave=' + vpItoChave + ' and ');

    if pos('W', vNome) > 0 then
    begin
      qSbi.SQL.Add('sbrcodigo=' + vlSbrCodigo);
      vsbiitem := copy(vNome, pos('W', vNome) + 1, 2);
      qSbi.SQL.Add(' and sbiitem=' + vsbiitem);

    end
    else
    begin
      qSbi.SQL.Add('sbrcodigo=' + vlSbrCodigo);
      qSbi.SQL.Add(' and sbiitem=' + inttostr(vPanel.ComponentCount - 1));
    end;
    qSbi.SQL.Add(' order by sbi.sbrcodigo, sbi.sbiitem');
    qSbi.open;

    if qSbi.IsEmpty then
      qSbi.Append
    else
      qSbi.Edit;
    qSbi.FieldByName('itochave').AsString := vpItoChave;
    if pos('W', vlSbrCodigo) > 0 then
    begin
      qSbi.FieldByName('sbrcodigo').AsString := copy(vlSbrCodigo, 1, length(vlSbrCodigo) - 2);
      qSbi.FieldByName('sbiitem').AsString := copy(vlSbrCodigo, length(vlSbrCodigo) - 1, 2);

    end
    else
    begin
      qSbi.FieldByName('sbrcodigo').AsString := vlSbrCodigo;
      qSbi.FieldByName('sbiitem').AsString := vsbiitem;
    end;

    qSbi.Post;

    vlSbiChave := qSbi.FieldByName('sbichave').AsString;

    qIsi := TUniQuery.Create(vPanel);
    qIsi.name := 'qIsi' + vlIsaChave;
    qIsi.Connection := zcone;
    qIsi.Close;
    qIsi.SQL.Text := 'SELECT isichave, sbichave, tsicodigo, procodigo, isitipo,itochave,isiitem, isiquantidade FROM isi where ';
    qIsi.SQL.Add('sbichave=' + vlSbiChave + ' and procodigo=' + vlProCodigo);
    qIsi.open;

    if qIsi.IsEmpty then
    begin
      qIsi.Append;
      qIsi.FieldByName('isiitem').AsInteger := qIsi.RecordCount + 1;
    end
    else
    begin
      qIsi.Edit;
    end;

    qIsi.FieldByName('sbichave').AsString := vlSbiChave;
    qIsi.FieldByName('tsicodigo').AsInteger := vPanel.Tag;
    qIsi.FieldByName('procodigo').AsString := vlProCodigo;
    qIsi.FieldByName('isitipo').AsString := vIsiTipo;
    qIsi.FieldByName('itochave').AsString := vpItoChave;
    s := vPanel.Caption;
    val(s, iValue, iCode);

    if iCode = 0 then
    begin
      qIsi.FieldByName('isiquantidade').AsString := s;
    end
    else
    begin
      qIsi.FieldByName('isiquantidade').AsString := '1';
    end;

    qIsi.Post;
    result := qIsi.FieldByName('tsicodigo').AsString;

  finally
    qSbi.Close;
    qIsa.Close;
    qIsi.Close;

    freeandnil(qSbi);
    freeandnil(qIsa);
    freeandnil(qIsi);

  end;
end;

procedure Tlunidadesent.AdicionaSabor(vlSbrCodigo: string; vlNomePnl: string; vlNomeTit: string; vSbiChave: string = ''; vSbiObs: string = '';
  vTipo: Integer = 0);
var
  plSabSel: TPanel;
  plIngreSab: TPanel;
  qIsa: TUniQuery;
  qIsi: TUniQuery;
  qIsiNvo: TUniQuery;

  plIngre: TPanel;
  plNivelIngre: TPanel;
  btMenosIngre: TBitBtn;
  btMaisIngre: TBitBtn;
  plTitSabSel: TPanel;
  plObsSabor: TPanel;
  btIncluiIngre: TBitBtn;
  edObsIngre: TEdit;
  btRemovSbr: TBitBtn;
  btDetalheSbr: TBitBtn;
begin

  if plSaboresSelecionados.FindComponent(vlNomePnl) = nil then
  begin
    plSabSel := TPanel.Create(plSaboresSelecionados);
    plSabSel.Parent := plSaboresSelecionados;
    plSabSel.name := vlNomePnl;
    plSabSel.Caption := '';
    plSabSel.BorderWidth := 3;
    plSabSel.Align := alBottom;
    plSabSel.Height := 35;
    plSabSel.Tag := 10;
    plSabSel.Visible := true;
    plSabSel.Color := clWhite;

    plIngreSab := TPanel.Create(plSaboresSelecionados);
    plIngreSab.Parent := plSabSel;
    plIngreSab.name := 'plIngreSab' + vlNomePnl;
    plIngreSab.Caption := '';
    plIngreSab.BorderWidth := 3;
    plIngreSab.Align := alClient;
    plIngreSab.ParentBackground := false;
    plIngreSab.ParentColor := false;
    plIngreSab.Tag := 11;

    qIsa := TUniQuery.Create(plIngreSab);
    qIsa.name := 'qIsa' + plIngreSab.name;
    qIsa.Connection := zcone;
    qIsa.SQL.Text := 'select DISTINCT isa.sbrcodigo, isa.procodigo, pro.pronome from isa,pro WHERE ';
    qIsa.SQL.Add('((isa.senadicionavel=0)  or (isa.senadicionavel=1) ) AND isa.procodigo=pro.procodigo and sbrcodigo=' + vlSbrCodigo);
    qIsa.open;
    qIsa.First;
    while not qIsa.Eof do
    begin
      if plIngreSab.FindComponent(plIngreSab.name + qIsa.FieldByName('procodigo').AsString) = nil then
      begin
        plIngre := TPanel.Create(plSabSel);
        plIngre.Parent := plIngreSab;
        plIngre.name := plIngreSab.name + '_' + qIsa.FieldByName('procodigo').AsString;
        plIngre.Caption := '                                               ' + qIsa.FieldByName('pronome').AsString;
        plIngre.Align := alBottom;
        plIngre.Align := alTop;
        plIngre.Height := 20;
        plIngre.BevelOuter := bvNone;
        plIngre.Alignment := taLeftJustify;
        plIngre.BorderWidth := 1;
        plIngre.ParentBackground := false;
        plIngre.ParentFont := false;
        plIngre.Font.Size := 8;
        plIngre.Font.Color := clBlack;
        plIngre.Hint := plIngreSab.name;
        plIngre.Color := clWhite;

        plNivelIngre := TPanel.Create(plSabSel);
        plNivelIngre.Parent := plIngre;
        plNivelIngre.name := 'plNivel' + plIngre.name;
        plNivelIngre.Caption := 'NORMAL';
        plNivelIngre.Tag := 0;
        plNivelIngre.Width := 125;
        plNivelIngre.Align := alLeft;
        plNivelIngre.ParentBackground := false;
        plNivelIngre.ParentFont := false;
        plNivelIngre.Font.Size := 8;

        plNivelIngre.Tag := strtoint(CarregaNivelIngre(plNivelIngre, vlSbrCodigo, qIsa.FieldByName('procodigo').AsString));
        AjustaTituloNivel(plNivelIngre);

        btMenosIngre := TBitBtn.Create(plNivelIngre);
        btMenosIngre.Parent := plNivelIngre;
        btMenosIngre.name := 'btMenosIngre' + plIngre.name;
        btMenosIngre.Caption := '-';
        btMenosIngre.Align := alLeft;
        btMenosIngre.Width := btMenosIngre.Height;
        btMenosIngre.ParentFont := false;
        btMenosIngre.Font.Size := 12;
        btMenosIngre.OnClick := btMenosIngreClick;
        btMaisIngre := TBitBtn.Create(plNivelIngre);
        btMaisIngre.Parent := plNivelIngre;
        btMaisIngre.name := 'btMaisIngre' + plIngre.name;
        btMaisIngre.Caption := '+';
        btMaisIngre.Align := alRight;
        btMaisIngre.Width := btMaisIngre.Height;
        btMaisIngre.ParentFont := false;
        btMaisIngre.Font.Size := 12;
        btMaisIngre.OnClick := btMaisIngreClick;
      end;
      qIsa.Next;
    end;

    qIsiNvo := TUniQuery.Create(plIngreSab);
    qIsiNvo.name := 'qIsiNvo' + plIngreSab.name;
    qIsiNvo.Connection := zcone;
    qIsiNvo.SQL.Text := 'SELECT isichave, sbichave, tsicodigo,  isi.procodigo, pronome ';
    qIsiNvo.SQL.Add('FROM isi,pro ');
    qIsiNvo.SQL.Add('WHERE isi.sbichave=' + vSbiChave + ' and isi.procodigo=pro.procodigo ');
    qIsiNvo.SQL.Add('and isi.procodigo NOT IN (SELECT procodigo FROM isa  where ');
    qIsiNvo.SQL.Add('isa.procodigo=pro.procodigo and sbrcodigo=' + vlSbrCodigo + ')');
    qIsiNvo.open;
    qIsiNvo.First;
    while not qIsiNvo.Eof do
    begin

      AdicionaIngrediente(plSabSel, plIngreSab, qIsiNvo.FieldByName('procodigo').AsString, qIsiNvo.FieldByName('pronome').AsString);

      qIsiNvo.Next;
    end;

    plTitSabSel := TPanel.Create(plSabSel);
    plTitSabSel.Parent := plSabSel;
    plTitSabSel.name := vlNomePnl;
    plTitSabSel.Caption := vlNomeTit;
    plTitSabSel.Align := alBottom;
    plTitSabSel.Align := alTop;
    plTitSabSel.Height := 33;
    plTitSabSel.BorderStyle := bsNone;
    plTitSabSel.BevelOuter := bvNone;
    plTitSabSel.Alignment := taLeftJustify;
    plTitSabSel.BorderWidth := 2;

    plObsSabor := TPanel.Create(plSabSel);
    plObsSabor.Parent := plIngreSab;
    plObsSabor.name := 'plObsSabor' + vlNomePnl + plSabSel.name;
    plObsSabor.Caption := '                                    Obs.: ';
    plObsSabor.Align := alTop;
    plObsSabor.Align := alBottom;
    plObsSabor.Height := 28;
    plObsSabor.BorderStyle := bsNone;
    plObsSabor.BevelOuter := bvNone;
    plObsSabor.Alignment := taLeftJustify;
    plObsSabor.BorderWidth := 3;

    edObsIngre := TEdit.Create(plObsSabor);
    edObsIngre.Parent := plObsSabor;
    edObsIngre.name := 'edObsIngre' + plObsSabor.name;
    edObsIngre.Text := vSbiObs;
    edObsIngre.Align := alLeft;
    edObsIngre.Align := alRight;
    edObsIngre.Width := 160;
    edObsIngre.OnExit := AoSairObs;

    btIncluiIngre := TBitBtn.Create(plObsSabor);
    btIncluiIngre.Parent := plObsSabor;
    btIncluiIngre.name := 'btIncluiIngre' + plIngre.name;
    btIncluiIngre.Caption := 'Inclui Ingrediente';
    btIncluiIngre.Align := alLeft;
    btIncluiIngre.Width := 160;
    btIncluiIngre.ParentFont := false;
    btIncluiIngre.Font.Size := 8;
    btIncluiIngre.OnClick := btIncluiIngreClick;

    btRemovSbr := TBitBtn.Create(plSaboresSelecionados);
    btRemovSbr.Parent := plTitSabSel;
    btRemovSbr.name := 'btRemovSbr' + plTitSabSel.name;
    btRemovSbr.Caption := 'Remove Sabor';
    btRemovSbr.Align := alLeft;
    btRemovSbr.Align := alRight;
    btRemovSbr.Width := 120;
    btRemovSbr.ParentFont := false;
    btRemovSbr.Font.Size := 10;
    btRemovSbr.OnClick := btRemovSbrClick;

    btDetalheSbr := TBitBtn.Create(plSaboresSelecionados);
    btDetalheSbr.Parent := plTitSabSel;
    btDetalheSbr.name := 'btDetalheSbr' + plTitSabSel.name;
    btDetalheSbr.Caption := 'Ver Ingredientes';
    btDetalheSbr.Align := alLeft;
    btDetalheSbr.Align := alRight;
    btDetalheSbr.Width := 160;
    btDetalheSbr.ParentFont := false;
    btDetalheSbr.Font.Size := 10;
    btDetalheSbr.OnClick := btMostraIngredientesClick;

    btRemovSbr.Align := alLeft;
    btDetalheSbr.Align := alLeft;

    btDetalheSbr.Align := alRight;
    btRemovSbr.Align := alRight;
    plSabSel.Height := 35;

    plSabSel.Align := alTop;

  end
  else
  begin
    (plSaboresSelecionados.FindComponent(vlNomePnl) as TPanel).Visible := true;
    (plSaboresSelecionados.FindComponent(vlNomePnl) as TPanel).Tag := 10;
  end;

  if vpTipoLista = 'Ingredientes' then
  begin
    (plSaboresSelecionados.FindComponent(vlNomePnl) as TPanel).Visible := true;
    (plSaboresSelecionados.FindComponent(vlNomePnl) as TPanel).Tag := 10;
    if vTipo <> 0 then
    begin
      MostraIngredientes((plSaboresSelecionados.FindComponent(vlNomePnl) as TPanel));
      if plSaboresSelecionados.FindComponent('btDetalheSbr' + vlNomePnl) <> nil then
      begin
        if plSaboresSelecionados.FindComponent('btDetalheSbr' + vlNomePnl) is TBitBtn then
        begin
          (plSaboresSelecionados.FindComponent('btDetalheSbr' + vlNomePnl) as TBitBtn).Click;
          ((plSaboresSelecionados.FindComponent(vlNomePnl) as TPanel).FindComponent(vlNomePnl) as TPanel).Visible := false;
          plTitSaboresSelecionados.Visible := false;
          // plTamanho.Height:=77;
        end;
      end;
      AjustaAlturaIngredientes((plSaboresSelecionados.FindComponent(vlNomePnl) as TPanel));
    end;
  end;
  AjustaTitSaboresSel;

end;

procedure Tlunidadesent.AoSairObs(Sender: TObject);
var
  edObs: TEdit;
  vlSbrCodigo: string;
  qSbi: TUniQuery;
  vNome: string;
  vsbiitem: string;

begin
  try
    edObs := TEdit(Sender);
    vlSbrCodigo := edObs.name;
    vNome := copy(edObs.name, pos('pnlSbr', vlSbrCodigo), pos('pnlSbr', edObs.name) - 1);
    vlSbrCodigo := copy(vlSbrCodigo, 34, 30);
    vlSbrCodigo := copy(vlSbrCodigo, 1, pos('pnlSbr', vlSbrCodigo) - 1);

    if pos('W', vlSbrCodigo) > 0 then
      vlSbrCodigo := copy(vlSbrCodigo, 1, pos('W', vlSbrCodigo) - 1)
    else
      vlSbrCodigo := vlSbrCodigo;

    qSbi := TUniQuery.Create((Sender as TEdit).Parent as TPanel);
    qSbi.name := 'qSbi' + vlSbrCodigo;
    qSbi.Connection := zcone;
    qSbi.Close;
    qSbi.SQL.Text := 'SELECT sbichave,itochave, sbrcodigo, sbiobs, sbiitem FROM sbi ';
    qSbi.SQL.Add('where itochave=' + vpItoChave + ' and ');

    if pos('W', vNome) > 0 then
    begin
      qSbi.SQL.Add('sbrcodigo=' + vlSbrCodigo);
      vsbiitem := copy(vNome, pos('W', vNome) + 1, 2);

      if vsbiitem='' then
        vsbiitem:='01';

      qSbi.SQL.Add(' and sbiitem=' + vsbiitem);
    end
    else
    begin
      qSbi.SQL.Add('sbrcodigo=' + vlSbrCodigo);
      qSbi.SQL.Add(' and sbiitem=1');
    end;
    qSbi.SQL.Add(' order by sbi.sbrcodigo, sbi.sbiitem');
    qSbi.open;

    if qSbi.IsEmpty then
      qSbi.Append
    else
      qSbi.Edit;
    qSbi.FieldByName('itochave').AsString := vpItoChave;
    qSbi.FieldByName('sbrcodigo').AsString := vlSbrCodigo;

    if pos('W', vNome) > 0 then
    begin
      qSbi.FieldByName('sbrcodigo').AsString := vlSbrCodigo;
      vsbiitem := copy(vNome, pos('W', vNome) + 1, 2);
      qSbi.FieldByName('sbiitem').AsString := vsbiitem;

    end
    else
    begin
      qSbi.FieldByName('sbrcodigo').AsString := vlSbrCodigo;
      qSbi.FieldByName('sbiitem').AsString := '1';
    end;

    qSbi.FieldByName('sbiobs').AsString := edObs.Text;
    qSbi.Post;

  finally
    qSbi.Close;
    freeandnil(qSbi);
  end;
end;

procedure Tlunidadesent.VerAtualizacao(pacote: string);
type
  TVerificaAtualizacao = function(onwer: TApplication; varquivo: String; vPasta: String; vExtensao: string; vVersao: String = ''): String;

var
  pack: Cardinal;
  vlVerificaAtualizacao: TVerificaAtualizacao;
begin
  if not fileexists(extractfilepath(Application.ExeName) + 'modulos\matz.bpl') then
  begin
    exit;
  end;
  pack := LoadPackage('modulos\matz.bpl');
  if pack <> 0 then
  begin
    try
      @vlVerificaAtualizacao := GetProcAddress(pack, PChar('VerificaAtualizacao'));
      if Assigned(vlVerificaAtualizacao) then
      begin

        if (pacote = 'mcre') or (pacote = 'mcpa') then
          vlVerificaAtualizacao(Application, 'mrfi.bpl', 'modulos', '.bpl');

        if (pacote = 'mbrp') or (pacote = 'mmbrr') then
          vlVerificaAtualizacao(Application, 'mbrf.bpl', 'modulos', '.bpl');

        vlVerificaAtualizacao(Application, pacote + '.bpl', 'modulos', '.bpl');

      end;
    finally
      DoUnLoadPackage(Application, pack);
    end;
  end;

end;

Function Tlunidadesent.MostraLista(pModulo: String; pFiltro: string = ''; pChaveMestre: string = ''): string;
var
  ExecForm: function(CargaFrame: TCargaFrame): String;
  vlCargaFrame: TCargaFrame;
  vlPack: NativeUInt;
begin

  if InternetAtiva then
  begin
    VerAtualizacao(pModulo);
  end;

  result := '';
  vlPack := LoadPackage('modulos\' + pModulo + '.bpl');
  if vlPack <> 0 then
    try
      @ExecForm := GetProcAddress(vlPack, PChar('formu'));
      if Assigned(ExecForm) then
      begin
        vlCargaFrame := CargaFrameFormu(Application, vlPack, zcone, Acesso, pFiltro, pChaveMestre);
        result := ExecForm(vlCargaFrame);
      end;
    finally
      // DoUnLoadPackage(Application, vlPack);
    end;

end;



procedure Tlunidadesent.AjustaAlturaIngredientes(vPainel: TPanel);
var
  vlAltIngre: Integer;
  i: Integer;
  vlNomePainel: string;
begin
  vlAltIngre := 0;
  vlNomePainel := vPainel.name;
  for i := 0 to vPainel.Parent.ComponentCount - 1 do
  begin
    if vPainel.Parent.Components[i] is TPanel then
      if pos('plNivel', (vPainel.Parent.Components[i] as TPanel).name) = 0 then
        vlAltIngre := vlAltIngre + (vPainel.Parent.Components[i] as TPanel).Height;
  end;
  vPainel.Parent.Height := vlAltIngre + 15;
end;

procedure Tlunidadesent.AjustaBotoesTamanhos;
var
  btUnidade: TBitBtn;
  plSab: TPanel;
  plQtdPre: TPanel;
  i: Integer;
  vlAltura: Integer;
begin
  { if psituacao.Caption = 'Incluindo' then
    begin }
  plUnidades.Visible := false;
  for i := 0 to plUnidades.ComponentCount - 1 do
  begin
    plUnidades.Components[0].Destroy;
  end;
  if psituacao.Caption = 'Incluindo' then
  begin

    if (vpQtdSaboresSel <> 0) or (vpQtdMaxSabores <> 0) then
    begin
      if vpQtdSaboresSel = vpQtdMaxSabores then
      begin
        // showmessage('Já foi selecionado todos os sabores!');
        exit;
      end;
    end;
  end;

  self.Dqpro.DataSet.First;
  vlAltura := 35;
  while not Dqpro.DataSet.Eof do
  begin
    plSab := TPanel.Create(plUnidades);
    plSab.ParentBackground := false;
    plSab.Parent := plUnidades;
    plSab.name := 'plSabUnid' + Dqpro.DataSet.FieldByName('puncodigo').AsString;
    plSab.Caption := '';
    plSab.Height := 35;
    plSab.BorderWidth := 3;
    plSab.BorderStyle := bsNone;
    plSab.Align := alBottom;
    plSab.Align := alTop;
    vlAltura := vlAltura + (plSab.Height + 5);

    btUnidade := TBitBtn.Create(plSab);
    btUnidade.Parent := plSab;
    btUnidade.Width := 230;
    btUnidade.name := 'btUnidade' + Dqpro.DataSet.FieldByName('puncodigo').AsString;
    btUnidade.Caption := Dqpro.DataSet.FieldByName('uninome').AsString;

    btUnidade.Align := alClient;
    btUnidade.Margin := 10;
    btUnidade.OnClick := btlUnidadeClick;

    plQtdPre := TPanel.Create(plSab);
    plQtdPre.ParentBackground := false;
    plQtdPre.Parent := plSab;
    plQtdPre.Width := 120;
    plQtdPre.name := 'plQtdPre' + Dqpro.DataSet.FieldByName('puncodigo').AsString;
    plQtdPre.Caption := Dqpro.DataSet.FieldByName('sfnquantidade').AsString + '  ' +
      Format('%10s', [formatfloat('##,##0.00', Dqpro.DataSet.FieldByName('punprecoav').AsFloat)]) + ' ';
    plQtdPre.BorderStyle := bsNone;
    plQtdPre.Alignment := taRightJustify;
    plQtdPre.Align := alRight;

    Dqpro.DataSet.Next;
  end;
  plUnidades.Height := vlAltura;
  { end; }
end;

procedure Tlunidadesent.AjustaBotoesLetras;
var
  vlLetra: string;
  btLetra: TPanel;
  btPrimeiraLetra: TPanel;

  i, a: Integer;
  vlLetraIni: Integer;

begin

  for i := 0 to plLetra.ComponentCount - 1 do
  begin
    plLetra.Components[0].Destroy;
  end;

  if self.Dsbr.DataSet.RecordCount > 0 then
  begin

    self.Dsbr.DataSet.First;
    vlLetra := '';
    vpPrimeiraLetra := '';
    while not Dsbr.DataSet.Eof do
    begin
      if plLetra.FindComponent('btLetra' + UPPERCASE(copy(Dsbr.DataSet.FieldByName('sbridentificacao').AsString, 1, 1))) = nil then
      begin
        if vlLetra <> UPPERCASE(copy(Dsbr.DataSet.FieldByName('sbridentificacao').AsString, 1, 1)) then
        begin
          vlLetra := UPPERCASE(copy(Dsbr.DataSet.FieldByName('sbridentificacao').AsString, 1, 1));
          btLetra := TPanel.Create(plLetra);
          btLetra.Parent := plLetra;
          btLetra.Height := 22;
          btLetra.name := 'btLetra' + vlLetra;
          btLetra.Caption := vlLetra;
          btLetra.Align := alBottom;
          btLetra.Alignment := taCenter;
          btLetra.BevelOuter := bvNone;
          btLetra.ParentFont := false;
          btLetra.ParentBackground := false;
          btLetra.Font.name := 'Tahoma';
          btLetra.Color := clWhite;
          btLetra.Font.Color := $000080FF;
          btLetra.Align := alTop;
          btLetra.OnClick := btlLetraClick;
          if vpPrimeiraLetra = '' then
          begin
            btPrimeiraLetra := btLetra;
            vpPrimeiraLetra := vlLetra;
          end;
        end;
      end;
      Dsbr.DataSet.Next;
    end;

    for i := 0 to plLetra.ComponentCount - 1 do
    begin
      (plLetra.Components[i] as TPanel).Align := alBottom;
    end;

    for a := 65 to 90 do
    begin

      for i := 0 to plLetra.ComponentCount - 1 do
      begin
        vlLetra := (plLetra.Components[i] as TPanel).Caption;

        if Char(a) = copy(vlLetra, 1, 1) then
          (plLetra.Components[i] as TPanel).Align := alTop;
      end;

    end;

    // CriaListaSabores;
    CriaListaSabores2;

  end;

end;

procedure Tlunidadesent.AjustaIngredienteSabor(Sender: TObject; Field: TField);
var
  vlSbiChave: string;
  vlNomeQry: string;
  vlQry: TUniQuery;
  vlNomePnl: String;
  vlPnl: TPanel;
begin

  vlNomePnl := 'sabor' + copy((Sender as TDataSource).name, 6, 10);
  vlPnl := TPanel(plSaboresSelecionados.FindComponent(vlNomePnl));

  vlNomeQry := 'qSbi' + copy((Sender as TDataSource).name, 6, 10);
  vlQry := TUniQuery(vlPnl.FindComponent(vlNomeQry));
  vlSbiChave := vlQry.FieldByName('sbichave').AsString;

  vlNomeQry := 'qIsi' + copy((Sender as TDataSource).name, 6, 10);
  vlQry := TUniQuery(vlPnl.FindComponent(vlNomeQry));

  vlQry.Close;
  vlQry.SQL.Text := 'delete from isi where sbichave=' + vlSbiChave;
  vlQry.ExecSQL;

end;

end.
