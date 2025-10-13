unit ufrdv;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ActnList, Vcl.Grids, Vcl.DBGrids, System.Actions, Vcl.ImgList,
  PngImageList, System.ImageList;

type
  Tfrdv = class(Tfrmbase)
    registrordvchave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrordvdata: TDateField;
    Label1: TLabel;
    rdvchave: TDBEdit;
    Label2: TLabel;
    rdvdata: TDBEdit;
    Spt1: TSplitter;
    Plidv: TPanel;
    idv: tuniquery;
    idvidvchave: TIntegerField;
    idvitmchave: TIntegerField;
    idvrdvchave: TIntegerField;
    idvidvquantidade: TFloatField;
    PlBotoes: TPanel;
    ImageLogoBase: TImage;
    PlInfo: TPanel;
    SBBotoes: TScrollBox;
    ImagensManutencao: TImageList;
    acoes: TActionList;
    ActIncluir: TAction;
    PlDBGrid: TPanel;
    pltotaldevol: TPanel;
    Panel1: TPanel;
    bActExcluir: TBitBtn;
    bActIncluir: TBitBtn;
    DBGLista: TDBGrid;
    DSTabela: tunidatasource;
    ActExcluir: TAction;
    uqtabela: tuniquery;
    uqtabelaitmchave: TIntegerField;
    uqtabelameschave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelaitmvalor: TFloatField;
    uqtabelaitmquantidade: TFloatField;
    uqtabelaprogtin: TStringField;
    uqtabelamesemissao: TDateField;
    bActAtualizar: TBitBtn;
    ActAtualizar: TAction;
    registrordvvalor: TFloatField;
    rdvvalor: TDBEdit;
    uqtabelaidvquantidade: TFloatField;
    uqtabelaidvchave: TIntegerField;
    atp: tuniquery;
    atpatpchave: TIntegerField;
    atpetdcodigo: TIntegerField;
    atpcedcodigo: TIntegerField;
    atpatpvalor: TFloatField;
    atpatpdata: TDateField;
    atpatphistorico: TStringField;
    adv: tuniquery;
    advadvchave: TIntegerField;
    advatpchave: TIntegerField;
    advrdvchave: TIntegerField;
    rde: tuniquery;
    rderdechave: TIntegerField;
    rderdvchave: TIntegerField;
    rdeetdcodigo: TIntegerField;
    mat: tuniquery;
    matmatchave: TIntegerField;
    matmeschave: TIntegerField;
    matatpchave: TIntegerField;
    mes: tuniquery;
    mesmeschave: TIntegerField;
    mesetdcodigo: TIntegerField;
    mesclbcodigo: TIntegerField;
    mesmesemissao: TDateField;
    mesmesregistro: TDateField;
    mestdfcodigo: TStringField;
    messdecodigo: TStringField;
    mesmesserie: TStringField;
    mesmesnumero: TIntegerField;
    mesmeschavenfe: TStringField;
    mestoecodigo: TIntegerField;
    mesmesvalor: TFloatField;
    mesmesdesconto: TFloatField;
    mesmestotal: TFloatField;
    mestfpcodigo: TIntegerField;
    mesrefcodigo: TIntegerField;
    mesmesfrete: TFloatField;
    mesmesseguro: TFloatField;
    mesmesoutras: TFloatField;
    mesmesbicm: TFloatField;
    mesmesicm: TFloatField;
    mesmesbicms: TFloatField;
    mesmesicms: TFloatField;
    mesmesipi: TFloatField;
    mesmespis: TFloatField;
    mesmescofins: TFloatField;
    mesmespiss: TFloatField;
    mesmescofinss: TFloatField;
    mestrmcodigo: TIntegerField;
    mesmesprotocolo: TStringField;
    mestrfcodigo: TStringField;
    mestemcodigo: TIntegerField;
    itm: tuniquery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmcstcodigo: TStringField;
    itmprocodigoori: TStringField;
    itmpronomeori: TStringField;
    itmitmdesccomple: TStringField;
    itmitmquantidade: TFloatField;
    itmitmvalor: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmitmmovifisico: TStringField;
    itmtoecodigo: TIntegerField;
    itmcfocfop: TStringField;
    itmitmbicm: TFloatField;
    itmicmcodigo: TStringField;
    itmitmaliqicm: TStringField;
    itmitmicm: TFloatField;
    itmitmbicms: TFloatField;
    itmitmaliqicms: TFloatField;
    itmitmicms: TFloatField;
    itmitmapuipi: TStringField;
    itmcsicodigo: TStringField;
    itmceicodigo: TStringField;
    itmitmbipi: TFloatField;
    itmitmaliqipi: TFloatField;
    itmitmipi: TFloatField;
    itmcspcodigo: TStringField;
    itmitmbpis: TFloatField;
    itmitmaliqpis: TFloatField;
    itmitmpis: TFloatField;
    itmitmquantpis: TFloatField;
    itmitmaliqpisvalor: TFloatField;
    itmcsfcodigo: TStringField;
    itmitmbcofins: TFloatField;
    itmitmaliqcofins: TFloatField;
    itmitmquantcofins: TFloatField;
    itmitmaliqcofinsvalor: TFloatField;
    itmitmcofins: TFloatField;
    itmpcccodigo: TStringField;
    itmunicodigo: TIntegerField;
    itmpuncodigo: TIntegerField;
    itmprogtin: TStringField;
    itmitmcontendo: TFloatField;
    itmcfocfopdestinacao: TStringField;
    itmunicodigobase: TIntegerField;
    itmitmoutras: TFloatField;
    itmitmseguro: TFloatField;
    itmitmfrete: TFloatField;
    itmitmcusto: TFloatField;
    itmitmtipodesc: TIntegerField;
    cfgcfgserienfe: TStringField;
    cfgcfgpccvenda: TStringField;
    idvitm: tuniquery;
    idvitmitmchave: TIntegerField;
    idvitmmeschave: TIntegerField;
    idvitmetdcodigo: TIntegerField;
    idvitmprocodigo: TIntegerField;
    idvitmpronome: TStringField;
    idvitmetdidentificacao: TStringField;
    idvitmmesnumero: TIntegerField;
    idvitmidvquantidade: TFloatField;
    idvitmitmvalor: TFloatField;
    idvitmitmquantidade: TFloatField;
    idvitmprogtin: TStringField;
    idvitmmesemissao: TDateField;
    idvitmidvchave: TIntegerField;
    idvitmitmdesccomple: TStringField;
    idvitmunicodigo: TIntegerField;
    idvitmpuncodigo: TIntegerField;
    rdvmes: tuniquery;
    rdvmesrdvvalor: TFloatField;
    rdvmesetdcodigo: TIntegerField;
    rdvmesclbcodigo: TIntegerField;
    cfgcfgcstcuf: TStringField;
    mesmesprodutos: TFloatField;
    mesmesservicos: TFloatField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActRelatoriosExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaColEnter(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
    vtitucol: String;
    vnomecol: String;
    vtipocol: TFieldType;
    vpalavra: string;
    procedure recalculartotal;
    procedure gerarmes(vetdcodigo: string; vrdvchave: string; vatpchave: string);

  public
    vitmchave: string;
    vitmquantidade: string;

    { Public declarations }
  end;

var
  frdv: Tfrdv;

implementation

{$R *.dfm}

uses ufbcaitv;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function registradevolucao(AOwner: TComponent; conexao: tuniconnection; usrcodigo: string): string;
var
  i: Integer;
  fltfla: string;
Begin
  try
    application.CreateForm(Tfrdv, frdv);
    frdv.zcone := conexao;
    frdv.zcone.StartTransaction;
    frdv.vchave := '0';
    frdv.vusrcodigo := usrcodigo;
    For i := 0 To frdv.ComponentCount - 1 Do
    Begin
      If frdv.Components[i] Is tuniquery Then
      Begin
        (frdv.Components[i] As tuniquery).Connection := conexao;
      End;
    End;
    if frdv.ShowModal = mrok then
    begin
       if ZCone.TransactionCount > 0 then
      if ZCone.Transactions[0].Active then
      frdv.zcone.Commit;
    end
    else
    begin
       if ZCone.TransactionCount > 0 then
      if ZCone.Transactions[0].Active then
      frdv.zcone.Rollback;
    end;
    result := '';
  finally
    freeandnil(frdv);
  end;
End;

exports registradevolucao;

procedure Tfrdv.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  { alterar }
end;

procedure Tfrdv.ActAtualizarExecute(Sender: TObject);
begin
  inherited;
  if self.registrordvchave.AsString <> 'Auto' then
  begin
    uqtabela.Close;
    uqtabela.Params[0].AsInteger := self.registrordvchave.AsInteger;
    uqtabela.Open;
  end;

  { atualizar }
end;

procedure Tfrdv.ActExcluirExecute(Sender: TObject);
begin
  inherited;
  if self.uqtabelaidvchave.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'delete from idv where idvchave=' + self.uqtabelaidvchave.AsString;
    consulta.ExecSQL;
    self.uqtabela.Refresh;
    self.recalculartotal;
  end
  else
  begin
    showmessage('Não á registro para excluir!');
  end;

end;

procedure Tfrdv.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  try
    if (self.registro.State = dsinsert) or (self.registro.State = dsedit) then
    begin
      registro.Post;
    end;

    self.ActAtualizar.Execute;
    vitmchave := '0';
    application.CreateForm(Tfbcaitv, fbcaitv);
    fbcaitv.vusrcodigo := self.vusrcodigo;
    fbcaitv.vrdvchave := self.registrordvchave.AsString;
    fbcaitv.zcone := self.zcone;
    fbcaitv.ShowModal;

  finally
    freeandnil(fbcaitv);
  end;
  self.ActAtualizar.Execute;

  recalculartotal;
  { incluir }
end;

procedure Tfrdv.recalculartotal;
begin

  registro.Edit;
  self.registrordvvalor.asfloat := 0;
  self.uqtabela.First;
  while not uqtabela.Eof do
  begin
    self.registrordvvalor.asfloat := self.registrordvvalor.asfloat + self.uqtabelaitmvalor.asfloat;
    uqtabela.Next;
  end;
  registro.Post;

end;

procedure Tfrdv.ActRelatoriosExecute(Sender: TObject);
begin
  inherited;
  { relatorios }
end;

procedure Tfrdv.bconfirmaClick(Sender: TObject);
var
  vetdcodigo: Integer;
begin

  if uqtabela.RecordCount = 0 then
  begin
    showmessage('Não foi registrado itens para devolução!');
  end
  else
  begin
    inherited;

    rde.Open;

    rde.Append;
    rderdvchave.AsInteger := self.registrordvchave.AsInteger;
    rdeetdcodigo.AsInteger := self.uqtabelaetdcodigo.AsInteger;
    rde.Post;
    vetdcodigo := self.uqtabelaetdcodigo.AsInteger;

    uqtabela.First;
    while not uqtabela.Eof do
    begin

      if self.uqtabelaetdcodigo.AsInteger <> vetdcodigo then
      begin
        rde.Append;
        rderdvchave.AsInteger := self.registrordvchave.AsInteger;
        rdeetdcodigo.AsInteger := vetdcodigo;
        rde.Post;
        vetdcodigo := self.uqtabelaetdcodigo.AsInteger;
      end;
      uqtabela.Next;
    end;
    rde.Close;

    atp.Open;
    atp.Append;
    atpetdcodigo.AsInteger := vetdcodigo;
    atpcedcodigo.AsInteger := 0;
    atpatpvalor.asfloat := self.registrordvvalor.asfloat;
    atpatpdata.asfloat := self.registrordvdata.asfloat;
    atpatphistorico.AsString := '';
    atp.Post;

    adv.Open;
    adv.Append;
    advatpchave.AsInteger := self.atpatpchave.AsInteger;
    advrdvchave.AsInteger := self.registrordvchave.AsInteger;
    adv.Post;

    adv.Close;

    uqtabela.First;
    vetdcodigo := self.uqtabelaetdcodigo.AsInteger;

    gerarmes(inttostr(vetdcodigo), self.registrordvchave.AsString, self.atpatpchave.AsString);

    while not uqtabela.Eof do
    begin
      if self.uqtabelaetdcodigo.AsInteger <> vetdcodigo then
      begin
        gerarmes(inttostr(vetdcodigo), self.registrordvchave.AsString, self.atpatpchave.AsString);
        vetdcodigo := self.uqtabelaetdcodigo.AsInteger;
      end;
      uqtabela.Next;
    end;
  end;




end;

procedure Tfrdv.gerarmes(vetdcodigo: string; vrdvchave: string; vatpchave: string);
var
  vtoecodigo: Integer;
  vusrcodigo: Integer;
  vrdvmestot: double;
  vtrmcodigo: Integer;
  vmeschave: string;
  xit: Integer;
begin

  vrdvmestot := 0;

  rdvmes.Close;
  rdvmes.Params[0].AsString := vrdvchave;
  rdvmes.Params[1].AsString := vetdcodigo;
  rdvmes.Open;

  mes.Open;
  mes.Append;
  mesetdcodigo.AsString := vetdcodigo;
  mesclbcodigo.AsInteger := rdvmesclbcodigo.AsInteger;
  mesmesemissao.asfloat := date;
  mesmesregistro.asfloat := date;
  mestdfcodigo.AsString := '00';
  messdecodigo.AsString := '00';
  mesmesserie.AsString := self.cfgcfgserienfe.AsString;
  mesmesnumero.AsString := '0';
  mestoecodigo.AsInteger := 4;
  mesmesvalor.asfloat := rdvmesrdvvalor.asfloat;
  mesmesdesconto.asfloat := 0;
  mesmestotal.asfloat := rdvmesrdvvalor.asfloat;

  mesmesprodutos.asfloat := mesmestotal.asfloat;
  mesmesservicos.asfloat := 0;

  mestfpcodigo.AsInteger := 0;
  mesrefcodigo.AsInteger := 0;
  mesmesfrete.asfloat := 0;
  mesmesseguro.asfloat := 0;
  mesmesoutras.asfloat := 0;
  mesmesbicm.asfloat := 0;
  mesmesicm.asfloat := 0;
  mesmesbicms.asfloat := 0;
  mesmesicms.asfloat := 0;
  mesmesipi.asfloat := 0;
  mesmespis.asfloat := 0;
  mesmescofins.asfloat := 0;
  mesmespiss.asfloat := 0;
  mesmescofinss.asfloat := 0;
  mestrmcodigo.AsInteger := 1;
  mesmesprotocolo.AsString := '';
  mestrfcodigo.AsInteger := 0;
  mestemcodigo.AsInteger := 1;
  mes.Post;
  vmeschave := self.mesmeschave.AsString;
  vtoecodigo := self.mestoecodigo.AsInteger;
  mes.Close;

  mat.Open;
  mat.Append;
  matmeschave.AsString := vmeschave;
  matatpchave.AsString := vatpchave;
  mat.Post;
  mat.Close;

  itm.Open;

  idvitm.Close;
  idvitm.Params[0].AsString := vrdvchave;
  idvitm.Params[1].AsString := vetdcodigo;
  idvitm.Open;

  itm.Open;
  xit := 1;
  while not idvitm.Eof do
  begin
    itm.Append;
    itmmeschave.AsString := vmeschave;
    itmitmitem.AsInteger := xit;
    itmprocodigo.AsInteger := self.idvitmprocodigo.AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'select cstcodigo from pro where procodigo=' + itmprocodigo.AsString;
    consulta.Open;

    itmcstcodigo.AsString := consulta.FieldByName('cstcodigo').AsString;
    consulta.Close;

    itmcstcodigo.AsString := self.cfgcfgcstcuf.AsString;
    itmitmdesccomple.AsString := self.idvitmitmdesccomple.AsString;
    itmitmquantidade.asfloat := self.idvitmidvquantidade.asfloat;
    itmitmvalor.asfloat := self.idvitmitmvalor.asfloat;
    itmitmdesconto.asfloat := 0;
    itmitmtotal.asfloat := self.idvitmitmvalor.asfloat * itmitmquantidade.asfloat;
    itmitmmovifisico.AsInteger := 0;
    itmtoecodigo.AsInteger := self.mestoecodigo.AsInteger;

    itmitmbicm.asfloat := 0;
    itmicmcodigo.AsString := '00';
    itmitmaliqicm.asfloat := 0;
    itmitmicm.asfloat := 0;
    itmitmbicms.asfloat := 0;
    itmitmaliqicms.asfloat := 0;
    itmitmicms.asfloat := 0;
    itmitmapuipi.AsInteger := 1;
    itmitmbipi.asfloat := 0;
    itmitmaliqipi.asfloat := 0;
    itmitmipi.asfloat := 0;
    itmcspcodigo.AsString := '99';
    itmitmbpis.asfloat := 0;
    itmitmaliqpis.asfloat := 0;
    itmitmpis.asfloat := 0;
    itmitmquantpis.asfloat := 0;
    itmitmaliqpisvalor.asfloat := 0;

    itmcsicodigo.AsString := '99';

    itmcsfcodigo.AsString := '99';
    itmitmbcofins.asfloat := 0;
    itmitmaliqcofins.asfloat := 0;
    itmitmquantcofins.asfloat := 0;
    itmitmaliqcofinsvalor.asfloat := 0;
    itmitmcofins.asfloat := 0;

    itmpcccodigo.AsString := self.cfgcfgpccvenda.AsString;

    itmunicodigo.AsInteger := self.idvitmunicodigo.AsInteger;
    itmpuncodigo.AsInteger := self.idvitmpuncodigo.AsInteger;
    itmprogtin.AsString := self.idvitmprogtin.AsString;
    itmitmcontendo.asfloat := 1;

    consulta.Close;
    consulta.SQL.Text := 'select toecfopsaida from toe where toecodigo=' + inttostr(vtoecodigo);
    consulta.Open;

    itmtoecodigo.AsInteger := vtoecodigo;
    itmcfocfopdestinacao.AsString := self.consulta.FieldByName('toecfopsaida').AsString;
    itmcfocfop.AsString := self.consulta.FieldByName('toecfopsaida').AsString;

    consulta.Close;

    itmunicodigobase.AsInteger := itmunicodigo.AsInteger;
    itmitmoutras.asfloat := 0;
    itmitmseguro.asfloat := 0;
    itmitmfrete.asfloat := 0;
    itmitmcusto.asfloat := 0;
    itmitmtipodesc.AsInteger := 0;
    itm.Post;

    idvitm.Next;
    xit := xit + 1;
  end;
  itm.Close;

end;

procedure Tfrdv.DBGListaCellClick(Column: TColumn);
begin
  inherited;
  vtitucol := Column.Title.Caption;
  vnomecol := Column.FieldName;
  vtipocol := Column.Field.DataType;

  If (vtipocol = ftstring) Then
  Begin
    vpalavra := self.DBGLista.DataSource.DataSet.FieldByName(self.vnomecol).AsString;
  End
  Else
  Begin
    vpalavra := '';
  End;

end;

procedure Tfrdv.DBGListaColEnter(Sender: TObject);
begin
  inherited;

  vtitucol := DBGLista.Columns[DBGLista.SelectedIndex].Title.Caption;
  vnomecol := DBGLista.Columns[DBGLista.SelectedIndex].FieldName;
  vtipocol := DBGLista.Columns[DBGLista.SelectedIndex].Field.DataType;

  If (vtipocol = ftstring) Then
  Begin
    vpalavra := self.DBGLista.DataSource.DataSet.FieldByName(self.vnomecol).AsString;
  End
  Else
  Begin
    vpalavra := '';
  End;

end;

procedure Tfrdv.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DSTabela.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        // Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      // Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        // Brush.Color := PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfrdv.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrordvdata.asfloat := date;
  self.registroclbcodigo.AsString := self.vusrcodigo;
  self.registrordvvalor.asfloat := 0;
end;

end.
