unit uflche;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufuncoes,
  Vcl.Grids, Vcl.DBGrids, Data.DB, MemDS, DBAccess, Vcl.Mask, Vcl.DBCtrls,
  Datasnap.DBClient;

type
  Tflche = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    pltopo: TPanel;
    PlTitulo: TPanel;
    plid: TPanel;
    bvalidar: TBitBtn;
    qtd: TEdit;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGLista: TDBGrid;
    che: tuniquery;
    chechechave: TIntegerField;
    checheemissao: TDateField;
    chechevencimento: TDateField;
    chechenumero: TStringField;
    checheconta: TStringField;
    checheagencia: TStringField;
    chebcocodigo: TStringField;
    chechenome: TStringField;
    chechedocumento: TStringField;
    chechevalor: TFloatField;
    Dche: tunidatasource;
    chechetelefone: TStringField;
    Panel4: TPanel;
    ltc: tuniquery;
    ltcltcchave: TIntegerField;
    ltcchechave: TIntegerField;
    ltcdtlchave: TIntegerField;
    tmp: TClientDataSet;
    ltcschcodigo: TIntegerField;
    pltotais: TPanel;
    Panel3: TPanel;
    Panel5: TPanel;
    pltotal: TPanel;
    consulta: tuniquery;
    cta: tuniquery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
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
    tmpctacodigo: TIntegerField;
    tmpctaidentificacao: TStringField;
    chc: tuniquery;
    chcctacodigo: TIntegerField;
    chcchechave: TIntegerField;
    ctabcocodigo: TStringField;
    ctactanumero: TStringField;
    ctactaagencia: TStringField;
    ctatctcodigo: TIntegerField;
    cfg: tuniquery;
    cfgetdidentificacao: TStringField;
    cfgetddoc1: TStringField;
    cfgetftelefone: TStringField;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure bvalidarClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure tmpAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure DBGListaColExit(Sender: TObject);
    procedure DBGListaExit(Sender: TObject);
    procedure DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    procedure criacampostmp(nome: string; tipo: TFieldType; etiqueta: string = ''; tamanho: Integer = 0);
    { Private declarations }
  public
    { Public declarations }

    vpMesChave: String;
    vvalor: string;
    vdtlchave: string;
    vmdacodigo: Integer;
    vccochave: string;
    vretorno: string;
    Fzcone: tuniconnection;
    vcheproprio: Boolean;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  end;

var
  flche: Tflche;
  FormatSettings: TFormatSettings;

  // Início ID do Módulo flche
const
  vPlIdMd = '02.02.14.001-01';

  // Fim ID do Módulo flche

implementation

{$R *.dfm}




function registracheques(AOwner: TComponent; conexao: tuniconnection; vtotal: string; vdtlchave: string; vcco: string;
  vmeschave: String = ''): string;
var
  vch: string;
  hWindow: HWND;
  i: Integer;
  vTotalCheques: Double;
