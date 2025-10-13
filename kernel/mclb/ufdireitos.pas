unit ufdireitos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, CommCtrl, ufuncoes, Vcl.DBCtrls, Vcl.Mask,
  VirtualTable, System.ImageList, Vcl.ImgList, PngImageList;

type
  Tfdireitos = class(Tfrmbase)
    ArvoreMenu: TTreeView;
    ImageMarca: TImageList;
    mdp: TUniQuery;
    mdpmdpcodigo: TIntegerField;
    mdpmdpidentificacao: TStringField;
    grm: TUniQuery;
    grmgrmcodigo: TIntegerField;
    grmgrmidentificacao: TStringField;
    btm: TUniQuery;
    btmbtmcodigo: TIntegerField;
    btmbtmidentificacao: TStringField;
    act: TUniQuery;
    btmbplcodigo: TIntegerField;
    actactcodigo: TIntegerField;
    actactidentificacao: TStringField;
    actmdlcodigo: TIntegerField;
    actactformulario: TStringField;
    actactativa: TIntegerField;
    actactacao: TStringField;
    registroclbcodigo: TIntegerField;
    registroclbidentificacao: TStringField;
    Panel2: TPanel;
    clbidentificacao: TDBText;
    mre: TUniQuery;
    rel: TUniQuery;
    relrelidentificacao: TStringField;
    mremrechave: TIntegerField;
    mrebplcodigo: TIntegerField;
    mrerelcodigo: TStringField;
    relrelcodigo: TStringField;
    clbcodigo: TDBText;
    Label1: TLabel;
    plFerramentas: TPanel;
    BTnEGAR: TBitBtn;
    btClonar: TBitBtn;
    btLiberar: TBitBtn;
    dauclo: TUniQuery;
    rauclo: TUniQuery;
    clbclo: TVirtualTable;
    clbcloclbcodigo: TIntegerField;
    Dclbclo: TDataSource;
    Label2: TLabel;
    clbcodigoclo: TDBEdit;
    clb: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    clbcloclbidentificacao: TStringField;
    bpl: TUniQuery;
    bplbplcodigo: TIntegerField;
    bplbplfranome: TStringField;
    remdau: TUniQuery;
    remact: TUniQuery;
    remactactcodigo: TIntegerField;
    remactactformulario: TStringField;
    remactactacao: TStringField;
    remactactativa: TIntegerField;
    remdaudaucodigo: TIntegerField;
    remdauclbcodigo: TIntegerField;
    remdauactcodigo: TIntegerField;
    remdaudauativo: TIntegerField;
    remdauactformulario: TStringField;
    remdauactacao: TStringField;
    ajustadireitos: TUniQuery;
    Mostra: TProgressBar;
    MostrarArvore: TTimer;
    regdau: TUniQuery;
    dauati: TUniQuery;
    mdl: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure ArvoreMenuClick(Sender: TObject);
    procedure ArvoreMenuCollapsing(Sender: TObject; Node: TTreeNode; var AllowCollapse: Boolean);
    procedure ArvoreMenuMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
    procedure ArvoreMenuCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure bconfirmaClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure btLiberarClick(Sender: TObject);
    procedure BTnEGARClick(Sender: TObject);
    procedure btClonarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure ArvoreMenuCreateNodeClass(Sender: TCustomTreeView; var NodeClass: TTreeNodeClass);
    procedure MostrarArvoreTimer(Sender: TObject);
  private
    { Private declarations }
    vpClbcodigo: string;
    FChangingTree: Boolean;
    procedure MontaArvore;
    procedure CheckChild(Node: TTreeNode);
    procedure TreeMenuItem(Marca: Boolean);
    procedure UnCheckChild(Node: TTreeNode);
    // function TreeItemSearch(TV: TTreeView; SucheItem: string): TTreeNode;
    function SelectNode(const Tx: string; Tree: TTreeView): TTreeNode;
  public

  end;

var
  fdireitos: Tfdireitos;

  // Início ID do Módulo fdireitos
const
  vPlIdMd = '01.01.02.001-05';

  // Fim ID do Módulo fdireitos

implementation

{$R *.dfm}

type
  TCustomTreeNode = class(TTreeNode)
  protected
    procedure Assign(Source: TPersistent); override;
  public
    Comment: string;
  end;

procedure TCustomTreeNode.Assign(Source: TPersistent);
begin
  if Source is TCustomTreeNode then
    Comment := TCustomTreeNode(Source).Comment;
  inherited;
end;

