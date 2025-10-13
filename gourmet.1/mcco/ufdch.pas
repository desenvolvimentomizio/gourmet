unit ufdch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList, ufuncoes,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, PngImageList, Datasnap.DBClient, System.ImageList;

type
  Tfdch = class(Tfrmbase)
    registrodchcodigo: TIntegerField;
    registroctacodigoori: TIntegerField;
    registroctacodigodes: TIntegerField;
    registrodchdata: TDateField;
    registrodchhora: TTimeField;
    registrodchtotal: TFloatField;
    registrodchquantidade: TIntegerField;
    Label1: TLabel;
    dchcodigo: TDBEdit;
    Label2: TLabel;
    ctacodigoori: TDBEdit;
    Label10: TLabel;
    ctacodigodes: TDBEdit;
    Label7: TLabel;
    dchtotal: TDBEdit;
    DBGLista: TDBGrid;
    che: TUniQuery;
    chechechave: TIntegerField;
    checheemissao: TDateField;
    chechevencimento: TDateField;
    chechenumero: TStringField;
    checheconta: TStringField;
    checheagencia: TStringField;
    chebcocodigo: TStringField;
    chechenome: TStringField;
    chechedocumento: TStringField;
    chechetelefone: TStringField;
    chechevalor: TFloatField;
    cheschcodigo: TIntegerField;
    Dtmp: TDataSource;
    chemdccodigo: TIntegerField;
    mdc: TUniQuery;
    mdcmdccodigo: TIntegerField;
    mdcmdcidentificacao: TStringField;
    Label3: TLabel;
    dchquantidade: TDBEdit;
    cta: TUniQuery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    registroctaorigem: TStringField;
    registroctadestino: TStringField;
    tmp: TClientDataSet;
    chetmpselecionar: TIntegerField;
    tmpchechave: TIntegerField;
    tmpcheemissao: TDateField;
    tmpchevencimento: TDateField;
    tmpchenumero: TStringField;
    tmpcheconta: TStringField;
    tmpcheagencia: TStringField;
    tmpbcocodigo: TStringField;
    tmpchenome: TStringField;
    tmpchedocumento: TStringField;
    tmpchetelefone: TStringField;
    tmpchevalor: TFloatField;
    tmpschcodigo: TIntegerField;
    tmpmdccodigo: TIntegerField;
    tmptmpselecionar: TIntegerField;
    mdccodigo: TDBEdit;
    tmpmdcidentificacao: TStringField;
    lte: TUniQuery;
    lteltechave: TIntegerField;
    ltetfdcodigo: TIntegerField;
    lteltedata: TDateField;
    ltelteprincipal: TFloatField;
    lteltejuros: TFloatField;
    lteltedesconto: TFloatField;
    lteltetotal: TFloatField;
    ltelteextenso: TStringField;
    lteltehistorico: TStringField;
    lteltemulta: TFloatField;
    dtl: TUniQuery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtlmdacodigo: TIntegerField;
    dtldtlvalor: TFloatField;
    ltc: TUniQuery;
    ltcltcchave: TIntegerField;
    ltcdtlchave: TIntegerField;
    ltcchechave: TIntegerField;
    ltcschcodigo: TIntegerField;
    ltcmdccodigo: TIntegerField;
    clt: TUniQuery;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    cco: TUniQuery;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccotoccodigo: TIntegerField;
    ccocedcodigo: TIntegerField;
    ccoclbcodigo: TIntegerField;
    ccotficodigo: TIntegerField;
    ccomoecodigo: TIntegerField;
    ccocconumero: TStringField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccochaveorig: TIntegerField;
    ccoccochavedest: TIntegerField;
    ccoccoconciliado: TIntegerField;
    ccoccoextenso: TStringField;
    ccoetdcodigo: TIntegerField;
    ccoccodatamov: TDateField;
    ccoccodataregistro: TDateField;
    ccoccohoraregistro: TTimeField;
    ccoccofavorecido: TStringField;
    ccd: TUniQuery;
    ccdccdchave: TIntegerField;
    ccddtlchave: TIntegerField;
    ccdccochave: TIntegerField;
    procedure DSRegistroDataChange(Sender: TObject; Field: TField);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure ctacodigodesEnter(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    procedure recalculatotais;
    procedure CarregaCheques;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fdch: Tfdch;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

  // Início ID do Módulo fdch
const
  vPlIdMd = '02.02.07.007-08';
  vPlTitMdl = 'Devolução de Cheques';

  // Fim ID do Módulo fdch

implementation

{$R *.dfm}

procedure Tfdch.DBGListaCellClick(Column: TColumn);
begin
  inherited;
  if Column.FieldName = 'tmpselecionar' then
  begin
    (* Pode fazer assim - Gabriel - 2014-02-06 1323 *)
    tmp.Edit;
    if tmp.Fieldbyname('tmpselecionar').AsString = '1' then
    begin
      tmp.Fieldbyname('tmpselecionar').AsString := '0';
      tmp.Fieldbyname('mdccodigo').AsString := '0';
    end
    else
    begin
      tmp.Fieldbyname('tmpselecionar').AsString := '1';
      criabusca(mdccodigo, tmpmdcidentificacao);
      tmp.post;
    end;

    recalculatotais;
  end
  else
  begin
    inherited;
  end;

end;

procedure Tfdch.DBGListaDblClick(Sender: TObject);
begin
  inherited;
  if Self.tmp.Fieldbyname('tmpselecionar').AsString = '0' then
  begin
    Self.tmp.Edit;
    Self.tmp.Fieldbyname('tmpselecionar').AsString := '1';
    Self.tmp.post;
  end
  else
  begin
    Self.tmp.Edit;
    Self.tmp.Fieldbyname('tmpselecionar').AsString := '0';
    Self.tmp.post;
  end;
  recalculatotais;

end;

procedure Tfdch.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(Dtmp.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clSilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

  if Column.FieldName = 'tmpselecionar' then
  begin

    // Desenha um tmpckbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    tmpck := 0;
    if Self.tmp.Fieldbyname('tmpselecionar').AsString = '1' then
      tmpck := DFCS_CHECKED
    else
      tmpck := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do tmpckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or tmpck);
  end;

end;

procedure Tfdch.DSRegistroDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if (ctacodigodes.Field.AsString <> '') and (dchtotal.Field.AsFloat > 0) then
  begin
    bconfirma.Enabled := true;
  end
  else
  begin
    bconfirma.Enabled := false;
  end;

end;

procedure Tfdch.FormShow(Sender: TObject);
begin

  IdModulo := vPlIdMd;
  tmp.Close;
  tmp.CreateDataSet;
  tmp.Open;

  inherited;

  che.Close;
  che.Params[0].AsString := vChaveMestre;
  che.Open;
  CarregaCheques;
end;

procedure Tfdch.recalculatotais;
var
  reg: Integer;
  vtot: double;
  vqtd: double;

begin
  reg := Self.tmp.RecNo;
  vtot := 0;
  vqtd := 0;
  tmp.First;
  tmp.DisableControls;
  while not tmp.Eof do
  begin
    if Self.tmp.Fieldbyname('tmpselecionar').AsString <> '0' then
    begin
      vtot := vtot + Self.tmp.Fieldbyname('chevalor').AsFloat;
      vqtd := vqtd + 1;

    end;

    tmp.Next;
  end;

  dchtotal.Field.AsFloat := vtot;
  dchquantidade.Field.AsString := formatfloat('###000', vqtd);

  Self.tmp.RecNo := reg;
  tmp.EnableControls;
end;

procedure Tfdch.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Self.registrodchdata.AsFloat := date;
  Self.registrodchhora.AsFloat := time;
  Self.registroctacodigoori.AsString := vChaveMestre;

end;

procedure Tfdch.bconfirmaClick(Sender: TObject);
begin
  inherited;
  tmp.First;
  while not tmp.Eof do
  begin
    if Self.tmptmpselecionar.AsInteger = 1 then
    begin

      { * debito na conta do banco * }
      lte.Open;
      lte.append;
      ltetfdcodigo.AsInteger := tfdContaCorrente;
      lteltedata.AsFloat := date;
      ltelteprincipal.AsFloat := Self.tmpchevalor.AsFloat;
      lteltejuros.AsFloat := 0;
      lteltedesconto.AsFloat := 0;
      lteltetotal.AsFloat := Self.tmpchevalor.AsFloat;
      lteltemulta.AsFloat := 0;
      lte.post;

      dtl.Open;
      dtl.append;
      dtlltechave.AsString := lteltechave.AsString;
      dtlcedcodigo.AsInteger := ceddebito;
      dtlmdacodigo.AsInteger := mdaChequeTerceiros;
      dtldtlvalor.AsFloat := lteltetotal.AsFloat;
      dtl.post;

      cco.Close;
      cco.Open;

      cco.append;
      ccoctacodigo.AsInteger := Self.ctacodigoori.Field.AsInteger;
      ccoccoemissao.AsFloat := date;
      ccoccovencimento.AsFloat := date;
      ccotoccodigo.AsInteger := tocTransferencia;
      ccocedcodigo.AsInteger := ceddebito;
      ccoclbcodigo.AsInteger := Acesso.Usuario;
      ccotficodigo.AsInteger := 1;
      ccomoecodigo.AsInteger := 1;
      ccocconumero.AsString := tmpchenumero.AsString;
      ccoccohistorico.AsString := 'Cheque Devolvido bc ' + tmpbcocodigo.AsString + ', ag ' + tmpcheagencia.AsString + ', cc ' + Self.tmpcheconta.AsString +
        ', nº ' + Self.tmpchenumero.AsString + ', Alínea ' + Self.tmpmdccodigo.AsString + ' - ' + Self.tmpmdcidentificacao.AsString;
      ccoccovalor.AsFloat := Self.tmpchevalor.AsFloat;
      ccoccochaveorig.AsInteger := 0;
      ccoccochavedest.AsInteger := 0;
      ccoccoconciliado.AsString := '0';
      ccoccoextenso.AsString := '';
      ccoetdcodigo.AsInteger := 0;
      ccoccodatamov.AsFloat := date;
      ccoccodataregistro.AsFloat := date;
      ccoccohoraregistro.AsFloat := time;
      ccoccofavorecido.AsString := 'Para: ' + Self.registroctadestino.AsString;
      cco.post;

      clt.Close;
      clt.Open;

      clt.append;
      cltccochave.AsInteger := Self.ccoccochave.AsInteger;
      cltltechave.AsInteger := Self.lteltechave.AsInteger;
      clt.post;

      ltc.Close;
      ltc.Open;

      ltc.append;
      ltcdtlchave.AsInteger := dtldtlchave.AsInteger;
      ltcchechave.AsInteger := Self.tmpchechave.AsInteger;
      ltcschcodigo.AsInteger := schDevolvido;
      ltcmdccodigo.AsInteger := tmpmdccodigo.AsInteger;
      ltc.post;

      { * crédito na conta de destino * }
      lte.Open;
      lte.append;
      ltetfdcodigo.AsInteger := tfdContaCorrente;
      lteltedata.AsFloat := date;
      ltelteprincipal.AsFloat := Self.tmpchevalor.AsFloat;
      lteltejuros.AsFloat := 0;
      lteltedesconto.AsFloat := 0;
      lteltetotal.AsFloat := Self.tmpchevalor.AsFloat;
      lteltemulta.AsFloat := 0;
      lte.post;

      dtl.Open;
      dtl.append;
      dtlltechave.AsString := lteltechave.AsString;
      dtlcedcodigo.AsInteger := cedcredito;
      dtlmdacodigo.AsInteger := mdaChequeTerceiros;
      dtldtlvalor.AsFloat := lteltetotal.AsFloat;
      dtl.post;

      cco.Close;
      cco.Open;

      cco.append;
      ccoctacodigo.AsInteger := Self.ctacodigodes.Field.AsInteger;
      ccoccoemissao.AsFloat := date;
      ccoccovencimento.AsFloat := date;
      ccotoccodigo.AsInteger := tocTransferencia;
      ccocedcodigo.AsInteger := cedcredito;
      ccoclbcodigo.AsInteger := Acesso.Usuario;
      ccotficodigo.AsInteger := 1;
      ccomoecodigo.AsInteger := 1;
      ccocconumero.AsString := tmpchenumero.AsString;
      ccoccohistorico.AsString := 'Cheque Devolvido bc ' + tmpbcocodigo.AsString + ', ag ' + tmpcheagencia.AsString + ', cc ' + Self.tmpcheconta.AsString +
        ', nº ' + Self.tmpchenumero.AsString + ', Alínea ' + Self.tmpmdccodigo.AsString + ' - ' + Self.tmpmdcidentificacao.AsString;
      ccoccovalor.AsFloat := Self.tmpchevalor.AsFloat;
      ccoccochaveorig.AsInteger := 0;
      ccoccochavedest.AsInteger := 0;
      ccoccoconciliado.AsString := '0';
      ccoccoextenso.AsString := '';
      ccoetdcodigo.AsInteger := 0;
      ccoccodatamov.AsFloat := date;
      ccoccodataregistro.AsFloat := date;
      ccoccohoraregistro.AsFloat := time;
      ccoccofavorecido.AsString := 'De: ' + Self.registroctaorigem.AsString;
      cco.post;

      clt.Close;
      clt.Open;

      clt.append;
      cltccochave.AsInteger := Self.ccoccochave.AsInteger;
      cltltechave.AsInteger := Self.lteltechave.AsInteger;
      clt.post;

      ltc.Close;
      ltc.Open;

      ltc.append;
      ltcdtlchave.AsInteger := dtldtlchave.AsInteger;
      ltcchechave.AsInteger := Self.tmpchechave.AsInteger;
      ltcschcodigo.AsInteger := schDevolvido;
      ltcmdccodigo.AsInteger := tmpmdccodigo.AsInteger;
      ltc.post;

    end;
    tmp.Next;
  end;

end;

procedure Tfdch.CarregaCheques;
var
  i: Integer;
begin

  che.First;
  while not che.Eof do
  begin
    tmp.append;
    for i := 0 to che.Fields.Count - 1 do
    begin
      tmp.Fieldbyname(che.Fields[i].FieldName).AsString := che.Fieldbyname(che.Fields[i].FieldName).AsString;
    end;
    tmp.Fieldbyname('tmpselecionar').AsString := '0';
    tmp.Fieldbyname('mdccodigo').AsString := '0';

    tmp.post;
    che.Next;
  end;

end;

procedure Tfdch.ctacodigodesEnter(Sender: TObject);
begin
  inherited;
  Self.txtFiltro := 'ctacodigo<>' + Self.vChaveMestre + ' and tctcodigo=1';

end;

end.