begin
  try
    flche := Tflche.create(AOwner);
    flche.zcone := conexao;
    flche.che.Connection := flche.zcone;
    flche.ltc.Connection := flche.zcone;
    flche.cta.Connection := flche.zcone;
    flche.chc.Connection := flche.zcone;
    flche.cfg.Connection := flche.zcone;

    flche.consulta.Connection := flche.zcone;

    flche.vpMesChave := vmeschave;

    if vdtlchave <> '' then
    begin
      flche.consulta.Close;
      flche.consulta.SQL.Text := 'select mdacodigo from dtl where dtlchave=' + vdtlchave;
      flche.consulta.Open;
      flche.vmdacodigo := flche.consulta.Fields[0].AsInteger;
      flche.consulta.Close;

    end;

    flche.che.Close;
    flche.che.SQL.Text := 'SELECT che.chechave, che.cheemissao, che.chevencimento, che.chenumero, che.checonta, ';
    flche.che.SQL.Add('che.cheagencia, che.bcocodigo, che.chenome, che.chedocumento, che.chetelefone, che.chevalor FROM che, ltc ');
    flche.che.SQL.Add('WHERE ltc.chechave = che.chechave ');
    flche.che.SQL.Add('AND ltc.dtlchave = ' + vdtlchave);
    flche.che.Open;

    if flche.che.IsEmpty = False then
    begin
      flche.tmp.CreateDataSet;
      flche.tmp.Open;

      vTotalCheques := 0;
      flche.che.First;
      while not flche.che.Eof do
      begin
        flche.tmp.Append;
        for i := 0 to flche.che.Fields.Count - 1 do
          flche.tmp.Fieldbyname(flche.che.Fields[i].FieldName).AsString := flche.che.Fieldbyname(flche.che.Fields[i].FieldName).AsString;

        flche.tmp.Post;

        vTotalCheques := vTotalCheques + flche.che.Fieldbyname('chevalor').AsFloat;
        flche.che.Next;
      end;

      flche.pltotal.Caption := Format('%n', [vTotalCheques]);
      flche.tmp.Edit;
    end
    else
    begin
      flche.tmp.CreateDataSet;
      flche.tmp.Open;
    end;

    flche.vdtlchave := vdtlchave;
    flche.vccochave := vcco;

    flche.vcheproprio := False;

    flche.consulta.Close;
    flche.consulta.SQL.Text := 'SELECT cco.ctacodigo, ctanumero, ctaagencia, bcocodigo, ctaidentificacao FROM dtl, clt, cco, cta ';
    flche.consulta.SQL.Add('WHERE dtl.ltechave = clt.ltechave ');
    flche.consulta.SQL.Add('AND clt.ccochave = cco.ccochave ');
    flche.consulta.SQL.Add('AND cta.tctcodigo = ' + inttostr(tctContaBancaria) + ' ');
    flche.consulta.SQL.Add('AND cco.ctacodigo = cta.ctacodigo ');
    flche.consulta.SQL.Add('AND dtl.dtlchave=' + vdtlchave);
    flche.consulta.Open;

    if not flche.consulta.IsEmpty then
    begin
      flche.vcheproprio := True;

      for i := 0 to 6 do
      begin
        flche.DBGLista.Columns[i].Visible := False;
        flche.DBGLista.Columns[i].ReadOnly := True;
      end;

      flche.Width := 468;

      if (flche.vmdacodigo = mdaTrocoChequeProprio) or (flche.vmdacodigo = mdaChequeProprio) then
      begin
        flche.vcheproprio := True;
        flche.DBGLista.Columns[0].Visible := True;
        flche.DBGLista.Columns[0].ReadOnly := False;
        flche.Width := 668;
      end;
    end
    else
    begin
      flche.DBGLista.Columns[0].Visible := False;
      flche.DBGLista.Columns[0].ReadOnly := True;

      for i := 1 to 6 do
      begin
        flche.DBGLista.Columns[i].Visible := True;
        flche.DBGLista.Columns[i].ReadOnly := False;
      end;

      if (flche.vmdacodigo = mdaTrocoChequeProprio) or (flche.vmdacodigo = mdaChequeProprio) then
      begin
        flche.vcheproprio := True;
        flche.DBGLista.Columns[0].Visible := True;
        flche.DBGLista.Columns[0].ReadOnly := False;
        flche.Width := 668;
      end;

      flche.Width := 985;
    end;

    flche.ShowModal;
    result := flche.vretorno;
  finally
    FreeAndNil(flche);
  end;
end;

//exports registracheques;

