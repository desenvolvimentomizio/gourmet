unit ufdau;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.DBCtrls, Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.AppEvnts, System.Contnrs, System.Actions, System.ImageList, Vcl.ImgList,
  PngImageList;

type
  TGroupItem = class
  private
    fItems: TObjectList;
    fCaption: string;
    fListItem: TListItem;
    fExpanded: Boolean;
    function GetItems: TObjectList;
  public
    constructor Create(const Caption: string; const numberOfSubItems: Integer; Titulos: TStringList);
    destructor Destroy; override;

    procedure Expand;
    procedure Collapse;

    property Expanded: Boolean read fExpanded;
    property Caption: string read fCaption;
    property Items: TObjectList read GetItems;
    property ListItem: TListItem read fListItem write fListItem;
  end;

  TItem = class
  private
    fTitle: string;
    fValue: string;
    fImage: Integer;

  public
    constructor Create(const title, value: string; const image: Integer);
    property title: string read fTitle;
    property value: string read fValue;
    property image: Integer read fImage;

  end;

type
  Tfdau = class(Tfrmbase)
    ImageList1: TImageList;
    mdl: tuniquery;
    mdlmdlcodigo: TIntegerField;
    mdlmdlidentificacao: TStringField;
    mdlmdlconfig: TIntegerField;
    mdlmdlsubgrupo: TStringField;
    dauclb: tuniquery;
    dauclbdaucodigo: TIntegerField;
    dauclbclbcodigo: TIntegerField;
    dauclbactcodigo: TIntegerField;
    act: tuniquery;
    actactcodigo: TIntegerField;
    actmdlcodigo: TIntegerField;
    actactidentificacao: TStringField;
    actactformulario: TStringField;
    actactacao: TStringField;
    Dact: tunidatasource;
    PlModulos: TPanel;
    PlTituloModulo: TPanel;
    PlPermicoes: TPanel;
    PlDisponiveis: TPanel;
    PlTituloDisponiveis: TPanel;
    SlDireitos: TSplitter;
    PlConcedidos: TPanel;
    PlTituloConcedidos: TPanel;
    PlDescricao: TPanel;
    PlBotoesLiberacao: TPanel;
    SBIncluirUm: TSpeedButton;
    SBIncluirTodos: TSpeedButton;
    SBExcluirUn: TSpeedButton;
    SBExcluirTodos: TSpeedButton;
    registroclbidentificacao: TStringField;
    registroclbcodigo: TIntegerField;
    tremdl: tuniquery;
    submdl: tuniquery;
    submdlmdlidentificacao: TStringField;
    actmdl: tuniquery;
    actmdlactcodigo: TIntegerField;
    actmdlactidentificacao: TStringField;
    submdlmdlcodigo: TIntegerField;
    SBModulos: TScrollBox;
    acoes: TActionList;
    ActDireitos: TAction;
    mdldau: tuniquery;
    mdldaudaucodigo: TIntegerField;
    mdldauactcodigo: TIntegerField;
    mdldauclbcodigo: TIntegerField;
    tremdlmdlcodigo: TIntegerField;
    PlTitulodosModulos: TPanel;
    pldescricaodireito: TPanel;
    PlTopo: TPanel;
    PlColaborador: TPanel;
    clbcodigo: TDBText;
    clbidentificacao: TDBText;
    pleticolaborador: TPanel;
    submdlmdlnome: TStringField;
    novdau: tuniquery;
    novdauactcodigo: TIntegerField;
    novdauclbcodigo: TIntegerField;
    novdaudauativo: TIntegerField;
    mdldaudauativo: TIntegerField;
    listViewImages: TImageList;
    lvGroups: TListView;
    lvGroupsPerm: TListView;
    submdlmdlsubgrupo: TStringField;
    tremdlmdlidentificacao: TStringField;
    plRelDis: TPanel;
    plRelAut: TPanel;
    plTitRelDis: TPanel;
    Panel1: TPanel;
    DBGListaDis: TDBGrid;
    DBGListaAut: TDBGrid;
    DRelDis: TDataSource;
    DRelAut: TDataSource;
    SBIncluirUmRel: TSpeedButton;
    SBExcluirUnRel: TSpeedButton;
    relrau: tuniquery;
    relrauclbcodigo: TIntegerField;
    relraurelcodigo: TStringField;
    relraurauativo: TIntegerField;
    reldis: tuniquery;
    relaut: tuniquery;
    relautfracodigo: TIntegerField;
    relautfraidentificacao: TStringField;
    relautfranome: TStringField;
    relautrelidentificacao: TStringField;
    reldisfracodigo: TIntegerField;
    reldisfraidentificacao: TStringField;
    reldisfranome: TStringField;
    reldisrelidentificacao: TStringField;
    fra: tuniquery;
    frafracodigo: TIntegerField;
    SBIncluirTodosRel: TSpeedButton;
    SBExcluirTodosRel: TSpeedButton;
    plBotoesPermissoes: TPanel;
    btAutorizarTodos: TBitBtn;
    btNegarTodos: TBitBtn;
    rel: tuniquery;
    acttodas: tuniquery;
    reldisrelcodigo: TStringField;
    relautrelcodigo: TStringField;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bbloqueartodosClick(Sender: TObject);
    procedure SBExcluirUnClick(Sender: TObject);
    procedure SBExcluirTodosClick(Sender: TObject);
    procedure SBIncluirUmClick(Sender: TObject);
    procedure SBIncluirTodosClick(Sender: TObject);
    procedure lvGroupsAdvancedCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure lvGroupsDblClick(Sender: TObject);
    procedure lvGroupsPermAdvancedCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
      var DefaultDraw: Boolean);
    procedure lvGroupsPermDblClick(Sender: TObject);
    procedure lvGroupsDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure lvGroupsPermDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure lvGroupsClick(Sender: TObject);
    procedure lvGroupsPermClick(Sender: TObject);
    procedure SBIncluirUmRelClick(Sender: TObject);
    procedure SBExcluirUnRelClick(Sender: TObject);
    procedure SBIncluirTodosRelClick(Sender: TObject);
    procedure SBExcluirTodosRelClick(Sender: TObject);
    procedure btNegarTodosClick(Sender: TObject);
    procedure btAutorizarTodosClick(Sender: TObject);
  private
    vclbcodigo: String;
    procedure BtModulosOnClick(Sender: TObject);
    procedure MoverParaDisponiveis;
    procedure MoverParaAutorizados;
    procedure AtualizarListas;
    procedure ClearListViewGroups;
    procedure ExpandirTodos;
    procedure AjustaListaRelatorios(vlTitulo: string);
    procedure AtualizaListaRel;

    { Private declarations }
  public
    { Public declarations }

    vgrupoatual: string;
  end;

  // Início ID do Módulo fraclb
