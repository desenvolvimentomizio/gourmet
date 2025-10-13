unit ufdvch;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Datasnap.DBClient, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Graphics, System.SysUtils,
  uFuncoes, System.ImageList, Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tfdvch = class(Tfrmbase)
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
    chetmpselecionar: TIntegerField;
    mdccodigo: TDBEdit;
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
    registrodchhistorico: TStringField;
    cfgcfgusactb: TIntegerField;
    ctatctcodigo: TIntegerField;
    let: TUniQuery;
    letletchave: TIntegerField;
    letltechave: TIntegerField;
    letetdcodigo: TIntegerField;
    cheetdcodigo: TIntegerField;
    ccophgcodigo: TIntegerField;
    ccd: TUniQuery;
    ccdccdchave: TIntegerField;
    ccddtlchave: TIntegerField;
    ccdccochave: TIntegerField;
    tmp: TFDMemTable;
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
    tmpmdcidentificacao: TStringField;
    tmptmpselecionar: TIntegerField;
    tmpetdcodigo: TIntegerField;
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure ctacodigodesEnter(Sender: TObject);
    procedure DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tmpBeforePost(DataSet: TDataSet);
    procedure CarregaCheques;
  private
    procedure recalculatotais;

    { Private declarations }
  public
    { Public declarations }

    vpLteChave: String;
    vFlaCodigoOri: string;
    vFlaCodigoDes: string;
    vPcgCodigoOri: string;
    vPcgCodigoDes: string;

    function contabiliza: Boolean; virtual;

    function GererRegistros: Boolean; virtual;

  end;

  TContabilizacaoTransferencia = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vFlaOrigem: string; vFlaDestino: string;
    vPcgCredito: string; vPcgDebito: string; vPhgCodigo: string; vRmgValor: string; vComplemento: string): Boolean;

var
  fdvch: Tfdvch;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

  // Início ID do Módulo fdch
const
  vPlIdMd = '02.02.07.007-06';
  vPlTitMdl = 'Devolução de Cheques';

  // Fim ID do Módulo fdch

implementation

{$R *.dfm}

function Tfdvch.contabiliza: Boolean;
var
  Contab: TContabilizacaoTransferencia;
begin

  pack := LoadPackage('modulos\mctz.bpl');
  if pack <> 0 then
    try
      @Contab := GetProcAddress(pack, PChar('ContabilizacaoDevolucaoCheque'));
      if Assigned(Contab) then
      begin
        consulta.close;
        consulta.sql.Text := 'select tctcodigo, flacodigo, pcgcodigo from cta where ctacodigo=' + ctacodigodes.Field.AsString;
        consulta.Open;

        vFlaCodigoDes := consulta.Fields[1].AsString;
        vPcgCodigoDes := consulta.Fields[2].AsString;

        consulta.close;
        consulta.sql.Text := 'select tctcodigo, flacodigo, pcgcodigo from cta where ctacodigo=' + ctacodigoori.Field.AsString;
        consulta.Open;

        vFlaCodigoOri := consulta.Fields[1].AsString;
        vPcgCodigoOri := consulta.Fields[2].AsString;

        result := Contab(Application, zcone, Acesso.Usuario.ToString, self.vpLteChave, vFlaCodigoOri, vFlaCodigoDes, vPcgCodigoOri, vPcgCodigoDes, '1',
          self.dchtotal.Field.AsString, registrodchhistorico.AsString);

      end;

    finally
      // DoUnLoadPackage(pack);
    end;

end;

procedure Tfdvch.DBGListaCellClick(Column: TColumn);
var
  i: Integer;
begin

  if Column.FieldName = 'tmpselecionar' then
  begin
    (* Tratativa para somente permitir essa chamada se o foco estiver no Grid *)
    if not(self.ActiveControl = DBGLista) then
      Exit;

    { * Tratativa para evitar a marcação na lista de uma tabela em branco * }
    if tmpchevalor.AsString = '' then
      Exit;

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

      for i := 0 to DBGLista.Columns.Count - 1 do
        if (DBGLista.Columns[i].FieldName = 'mdccodigo') and (DBGLista.Columns[i].Visible) then
        begin
          criabusca(mdccodigo, tmpmdcidentificacao);
          Break;
        end;

      tmp.post;
    end;

    recalculatotais;
  end
  else
  begin
    inherited;
  end;

end;

procedure Tfdvch.DBGListaDblClick(Sender: TObject);
begin
  inherited;
  if self.tmp.Fieldbyname('chevalor').AsString <> '' then
    if self.tmp.Fieldbyname('tmpselecionar').AsString = '0' then
    begin
      self.tmp.Edit;
      self.tmp.Fieldbyname('tmpselecionar').AsString := '1';
      self.tmp.post;
    end
    else
    begin
      self.tmp.Edit;
      self.tmp.Fieldbyname('tmpselecionar').AsString := '0';
      self.tmp.post;
    end;
  recalculatotais;