procedure Tflche.criacampostmp(nome: string; tipo: TFieldType; etiqueta: string = ''; tamanho: Integer = 0);
begin
  with tmp do
  begin
    if tipo = ftInteger then
    begin
      with TIntegerField.create(Self) do
      begin
        Name := 'tmp' + nome;
        FieldKind := fkData;
        FieldName := nome;
        displaylabel := etiqueta;
        DataSet := tmp;
        Tag := 0;
      end; // FieldName
    end
    else if tipo = ftFloat then
    begin

      with TFloatField.create(Self) do
      begin
        Name := 'tmp' + nome;
        FieldKind := fkData;
        FieldName := nome;
        DataSet := tmp;
        displaylabel := etiqueta;
        Tag := 0;
        EditFormat := '#,##0.00';
        DisplayFormat := '#,##0.00';
      end; // FieldName
    end
    else if tipo = ftDate then
    begin

      with TDateField.create(Self) do
      begin
        Name := 'tmp' + nome;
        FieldKind := fkData;
        FieldName := nome;
        DataSet := tmp;
        displaylabel := etiqueta;
        Tag := 0;
      end; // FieldName
    end
    else if tipo = ftString then
    begin

      with TStringField.create(Self) do
      begin
        Name := 'tmp' + nome;
        FieldKind := fkData;
        FieldName := nome;
        DataSet := tmp;
        displaylabel := etiqueta;
        size := tamanho;
        Tag := 0;
      end; // FieldName
    end;
  end;
end;

procedure Tflche.bcancelaClick(Sender: TObject);
begin

  flche.vretorno := '0';
  Close;
end;

procedure Tflche.bconfirmaClick(Sender: TObject);
var
  i: Integer;
  vdtlvalor: string;
begin

  ltc.Open;

  tmp.First;
  tmp.DisableControls;
  while not tmp.Eof do
  begin

    che.Close;
    che.SQL.Text := 'SELECT che.chechave, che.cheemissao, che.chevencimento, che.chenumero, che.checonta, ';
    che.SQL.Add('che.cheagencia, che.bcocodigo, che.chenome, che.chedocumento, che.chetelefone, che.chevalor FROM che ');
    che.SQL.Add('WHERE che.chechave=' + Self.tmp.Fieldbyname('chechave').AsString);
    che.Open;

    if che.IsEmpty then
      che.Append
    else
      che.Edit;

    for i := 1 to che.FieldCount - 1 do
      che.Fields[i].AsString := tmp.Fields[i].AsString;

    che.Post;

    ltc.Close;
    ltc.SQL.Text := 'SELECT ltcchave, chechave, dtlchave, schcodigo FROM ltc ';
    ltc.SQL.Add('WHERE chechave = ' + Self.chechechave.AsString + ' ');
    ltc.SQL.Add('AND dtlchave = ' + Self.vdtlchave);
    ltc.Open;

    if ltc.IsEmpty then
      ltc.Append
    else
      ltc.Edit;

    ltcchechave.AsInteger := Self.chechechave.AsInteger;
    ltcdtlchave.AsString := Self.vdtlchave;

    if flche.vcheproprio then
      ltcschcodigo.AsInteger := 7
    else
      ltcschcodigo.AsInteger := 1;

    ltc.Post;

    if (flche.vmdacodigo = mdaTrocoChequeProprio) or (flche.vmdacodigo = mdaChequeProprio) then
    begin
      if not chc.Active then
        chc.Open;

      chc.Append;
      chcctacodigo.AsInteger := Self.tmpctacodigo.AsInteger;
      chcchechave.AsInteger := Self.chechechave.AsInteger;
      chc.Post;
    end;

    tmp.Next;
  end;

  vdtlvalor := '0';
  vdtlvalor := pltotal.Caption;
  vdtlvalor := buscatroca(vdtlvalor, '.', '');
  vdtlvalor := buscatroca(vdtlvalor, '.', '');
  vdtlvalor := buscatroca(vdtlvalor, '.', '');
  vdtlvalor := buscatroca(vdtlvalor, '.', '');
  vdtlvalor := buscatroca(vdtlvalor, ',', '.');

  consulta.Close;

  if flche.vcheproprio then
    consulta.SQL.Text := 'UPDATE dtl SET dtlvalor = ' + vdtlvalor + ' WHERE dtlchave = ' + Self.vdtlchave
  else
    consulta.SQL.Text := 'UPDATE dtl SET dtlvalor = ' + vdtlvalor + ' WHERE dtlchave = ' + Self.vdtlchave;

  consulta.ExecSQL;

  tmp.EnableControls;

  Close;

  vretorno := pltotal.Caption;
