unit UntIngredienteFracionado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, db,
  Vcl.Mask, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, Vcl.ExtCtrls, DBAccess, Uni,
  Vcl.DBCGrids;

type
  TFrmIngredienteFracionado = class(TForm)
    Panel1: TPanel;
    Panel11: TPanel;
    Panel2: TPanel;
    Panel8: TPanel;
    PCGeral: TPageControl;
    TabGerTamanho: TTabSheet;
    TabGerSabores: TTabSheet;
    Panel3: TPanel;
    Panel22: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Button7: TButton;
    Button8: TButton;
    Panel27: TPanel;
    Panel38: TPanel;
    Panel35: TPanel;
    Label12: TLabel;
    DBGrid7: TDBGrid;
    Panel28: TPanel;
    Panel29: TPanel;
    PnBorda: TPanel;
    Panel32: TPanel;
    DBGrid6: TDBGrid;
    Panel33: TPanel;
    Label11: TLabel;
    DBGridBordas: TDBGrid;
    Panel31: TPanel;
    Panel34: TPanel;
    LbItem: TLabel;
    Panel37: TPanel;
    Panel36: TPanel;
    Panel7: TPanel;
    Panel10: TPanel;
    PcAdicionais: TPageControl;
    TabIngredientes: TTabSheet;
    Panel13: TPanel;
    Panel14: TPanel;
    Button1: TButton;
    Panel23: TPanel;
    LbIngrediente: TLabel;
    DBGrid3: TDBGrid;
    TabAdicionais: TTabSheet;
    DBGridAdicionais: TDBGrid;
    Panel18: TPanel;
    Panel19: TPanel;
    Button3: TButton;
    Button4: TButton;
    Panel20: TPanel;
    Label7: TLabel;
    EdtBuscaItem: TEdit;
    Panel24: TPanel;
    LbAdicionais: TLabel;
    Panel4: TPanel;
    Panel9: TPanel;
    Button2: TButton;
    Panel6: TPanel;
    Label1: TLabel;
    Panel5: TPanel;
    BtnIncSabores: TBitBtn;
    BtnExcSabores: TBitBtn;
    DBGrid4: TDBGrid;
    Panel16: TPanel;
    Panel15: TPanel;
    Panel21: TPanel;
    Label2: TLabel;
    EdtBuscaSabores: TEdit;
    dvtpro: TUniDataSource;
    TabSabores: TTabSheet;
    Panel40: TPanel;
    LbFracao: TLabel;
    DBGrid1: TDBGrid;
    PnSabores: TPanel;
    Panel17: TPanel;
    Panel39: TPanel;
    Button9: TButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Button6: TButton;
    EdtQtde: TDBEdit;
    Button5: TButton;
    Label4: TLabel;
    Button10: TButton;
    Panel12: TPanel;
    Label13: TLabel;
    DBMemo1: TDBMemo;
    Label3: TLabel;
    Label9: TLabel;
    EdtCopos: TDBEdit;
    EdtPratos: TDBEdit;
    Label10: TLabel;
    Label8: TLabel;
    DBMemo2: TDBMemo;
    Label14: TLabel;
    Panel30: TPanel;
    Button12: TButton;
    Button11: TButton;
    procedure DBGridBordasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGridBordasCellClick(Column: TColumn);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtnIncSaboresClick(Sender: TObject);
    procedure BtnExcSaboresClick(Sender: TObject);
    procedure EdtBuscaSaboresChange(Sender: TObject);
    procedure EdtBuscaSaboresEnter(Sender: TObject);
    procedure EdtBuscaItemEnter(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure dvtproDataChange(Sender: TObject; Field: TField);
    procedure EdtBuscaItemChange(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid3Exit(Sender: TObject);
    procedure DBGrid4DblClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button9Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridAdicionaisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGridBordasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtQtdeKeyPress(Sender: TObject; var Key: Char);
    procedure EdtQtdeExit(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EdtBuscaItemKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure TabAdicionaisShow(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure DBGridAdicionaisDblClick(Sender: TObject);
    procedure EdtCoposExit(Sender: TObject);
    procedure EdtPratosExit(Sender: TObject);
    procedure EdtCoposEnter(Sender: TObject);
    procedure EdtPratosEnter(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure EdtBuscaSaboresKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure DBGrid7DblClick(Sender: TObject);

  private
    { Private declarations }
    procedure MostraTabGer(Tab: TTabSheet);
    procedure MostraTab(Tab: TTabSheet);
    procedure IncluirSabor;
    procedure MostraIngredientes;
    procedure SetIngredientes;
    procedure GravaIngrediente;
    procedure ConfirmaItem;
    procedure PreparaInclusao;
    procedure AdicionaIngredientes;
  public
    { Public declarations }
    vpSbrCodigo: Integer;
    vpConfirma: Boolean;
  end;

var
  FrmIngredienteFracionado: TFrmIngredienteFracionado;

implementation

uses
  UntDmDados, UntPrincipal;

{$R *.dfm}

procedure TFrmIngredienteFracionado.AdicionaIngredientes;
begin

  // incluindo ingredientes adicionais
  { if not fingrediente.locate('sbrcodigo;procodigo', varArrayof([vpSbrCodigo, Adcprocodigo.AsInteger]), []) then
    begin }
  dmdados.tsi.locate('tsicodigo', dmdados.Usuario.tsicodigo, []);

  dmdados.fingrediente.Append;
  dmdados.fIngredientesbrcodigo.AsInteger := vpSbrCodigo;;
  dmdados.fIngredientetipo.AsInteger := 1;
  dmdados.fIngredienteprocodigo.AsInteger := dmdados.Adcprocodigo.AsInteger;
  dmdados.fIngredientepronome.AsString := dmdados.Adcpronome.AsString;
  dmdados.fIngredientetsicodigo.AsInteger := dmdados.Adctsicodigo.AsInteger;
  dmdados.fIngredientetsiidentificacao.AsString := dmdados.Adctsiidentificacao.AsString;
  dmdados.fIngredientetsicodigo.AsInteger := dmdados.tsitsicodigo.AsInteger;
  dmdados.fIngredientetsiidentificacao.AsString := dmdados.tsitsiidentificacao.AsString;
  dmdados.fIngredienteisiquantidade.AsInteger := dmdados.Adcisiquantidade.AsInteger;
  dmdados.fingrediente.Post;
  GravaIngrediente;
  MostraTab(TabIngredientes);
  { end
    else
    ShowMessage('Ingrediente já adicionado'); }

end;

procedure TFrmIngredienteFracionado.BtnExcSaboresClick(Sender: TObject);
begin
  if TabSabores.TabVisible then
  begin
    if not dmdados.vtpro.IsEmpty then
    begin
      if MessageDlg('Confirma exclusão de Sabor ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
      begin
        dmdados.vtpro.Delete;
        LbFracao.Caption := 'Sabores (' + inttostr(dmdados.vtpro.RecordCount) + ' de ' + inttostr(dmdados.sfnsfnquantidade.AsInteger) + ')';
      end;
    end
    else
      ShowMessage('Não existem itens na comanda, não é possível excluir!');
  end;
end;

procedure TFrmIngredienteFracionado.BtnIncSaboresClick(Sender: TObject);
begin
  if TabSabores.TabVisible then
    IncluirSabor;
  // MostraIngredientes;
end;

procedure TFrmIngredienteFracionado.Button10Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmIngredienteFracionado.Button11Click(Sender: TObject);
begin
  MostraTab(TabSabores);
end;

procedure TFrmIngredienteFracionado.Button12Click(Sender: TObject);
begin
  MostraTabGer(TabGerTamanho);
end;

procedure TFrmIngredienteFracionado.Button1Click(Sender: TObject);
begin

  MostraTab(TabAdicionais);

  dmdados.Adc.First;
  while not dmdados.Adc.Eof do
  begin
    dmdados.Adc.Edit;
    dmdados.Adcisiquantidade.AsInteger := 1;
    dmdados.Adc.Post;

    dmdados.Adc.Next;
  end;
  dmdados.Adc.First;

end;

procedure TFrmIngredienteFracionado.Button2Click(Sender: TObject);
begin

  if not dmdados.vtpro.IsEmpty then
    ConfirmaItem;
end;

procedure TFrmIngredienteFracionado.Button3Click(Sender: TObject);
begin
  if dmdados.dAdc.DataSet.State <> dsBrowse then
    dmdados.dAdc.DataSet.Post;

  AdicionaIngredientes;
end;

procedure TFrmIngredienteFracionado.Button4Click(Sender: TObject);
begin
  MostraTab(TabIngredientes);
end;

procedure TFrmIngredienteFracionado.Button5Click(Sender: TObject);
begin
  if dmdados.titoqtde.AsInteger >= 1 then
    dmdados.titoqtde.AsInteger := dmdados.titoqtde.AsInteger + 1;
end;

procedure TFrmIngredienteFracionado.Button6Click(Sender: TObject);
begin
  if dmdados.titoqtde.AsInteger > 1 then
    dmdados.titoqtde.AsInteger := dmdados.titoqtde.AsInteger - 1;
end;

procedure TFrmIngredienteFracionado.Button7Click(Sender: TObject);
begin
  MostraTabGer(TabGerSabores);
end;

procedure TFrmIngredienteFracionado.Button8Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmIngredienteFracionado.Button9Click(Sender: TObject);
begin
  if not dmdados.vtpro.IsEmpty then
    MostraTab(TabIngredientes);
end;

procedure TFrmIngredienteFracionado.ConfirmaItem;
var
 vlItochave:Integer;
begin
  // GravaIngrediente;

  if dmdados.tito.State in [DsInsert, DsEdit] then
  begin
    // Gravando item

    dmdados.tito.Post;

    // gravando bordas
    if not dmdados.brd.IsEmpty then
    begin
      dmdados.brd.First;
      while not dmdados.brd.Eof do
      begin

        if dmdados.brdsel.AsInteger = 1 then
        begin
          dmdados.tbrd.Append;
          dmdados.tbrdsfnid.AsInteger := dmdados.titosfnid.AsInteger;
          dmdados.tbrdsfncodigo.AsInteger := dmdados.sfnsfncodigo.AsInteger;
          dmdados.tbrdbrdcodigo.AsInteger := dmdados.brdbrdcodigo.AsInteger;
          dmdados.tbrd.Post;

          // desmarcando as bordas
          dmdados.brd.Edit;
          dmdados.brdsel.AsInteger := 0;
          dmdados.brd.Post;
        end;
        dmdados.brd.Next;
      end;

    end;

    // persistindo do item Pizza
    if not dmdados.tito.IsEmpty then
    begin
    if  dmdados.tito.UpdateStatus<>usUnmodified then
    begin
      dmdados.tito.ApplyUpdates;
    end;
    end;
    // persistindo das borda selecionadas
    if not dmdados.tbrd.IsEmpty then
      dmdados.tbrd.ApplyUpdates;

    // gravando ingredientes alterados
    if not dmdados.vtpro.IsEmpty then
    begin
      dmdados.vtpro.First;
      while not dmdados.vtpro.Eof do
      begin
        dmdados.tisi.Append;
        dmdados.tisisfnid.AsInteger := dmdados.titosfnid.AsInteger;
        dmdados.tisisfncodigo.AsInteger := dmdados.titosfncodigo.AsInteger;
        dmdados.tisisbrcodigo.AsInteger := dmdados.vtprosbrcodigo.AsInteger;
        dmdados.tisiobs.AsString := dmdados.vtproobs.AsString;
        dmdados.tisiprocodigo.AsInteger := 0;
        dmdados.tisitsicodigo.AsInteger := 0;
        dmdados.tisibprchave.AsInteger := 0;
        dmdados.tisiisitipo.AsInteger := 2;
        dmdados.tisiisiquantidade.AsInteger := 1;
        dmdados.tisiisiitem.AsInteger := dmdados.titosfnid.AsInteger;
        dmdados.tisi.Post;

        // persistindo dos ingredientes alterados
        if not dmdados.tisi.IsEmpty then
          dmdados.tisi.ApplyUpdates;

        dmdados.vtpro.Next;
      end;


      dmdados.vtfing.First;
      while not dmdados.vtfing.Eof do
      begin

        if (dmdados.vtfIngtipo.AsInteger = 1) or (dmdados.vtfIngtsicodigo.AsInteger <> dmdados.Usuario.tsicodigo) then
        begin
          dmdados.tisi.Append;
          dmdados.tisisbrcodigo.AsInteger := dmdados.vtfIngsbrcodigo.AsInteger;
          dmdados.tisiprocodigo.AsInteger := dmdados.vtfIngprocodigo.AsInteger;
          dmdados.tisitsicodigo.AsInteger := dmdados.vtfIngtsicodigo.AsInteger;
          dmdados.tisiisitipo.AsInteger := dmdados.vtfIngtipo.AsInteger;
          dmdados.tisisfncodigo.AsInteger := dmdados.titosfncodigo.AsInteger;
          dmdados.tisibprchave.AsInteger := 0;
          dmdados.tisisfnid.AsInteger := dmdados.titosfnid.AsInteger;
          dmdados.tisiisiquantidade.AsInteger := dmdados.vtfIngquantidade.AsInteger;
          dmdados.tisiisiitem.AsInteger := dmdados.titosfnid.AsInteger;
          dmdados.tisi.Post;

          // persistindo dos ingredientes alterados
          if not dmdados.tisi.IsEmpty then
            dmdados.tisi.ApplyUpdates;

        end;

        dmdados.vtfing.Next;
      end;
    end;

    dmdados.MobGravaItens.Close;
    dmdados.MobGravaItens.Params[0].AsInteger := dmdados.orcorcchave.AsInteger;
    dmdados.MobGravaItens.Params[1].AsInteger := dmdados.Usuario.ClbCodigo;
    dmdados.MobGravaItens.Params[2].AsInteger := dmdados.cfgmcfgflacodigo.AsInteger;
    dmdados.MobGravaItens.Params[3].AsInteger := 2; // tipo 2 para gravar itens do tipo gourmet
    dmdados.MobGravaItens.ExecProc;

    vlItochave:=DmDados.MobGravaItens.ParamByName('pconfirma').AsInteger;

    if dmdados.MobGravaItens.Fields[0].AsInteger = 0 then
    begin
      if dmdados.vtItens.Active then
      begin
        dmdados.vtItens.EmptyDataSet;
      end;
    end
    else
      ShowMessage(dmdados.MobGravaItens.Fields[1].AsString);
  end;
  Close;

end;

procedure TFrmIngredienteFracionado.EdtQtdeExit(Sender: TObject);
begin
  if Length(EdtQtde.Text) = 0 then
    dmdados.titoqtde.AsInteger := 1;
end;

procedure TFrmIngredienteFracionado.EdtQtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in ['1' .. '9', Chr(8)]) then
    Key := #0
end;

procedure TFrmIngredienteFracionado.DBGrid1DblClick(Sender: TObject);
begin
  if not dmdados.vtpro.IsEmpty then
    MostraTab(TabIngredientes);
end;

procedure TFrmIngredienteFracionado.DBGrid1KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure TFrmIngredienteFracionado.DBGridAdicionaisDblClick(Sender: TObject);
begin
  // AdicionaIngredientes;
end;

procedure TFrmIngredienteFracionado.DBGridAdicionaisKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if (Key = 38) and (dmdados.Adc.Bof) Then
  begin
    Key := 0;
    EdtBuscaItem.SelectAll;
    EdtBuscaItem.SetFocus;
  end;

  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure TFrmIngredienteFracionado.DBGrid3DblClick(Sender: TObject);
begin
  MostraTab(TabAdicionais);
end;

procedure TFrmIngredienteFracionado.DBGrid3Exit(Sender: TObject);
begin
  if dmdados.fingrediente.State in [DsInsert, DsEdit] then
    if dmdados.fIngredientepronome.AsString = '' then
      dmdados.fingrediente.Cancel;

  if dmdados.fingrediente.State = DsEdit then
    dmdados.fingrediente.Post;
end;

procedure TFrmIngredienteFracionado.DBGrid3KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 40 Then
    if dmdados.fingrediente.State = DsInsert then
    begin
      Key := 0;
      dmdados.fingrediente.Cancel;
    end;

  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure TFrmIngredienteFracionado.DBGrid3KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 40 Then
    if dmdados.fingrediente.State = DsInsert then
    begin
      Key := 0;
      dmdados.fingrediente.Cancel;
    end;
end;

procedure TFrmIngredienteFracionado.DBGrid4DblClick(Sender: TObject);
begin
  IncluirSabor;
  MostraIngredientes;
end;

procedure TFrmIngredienteFracionado.DBGrid4KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;

end;

procedure TFrmIngredienteFracionado.DBGrid4KeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 37 then
  begin
    Key := 0;
    DBGrid1.SetFocus;
  end;
end;

procedure TFrmIngredienteFracionado.DBGrid7DblClick(Sender: TObject);
begin
  Button7Click(Button7);
end;

procedure TFrmIngredienteFracionado.DBGrid7KeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure TFrmIngredienteFracionado.DBGridBordasCellClick(Column: TColumn);
begin
  dmdados.brd.Edit;
  if dmdados.brdsel.AsInteger = 0 then
    dmdados.brdsel.AsInteger := 1
  else
    dmdados.brdsel.AsInteger := 0;
  dmdados.brd.Post;
end;

procedure TFrmIngredienteFracionado.DBGridBordasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Check: Integer;
  R: TRect;
  i: Integer;
begin
  if Column.FieldName = 'sel' then
  begin
    // Desenha um checkbox no dbgrid
    DBGridBordas.Canvas.FillRect(Rect);

    Check := 0;
    if dmdados.brdsel.AsInteger = 1 then
      Check := DFCS_CHECKED
    else
      Check := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do CheckBox }
    DrawFrameControl(DBGridBordas.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or Check);
  end;
end;

procedure TFrmIngredienteFracionado.DBGridBordasKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure TFrmIngredienteFracionado.dvtproDataChange(Sender: TObject; Field: TField);
begin
  MostraIngredientes;
end;

procedure TFrmIngredienteFracionado.EdtBuscaItemChange(Sender: TObject);
begin
  if not dmdados.Adc.IsEmpty then
    dmdados.Adc.locate('pronome', EdtBuscaItem.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrmIngredienteFracionado.EdtBuscaItemEnter(Sender: TObject);
begin
  EdtBuscaItem.Clear;
end;

procedure TFrmIngredienteFracionado.EdtBuscaItemKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 40 Then
  begin
    Key := 0;
    DBGridAdicionais.SetFocus
  end;
end;

procedure TFrmIngredienteFracionado.EdtBuscaSaboresChange(Sender: TObject);
begin
  if not dmdados.fsbr.IsEmpty then
    dmdados.fsbr.locate('sbridentificacao', EdtBuscaSabores.Text, [loCaseInsensitive, loPartialKey]);
end;

procedure TFrmIngredienteFracionado.EdtBuscaSaboresEnter(Sender: TObject);
begin
  EdtBuscaSabores.Clear;
end;

procedure TFrmIngredienteFracionado.EdtBuscaSaboresKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  if Key = 40 then
  begin
    Key := 0;
    DBGrid4.SetFocus;
  end;
end;

procedure TFrmIngredienteFracionado.EdtCoposEnter(Sender: TObject);
begin
  EdtCopos.SelectAll;

end;

procedure TFrmIngredienteFracionado.EdtCoposExit(Sender: TObject);
begin
  if Length(EdtCopos.Text) = 0 then
    dmdados.titocopos.AsInteger := 0;
end;

procedure TFrmIngredienteFracionado.EdtPratosEnter(Sender: TObject);
begin
  EdtPratos.SelectAll;
end;

procedure TFrmIngredienteFracionado.EdtPratosExit(Sender: TObject);
begin
  if Length(EdtPratos.Text) = 0 then
    dmdados.titopratos.AsInteger := 0;
end;

procedure TFrmIngredienteFracionado.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  PreparaInclusao;
end;

procedure TFrmIngredienteFracionado.FormShow(Sender: TObject);
begin
  { if DmDados.brd.IsEmpty then
    PnBorda.Height := 0
    else
    PnBorda.Height := 222; }

  vpConfirma := False;
  PreparaInclusao;
  // ativa aba principal

  MostraTabGer(TabGerTamanho);
  Label11.Caption := trim(dmdados.cfgmcfgcfgmgouttulocomposicao.AsString);
 // application.ProcessMessages;

  { if DmDados.vtpro.RecordCount <= 1 then
    Panel38.Visible := False
    else }
  Panel38.Visible := True;

  if dmdados.dbrd.DataSet.RecordCount < 1 then
    Panel33.Visible := False
  else
  begin
    Panel33.Visible := True;

  end;
  if dmdados.brd.IsEmpty then
  begin
    PnBorda.Visible := False;
    DBGrid7.Align := altop;
    DBGrid7.Align := alClient;
    Panel38.Align := alClient;
  end
  else
  begin
    PnBorda.Visible := True;
  end;

  if dmdados.dstito.State = dsBrowse then
    dmdados.dstito.DataSet.Edit;

  EdtQtde.Field.AsInteger := 1;
end;

procedure TFrmIngredienteFracionado.GravaIngrediente;
var
  vlnivel: Integer;
  vlRecno: Integer;
begin
  // gravando observação
  vlRecno := dmdados.vtpro.RecNo;

  if dmdados.vtpro.State = DsEdit then
    dmdados.vtpro.Post;

  dmdados.fingrediente.DisableControls;

  dmdados.vtpro.First;
  while not dmdados.vtpro.Eof do
  begin
    // abrindo ingredientes
    { fingrediente.Close;
      fingrediente.Params[0].AsInteger := Usuario.tsicodigo;
      fingrediente.Params[1].AsInteger := vtprosfnid.AsInteger;
      fingrediente.Params[2].AsInteger := vtprosfncodigo.AsInteger;
      fingrediente.Params[3].AsInteger := vtprosbrcodigo.AsInteger;
      fingrediente.Open; }

    dmdados.fingrediente.First;
    while not dmdados.fingrediente.Eof do
    begin
      if dmdados.vtfing.locate('sbrcodigo;procodigo;tipo', varArrayof([dmdados.fIngredientesbrcodigo.AsInteger, dmdados.fIngredienteprocodigo.AsInteger,
        dmdados.fIngredientetipo.AsInteger]), []) then
      begin
        // apagando itens que tiveram seus valores votados para quantidade padrao
        // essa operação não exclui ingredientes adicionais;
        vlnivel := dmdados.Usuario.tsicodigo;

        if (dmdados.fIngredientetsicodigo.AsInteger = dmdados.Usuario.tsicodigo) and (dmdados.fIngredientetipo.AsInteger = 0) then
        begin
          dmdados.vtfing.Delete;
        end
        else
        begin
          // caso a quantidade foi alterada novamente faz o reajuste
          dmdados.vtfing.Edit;
          dmdados.vtfIngquantidade.AsInteger := dmdados.fIngredienteisiquantidade.AsInteger;
          dmdados.vtfIngtsicodigo.AsInteger := dmdados.fIngredientetsicodigo.AsInteger;
          dmdados.vtfing.Post;
        end;
      end
      else
      begin
        // caso a quantidade do ingrediente tenha sido alterada ou seja um ingrediente adicional
        { if (fIngredientetsicodigo.AsInteger <> Usuario.tsicodigo) or (fIngredientetipo.AsInteger = 1) then
          begin }

        dmdados.vtfing.Append;
        dmdados.vtfingsfnid.AsInteger := dmdados.vtprosfnid.AsInteger;
        dmdados.vtfIngsfncodigo.AsInteger := dmdados.vtprosfncodigo.AsInteger;
        dmdados.vtfIngsbrcodigo.AsInteger := dmdados.fIngredientesbrcodigo.AsInteger;
        dmdados.vtfIngprocodigo.AsInteger := dmdados.fIngredienteprocodigo.AsInteger;
        dmdados.vtfIngtsicodigo.AsInteger := dmdados.fIngredientetsicodigo.AsInteger;
        dmdados.vtfIngtipo.AsInteger := dmdados.fIngredientetipo.AsInteger;
        dmdados.vtfIngquantidade.AsInteger := dmdados.fIngredienteisiquantidade.AsInteger;

        dmdados.vtfing.Post;
      end;
      { end; }
      dmdados.fingrediente.Next;
    end;
    dmdados.vtpro.Next;
  end;
  dmdados.fingrediente.EnableControls;
  dmdados.vtpro.RecNo := vlRecno;
end;

procedure TFrmIngredienteFracionado.IncluirSabor;
begin
  // incluindo sabor do produto
  with dmdados do
  begin
    // verificando se existe sabores cadastrados
    if not fsbr.IsEmpty then
    begin
      // verificando se quantidade de sabores informados não é
      // maior que a quantidade de sabores permitido para o produto
      if sfnsfnquantidade.AsInteger > vtpro.RecordCount then
      begin
        vtpro.DisableControls;

        // verifica se o sabor ja esta informado para o item se não tiver incluir
        if not vtpro.locate('sbrcodigo', fsbrsbrcodigo.AsInteger, []) then
        begin
          vtpro.Append;
          vtprosfnid.AsInteger := vtItensitoitem.AsInteger;
          vtprosbrcodigo.AsInteger := fsbrsbrcodigo.AsInteger;
          vtprodescricao.AsString := fsbrsbridentificacao.AsString;
          vtprosfncodigo.AsInteger := sfnsfncodigo.AsInteger;
          vtpro.Post;

          // Atualizando labels de orientação ao usuário
          LbFracao.Caption := 'Sabores (' + inttostr(vtpro.RecordCount) + ' de ' + inttostr(sfnsfnquantidade.AsInteger) + ')';

          vtpro.locate('sbrcodigo', fsbrsbrcodigo.AsInteger, []);
        end;
        vtpro.EnableControls;
      end
      else
        ShowMessage('Atenção, quatidade máxima de sabores é ' + inttostr(sfnsfnquantidade.AsInteger));
    end;
  end;
end;

procedure TFrmIngredienteFracionado.MostraIngredientes;
begin
  // mostra ingredientes
  with dmdados do
  begin
    if not vtpro.IsEmpty then
    begin
      // abrindo ingredientes
      fingrediente.Close;
      fingrediente.Params[0].AsInteger := Usuario.tsicodigo;
      fingrediente.Params[1].AsInteger := vtprosfnid.AsInteger;
      fingrediente.Params[2].AsInteger := vtprosfncodigo.AsInteger;
      fingrediente.Params[3].AsInteger := vtprosbrcodigo.AsInteger;
      fingrediente.Open;
      if fingrediente.IsEmpty then
      begin
        ShowMessage('Não Existe ingredientes para esse produto !');
        Exit;
      end;
      vpSbrCodigo := vtprosbrcodigo.AsInteger;
      // verifica se teve algum ingrediente do sabor que foi alterado ou se
      // foi adicionado novos ingredientes ao sabor.
      SetIngredientes;
    end;

  end;
end;

procedure TFrmIngredienteFracionado.MostraTab(Tab: TTabSheet);
var
  vlProCodigo: string;

  vlGrpCodigo: string;
begin
  // desabilitando TabSheets
  TabSabores.TabVisible := False;
  TabIngredientes.TabVisible := False;
  TabAdicionais.TabVisible := False;

  if Tab = TabAdicionais then
  begin
    // mostra ingredientes adicionais
    with dmdados do
    begin
      // abrindo lista de ingredientes adicionais

      consulta.Close;
      consulta.SQL.Text := 'select grpcodigo,procodigo from sbr where sbrcodigo=' + self.vpSbrCodigo.ToString;
      consulta.Open;

      if consulta.FieldByName('grpcodigo').AsString <> '' then
      begin
        vlGrpCodigo := consulta.FieldByName('grpcodigo').AsString;
      end
      else
      begin
        consulta.Close;
        consulta.SQL.Text := 'select grpcodigo,procodigo from sbr where sbrcodigo=' + self.vpSbrCodigo.ToString;
        consulta.Open;

        vlProCodigo := consulta.FieldByName('procodigo').AsString;
        consulta.Close;
        consulta.SQL.Text := 'select grpcodigo,procodigo from pro where procodigo=' + vlProCodigo;
        consulta.Open;

        vlGrpCodigo := consulta.FieldByName('grpcodigo').AsString;

      end;

      Adc.Close;
      Adc.Params[0].AsInteger := Usuario.tsicodigo;
      Adc.Params[1].AsString := vlGrpCodigo;
      Adc.Open;

      if Adc.IsEmpty then
      begin
        ShowMessage('Não Existe adicionais cadastrados !');
        PcAdicionais.ActivePage := TabIngredientes;
        Exit;
      end;
    end;
    LbAdicionais.Caption := dmdados.vtprodescricao.AsString;

  end;

  if Tab = TabIngredientes then
    LbIngrediente.Caption := dmdados.vtprodescricao.AsString;

  Tab.TabVisible := True;
  PcAdicionais.ActivePage := Tab;
end;

procedure TFrmIngredienteFracionado.MostraTabGer(Tab: TTabSheet);
begin
  // desabilitando TabSheets
  TabGerTamanho.TabVisible := False;
  TabGerSabores.TabVisible := False;

  // Abrindo Grupos do Cardapio
  if Tab = TabGerSabores then
  begin
    MostraTab(TabSabores);
    // Ja existe produto sendo registrado
    dmdados.fpun.Close;
    dmdados.fpun.Params[0].AsInteger := dmdados.sfnpuncodigo.AsInteger;
    dmdados.fpun.Open;
    // preparando dados do item
    if dmdados.tito.State in [DsInsert, DsEdit] then
    begin
      dmdados.titosfnid.AsInteger := dmdados.ito.RecordCount + 1;
      dmdados.titoprocodigo.AsInteger := dmdados.sfnprocodigo.AsInteger;
      dmdados.titopronome.AsString := dmdados.sfnpronomereduzido.AsString;
      dmdados.titosfncodigo.AsInteger := dmdados.sfnsfncodigo.AsInteger;
      dmdados.titopuncodigo.AsInteger := dmdados.sfnpuncodigo.AsInteger;

      dmdados.vtpro.DisableControls;
      if not dmdados.vtpro.IsEmpty then
      begin
        dmdados.vtpro.First;
        while not dmdados.vtpro.Eof do
        begin
          dmdados.vtpro.Edit;
          dmdados.vtprosfncodigo.AsInteger := dmdados.sfnsfncodigo.AsInteger;
          dmdados.vtpro.Post;
          dmdados.vtpro.Next;
        end;
      end;
      dmdados.vtpro.EnableControls;
    end
    else
    begin
      dmdados.tito.Append;
      dmdados.titoclbcodigo.AsInteger := dmdados.Usuario.ClbCodigo;
      dmdados.titoobs.AsString := '';
      dmdados.titopessoas.AsInteger := 0;
      dmdados.titoprocodigo.AsInteger := dmdados.sfnprocodigo.AsInteger;
      dmdados.titopronome.AsString := dmdados.sfnpronomereduzido.AsString;
      dmdados.titopuncodigo.AsInteger := dmdados.sfnpuncodigo.AsInteger;
      dmdados.titoqtde.AsInteger := 1;
      dmdados.titosfncodigo.AsInteger := dmdados.sfnsfncodigo.AsInteger;
      dmdados.titosfnid.AsInteger := dmdados.ito.RecordCount + 1;
      dmdados.titocopos.AsInteger := 0;
      dmdados.titopratos.AsInteger := 0;
    end;

    // mostra ingredientes adicionais
    if not dmdados.tsi.Active then
    begin
      dmdados.tsi.Close;
      dmdados.tsi.Open;
    end;

    // abrindo Sabores
    dmdados.fsbr.Close;
    dmdados.fsbr.Params[0].AsInteger := dmdados.grpgrpcodigo.AsInteger;
    dmdados.fsbr.Open;

    // mudando titulo da tela
    LbItem.Caption := dmdados.sfnpronomereduzido.AsString;

    // atualizando labels de orientação ao usuário
    LbFracao.Caption := 'Sabores (' + inttostr(dmdados.vtpro.RecordCount) + ' de ' + inttostr(dmdados.sfnsfnquantidade.AsInteger) + ')';
  end;
  Tab.TabVisible := True;
  PCGeral.ActivePage := Tab;
end;

procedure TFrmIngredienteFracionado.PreparaInclusao;
begin
  // Fechando tabela de ingredientes
  dmdados.fingrediente.Close;
  dmdados.tisi.Close;
  dmdados.tisi.Open;

  // tabela de Bordas
  dmdados.tbrd.Close;
  dmdados.tbrd.Open;

  if not dmdados.vtfing.Active then
    dmdados.vtfing.Open
  else
  begin
    if dmdados.vtfing.Active then
    begin
      dmdados.vtfing.EmptyDataSet;
    end;
  end;

  // Abrindo tabela de Itens
  if not dmdados.vtpro.Active then
    dmdados.vtpro.Open
  else
  begin
    if dmdados.vtpro.Active then
    begin
      dmdados.vtpro.EmptyDataSet;
    end;
  end;

  // Abrindo tabela de Itens
  if not dmdados.vtItens.Active then
    dmdados.vtItens.Open
  else
  begin
    if dmdados.vtItens.Active then
    begin
      dmdados.vtItens.EmptyDataSet;
    end;
  end;

  // busca dados do quantidade de ingredientes
  if not dmdados.tsi.Active then
    dmdados.tsi.Open;

  // abre tabela virtual de ingredientes adicionais
  if not dmdados.vtsbradc.Active then
    dmdados.vtsbradc.Open
  else
  begin
    if dmdados.vtsbradc.Active then
    begin
      dmdados.vtsbradc.EmptyDataSet;
    end;
  end;
end;

procedure TFrmIngredienteFracionado.SetIngredientes;
begin
  with dmdados do
  begin
    // verificas se existe ingridientes alterados ou adicinais
    if not vtfing.IsEmpty then
    begin
      fingrediente.DisableControls;

      // Tratando ingredientes adicionais
      // if vtfIng.locate('tipo', 1, [])  then
      // begin
      // verificadndo se existe ingredientes alterados
      fingrediente.First;
      while not fingrediente.Eof do
      begin
        if vtfing.locate('sbrcodigo;procodigo;tipo', varArrayof([fIngredientesbrcodigo.AsInteger, fIngredienteprocodigo.AsInteger, fIngredientetipo.AsInteger]), []) then
        begin
          if tsi.locate('tsicodigo', vtfIngtsicodigo.AsInteger, []) then
          begin
            fingrediente.Edit;
            fIngredientetsicodigo.AsInteger := vtfIngtsicodigo.AsInteger;
            fIngredientetsiidentificacao.AsString := tsitsiidentificacao.AsString;
            fingrediente.Post;
          end;
        end;
        fingrediente.Next;
      end;

      // abrindo tabela de ingredientes adicionais
      if not Adc.Active then
      begin
        Adc.Close;
        Adc.Params[0].AsInteger := Usuario.tsicodigo;
        Adc.Open;
      end;

      // verificado se existe ingredientes adicionais para o saber caso exista inclui na lista de ingredientes
      vtfing.First;
      while not vtfing.Eof do
      begin
        if (vtfIngtipo.AsInteger = 1) and (vtfIngsbrcodigo.AsInteger = vtprosbrcodigo.AsInteger) then
        begin
          if Adc.locate('procodigo', vtfIngprocodigo.AsInteger, []) then
          begin
            tsi.locate('tsicodigo', Usuario.tsicodigo, []);
            fingrediente.Append;
            fIngredientesbrcodigo.AsInteger := vpSbrCodigo;
            fIngredientetipo.AsInteger := 1;
            fIngredienteprocodigo.AsInteger := Adcprocodigo.AsInteger;
            fIngredientepronome.AsString := Adcpronome.AsString;
            fIngredientetsicodigo.AsInteger := tsitsicodigo.AsInteger;
            dmdados.fIngredientetsiidentificacao.AsString := tsitsiidentificacao.AsString;
            dmdados.fIngredienteisiquantidade.AsInteger := dmdados.Adcisiquantidade.AsInteger;

            fingrediente.Post;
          end;
        end;
        vtfing.Next;
      end;
      // end;
      fingrediente.First;

      fingrediente.EnableControls;
    end;
  end;
end;

procedure TFrmIngredienteFracionado.TabAdicionaisShow(Sender: TObject);
begin
  EdtBuscaItem.Clear;
  EdtBuscaItem.SetFocus;
end;

end.
