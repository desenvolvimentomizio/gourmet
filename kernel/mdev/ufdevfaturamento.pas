unit ufdevfaturamento;

interface

uses
  Winapi.Windows, Vcl.Forms, ufdevsimples, DBAccess, Uni, Vcl.Dialogs,
  Vcl.ImgList, Vcl.Controls, PngImageList, ACBrBase, ACBrValidador,
  System.Classes, System.Actions, Vcl.ActnList, Vcl.Menus, Data.DB, MemDS,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, uPegaBase,
  Vcl.ComCtrls, Vcl.Mask, System.SysUtils, uFuncoes, VirtualTable, System.ImageList;

type
  Tfdevfaturamento = class(Tfdevsimples)
    cfgcfgdtinictb: TDateField;
    cfgcfgdatapadrao: TDateField;
    mdt: TUniQuery;
    mdtmdtregistro: TDateTimeField;
    mdtclbcodigo: TIntegerField;
    mdtmdtchave: TIntegerField;
    mdtmeschaveorigem: TIntegerField;
    mdtmeschavedestino: TIntegerField;
    itmfatidtquantidade: TFloatField;
    dfrref: TUniQuery;
    dfrrefetdcodigo: TIntegerField;
    dfrrefdfrchave: TIntegerField;
    dfrreftdfcodigo: TStringField;
    dfrrefdfrchavenfe: TStringField;
    dfrrefdfrserie: TStringField;
    dfrrefdfrnumero: TIntegerField;
    dfrrefdfremissao: TDateField;
    dfrrefedritem: TIntegerField;
    dfrrefmeschave: TIntegerField;
    itmfattoedevolucacao: TIntegerField;
    itmrefitmbasefcpicm: TFloatField;
    itmrefitmpercfcpicm: TFloatField;
    itmrefitmvalofcpicm: TFloatField;
    itmrefitmbasefcpicmst: TFloatField;
    itmrefitmpercfcpicmst: TFloatField;
    itmrefitmvalofcpicmst: TFloatField;
    itmfatitmbasefcpicm: TFloatField;
    itmfatitmpercfcpicm: TFloatField;
    itmfatitmvalofcpicm: TFloatField;
    itmfatitmbasefcpicmst: TFloatField;
    itmfatitmpercfcpicmst: TFloatField;
    itmfatitmvalofcpicmst: TFloatField;
    procedure bvalidarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActAFaturarExecute(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bcancelaClick(Sender: TObject);
    procedure toecodigoEnter(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure toecodigoExit(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdevfaturamento: Tfdevfaturamento;

  // Início ID do Módulo fradev
const
  vPlIdMd = '02.04.09.001-05';

  // Fim ID do Módulo fradev

implementation

{$R *.dfm}

procedure Tfdevfaturamento.ActAFaturarExecute(Sender: TObject);
var
  vch: string;
  i: Integer;
  vlItem: Integer;
begin
  inherited;
  ActAFaturar.Enabled := false;

  If registro.State <> dsBrowse Then
    registro.Post;

  vch := '';
  vch := MostraLista('midv', meschave.Field.AsString);

  if vch <> '' then
  begin

    mdt.Close;
    mdt.ParamByName('meschaveorigem').AsInteger := vch.ToInteger;
    mdt.ParamByName('meschavedestino').AsString := meschave.Field.AsString;

    mdt.Open;

    { mdt.Edit;
      mdtmeschavedestino.AsString:=meschave.Field.AsString;
      mdt.Post;
    }

    itmfat.Close;
    itmfat.ParamByName('meschave').AsString := self.mdtmeschaveorigem.AsString;
    itmfat.ParamByName('mdtchave').AsString := self.mdtmdtchave.AsString;
    itmfat.Open;

    itmref.Close;
    itmref.Params[0].AsString := self.mdtmeschavedestino.AsString;
    itmref.Open;
    vlItem := 1;

    while not itmfat.Eof do
    begin

      itmref.Append;
      itmrefmeschave.AsInteger := self.meschave.Field.AsInteger;

      for i := 3 to itmref.FieldCount - 1 do
        itmref.FieldByName(itmref.Fields[i].FieldName).AsString := itmfat.FieldByName(itmref.Fields[i].FieldName).AsString;

      itmrefitmquantidade.AsFloat := itmfat.FieldByName('idtquantidade').AsFloat;

      itmrefitmtotal.AsFloat := itmrefitmvalor.AsFloat * itmrefitmquantidade.AsFloat;

      itmrefitmitem.AsInteger := vlItem;
      itmrefitmbicm.AsFloat := (itmfatitmbicm.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmicm.AsFloat := (itmfatitmicm.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmbicms.AsFloat := (itmfatitmbicms.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmicms.AsFloat := (itmfatitmicms.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmbipi.AsFloat := (itmfatitmbipi.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmpis.AsFloat := (itmfatitmpis.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmbpis.AsFloat := (itmfatitmbpis.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmaliqpisvalor.AsFloat := (itmfatitmaliqpisvalor.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmbcofins.AsFloat := (itmfatitmbcofins.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmquantcofins.AsFloat := (itmfatitmquantcofins.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmaliqcofinsvalor.AsFloat := (itmfatitmaliqcofinsvalor.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmcofins.AsFloat := (itmfatitmcofins.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;

      itmrefitmcofins.AsFloat := (itmfatitmcofins.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;

      itmrefitmbasefcpicm.AsFloat := (itmrefitmbasefcpicm.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmvalofcpicm.AsFloat := (itmrefitmvalofcpicm.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmbasefcpicmst.AsFloat := (itmrefitmbasefcpicmst.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;
      itmrefitmvalofcpicmst.AsFloat := (itmrefitmvalofcpicmst.AsFloat / itmfatitmquantidade.AsFloat) * itmfat.FieldByName('idtquantidade').AsFloat;

      consulta.Close;
      consulta.SQL.Text := 'select toecfopsaida,cstcodigo from toe where toecodigo=' + itmfattoedevolucacao.AsString;
      consulta.Open;

      itmrefcfocfop.AsString := consulta.FieldByName('toecfopsaida').AsString;
      itmreftoecodigo.AsString := itmfattoedevolucacao.AsString;

      if cfgcrtcodigo.AsInteger = 1 then
      begin
        itmrefcstcodigo.AsString := consulta.FieldByName('cstcodigo').AsString;

      end;

      itmref.Post;

      itmfat.Next;
      vlItem := vlItem + 1;
    end;

    itm.Refresh;

    recalculatotais;
  end
  else
  begin
    ActAFaturar.Enabled := True;
  end;

  if vch <> '' then
  begin

    consulta.Close;
    consulta.SQL.Text := 'SELECT @dfrchave,  mes.etdcodigo etdcodigo,   mes.tdfcodigo tdfcodigo ,   meschavenfe dfrchavenfe, ';
    consulta.SQL.Add(' messerie dfrserie, mesnumero dfrnumero, mesemissao dfremissao, 0  edritem, meschave  meschave ');
    consulta.SQL.Add(' FROM   mes where meschave=' + vch);
    consulta.Open;

    dfrref.Close;
    dfrref.ParamByName('meschave').AsString := registromeschave.AsString;
    dfrref.Open;

    if dfrref.IsEmpty then
      dfrref.Append
    else
      dfrref.Edit;

    dfrref.FieldByName('etdcodigo').AsString := consulta.FieldByName('etdcodigo').AsString;
    dfrref.FieldByName('tdfcodigo').AsString := consulta.FieldByName('tdfcodigo').AsString;
    dfrref.FieldByName('dfrchavenfe').AsString := consulta.FieldByName('dfrchavenfe').AsString;
    dfrref.FieldByName('dfrserie').AsString := consulta.FieldByName('dfrserie').AsString;
    dfrref.FieldByName('dfrnumero').AsString := consulta.FieldByName('dfrnumero').AsString;
    dfrref.FieldByName('dfremissao').AsString := consulta.FieldByName('dfremissao').AsString;
    dfrref.FieldByName('edritem').AsString := consulta.FieldByName('edritem').AsString;
    dfrref.FieldByName('meschave').AsString := registromeschave.AsString;
    dfrref.Post;

    dfr.Close;
    dfr.FilterSQL := 'meschave=' + meschave.Field.AsString;
    dfr.Open;

    listaitens.SetFocus;

  end;

  if itm.RecordCount > 0 then
  begin
    bconfirma.Enabled := True;
  end
  else
  begin
    bconfirma.Enabled := false;
  end;

end;

procedure Tfdevfaturamento.ActAlterarExecute(Sender: TObject);
begin
  // inherited;

end;

procedure Tfdevfaturamento.ActExcluirExecute(Sender: TObject);
begin

  inherited;

  if itm.RecordCount > 0 then
  begin
    bconfirma.Enabled := True;
  end
  else
  begin
    bconfirma.Enabled := false;
  end;

end;

procedure Tfdevfaturamento.ActIncluirExecute(Sender: TObject);
begin
  // inherited;

end;

procedure Tfdevfaturamento.bcancelaClick(Sender: TObject);
begin

  if meschave.Field.AsString <> '' then
  begin
    dfr.Close;
    dfr.FilterSQL := 'meschave=' + meschave.Field.AsString;
    dfr.Open;

    while not dfr.Eof do
    begin
      dfr.Delete;
    end;
  end;

  inherited;

end;

procedure Tfdevfaturamento.bconfirmaClick(Sender: TObject);
var
  vRetLote: String;
begin
  inherited;

  if registro.State = dsBrowse then
    registro.Edit;

  registromesprodutos.AsCurrency := vpTotProdutos;
  registromesservicos.AsCurrency := vpTotServiços;
  registro.Post;

end;

procedure Tfdevfaturamento.bvalidarClick(Sender: TObject);
begin
  bvalidar.Visible := false;
  PlDetalhe.Visible := True;
  inherited;
  bactAFaturar.Click;
end;

procedure Tfdevfaturamento.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  bactAFaturar.Visible := True;
  self.registromesemissao.AsFloat := self.cfgcfgdatapadrao.AsFloat;
  self.registromesregistro.AsFloat := self.cfgcfgdatapadrao.AsFloat;
  mesemissao.tabstop := false;
  mesregistro.tabstop := false;
  mesemissao.Color := PEG_COR_VALORPADRAO;
  mesregistro.Color := PEG_COR_VALORPADRAO;
  mesemissao.readonly := True;
  mesregistro.readonly := True;
  tdfcodigo.readonly := True;
  tdfcodigo.tabstop := false;
  tdfcodigo.Color := PEG_COR_VALORPADRAO;
  PlDetalhe.Visible := false;
end;

procedure Tfdevfaturamento.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  tfpcodigo.Field.AsInteger := 9;
end;

procedure Tfdevfaturamento.toecodigoEnter(Sender: TObject);
begin

  inherited;
  if ufssiglaetd.Field.AsString = ufssiglacfg.Field.AsString then
  begin
    txtFiltro := 'ttocodigo=3 and ttecodigo=1 and ttmcodigo=0 and toeorigem=' + QuotedStr('5');

  end
  else
  begin
    txtFiltro := 'ttocodigo=3 and ttecodigo=1 and ttmcodigo=0 and toeorigem=' + QuotedStr('6');
  end;

end;

procedure Tfdevfaturamento.toecodigoExit(Sender: TObject);
var
  vtoeatu: string;
begin

  self.txtFiltro := '';
  ufs.Close;
  ufs.Params[0].AsString := self.etdcodigo.Field.AsString;
  ufs.Open;

  vtoeatu := toecodigo.Field.AsString;
  // toeorigem 1 2 ou 3 são para entradas

  // 1 e 5 dentro do estado
  // 2 2 6 para fora do estado

{  If self.ufssiglaetd.Field.AsString = self.ufssiglacfg.Field.AsString Then
  Begin

    if self.etdcodigo.Field.AsInteger = self.cfgcfgetdempresa.AsInteger then
    begin

      self.txtFiltro := ' toeorigem = ''5'' and ttmcodigo = 0 and ttecodigo = 1';

      self.tdfcodigo.Field.AsString := '00';
      self.tdfcodigo.Color := PEG_COR_VALORPADRAO;
    end
    else
      self.txtFiltro := ' toeorigem = ''5'' and ttecodigo = 1';

  End
  Else if self.etdcodigo.Field.AsInteger = self.cfgcfgetdempresa.AsInteger then
  begin
    self.txtFiltro := ' toeorigem = ''6'' and ttmcodigo = 0 and ttecodigo = 1'
  end
  else
  begin
    self.txtFiltro := ' toeorigem = ''6'' and  ttecodigo = 1 and ttmcodigo=0';
  end;

  if ufssiglaetd.Field.AsString = ufssiglacfg.Field.AsString then
  begin
    txtFiltro := 'ttocodigo=3 and ttecodigo=1 and ttmcodigo=0 and toeorigem=' + QuotedStr('5');

  end
  else
  begin
    txtFiltro := 'ttocodigo=3 and ttecodigo=1 and ttmcodigo=0 and toeorigem=' + QuotedStr('6');
  end;
  }


    if ufssiglaetd.Field.AsString = ufssiglacfg.Field.AsString then
  begin
    txtFiltro := 'ttocodigo=3 and ttecodigo=1 and ttmcodigo=0 and toeorigem=' + QuotedStr('5');

  end
  else
  begin
    txtFiltro := 'ttocodigo=3 and ttecodigo=1 and ttmcodigo=0 and toeorigem=' + QuotedStr('6');
  end;


  self.toe.Filter := self.txtFiltro;
  self.toe.Filtered := True;

  // txtFiltro:='ttocodigo='+ttoDevolucao.ToString;
  inherited;

end;

end.