end;

procedure Tflche.bvalidarClick(Sender: TObject);
Var
  i: Integer;
  v: Double;
  vtotche: string;

  vcheconta: string;
  vcheagencia: string;
  vbcocodigo: string;
  vchenome: string;
  vchedocumento: string;
  vchetelefone: string;
  vctacodigo: string;
  vEtdCodigo: String;
Begin

  consulta.Close;
  consulta.SQL.Text := 'SELECT cco.ctacodigo, ctanumero, ctaagencia, bcocodigo, ctaidentificacao FROM dtl, clt, cco, cta ';
  consulta.SQL.Add('WHERE dtl.ltechave = clt.ltechave ');
  consulta.SQL.Add('AND clt.ccochave = cco.ccochave ');
  consulta.SQL.Add('AND cco.ctacodigo = cta.ctacodigo ');
  consulta.SQL.Add('AND cta.tctcodigo = ' + inttostr(tctContaBancaria) + ' ');
  consulta.SQL.Add('AND dtl.dtlchave = ' + Self.vdtlchave);
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    vcheconta := consulta.Fields[1].AsString;
    vcheagencia := consulta.Fields[2].AsString;
    vbcocodigo := consulta.Fields[3].AsString;
    vchenome := consulta.Fields[4].AsString;
    vchetelefone := '';
    vchedocumento := '';
    vctacodigo := consulta.Fields[0].AsString;
    vcheproprio := True;
  end
  else
  begin
    if vpMesChave <> '' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'SELECT mes.etdcodigo FROM mes WHERE mes.meschave = ' + vpMesChave;
      consulta.Open;
      vEtdCodigo := consulta.Fields[0].AsString;

      consulta.Close;
      consulta.SQL.Text := 'SELECT etd.etdidentificacao, etd.etddoc1, etf.etftelefone FROM etd, etf ';
      consulta.SQL.Add('WHERE etf.etdcodigo = etd.etdcodigo ');
      consulta.SQL.Add('AND etf.ttfcodigo = 1 ');
      consulta.SQL.Add('AND etd.etdcodigo = ' + vEtdCodigo);
      consulta.Open;

      vchenome := consulta.Fields[0].AsString;
      vchedocumento := consulta.Fields[1].AsString;
      vchetelefone := consulta.Fields[2].AsString;

      consulta.Close;
    end;
  end;

  tmp.First;
  If tmp.RecordCount > 0 Then
    While Not tmp.Eof Do
      tmp.Delete;

  v := 0;

  For i := 1 To strtoint(Self.qtd.Text) Do
  Begin
    tmp.Append;
    tmp.Fieldbyname('chenumero').AsString := '';
    tmp.Fieldbyname('chevalor').AsFloat := v;
    tmp.Fieldbyname('cheemissao').AsFloat := date;
    tmp.Fieldbyname('chevencimento').AsFloat := date + ((i - 1) * 30);
    tmp.Fieldbyname('checonta').AsString := '';
    tmp.Fieldbyname('cheagencia').AsString := vcheagencia;
    tmp.Fieldbyname('bcocodigo').AsString := vbcocodigo;
    tmp.Fieldbyname('chenome').AsString := vchenome;
    tmp.Fieldbyname('chedocumento').AsString := vchedocumento;
    tmp.Fieldbyname('chetelefone').AsString := vchetelefone;
    tmp.Fieldbyname('ctacodigo').AsString := vctacodigo;

    tmp.Post;
  End;

  tmp.First;
  DBGLista.SetFocus;

  if flche.vcheproprio then
    DBGLista.SelectedIndex := 6
  else
  begin
    if flche.DBGLista.Columns[0].ReadOnly then
      DBGLista.SelectedIndex := 1;
  end;
end;