const
  vPlIdMd = '01.01.02.001-03';

  // Fim ID do Módulo fraclb

var
  fdau: Tfdau;

implementation

{$R *.dfm}
{$REGION 'TGroupItem'}

procedure TGroupItem.Collapse;
var
  li: TListItem;
begin
  if NOT Expanded then
    Exit;

  ListItem.ImageIndex := 1;
  fExpanded := False;

  li := TListView(ListItem.ListView).Items[ListItem.Index + 1];
  while (li <> nil) AND (TObject(li.Data) is TItem) do
  begin
    TListView(ListItem.ListView).Items.Delete(li.Index);
    li := TListView(ListItem.ListView).Items[ListItem.Index + 1];
  end;
end;

constructor TGroupItem.Create(const Caption: string; const numberOfSubItems: Integer; Titulos: TStringList);
var
  cnt: Integer;
  novo: TItem;
begin

  fCaption := Caption;

  for cnt := 1 to numberOfSubItems do
    Items.Add(TItem.Create(' ' + Trim(Copy(Titulos[cnt - 1], 9, 200)), Trim(Copy(Titulos[cnt - 1], 1, 9)), 1));

  Items.Expand;
end;

destructor TGroupItem.Destroy;
begin
  FreeAndNil(fItems);
  inherited;