end;

procedure Tfdvch.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;
begin

  fixRect := Rect;

  If odd(Dtmp.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clSilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := CLWHITE;
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
    if self.tmp.Fieldbyname('tmpselecionar').AsString = '1' then
      tmpck := DFCS_CHECKED
    else
      tmpck := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do tmpckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or tmpck);
  end;

end;

procedure Tfdvch.DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure Tfdvch.FormShow(Sender: TObject);
begin

  IdModulo := vPlIdMd;

  // tmp.CreateDataSet;

  inherited;

  che.close;
  che.Params[0].AsString := vChaveMestre;
  che.Params[1].AsString := '2';
  che.Open;

  CarregaCheques;

  self.txtFiltro := 'ctacodigo<>' + self.vChaveMestre + ' and tctcodigo=1';
end;

procedure Tfdvch.recalculatotais;
var
  reg: Integer;
  vtot: double;
  vqtd: double;

begin
  reg := self.tmp.RecNo;
  vtot := 0;
  vqtd := 0;
  tmp.First;
  tmp.DisableControls;
  while not tmp.Eof do
  begin
    if self.tmp.Fieldbyname('tmpselecionar').AsString <> '0' then
    begin
      vtot := vtot + self.tmp.Fieldbyname('chevalor').AsFloat;
      vqtd := vqtd + 1;

    end;

    tmp.Next;
  end;

  dchtotal.Field.AsFloat := vtot;
  dchquantidade.Field.AsString := formatfloat('###000', vqtd);

  self.tmp.RecNo := reg;
  tmp.EnableControls;
end;

procedure Tfdvch.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrodchdata.AsFloat := date;
  self.registrodchhora.AsFloat := time;
  self.registroctacodigoori.AsString := vChaveMestre;

end;

procedure Tfdvch.tmpBeforePost(DataSet: TDataSet);
begin
  inherited;
  { * Evita a amrcação de um linha sem valor * }
  if tmpchevalor.AsString = '' then
    DataSet.Cancel;
end;