procedure Tflche.DBGListaColExit(Sender: TObject);
begin
  if tmp.State <> dsEdit then
    tmp.Edit;

  if DBGLista.SelectedIndex = 0 then
    if cta.Locate('ctacodigo', Self.tmpctacodigo.AsInteger, []) then
    begin

      if not cfg.Active then
        cfg.Open;

      if tmp.State <> dsEdit then
        tmp.Edit;

      tmpbcocodigo.AsString := ctabcocodigo.AsString;
      tmpcheconta.AsString := ctactanumero.AsString;
      tmpcheagencia.AsString := ctactaagencia.AsString;
      tmpchenome.AsString := cfgetdidentificacao.AsString;
      tmpchedocumento.AsString := cfgetddoc1.AsString;
      tmpchetelefone.AsString := cfgetftelefone.AsString;
      DBGLista.Columns[2].ReadOnly := True;
      DBGLista.Columns[3].ReadOnly := True;
      DBGLista.Columns[4].ReadOnly := True;
      DBGLista.Columns[5].ReadOnly := True;
      DBGLista.Columns[6].ReadOnly := True;
      DBGLista.SelectedIndex := 7;
    end;

  if DBGLista.SelectedIndex = 1 then
    tmpchenome.AsString := AnsiUpperCase(tmpchenome.AsString);

  if DBGLista.SelectedIndex = 4 then
    if tmpbcocodigo.AsString <> '' then
      tmpbcocodigo.AsString := FormatFloat('000', tmpbcocodigo.AsInteger);

  if DBGLista.SelectedIndex = 7 then
    if tmpchenumero.AsString <> '' then
      tmpchenumero.AsString := FormatFloat('000000', tmpchenumero.AsInteger);

end;