procedure Tfdireitos.ArvoreMenuCreateNodeClass(Sender: TCustomTreeView; var NodeClass: TTreeNodeClass);
begin
  NodeClass := TCustomTreeNode;
end;

procedure SetTreeViewItemHeight(aTreeView: TTreeView; iItemHeight: Word);
begin { SetTreeViewItemHeight }
  aTreeView.Perform(TVM_SETITEMHEIGHT, iItemHeight, 0);
end; { SetTreeViewItemHeight }

procedure SetNodeHeight(Node: TTreeNode; Integral: Integer);
var
  ItemEx: TTVItemEx;
begin
  if not Node.Deleting then
  begin
    ItemEx.Mask := TVIF_HANDLE or TVIF_INTEGRAL;
    ItemEx.hItem := Node.ItemId;
    ItemEx.iIntegral := Integral;
    TreeView_SetItem(Node.Handle, ItemEx);
  end;
end;

procedure BoldTreeNode(treeNode: TTreeNode; Value: Boolean);
var
  treeItem: TTVItem;
begin
  if not Assigned(treeNode) then
    Exit;
  with treeItem do
  begin
    hItem := treeNode.ItemId;
    stateMask := TVIS_BOLD;
    Mask := TVIF_HANDLE or TVIF_STATE;

    if Value then
    begin
      State := TVIS_BOLD;
    end
    else
      State := 0;
  end;
  TreeView_SetItem(treeNode.Handle, treeItem);
end;

procedure Tfdireitos.ArvoreMenuClick(Sender: TObject);
begin
  inherited;
  if not FChangingTree then
    TreeMenuItem(True);

end;

procedure Tfdireitos.ArvoreMenuCollapsing(Sender: TObject; Node: TTreeNode; var AllowCollapse: Boolean);
begin
  inherited;
  if (Self.Showing) and (TTreeView(Sender).Focused) then
    FChangingTree := True;
end;

procedure Tfdireitos.ArvoreMenuCustomDrawItem(Sender: TCustomTreeView; Node: TTreeNode; State: TCustomDrawState; var DefaultDraw: Boolean);
const
  TAB_GREEN = 1;
  TAB_RED = 2;
  LVL_ACCOUNT = 0;
  LVL_FOLDER = 1;
  LVL_ITEM = 2;
  ID_EMPLOYER = 0;
  ID_INSURANCE = 1;
  ID_LOCATION = 2;
  ID_RESOURCE = 3;
  ID_REFFERING = 4;
  ID_APPT = 5;
  ID_MANAGEDV = 6;
  ID_RECALL = 7;
  ID_REMINDER = 8;
begin
  with Node do
  begin
    if Level = LVL_ACCOUNT then
    BEGIN
      Sender.Canvas.Font.Style := [fsBold];
      Sender.Canvas.Font.Size := 11;
      if StateIndex = 1 then
      begin
        Sender.Canvas.Font.Style := [fsBold, fsUnderline];
      end;
    END
    else
    begin
      Sender.Canvas.Font.Size := 10;
    end;

    if Level = LVL_FOLDER then
    begin
      if HasChildren then
      begin
        Sender.Canvas.Font.Style := [fsBold];
        Sender.Canvas.Font.Color := clWindowText;
      end
      else
      begin
        Sender.Canvas.Font.Style := [];
        Sender.Canvas.Font.Color := clGrayText;
      end;
      Sender.Canvas.Font.Size := 10;
    end
    else
    begin
      Sender.Canvas.Font.Size := 8;

    end;

    if (Parent <> nil) then
    BEGIN
      if (Level = LVL_ITEM) then
      begin
        Sender.Canvas.Font.Size := 8;
        if (Level = LVL_ITEM) and (Parent.Index = 0) then
        begin
          if Selected = false then
          BEGIN
            if Text = 'Cancelled' then
              Sender.Canvas.Font.Color := clGrayText
            else
              Sender.Canvas.Font.Color := clWindowText;
          END
          else
          BEGIN
            Sender.Canvas.Font.Color := clHighlightText;
          END;
        end;
      END;
    END;
  end;

end;