end;

procedure TGroupItem.Expand;
var
  cnt: Integer;
  Item: TItem;
begin
  if Expanded then
    Exit;

  ListItem.ImageIndex := 0;
  fExpanded := True;

  for cnt := 0 to -1 + Items.Count do
  begin
    Item := TItem(Items[cnt]);
    with TListView(ListItem.ListView).Items.Insert(1 + cnt + ListItem.Index) do
    begin
      Caption := Item.title;
      SubItems.Add(Item.value);
      Data := Item;
      ImageIndex := -1;
    end;
  end;
end;

function TGroupItem.GetItems: TObjectList;
begin
  if fItems = nil then
    fItems := TObjectList.Create(True);
  Result := fItems;
end;
{$ENDREGION}
{$REGION 'TItem' }

constructor TItem.Create(const title, value: string; const image: Integer);
begin
  fTitle := title;
  fValue := value;
  fImage := image;

end;
{$ENDREGION}

procedure Tfdau.ClearListViewGroups;
var
  li: TListItem;
  qng: TGroupItem;
begin
  for li in lvGroups.Items do
  begin
    if TObject(li.Data) is TGroupItem then
    begin
      qng := TGroupItem(li.Data);
      FreeAndNil(qng);
    end;
  end;
  lvGroups.Clear;

  for li in lvGroupsPerm.Items do
  begin
    if TObject(li.Data) is TGroupItem then
    begin
      qng := TGroupItem(li.Data);
      FreeAndNil(qng);
    end;
  end;
  lvGroupsPerm.Clear;
end;

procedure Tfdau.bbloqueartodosClick(Sender: TObject);
Var
  i: Integer;
Begin
  Inherited;
end;

procedure Tfdau.bconfirmaClick(Sender: TObject);
Var
  i: Integer;
  vactcodigo: Integer;
  vcod: String;
Begin
  { inherited; }
  dau.Open;

  Close;
end;

procedure Tfdau.btAutorizarTodosClick(Sender: TObject);
var
  smsg: STRING;