procedure Tflche.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  If Odd(Dche.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  If Column.ReadOnly Then
    DBGLista.Canvas.Brush.Color := clBtnFace;

  TDBGrid(Sender).Canvas.font.Color := clBlack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(Rect);
      font.Style := [fsbold]
    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

procedure Tflche.DBGListaExit(Sender: TObject);
var
  vvaltot: Double;
  vRegAtual: Integer;
begin
  if not(Dche.DataSet.State in [dsinsert, dsEdit]) then
    Exit;

  vRegAtual := Dche.DataSet.RecNo;

  Dche.DataSet.DisableControls;
  vvaltot := 0;
  Dche.DataSet.First;
  While Not Dche.DataSet.Eof Do
  Begin
    vvaltot := vvaltot + Self.Dche.DataSet.Fieldbyname('chevalor').AsFloat;
    Dche.DataSet.Next;
  End;

  Dche.DataSet.RecNo := vRegAtual;
  Dche.DataSet.EnableControls;

  pltotal.Caption := Format('%n', [vvaltot]);
end;

procedure Tflche.DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If ((Shift = [ssCtrl]) And (Key = 46)) Then
    Abort;
end;

procedure Tflche.DBGListaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If Key = 40 Then
    If tmp.State = dsinsert Then
    Begin
      Key := 0;
      tmp.Cancel;
    End;
end;

procedure Tflche.FormKeyPress(Sender: TObject; var Key: Char);
Var
  clu: Integer;
  atu: Integer;
  reg: Integer;
  vbco: String;
  vcta: String;
  vage: String;
  vche: Double;

  vnom: String;
  vdoc: String;
  vfon: String;

  vtotche: string;
  vvaltot: Double;

  x: Integer;
  rpar: Integer;
  vRegAtual: Integer;
Begin
  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = '\' Then
  Begin
    Key := #0;
  End;

  If Key = #13 Then
  Begin

    If (Sender Is TDBGrid) Then
    Begin
      Key := #0;

      (Sender As TDBGrid).SelectedIndex := (Sender As TDBGrid).SelectedIndex + 1;
      clu := (Sender As TDBGrid).SelectedIndex;
      atu := ((Sender As TDBGrid).Columns.Count - 1);
      If clu = atu Then
      Begin

        vRegAtual := (Sender As TDBGrid).DataSource.DataSet.RecNo;

        try
          vbco := Self.tmp.Fieldbyname('bcocodigo').AsString;
          vcta := Self.tmp.Fieldbyname('checonta').AsString;
          vage := Self.tmp.Fieldbyname('cheagencia').AsString;
          vnom := Self.tmp.Fieldbyname('chenome').AsString;
          vdoc := Self.tmp.Fieldbyname('chedocumento').AsString;
          vfon := Self.tmp.Fieldbyname('chetelefone').AsString;

          if Self.tmp.Fieldbyname('chenumero').AsString <> '' then
            vche := Self.tmp.Fieldbyname('chenumero').AsFloat
          else
            vche := 0;

          Dche.DataSet.DisableControls;
          Dche.DataSet.Next;

          If Dche.DataSet.State = dsbrowse Then
            Dche.DataSet.Edit;

          if (Self.tmp.Fieldbyname('bcocodigo').AsString = '') then
          begin
            Self.tmp.Fieldbyname('bcocodigo').AsString := vbco;
            Self.tmp.Fieldbyname('checonta').AsString := vcta;
            Self.tmp.Fieldbyname('cheagencia').AsString := vage;
            Self.tmp.Fieldbyname('chenome').AsString := vnom;
            Self.tmp.Fieldbyname('chedocumento').AsString := vdoc;
            Self.tmp.Fieldbyname('chetelefone').AsString := vfon;

            if vche > 0 then
            begin
              Self.tmp.Fieldbyname('chenumero').AsFloat := vche + 1;
              vche := Self.tmp.Fieldbyname('chenumero').AsFloat;
            end;

            Dche.DataSet.Post;
          end;

        finally
          (Sender As TDBGrid).DataSource.DataSet.RecNo := vRegAtual;
          Dche.DataSet.EnableControls;
        end;

        If ((Sender As TDBGrid).SelectedIndex = 10) Then
        Begin
          atu := Dche.DataSet.RecNo;
          // calcular total ja lançado

          Dche.DataSet.DisableControls;
          vvaltot := 0;
          Dche.DataSet.First;
          While Not Dche.DataSet.Eof Do
          Begin
            vvaltot := vvaltot + Self.Dche.DataSet.Fieldbyname('chevalor').AsFloat;
            Dche.DataSet.Next;
          End;

          Dche.DataSet.First;
          While Not Dche.DataSet.Eof Do
          Begin
            x := x + 1;
            If Dche.DataSet.RecNo = atu Then
            Begin
              Dche.DataSet.Next;
              break;
            End;
            Dche.DataSet.Next;
          End;

          rpar := 1 + ((Dche.DataSet.RecordCount) - Dche.DataSet.RecNo);

          Dche.DataSet.EnableControls;
        End;

        Dche.DataSet.RecNo := atu;

        pltotal.Caption := Format('%n', [vvaltot]);

        (Sender As TDBGrid).SelectedIndex := 0;

        if flche.vcheproprio then
          (Sender As TDBGrid).SelectedIndex := 6
        else
          (Sender As TDBGrid).SelectedIndex := 1;

        (Sender As TDBGrid).DataSource.DataSet.Next;

        If (Sender As TDBGrid).DataSource.DataSet.Eof Then
        Begin
          bconfirma.SetFocus;
        End;
      End;
    End
    Else
    Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    End;
  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bcancela.Click;
  End
  else
  begin
    If (Sender Is TDBGrid) Then
      if ((Sender As TDBGrid).SelectedIndex IN [3, 6, 7, 8]) then
        if not(Key in [#8, '0' .. '9', '-', ',', FormatSettings.DecimalSeparator]) then
        begin
          ShowMessage('Tecla Inválida: ' + Key);
          Key := #0;
        end;
  End;

end;

procedure Tflche.FormShow(Sender: TObject);
begin
 Self.plid.Caption := self.Name;
  if not che.IsEmpty then
    flche.DBGLista.SetFocus;
end;

procedure Tflche.tmpAfterInsert(DataSet: TDataSet);
begin
  Self.tmp.Fieldbyname('chechave').AsString := '-1';
end;

end.