procedure Tfdireitos.ArvoreMenuMouseUp(Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  FChangingTree := false;
end;

function Tfdireitos.SelectNode(const Tx: string; Tree: TTreeView): TTreeNode;
var
  Node: TTreeNode;
begin
  if Tx = '' then
    Exit;
  Node := Tree.Items[0]; { get the top node / items[0] }
  while (Node <> nil) do
  begin
    if CompareText(Tx, Node.Text) = 0 then
    begin
      Tree.Selected := Node;
      result := Node;
      // node.MakeVisible;
      break;
    end
    else
      Node := Node.GetNext; { get the next node }
  end;
end;

{
  function Tfdireitos.TreeItemSearch(TV: TTreeView; SucheItem: string): TTreeNode;
  var
  i: Integer;
  iItem: string;
  begin
  if (TV = nil) or (SucheItem = '') then
  Exit;
  for i := 0 to TV.Items.Count - 1 do
  begin
  iItem := TV.Items[i].Text;
  if SucheItem = iItem then
  begin
  Result := TV.Items[i];
  Exit;
  end
  else
  begin
  Result := nil;
  end;
  end;
  end;
}

procedure Tfdireitos.bconfirmaClick(Sender: TObject);
var
  Contador: Integer;
  vlActCodigo: string;

  vlActFormulario: string;
  vlActAcao: string;

  vlRelCodigo: string;
  vlNivel: Integer;

  vlComentario: String;
  vlNo: TTreeNode;
  vlAtivo: Integer;
  vlActProcurar: string;
begin
  ArvoreMenu.Items.BeginUpdate;

  consulta.Close;
  consulta.sql.Text := 'update dau set dauativo=0 where clbcodigo=' + Self.clbcodigo.Field.AsString;
  consulta.ExecSQL;

  Mostra.Max := ArvoreMenu.Items.Count;
  Mostra.Position := 0;
  application.ProcessMessages;

  for Contador := 0 to ArvoreMenu.Items.Count - 1 do
  begin
    Mostra.Position := Mostra.Position + 1;
    application.ProcessMessages;

    vlRelCodigo := '';
    vlActCodigo := '';

    vlNivel := ArvoreMenu.Items[Contador].Level;
    vlComentario := TCustomTreeNode(ArvoreMenu.Items[Contador]).Comment;
    vlActFormulario := copy(vlComentario, 1, pos('#', vlComentario) - 1);
    vlActAcao := copy(vlComentario, pos('#', vlComentario) + 1, 200);

    if vlNivel = 4 then
    begin
      vlRelCodigo := trim(copy(ArvoreMenu.Items[Contador].Text, 1, pos(' ', ArvoreMenu.Items[Contador].Text) - 1));
      vlRelCodigo := vlRelCodigo;

      if vlRelCodigo <> '' then
      begin

        consulta.Close;
        consulta.sql.Text := 'select relidentificacao from rel where relcodigo=' + QuotedStr(vlRelCodigo);
        consulta.Open;

        vlNo := nil;
        vlNo := SelectNode(stringreplace(vlRelCodigo + ' ' + consulta.FieldByName('relidentificacao').AsString, '  ', ' ', [rfReplaceAll, rfIgnoreCase]),
          ArvoreMenu);

        if vlNo <> nil then
        begin
          vlAtivo := vlNo.ImageIndex;
        end
        else
        begin

        end;

        ajustadireitos.Close;
        ajustadireitos.sql.Text := 'select raucodigo, clbcodigo, relcodigo, rauativo from rau ';
        ajustadireitos.sql.Add('where clbcodigo=' + Self.registroclbcodigo.AsString + ' and  ');
        ajustadireitos.sql.Add('relcodigo=' + chr(39) + vlRelCodigo + chr(39));
        ajustadireitos.Open;

        if ajustadireitos.IsEmpty then
          ajustadireitos.Append
        else
          ajustadireitos.Edit;
        ajustadireitos.FieldByName('clbcodigo').AsString := Self.registroclbcodigo.AsString;
        ajustadireitos.FieldByName('relcodigo').AsString := vlRelCodigo;

        ajustadireitos.FieldByName('rauativo').AsInteger := vlAtivo; // ArvoreMenu.Items[Contador].ImageIndex;
        ajustadireitos.post;
      end;

    end;

    if vlNivel = 3 then
    begin
      vlActCodigo := copy(ArvoreMenu.Items[Contador].Text, 1, 4);

      vlComentario := TCustomTreeNode(ArvoreMenu.Items[Contador]).Comment;
      vlActFormulario := copy(vlComentario, 1, pos('#', vlComentario) - 1);
      vlActAcao := copy(vlComentario, pos('#', vlComentario) + 1, 200);

      vlActCodigo := SoNumeros(vlActCodigo);

      if vlActCodigo <> '' then
      begin

        ajustadireitos.Close;
        ajustadireitos.sql.Text := 'select daucodigo, clbcodigo, actcodigo, dauativo, actformulario, actacao from dau ';
        ajustadireitos.sql.Add('where clbcodigo=' + Self.registroclbcodigo.AsString + ' and  ');

        ajustadireitos.sql.Add('actcodigo=' + vlActCodigo + ' and actformulario=' + QuotedStr(vlActFormulario));
        ajustadireitos.Open;

        consulta.Close;
        consulta.sql.Text := 'select actidentificacao from act where actcodigo=' + vlActCodigo;
        consulta.Open;

        vlNo := nil;
        vlActProcurar := formatfloat('0000', vlActCodigo.ToInteger) + ' ' + copy(consulta.FieldByName('actidentificacao').AsString, 4, 50);
        vlNo := SelectNode(stringreplace(vlActProcurar, '  ', ' ', [rfReplaceAll, rfIgnoreCase]), ArvoreMenu);

        if vlNo <> nil then
        begin
          vlAtivo := vlNo.ImageIndex;
        end
        else
        begin

        end;

        if ajustadireitos.IsEmpty then
        begin
          { ajustadireitos.Close;
            ajustadireitos.sql.Text := 'insert into dau values(@chave,' + Self.registroclbcodigo.AsString + ',' + vlCodigo + ',' +
            InttoStr(ArvoreMenu.Items[Contador].ImageIndex) + ' )';
            ajustadireitos.ExecSQL; }

          ajustadireitos.Append;
          ajustadireitos.FieldByName('clbcodigo').AsString := Self.registroclbcodigo.AsString;
          ajustadireitos.FieldByName('actcodigo').AsString := vlActCodigo;

          ajustadireitos.FieldByName('actformulario').AsString := vlActFormulario;
          ajustadireitos.FieldByName('actacao').AsString := vlActAcao;

          ajustadireitos.FieldByName('dauativo').AsInteger := vlAtivo; // ArvoreMenu.Items[Contador].ImageIndex;
          ajustadireitos.post;

        end
        else
        begin
          ajustadireitos.Edit;
          ajustadireitos.FieldByName('clbcodigo').AsString := Self.registroclbcodigo.AsString;
          ajustadireitos.FieldByName('actcodigo').AsString := vlActCodigo;

          ajustadireitos.FieldByName('actformulario').AsString := vlActFormulario;
          ajustadireitos.FieldByName('actacao').AsString := vlActAcao;

          ajustadireitos.FieldByName('dauativo').AsInteger := vlAtivo; // ArvoreMenu.Items[Contador].ImageIndex;

          ajustadireitos.post;
        end;

        remact.Close;
        remact.ParamByName('actcodigo').AsString := vlActCodigo;
        remact.Open;

        if not remact.IsEmpty then
        begin
          remdau.Close;
          remdau.ParamByName('clbcodigo').AsInteger := Self.registroclbcodigo.AsInteger;
          remdau.ParamByName('actformulario').AsString := remactactformulario.AsString;
          remdau.ParamByName('actacao').AsString := remactactacao.AsString;
          remdau.Open;
          remdau.first;
          while not remdau.Eof do
          begin

            ajustadireitos.Close;
            ajustadireitos.sql.Text := 'update dau set dauativo=' + InttoStr(ArvoreMenu.Items[Contador].ImageIndex) + ' where daucodigo=' +
              remdaudaucodigo.AsString;
            ajustadireitos.ExecSQL;

            remdau.next;
          end;

        end;

      end;

    end;

  end;

  { inherited; }

  ArvoreMenu.Items.EndUpdate;

  Close;

end;

procedure Tfdireitos.bfecharClick(Sender: TObject);
var
  Contador: Integer;
begin
  inherited;
  for Contador := 0 to ArvoreMenu.Items.Count - 1 do
  begin
    TreeMenuItem(True);

  end;
end;

procedure Tfdireitos.btClonarClick(Sender: TObject);
begin
  inherited;
  BTnEGAR.Click;

  clbclo.Open;
  clbclo.Append;
  criabusca(clbcodigoclo, clbcloclbidentificacao);

  if clbcodigoclo.Field.AsString <> '' then
  begin

    rauclo.Close;
    rauclo.sql.Text := 'SELECT raucodigo, clbcodigo, relcodigo, rauativo FROM rau where clbcodigo=' + clbcodigoclo.Field.AsString;
    rauclo.Open;

    rauclo.first;
    while not rauclo.Eof do
    begin

      consulta.Close;
      consulta.sql.Text := 'select raucodigo, clbcodigo, relcodigo, rauativo from rau ';
      consulta.sql.Add('where clbcodigo=' + Self.registroclbcodigo.AsString + ' and  ');
      consulta.sql.Add('relcodigo=' + chr(39) + Self.rauclo.FieldByName('relcodigo').AsString + chr(39));
      consulta.Open;

      if consulta.IsEmpty then
        consulta.Append
      else
        consulta.Edit;
      consulta.FieldByName('clbcodigo').AsString := Self.registroclbcodigo.AsString;
      consulta.FieldByName('relcodigo').AsString := Self.rauclo.FieldByName('relcodigo').AsString;
      consulta.FieldByName('rauativo').AsInteger := Self.rauclo.FieldByName('rauativo').AsInteger;
      consulta.post;

      rauclo.next;
    end;

    dauclo.Close;
    dauclo.sql.Text := 'SELECT daucodigo, clbcodigo, actcodigo, dauativo,actformulario,actacao FROM dau where clbcodigo=' + clbcodigoclo.Field.AsString;
    dauclo.Open;

    dauclo.first;
    while not dauclo.Eof do
    begin

      consulta.Close;
      consulta.sql.Text := 'select daucodigo, clbcodigo, actcodigo, dauativo,actformulario,actacao  from dau ';
      consulta.sql.Add('where clbcodigo=' + Self.registroclbcodigo.AsString + ' and  ');
      consulta.sql.Add('actformulario=' + QuotedStr(Self.dauclo.FieldByName('actformulario').AsString) + ' and ');
      consulta.sql.Add('actacao=' + QuotedStr(Self.dauclo.FieldByName('actacao').AsString));

      consulta.Open;

      if consulta.IsEmpty then
        consulta.Append
      else
        consulta.Edit;
      consulta.FieldByName('clbcodigo').AsString := Self.registroclbcodigo.AsString;
      consulta.FieldByName('actcodigo').AsString := Self.dauclo.FieldByName('actcodigo').AsString;
      consulta.FieldByName('dauativo').AsInteger := Self.dauclo.FieldByName('dauativo').AsInteger;
      consulta.FieldByName('actformulario').AsString := Self.dauclo.FieldByName('actformulario').AsString;
      consulta.FieldByName('actacao').AsString := Self.dauclo.FieldByName('actacao').AsString;

      consulta.post;

      dauclo.next;
    end;

  end;

  MontaArvore;

end;

procedure Tfdireitos.btLiberarClick(Sender: TObject);
var
  Contador: Integer;
begin
  inherited;
  ArvoreMenu.Items.BeginUpdate;
  BTnEGAR.Click;

  for Contador := 0 to ArvoreMenu.Items.Count - 1 do
  begin
    if ArvoreMenu.Items[Contador].Level = 2 then
    begin
      ArvoreMenu.Items[Contador].Selected := True;
      TreeMenuItem(True);
    end;
  end;
  ArvoreMenu.Items.EndUpdate;
  Self.SetFocus;

end;

procedure Tfdireitos.BTnEGARClick(Sender: TObject);
var
  Contador: Integer;
begin
  inherited;
  ArvoreMenu.Items.BeginUpdate;
  consulta.Close;
  consulta.sql.Text := 'update dau set dauativo=0 where clbcodigo=' + Self.clbcodigo.Field.AsString;
  consulta.ExecSQL;

  for Contador := 0 to ArvoreMenu.Items.Count - 1 do
  begin
    if ArvoreMenu.Items[Contador].Level = 1 then
    begin
      ArvoreMenu.Items[Contador].Selected := True;
      TreeMenuItem(false);
    end;
  end;
  ArvoreMenu.Items.EndUpdate;
  Self.SetFocus;

end;

procedure Tfdireitos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  ArvoreMenu.Items.Clear;

  inherited;

end;

procedure Tfdireitos.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
  MostrarArvore.Enabled := True;
end;

procedure Tfdireitos.MontaArvore;
var
  vlNodeMd: TCustomTreeNode;
  vlNodeGp: TCustomTreeNode;
  vlNodeBt: TCustomTreeNode;
  vlNodeIt: TCustomTreeNode;
  vlNodeRl: TCustomTreeNode;

  vlModulo: string;
  vlGrupo: string;
  vlBotao: string;
  vlItemMenu: string;
  vlRelat: string;

  m, g, v: Integer;
  vlclbsuper: string;
begin

  {
    consulta.Close;
    consulta.sql.Text := 'DELETE FROM act WHERE actcodigo NOT IN (SELECT * FROM (SELECT MAX(actcodigo) FROM act GROUP BY actacao,actformulario )  AS s_alias )';
    consulta.ExecSQL;

    consulta.Close;
    consulta.sql.Text :=
    'DELETE FROM mdl  WHERE mdlcodigo NOT IN (SELECT * FROM (SELECT MAX(mdlcodigo) FROM mdl GROUP BY mdlidentificacao, mdlsubgrupo, mdlnome )  AS s_alias )';
    consulta.ExecSQL;
  }

  consulta.Close;
  consulta.sql.Text := 'select clbcodigo from clb where clbativo=' + QuotedStr('1') + '  and clbcodigo<>1 and clbsuper=1 and clbcodigo=' +
    acesso.usuario.ToString + ' limit 1';
  consulta.Open;

  vlclbsuper := consulta.FieldByName('clbcodigo').AsString;

  if (vlclbsuper = '') and (acesso.usuario <> 1) then
  begin
    ShowMessage('Atenção: É necessário um operador marcado com Adminsitrador!');
    Exit;
  end
  else
  begin
    vlclbsuper := consulta.FieldByName('clbcodigo').AsString;
  end;

  if acesso.usuario.ToString = '1' then
  begin

    dauati.Close;
    dauati.sql.Text := ' SELECT mdp.mdpcodigo, grm.grmcodigo, btm.btmcodigo, act.actcodigo  FROM   mdp, grm, btm, bpl, act, dau ';
    dauati.sql.Add(' WHERE grm.mdpcodigo = mdp.mdpcodigo AND grm.grmcodigo = btm.grmcodigo AND bpl.bplcodigo = btm.bplcodigo ');
    dauati.sql.Add(' AND act.actformulario = bpl.bplfranome AND dau.actcodigo = act.actcodigo AND dau.clbcodigo =' + QuotedStr(Self.registroclbcodigo.AsString)
      + ' AND dau.dauativo = 1');

  end
  else
  begin

    dauati.Close;
    dauati.sql.Text := ' SELECT mdp.mdpcodigo, grm.grmcodigo, btm.btmcodigo, act.actcodigo  FROM   mdp, grm, btm, bpl, act, dau ';
    dauati.sql.Add(' WHERE grm.mdpcodigo = mdp.mdpcodigo AND grm.grmcodigo = btm.grmcodigo AND bpl.bplcodigo = btm.bplcodigo ');
    dauati.sql.Add(' AND act.actformulario = bpl.bplfranome AND dau.actcodigo = act.actcodigo AND dau.clbcodigo =' + QuotedStr(vlclbsuper));
    dauati.sql.Add(' AND dau.dauativo=1');

  end;
  // 'SELECT act.actcodigo FROM act,dau WHERE dau.dauativo=1 and act.actcodigo=dau.actcodigo and dau.clbcodigo=' + vlclbsuper;
  dauati.Open;

  ArvoreMenu.Items.BeginUpdate;
  ArvoreMenu.Items.Clear;

  mdp.Open;

  mdp.first;
  m := 0;
  v := 0;

  Mostra.Max := mdp.RecordCount;
  Mostra.Position := 0;
  application.ProcessMessages;

  while not mdp.Eof do
  begin
    if (dauati.Locate('mdpcodigo', mdp.FieldByName('mdpcodigo').AsInteger, [])) or (acesso.usuario = 1) then
    begin

      Mostra.Position := Mostra.Position + 1;
      application.ProcessMessages;

      vlModulo := UpperCase(mdpmdpidentificacao.AsString);

      vlNodeMd := TCustomTreeNode(ArvoreMenu.Items.AddChild(nil, vlModulo));

      vlNodeMd.StateIndex := 1;
      grm.Close;
      grm.Params[0].AsInteger := mdpmdpcodigo.AsInteger;
      grm.Open;
      g := 0;
      grm.first;
      while not grm.Eof do
      begin
        if (dauati.Locate('grmcodigo', grm.FieldByName('grmcodigo').AsInteger, [])) or (acesso.usuario = 1) then
        begin

          BoldTreeNode(vlNodeMd, True);

          vlGrupo := UpperNome(grmgrmidentificacao.AsString);
          vlNodeGp := TCustomTreeNode(ArvoreMenu.Items.AddChild(vlNodeMd, vlGrupo));

          btm.Close;
          btm.Params[0].AsInteger := grmgrmcodigo.AsInteger;
          btm.Open;

          btm.first;
          while not btm.Eof do
          begin
            if (dauati.Locate('btmcodigo', btm.FieldByName('btmcodigo').AsInteger, [])) or (acesso.usuario = 1) then
            begin

              vlBotao := { formatfloat('0000', btmbtmcodigo.AsInteger) + ' ' + }
                UpperNome(btmbtmidentificacao.AsString);
              vlNodeBt := TCustomTreeNode(ArvoreMenu.Items.AddChild(vlNodeGp, vlBotao));

              bpl.Close;
              bpl.Params[0].AsInteger := btmbplcodigo.AsInteger;
              bpl.Open;

              act.Close;
              act.Params[0].AsString := lowercase(bplbplfranome.AsString);

              act.Open;

              if act.IsEmpty then
              begin


                mdl.Close;
                mdl.ParamByName('mdlnome').AsString := bplbplfranome.AsString;
                mdl.Open;

                if not mdl.IsEmpty then
                begin

                  if (bplbplfranome.AsString = 'fraecb') or  (bplbplfranome.AsString = 'fracrg') then
                  begin
                    act.Append;
                    actactidentificacao.AsString := '000 Enviar Carga';
                    actmdlcodigo.AsString := mdl.FieldByName('mdlcodigo').AsString;
                    actactformulario.AsString := lowercase(bplbplfranome.AsString);
                    actactacao.AsString := 'ActConfirma';
                    actactativa.AsString := '1';
                    act.post;
                  end;
                end;


              end;

              act.first;
              while not act.Eof do
              begin

                if (acesso.usuario = 1) or (pos('relat', semacento(trim(lowercase(actactidentificacao.AsString)))) > 0) or
                  (dauati.Locate('actcodigo', act.FieldByName('actcodigo').AsInteger, [])) then
                begin
                  v := v + 1;

                  if (pos('relat', semacento(trim(lowercase(actactidentificacao.AsString)))) > 0) and (pos('fprinci', lowercase(actactformulario.AsString)) = 0)
                  then
                  begin
                    mre.Close;
                    mre.Params[0].AsInteger := bplbplcodigo.AsInteger;
                    mre.Open;
                    if not mre.IsEmpty then
                    begin
                      vlItemMenu := 'Relatórios';
                      vlNodeIt := TCustomTreeNode(ArvoreMenu.Items.AddChild(vlNodeBt, vlItemMenu));

                      while not mre.Eof do
                      begin
                        rel.Close;
                        rel.Params[0].AsString := mrerelcodigo.AsString;
                        rel.Open;

                        if not rel.IsEmpty then
                        begin
                          vlItemMenu := stringreplace(relrelcodigo.AsString + ' ' + relrelidentificacao.AsString, '  ', ' ', [rfReplaceAll, rfIgnoreCase]);
                          vlNodeRl := TCustomTreeNode(ArvoreMenu.Items.AddChild(vlNodeIt, vlItemMenu));

                          consulta.Close;
                          consulta.sql.Text := 'select rauativo from rau where clbcodigo=' + Self.registroclbcodigo.AsString + ' and ';
                          consulta.sql.Add('relcodigo=' + chr(39) + relrelcodigo.AsString + chr(39) + ' and ');
                          consulta.sql.Add('rauativo=1');
                          consulta.Open;

                          if not consulta.IsEmpty then
                          begin
                            vlNodeRl.Selected := True;
                            TreeMenuItem(True);
                          end;

                        end;
                        mre.next;
                      end;
                    end;
                  end
                  else
                  begin

                    vlItemMenu := stringreplace(formatfloat('0000', actactcodigo.AsInteger) + ' ' + copy(actactidentificacao.AsString, 5, 200), '  ', ' ',
                      [rfReplaceAll, rfIgnoreCase]);

                    vlNodeIt := TCustomTreeNode(ArvoreMenu.Items.AddChild(vlNodeBt, vlItemMenu));
                    vlNodeIt.Comment := actactformulario.AsString + '#' + actactacao.AsString;

                    consulta.Close;
                    consulta.sql.Text := 'select dauativo from dau where clbcodigo=' + Self.registroclbcodigo.AsString + ' and ';
                    // consulta.sql.Add('actcodigo=' + actactcodigo.AsString + ' and ');
                    consulta.sql.Add('actformulario=' + QuotedStr(actactformulario.AsString) + ' and ');
                    consulta.sql.Add('actacao=' + QuotedStr(actactacao.AsString) + ' and ');

                    consulta.sql.Add('dauativo=1');
                    consulta.Open;
                    if not consulta.IsEmpty then
                    begin
                      vlNodeIt.Selected := True;
                      TreeMenuItem(True);
                    end
                    else
                    begin

                    end;

                  end;
                end;
                act.next;
              end;

            end;
            btm.next;
          end;
        end;
        grm.next;
        g := g + 1;
      end;
    end;
    mdp.next;
    m := m + 1;
  end;

  ArvoreMenu.FullExpand;
  SetTreeViewItemHeight(ArvoreMenu, 20);
  FChangingTree := false;
  ArvoreMenu.Items.EndUpdate;

  Mostra.Position := 0;
  application.ProcessMessages;
end;

procedure Tfdireitos.MostrarArvoreTimer(Sender: TObject);
begin
  inherited;
  MostrarArvore.Enabled := false;
  MontaArvore;
end;

procedure Tfdireitos.CheckChild(Node: TTreeNode);
var
  child: TTreeNode;
  i: Integer;
begin
  i := Node.Level;

  ArvoreMenu.Selected.ImageIndex := 1;
  Node.ImageIndex := 1;
  Node.SelectedIndex := 1;
  child := Node.GetFirstChild;
  repeat
    if child.HasChildren then
      CheckChild(child)
    else
    begin
      ArvoreMenu.Selected.ImageIndex := 1;
      child.ImageIndex := 1;
      child.SelectedIndex := 1;
    end;
    child := Node.GetNextChild(child);
  until child = nil;
end;

procedure Tfdireitos.UnCheckChild(Node: TTreeNode);
var
  child: TTreeNode;
begin
  ArvoreMenu.Selected.ImageIndex := 0;
  Node.ImageIndex := 0;
  Node.SelectedIndex := 0;
  child := Node.GetFirstChild;
  repeat
    if child.HasChildren then
      UnCheckChild(child)
    else
    begin
      ArvoreMenu.Selected.ImageIndex := 0;
      child.ImageIndex := 0;
      child.SelectedIndex := 0;
    end;
    child := Node.GetNextChild(child);
  until child = nil;
end;

procedure Tfdireitos.TreeMenuItem(Marca: Boolean);
var
  AbsIdx: Integer;
begin
  if Marca then
  begin

    if ArvoreMenu.Selected.ImageIndex < 2 then
    begin
      if ArvoreMenu.Selected.ImageIndex = 0 then // marcar
      begin
        AbsIdx := ArvoreMenu.Selected.AbsoluteIndex;
        while AbsIdx > -1 do
        begin
          ArvoreMenu.Selected.ImageIndex := 1;
          ArvoreMenu.Items.Item[AbsIdx].ImageIndex := 1;
          ArvoreMenu.Items.Item[AbsIdx].SelectedIndex := 1;
          if ArvoreMenu.Items.Item[AbsIdx].Parent <> nil then
          begin
            AbsIdx := ArvoreMenu.Items.Item[AbsIdx].Parent.AbsoluteIndex;
            if ArvoreMenu.Selected.ImageIndex = 2 then
              AbsIdx := -1;
          end
          else
            AbsIdx := -1;
        end;
        if ArvoreMenu.Selected.HasChildren then
          CheckChild(ArvoreMenu.Selected);
      end
      else if ArvoreMenu.Selected.HasChildren then
        UnCheckChild(ArvoreMenu.Selected)
      else
      begin
        ArvoreMenu.Selected.ImageIndex := 0;
        ArvoreMenu.Selected.ImageIndex := 0;
        ArvoreMenu.Selected.SelectedIndex := 0;
      end; // desmarcar
      ArvoreMenu.Repaint;
    end;
  end
  else
  begin

    if ArvoreMenu.Selected.ImageIndex < 2 then
    begin
      if ArvoreMenu.Selected.ImageIndex = 1 then // marcar
      begin
        AbsIdx := ArvoreMenu.Selected.AbsoluteIndex;
        while AbsIdx > -1 do
        begin
          ArvoreMenu.Selected.ImageIndex := 0;
          ArvoreMenu.Items.Item[AbsIdx].ImageIndex := 0;
          ArvoreMenu.Items.Item[AbsIdx].SelectedIndex := 0;
          if ArvoreMenu.Items.Item[AbsIdx].Parent <> nil then
          begin
            AbsIdx := ArvoreMenu.Items.Item[AbsIdx].Parent.AbsoluteIndex;
            if ArvoreMenu.Selected.ImageIndex = 2 then
              AbsIdx := -1;
          end
          else
            AbsIdx := -1;
        end;
        if ArvoreMenu.Selected.HasChildren then
          UnCheckChild(ArvoreMenu.Selected);
      end;
      ArvoreMenu.Repaint;
    end;
  end;
end;

end.