begin
  inherited;
  smsg := 'Autorizar TODOS Módulos e Relatórios para este usuário ?';
  If Application.MessageBox(PChar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    acttodas.Close;
    acttodas.Open;

    mdldau.Close;
    mdldau.sql.Text := 'SELECT * FROM dau WHERE clbcodigo=' + vclbcodigo;
    mdldau.Open;

    while not acttodas.Eof do
    begin

      if mdldau.Locate('actcodigo', acttodas.FieldByName('actcodigo').AsInteger, []) then
      begin
        mdldau.Edit;
        mdldaudauativo.AsInteger := 1;
        mdldau.Post;
      end
      else
      begin
        mdldau.Append;
        mdldauactcodigo.AsInteger := acttodas.FieldByName('actcodigo').AsInteger;
        mdldauclbcodigo.AsString := vclbcodigo;
        mdldaudauativo.AsInteger := 1;
        mdldau.Post;
      end;
      acttodas.Next;
    end;

    consulta.Close;
    consulta.sql.Text := 'update dau set dauativo=1 where clbcodigo=' + Self.clbcodigo.Field.AsString;
    consulta.ExecSQL;

    rel.Close;
    rel.Open;
    rel.First;
    while not rel.Eof do
    begin
      consulta.Close;
      consulta.sql.Text := ' insert into rau values (@auto_increment,' + clbcodigo.Field.AsString + ',' + chr(39) + Self.rel.FieldByName('relcodigo')
        .AsString + chr(39) + ',1)';
      consulta.ExecSQL;

      rel.Next;
    end;
    AtualizarListas;
    AtualizaListaRel;

  End;
end;

procedure Tfdau.FormShow(Sender: TObject);

Var
  i, p, b: Integer;

  nmodulo, ngrupo, nsubgrupo: String;
  vcod: String;

  pcatbt: TPanel;
  btacao: TSpeedButton;

Begin
  IdModulo := vPlIdMd;
  Inherited;

  tremdl.Close;
  tremdl.Open;
  b := 0;
  while not tremdl.Eof do
  begin
    b := b + 1;

    if Trim(tremdlmdlidentificacao.AsString) <> '' then
    begin

      btacao := TSpeedButton.Create(SBModulos);
      btacao.Parent := SBModulos;
      btacao.GroupIndex := 1;
      btacao.Caption := tremdlmdlidentificacao.AsString;
      btacao.Align := alBottom;
      btacao.Margin := 30;
      btacao.Align := alTop;
      btacao.Height := 22;
      btacao.Margin := 5;
      btacao.Tag := Self.tremdlmdlcodigo.AsInteger;
      btacao.OnClick := BtModulosOnClick;

    end;
    tremdl.Next;
  end;
  PlTitulodosModulos.Caption := 'Módulos do Sistema: ' + IntToStr(b);

  vclbcodigo := Self.vChaveMestre;

  dauclb.Close;
  dauclb.ParamByName('clbcodigo').AsString := Self.vclbcodigo;
  dauclb.Open;
end;

procedure Tfdau.lvGroupsAdvancedCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
begin
  inherited;
  // bold group items
  if TObject(Item.Data) is TGroupItem then
    lvGroups.Canvas.Font.Style := lvGroups.Canvas.Font.Style + [fsBold];

end;

procedure Tfdau.lvGroupsClick(Sender: TObject);
var
  vlTitulo: string;

begin
  inherited;
  if lvGroups.Items[lvGroups.ItemIndex].Selected then
  begin
    vlTitulo := Trim(lvGroups.Items[lvGroups.ItemIndex].Caption);

    AjustaListaRelatorios(vlTitulo);

  end;
end;

procedure Tfdau.ExpandirTodos;
var
  hts: THitTests;
  gi: TGroupItem;
  X: Integer;
  t: Integer;
  p: Integer;
begin
  inherited;

  for p := 1 to 30 do
  begin

    t := lvGroups.Items.Count;
    for X := 0 to t - 1 do
    begin
      lvGroups.Items[X].Selected := True;
      if TObject(lvGroups.Items[X].Data) is (TGroupItem) then
      begin
        gi := TGroupItem(lvGroups.Items[X].Data);

        if NOT gi.Expanded then
          gi.Expand;
      end;

    end;

    for X := 0 to lvGroups.Items.Count - 1 do
      lvGroups.Items[X].Selected := False;
  end;

  for p := 1 to 30 do
  begin
    t := lvGroupsPerm.Items.Count;
    for X := 0 to t - 1 do
    begin
      lvGroupsPerm.Items[X].Selected := True;
      if TObject(lvGroupsPerm.Items[X].Data) is (TGroupItem) then
      begin
        gi := TGroupItem(lvGroupsPerm.Items[X].Data);

        if NOT gi.Expanded then
          gi.Expand;
      end;

    end;

    for X := 0 to lvGroupsPerm.Items.Count - 1 do
      lvGroupsPerm.Items[X].Selected := False;
  end;
end;

procedure Tfdau.AjustaListaRelatorios(vlTitulo: string);
begin
  if vlTitulo = 'Relatórios' then
  begin
    plRelDis.Visible := True;
    plRelAut.Visible := True;
    SBIncluirUmRel.Visible := True;
    SBExcluirUnRel.Visible := True;
  end
  else
  begin
    plRelDis.Visible := False;
    plRelAut.Visible := False;
    SBIncluirUmRel.Visible := False;
    SBExcluirUnRel.Visible := False;

  end;
end;

procedure Tfdau.AtualizaListaRel;
begin
  reldis.Close;
  reldis.Params[0].AsString := frafracodigo.AsString;
  reldis.Params[1].AsString := clbcodigo.Field.AsString;
  reldis.Open;
  relaut.Close;
  relaut.Params[0].AsString := frafracodigo.AsString;
  relaut.Params[1].AsString := clbcodigo.Field.AsString;
  relaut.Open;
end;

procedure Tfdau.lvGroupsDblClick(Sender: TObject);
var
  hts: THitTests;
  gi: TGroupItem;
begin
  inherited;

  hts := lvGroups.GetHitTestInfoAt(lvGroups.ScreenToClient(Mouse.CursorPos).X, lvGroups.ScreenToClient(Mouse.CursorPos).Y);

  if (lvGroups.Selected <> nil) then
  begin
    if TObject(lvGroups.Selected.Data) is (TGroupItem) then
    begin
      gi := TGroupItem(lvGroups.Selected.Data);

      if NOT gi.Expanded then
        gi.Expand
      else
        gi.Collapse;
    end
    else
    begin
      SBIncluirUm.Click;
    end;
  end;
end;

procedure Tfdau.lvGroupsDragOver(Sender, Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  Accept := True;
end;

procedure Tfdau.lvGroupsPermAdvancedCustomDrawItem(Sender: TCustomListView; Item: TListItem; State: TCustomDrawState; Stage: TCustomDrawStage;
  var DefaultDraw: Boolean);
begin
  inherited;
  // bold group items
  if TObject(Item.Data) is TGroupItem then
    lvGroupsPerm.Canvas.Font.Style := lvGroupsPerm.Canvas.Font.Style + [fsBold];
end;

procedure Tfdau.lvGroupsPermClick(Sender: TObject);
var
  vlTitulo: string;

begin
  inherited;
  if lvGroupsPerm.Items[lvGroupsPerm.ItemIndex].Selected then
  begin
    vlTitulo := Trim(lvGroupsPerm.Items[lvGroupsPerm.ItemIndex].Caption);

    AjustaListaRelatorios(vlTitulo);

  end;

end;

procedure Tfdau.lvGroupsPermDblClick(Sender: TObject);
var
  hts: THitTests;
  gi: TGroupItem;
begin
  inherited;

  hts := lvGroupsPerm.GetHitTestInfoAt(lvGroupsPerm.ScreenToClient(Mouse.CursorPos).X, lvGroupsPerm.ScreenToClient(Mouse.CursorPos).Y);

  if (lvGroupsPerm.Selected <> nil) then
    if TObject(lvGroupsPerm.Selected.Data) is (TGroupItem) then
    begin
      gi := TGroupItem(lvGroupsPerm.Selected.Data);

      if NOT gi.Expanded then
        gi.Expand
      else
        gi.Collapse;
    end
    else
      SBExcluirUn.Click;
end;

procedure Tfdau.lvGroupsPermDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  inherited;
  (Source as TListView).Items[(Source as TListView).ItemIndex].Selected := True;
  SBIncluirUm.Click;
end;

procedure Tfdau.SBExcluirTodosClick(Sender: TObject);
var
  cdact, i: Integer;
  linha: string;
begin
  inherited;

  for i := 0 to lvGroupsPerm.Items.Count - 1 do
    lvGroupsPerm.Items[i].Selected := True;

  MoverParaDisponiveis;

  if plRelAut.Visible then
  begin
    SBExcluirTodosRel.Click;
  end;

  ExpandirTodos;
end;

procedure Tfdau.SBExcluirTodosRelClick(Sender: TObject);
begin
  inherited;
  if not relaut.IsEmpty then
  begin
    while not relaut.Eof do
    begin
      consulta.Close;
      consulta.sql.Text := 'delete from rau where clbcodigo=' + clbcodigo.Field.AsString + '  and relcodigo=' + chr(39) +
        Self.relautrelcodigo.AsString + chr(39);
      consulta.ExecSQL;
      relaut.Next;
    end;
  end;
  AtualizaListaRel;
end;

procedure Tfdau.SBExcluirUnClick(Sender: TObject);
begin
  inherited;

  MoverParaDisponiveis;
  ExpandirTodos;
end;

procedure Tfdau.SBExcluirUnRelClick(Sender: TObject);
begin
  inherited;
  if not relaut.IsEmpty then
  begin
    consulta.Close;
    consulta.sql.Text := 'delete from rau where clbcodigo=' + clbcodigo.Field.AsString + '  and relcodigo=' + chr(39) + Self.relautrelcodigo.AsString
      + chr(39);
    consulta.ExecSQL;

  end;
  AtualizaListaRel;

end;

procedure Tfdau.SBIncluirTodosClick(Sender: TObject);
var
  X: Integer;
begin
  inherited;

  Self.ExpandirTodos;

  for X := 0 to lvGroups.Items.Count - 1 do
  begin
    lvGroups.Items[X].Selected := True;
    if TObject(lvGroups.Items[X].Data) is (TGroupItem) then
      lvGroups.Items[X].Selected := False;
  end;

  MoverParaAutorizados;

  if plRelDis.Visible then
  begin
    SBIncluirTodosRel.Click;
  end;

  Self.ExpandirTodos;
end;

procedure Tfdau.SBIncluirTodosRelClick(Sender: TObject);
begin
  inherited;

  if not reldis.IsEmpty then
  begin
    reldis.First;
    while not reldis.Eof do
    begin
      consulta.Close;
      consulta.sql.Text := ' insert into rau values (@auto_increment,' + clbcodigo.Field.AsString + ',' + chr(39) + Self.reldisrelcodigo.AsString +
        chr(39) + ',1)';
      consulta.ExecSQL;
      reldis.Next;
    end;
  end;

  AtualizaListaRel;
end;

procedure Tfdau.SBIncluirUmClick(Sender: TObject);
var
  X: Integer;
begin
  inherited;
  if (lvGroups.Selected <> nil) then
    if TObject(lvGroups.Selected.Data) is (TGroupItem) then
      ShowMessage('Este é o título do Grupo, selecione alguns dos itens do grupo.')
    else
    begin
      MoverParaAutorizados;
      ExpandirTodos;
    end;
end;

procedure Tfdau.SBIncluirUmRelClick(Sender: TObject);
begin
  inherited;
  if not reldis.IsEmpty then
  begin
    consulta.Close;
    consulta.sql.Text := ' insert into rau values (@auto_increment,' + clbcodigo.Field.AsString + ',' + chr(39) + Self.reldisrelcodigo.AsString +
      chr(39) + ',1)';
    consulta.ExecSQL;
  end;

  AtualizaListaRel;

end;

procedure Tfdau.BtModulosOnClick(Sender: TObject);
begin
  { inherited; }

  vgrupoatual := (Sender as TSpeedButton).Caption;
  AtualizarListas;
  ExpandirTodos;
end;

procedure Tfdau.btNegarTodosClick(Sender: TObject);
var
  smsg: STRING;
begin
  inherited;
  smsg := 'Remover TODOS direitos de acesso do usuário ?';
  If Application.MessageBox(PChar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.sql.Text := 'update dau set dauativo=0 where clbcodigo=' + Self.clbcodigo.Field.AsString;
    consulta.ExecSQL;

    consulta.Close;
    consulta.sql.Text := 'delete from rau where clbcodigo=' + Self.clbcodigo.Field.AsString;
    consulta.ExecSQL;

    AtualizarListas;
    AtualizaListaRel;

  End;

end;

procedure Tfdau.MoverParaDisponiveis;
var
  cdact: string;
  linha: string;
  X: Integer;
begin

  mdldau.Close;
  mdldau.sql.Text := 'SELECT * FROM dau WHERE clbcodigo=' + vclbcodigo;
  mdldau.Open;

  for X := 0 to lvGroupsPerm.Items.Count - 1 do
    if lvGroupsPerm.Items[X].Selected then
    begin
      linha := lvGroupsPerm.Items[X].Caption;

      if not(TObject(lvGroupsPerm.Items[X].Data) is (TGroupItem)) then
      begin
        cdact := Copy(lvGroupsPerm.Items[X].SubItems[0], 4, 10);

        if mdldau.Locate('actcodigo', strtoint(cdact), []) then
        begin
          mdldau.Edit;
          mdldaudauativo.AsInteger := 0;
          mdldau.Post;
        end
        else
        begin
          mdldau.Append;
          mdldauactcodigo.AsInteger := strtoint(cdact);
          mdldauclbcodigo.AsString := vclbcodigo;
          mdldaudauativo.AsInteger := 0;
          mdldau.Post;
        end;
      end;
    end;

  AtualizarListas;
end;

procedure Tfdau.MoverParaAutorizados;
var
  cdact: string;
  X: Integer;
  linha: string;
begin

  relrau.Close;
  relrau.sql.Text := 'SELECT * FROM rau WHERE clbcodigo=' + vclbcodigo;
  relrau.Open;

  mdldau.Close;
  mdldau.sql.Text := 'SELECT * FROM dau WHERE clbcodigo=' + vclbcodigo;
  mdldau.Open;

  for X := 0 to lvGroups.Items.Count - 1 do
    if lvGroups.Items[X].Selected then
    begin
      linha := lvGroups.Items[X].Caption;

      if not(TObject(lvGroups.Items[X].Data) is (TGroupItem)) then
      begin
        cdact := Copy(lvGroups.Items[X].SubItems[0], 4, 10);

        if mdldau.Locate('actcodigo', strtoint(cdact), []) then
        begin
          mdldau.Edit;
          mdldaudauativo.AsInteger := 1;
          mdldau.Post;
        end
        else
        begin
          mdldau.Append;
          mdldauactcodigo.AsInteger := strtoint(cdact);
          mdldauclbcodigo.AsString := vclbcodigo;
          mdldaudauativo.AsInteger := 1;
          mdldau.Post;
        end;

      end;
    end;

  AtualizarListas;

end;

procedure Tfdau.AtualizarListas;
var
  Titulos: TStringList;
  TitulosPerm: TStringList;

  procedure AddGroupItem(gi: TGroupItem);
  var
    li: TListItem;
  begin
    li := lvGroups.Items.Add;

    li.Caption := gi.Caption;
    li.ImageIndex := 1; // collapsed

    li.Data := gi;
    gi.ListItem := li; // link "back"
  end;

  procedure AddGroupItemPerm(gi: TGroupItem);
  var
    li: TListItem;
  begin
    li := lvGroupsPerm.Items.Add;

    li.Caption := gi.Caption;
    li.ImageIndex := 1; // collapsed

    li.Data := gi;
    gi.ListItem := li; // link "back"
  end;

begin

  Titulos := TStringList.Create;
  TitulosPerm := TStringList.Create;

  ClearListViewGroups;

  pldescricaodireito.Caption := 'Definições de direito de acesso para o módulo ' + vgrupoatual;

  submdl.Close;
  submdl.ParamByName('mdlidentificacao').AsString := vgrupoatual;
  submdl.Open;

  fra.Close;
  fra.Params[0].AsString := Self.submdlmdlnome.AsString;
  fra.Open;

  AtualizaListaRel;

  while not submdl.Eof do
  begin
    actmdl.Close;
    actmdl.ParamByName('mdlnome').AsString := Self.submdlmdlnome.AsString;
    actmdl.ParamByName('mdlcodigo').AsInteger := Self.submdlmdlcodigo.AsInteger;
    actmdl.Open;

    if Trim(submdlmdlidentificacao.AsString) <> '' then
    begin
      while not actmdl.Eof do
      begin

        mdldau.Close;
        mdldau.sql.Text := 'SELECT dau.daucodigo, act.actcodigo, dau.clbcodigo, dau.dauativo FROM mdl, act, dau WHERE ';
        mdldau.sql.Add('act.mdlcodigo = mdl.mdlcodigo AND ');
        mdldau.sql.Add('dau.actcodigo = act.actcodigo AND ');
        mdldau.sql.Add('clbcodigo = ' + vclbcodigo + ' AND ');
        mdldau.sql.Add('dau.actcodigo = ' + Self.actmdlactcodigo.AsString + '');
        mdldau.sql.Add('ORDER BY mdl.mdlcodigo, SUBSTRING(actidentificacao FROM 4)');
        mdldau.Open;

        if mdldau.RecordCount = 1 then
        begin
          if Self.mdldaudauativo.AsInteger = 1 then
          begin
            if Trim(submdlmdlidentificacao.AsString) = Trim(vgrupoatual) then
            begin
              TitulosPerm.Add(formatfloat(Copy(Self.actmdlactidentificacao.AsString, 1, 3) + '00000', Self.actmdlactcodigo.AsInteger) + ' ' +
                Copy(Self.actmdlactidentificacao.AsString, 5, 50));
            end
            else
            begin
              TitulosPerm.Add(formatfloat(Copy(Self.actmdlactidentificacao.AsString, 1, 3) + '00000', Self.actmdlactcodigo.AsInteger) + ' ' +
                Copy(Self.actmdlactidentificacao.AsString, 5, 50));
            end;
          end
          else
          begin
            if Trim(submdlmdlidentificacao.AsString) = Trim(vgrupoatual) then
            begin
              Titulos.Add(formatfloat(Copy(Self.actmdlactidentificacao.AsString, 1, 3) + '00000', Self.actmdlactcodigo.AsInteger) + ' ' +
                Copy(Self.actmdlactidentificacao.AsString, 5, 50));
            end
            else
            begin
              Titulos.Add(formatfloat(Copy(Self.actmdlactidentificacao.AsString, 1, 3) + '00000', Self.actmdlactcodigo.AsInteger) + ' ' +
                Copy(Self.actmdlactidentificacao.AsString, 5, 50));
            end;
          end;
        end
        else
        begin
          if Trim(submdlmdlidentificacao.AsString) = Trim(vgrupoatual) then
          begin
            Titulos.Add(formatfloat(Copy(Self.actmdlactidentificacao.AsString, 1, 3) + '00000', Self.actmdlactcodigo.AsInteger) + ' ' +
              Copy(Self.actmdlactidentificacao.AsString, 5, 50));
          end
          else
          begin
            Titulos.Add(formatfloat(Copy(Self.actmdlactidentificacao.AsString, 1, 3) + '00000', Self.actmdlactcodigo.AsInteger) + ' ' +
              Copy(Self.actmdlactidentificacao.AsString, 5, 50));
          end;
        end;
        actmdl.Next;
      end;
    end;

    Titulos.Sorted := True;
    TitulosPerm.Sorted := True;

    if Titulos.Count > 0 then
    begin
      if vgrupoatual = submdlmdlsubgrupo.AsString then
      begin
        AddGroupItem(TGroupItem.Create(vgrupoatual, Titulos.Count, Titulos));
      end
      else
      begin
        if vgrupoatual = submdlmdlidentificacao.AsString then
          AddGroupItem(TGroupItem.Create(submdlmdlsubgrupo.AsString, Titulos.Count, Titulos))
        else
          AddGroupItem(TGroupItem.Create(submdlmdlidentificacao.AsString, Titulos.Count, Titulos));
      end;
      Titulos.Clear;
    end;

    if TitulosPerm.Count > 0 then
    begin
      if vgrupoatual = submdlmdlsubgrupo.AsString then
      begin
        AddGroupItemPerm(TGroupItem.Create(vgrupoatual, TitulosPerm.Count, TitulosPerm));
      end
      else
      begin
        if vgrupoatual = submdlmdlidentificacao.AsString then
          AddGroupItemPerm(TGroupItem.Create(submdlmdlsubgrupo.AsString, TitulosPerm.Count, TitulosPerm))
        else
          AddGroupItemPerm(TGroupItem.Create(submdlmdlidentificacao.AsString, TitulosPerm.Count, TitulosPerm));
      end;
      TitulosPerm.Clear;
    end;

    submdl.Next;
  end;
end;

end.