procedure Tfdvch.bconfirmaClick(Sender: TObject);
begin

  if not ValidaCamposRequeridos then
    Exit;

  if dchtotal.Field.AsString <> '' then
    if dchtotal.Field.AsFloat <= 0 then
    begin
      Application.MessageBox(PChar('Por favor, selecione algum cheque para concluir a operação.'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;

  if dchquantidade.Field.AsInteger <= 0 then
  begin
    Application.MessageBox(PChar('Por favor, selecione algum cheque para concluir a operação.'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  if GererRegistros then
    inherited;

  if cfgcfgusactb.AsInteger = 1 then
    contabiliza;
end;

procedure Tfdvch.CarregaCheques;
var
  i: Integer;
begin

  tmp.CreateDataSet;
  tmp.EmptyDataSet;
  tmp.Open;


  che.First;
  while not che.Eof do
  begin
    if cheschcodigo.AsString = '2' then
    begin
      tmp.append;
      for i := 0 to che.Fields.Count - 1 do
      begin
        tmp.Fieldbyname(che.Fields[i].FieldName).AsString := che.Fieldbyname(che.Fields[i].FieldName).AsString;
      end;
      tmp.Fieldbyname('tmpselecionar').AsString := '0';
      tmp.Fieldbyname('mdccodigo').AsString := '0';

      tmp.post;
    end;
    che.Next;
  end;

end;

function Tfdvch.GererRegistros: Boolean;
var
  vlChavesLtes: TstringList;
begin

  try
    zcone.StartTransaction;
    vlChavesLtes := TstringList.Create;
    tmp.First;
    while not tmp.Eof do
    begin
      if self.tmptmpselecionar.AsInteger = 1 then
      begin
        { * debito na conta do banco * }
        lte.Open;
        lte.append;
        ltetfdcodigo.AsInteger := tfdContaCorrente;
        lteltedata.AsFloat := date;
        ltelteprincipal.AsFloat := self.tmpchevalor.AsFloat;
        lteltejuros.AsFloat := 0;
        lteltedesconto.AsFloat := 0;
        lteltetotal.AsFloat := self.tmpchevalor.AsFloat;
        lteltemulta.AsFloat := 0;
        lte.post;

        let.close;
        let.Params[0].AsInteger := lteltechave.AsInteger;
        let.Open;

        let.append;
        letltechave.AsInteger := lteltechave.AsInteger;
        letetdcodigo.AsInteger := tmpetdcodigo.AsInteger;
        let.post;

        vlChavesLtes.Add(lteltechave.AsString);

        dtl.Open;
        dtl.append;
        dtlltechave.AsString := lteltechave.AsString;
        dtlcedcodigo.AsInteger := ceddebito;
        dtlmdacodigo.AsInteger := mdaChequeTerceiros;
        dtldtlvalor.AsFloat := lteltetotal.AsFloat;
        dtl.post;

        cco.close;
        cco.Open;
        cco.append;
        ccoctacodigo.AsInteger := self.ctacodigoori.Field.AsInteger;
        ccoccoemissao.AsFloat := date;
        ccoccovencimento.AsFloat := date;
        ccotoccodigo.AsInteger := tocTransferencia;
        ccocedcodigo.AsInteger := ceddebito;
        ccoclbcodigo.AsInteger := Acesso.Usuario;
        ccotficodigo.AsInteger := 1;
        ccomoecodigo.AsInteger := 1;
        ccocconumero.AsString := tmpchenumero.AsString;
        ccophgcodigo.AsInteger := 1;

        if self.Name = 'fdvch' then
        begin
          ccoccohistorico.AsString := 'Cheque Devolvido bc ' + tmpbcocodigo.AsString + ', ag ' + tmpcheagencia.AsString + ', cc ' + self.tmpcheconta.AsString + ', nº ' +
            self.tmpchenumero.AsString + ', Alínea ' + self.tmpmdccodigo.AsString + ' - ' + self.tmpmdcidentificacao.AsString;
          ccoccofavorecido.AsString := 'Para: ' + self.registroctadestino.AsString;
        end
        else if self.Name = 'ftrch' then
        begin
          ccoccofavorecido.AsString := 'Transf. de Cheques para: ' + self.registroctadestino.AsString;
          ccoccohistorico.AsString := registrodchhistorico.AsString;
        end
        else if self.Name = 'fdpch' then
        begin
          ccoccofavorecido.AsString := 'Depósito de Cheques para: ' + self.registroctadestino.AsString;
          ccoccohistorico.AsString := registrodchhistorico.AsString;
        end
        else if self.Name = 'frech' then
        begin
          ccoccofavorecido.AsString := 'Resgate de Cheques para: ' + self.registroctadestino.AsString;
          ccoccohistorico.AsString := registrodchhistorico.AsString;
        end;

        ccoccovalor.AsFloat := self.tmpchevalor.AsFloat;
        ccoccochaveorig.AsInteger := 0;
        ccoccochavedest.AsInteger := 0;
        ccoccoconciliado.AsString := '0';
        ccoccoextenso.AsString := '';
        ccoetdcodigo.AsInteger := 0;
        ccoccodatamov.AsFloat := date;
        ccoccodataregistro.AsFloat := date;
        ccoccohoraregistro.AsFloat := time;

        cco.post;
        ccd.close;
        ccd.Params[0].AsInteger := dtldtlchave.AsInteger;
        ccd.Params[1].AsString := ccoccochave.AsString;
        ccd.Open;

        if ccd.IsEmpty then
        begin
          ccd.append;
          ccdccochave.AsString := ccoccochave.AsString;
          ccddtlchave.AsInteger := dtldtlchave.AsInteger;
          ccd.post;
        end;

        clt.close;
        clt.Open;
        clt.append;
        cltccochave.AsInteger := self.ccoccochave.AsInteger;
        cltltechave.AsInteger := self.lteltechave.AsInteger;
        clt.post;

        ltc.close;
        ltc.Open;
        ltc.append;
        ltcdtlchave.AsInteger := dtldtlchave.AsInteger;
        ltcchechave.AsInteger := self.tmpchechave.AsInteger;

        if self.Name = 'fdpch' then
          ltcschcodigo.AsInteger := schDepositado
        else if self.Name = 'fdvch' then
          ltcschcodigo.AsInteger := schDevolvido
        else if self.Name = 'ftrch' then
          ltcschcodigo.AsInteger := schTransferido
        else if self.Name = 'frech' then
          ltcschcodigo.AsInteger := schLiquidadoResgate;

        ltcmdccodigo.AsInteger := tmpmdccodigo.AsInteger;
        ltc.post;
        { * crédito na conta de destino * }
        lte.Open;
        lte.append;
        ltetfdcodigo.AsInteger := tfdContaCorrente;
        lteltedata.AsFloat := date;
        ltelteprincipal.AsFloat := self.tmpchevalor.AsFloat;
        lteltejuros.AsFloat := 0;
        lteltedesconto.AsFloat := 0;
        lteltetotal.AsFloat := self.tmpchevalor.AsFloat;
        lteltemulta.AsFloat := 0;
        lte.post;

        vpLteChave := lteltechave.AsString;

        let.close;
        let.Params[0].AsInteger := lteltechave.AsInteger;
        let.Open;

        let.append;
        letltechave.AsInteger := lteltechave.AsInteger;
        letetdcodigo.AsInteger := tmpetdcodigo.AsInteger;
        let.post;

        vlChavesLtes.Add(lteltechave.AsString);
        dtl.Open;
        dtl.append;
        dtlltechave.AsString := lteltechave.AsString;
        dtlcedcodigo.AsInteger := cedcredito;
        dtlmdacodigo.AsInteger := mdaChequeTerceiros;
        dtldtlvalor.AsFloat := lteltetotal.AsFloat;
        dtl.post;
        cco.close;
        cco.Open;
        cco.append;
        ccoctacodigo.AsInteger := self.ctacodigodes.Field.AsInteger;
        ccoccoemissao.AsFloat := date;
        ccoccovencimento.AsFloat := date;
        ccotoccodigo.AsInteger := tocTransferencia;
        ccocedcodigo.AsInteger := cedcredito;
        ccoclbcodigo.AsInteger := Acesso.Usuario;
        ccotficodigo.AsInteger := 1;
        ccomoecodigo.AsInteger := 1;
        ccocconumero.AsString := tmpchenumero.AsString;
        ccophgcodigo.AsInteger := 1;

        if self.Name = 'fdvch' then
        begin
          ccoccohistorico.AsString := 'Cheque Devolvido bc ' + tmpbcocodigo.AsString + ', ag ' + tmpcheagencia.AsString + ', cc ' + self.tmpcheconta.AsString + ', nº ' +
            self.tmpchenumero.AsString + ', Alínea ' + self.tmpmdccodigo.AsString + ' - ' + self.tmpmdcidentificacao.AsString;

          ccoccofavorecido.AsString := 'De: ' + self.registroctaorigem.AsString;

        end
        else if self.Name = 'ftrch' then
        begin

          ccoccofavorecido.AsString := 'Transf. de Cheques recebidas de: ' + self.registroctaorigem.AsString;
          ccoccohistorico.AsString := registrodchhistorico.AsString;

        end
        else if self.Name = 'fdpch' then
        begin
          ccoccofavorecido.AsString := 'Depósito de Cheques de: ' + self.registroctaorigem.AsString;
          ccoccohistorico.AsString := registrodchhistorico.AsString;
        end
        else if self.Name = 'frech' then
        begin
          ccoccofavorecido.AsString := 'Resgate de Cheques de: ' + self.registroctaorigem.AsString;
          ccoccohistorico.AsString := registrodchhistorico.AsString;
        end;

        ccoccovalor.AsFloat := self.tmpchevalor.AsFloat;
        ccoccochaveorig.AsInteger := 0;
        ccoccochavedest.AsInteger := 0;
        ccoccoconciliado.AsString := '0';
        ccoccoextenso.AsString := '';
        ccoetdcodigo.AsInteger := 0;
        ccoccodatamov.AsFloat := date;
        ccoccodataregistro.AsFloat := date;
        ccoccohoraregistro.AsFloat := time;
        cco.post;

        clt.close;
        clt.Open;
        clt.append;
        cltccochave.AsInteger := self.ccoccochave.AsInteger;
        cltltechave.AsInteger := self.lteltechave.AsInteger;
        clt.post;
        ltc.close;
        ltc.Open;
        ltc.append;
        ltcdtlchave.AsInteger := dtldtlchave.AsInteger;
        ltcchechave.AsInteger := self.tmpchechave.AsInteger;

        if self.Name = 'fdpch' then
          ltcschcodigo.AsInteger := schDepositado
        else if self.Name = 'fdvch' then
          ltcschcodigo.AsInteger := schDevolvido
        else if self.Name = 'frech' then
          ltcschcodigo.AsInteger := schLiquidadoResgate;

        ltcmdccodigo.AsInteger := tmpmdccodigo.AsInteger;
        ltc.post;
      end;
      tmp.Next;
    end;

    result := true;
    zcone.Commit;
  except
    on e: Exception do
    begin
      Showmessage('Falha na transferencia do registros!' + #13 + 'Erro: ' + e.Message);
      result := false;
      zcone.Rollback;
    end;
  end;
end;

procedure Tfdvch.ctacodigodesEnter(Sender: TObject);
begin
  inherited;
  cta.Filter := 'ctacodigo<>' + self.vChaveMestre + ' and tctcodigo=1';
  cta.Filtered := true;
end;

end.
