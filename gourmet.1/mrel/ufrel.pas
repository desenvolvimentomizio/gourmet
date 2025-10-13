unit ufrel;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ufrmbase, frxClass,
  frxDACComponents, frxUniDACComponents, frxGZip, frxDCtrl, frxGradient,
  frxChBox, frxCross, frxRich, frxBarcode, frxDesgn, frxDBSet, frxChart,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.Dialogs, uFuncoes, ufrabase,
  System.ImageList;

type
  Tfrel = class(Tfrmbase)
    registrorelidentificacao: TStringField;
    registroreltitulo: TStringField;
    registroreltipo: TIntegerField;
    registrorelsituacao: TIntegerField;
    registrorelnomearquivo: TStringField;
    registrorelarquivo: TBlobField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    relcodigo: TDBEdit;
    relidentificacao: TDBEdit;
    reltitulo: TDBEdit;
    relsituacao: TDBEdit;
    registrosensituacao: TStringField;
    registrosentipo: TStringField;
    lre: TUniQuery;
    lrelrechave: TIntegerField;
    lreclbcodigo: TIntegerField;
    lrelreregistro: TDateTimeField;
    lrerelarquivo: TBlobField;
    bvalidar: TBitBtn;
    PlMre: TPanel;
    BvTopo: TBevel;
    plManutencao: TPanel;
    btGerador: TBitBtn;
    DSdados: TUniDataSource;
    registrorelusaparametros: TIntegerField;
    registrosenusaparametros: TStringField;
    relusaparametros: TDBEdit;
    Label6: TLabel;
    SplLista: TSplitter;
    crl: TUniQuery;
    crlcrmnome: TStringField;
    crltcacodigo: TIntegerField;
    crltcaidentificacao: TStringField;
    vdados: TUniQuery;
    crm: TUniQuery;
    crlcrmidentificacao: TStringField;
    cfgcfgcodigo: TIntegerField;
    cfgetddoc1: TStringField;
    registrorelorigem: TStringField;
    relatorio: TfrxReport;
    registrorelcodigo: TStringField;
    lrerelcodigo: TStringField;
    crlrelcodigo: TStringField;
    frxChartObject: TfrxChartObject;
    frxDados: TfrxDBDataset;
    frxDesigner: TfrxDesigner;
    frxBarCodeObject: TfrxBarCodeObject;
    frxRichObject: TfrxRichObject;
    frxCrossObject: TfrxCrossObject;
    frxCheckBoxObject: TfrxCheckBoxObject;
    frxGradientObject: TfrxGradientObject;
    frxDialogControls: TfrxDialogControls;
    frxGZipCompressor: TfrxGZipCompressor;
    frxUniDACComponents: TfrxUniDACComponents;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bvalidarClick(Sender: TObject);
    procedure btGeradorClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    function relatorioUserFunction(const MethodName: string; var Params: Variant): Variant;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    hmre: thandle;
  end;

var
  frel: Tfrel;

  // Início ID do Módulo frel
const
  vPlIdMd = '03.06.80.008-02';

  // Fim ID do Módulo frel

implementation

{$R *.dfm}

procedure Tfrel.bconfirmaClick(Sender: TObject);
var
  BlobField: TBlobField;
  vlNomeArq: string;
  fra: Tfrabase;
  vlRadicCNPJ: string;
begin

  if psituacao.Caption = 'Incluindo' then
  begin
    if registro.State <> dsBrowse then
    begin
      self.registro.Post;
    end;

    vlNomeArq := ExtractFilePath(Application.ExeName) + 'relat\' + self.registrorelnomearquivo.AsString + '.fr3';

    self.registro.Edit;
    self.registrorelnomearquivo.AsString := 'rel' + relcodigo.Field.AsString;

    if not cfg.Active then
      cfg.Open;

    vlRadicCNPJ := SoNumeros(self.cfgetddoc1.AsString);
    registrorelorigem.AsString := copy(vlRadicCNPJ, 1, 8);

    BlobField := registro.FieldByName('relarquivo') as TBlobField;
    BlobField.LoadFromFile(vlNomeArq);

    registro.Post;

    lre.Open;
    lre.Append;
    lrerelcodigo.AsString := registrorelcodigo.AsString;
    lreclbcodigo.AsInteger := Acesso.Usuario;
    lrelreregistro.AsFloat := now;
    BlobField := lre.FieldByName('relarquivo') as TBlobField;
    BlobField.LoadFromFile(vlNomeArq);
    lre.Post;

  end
  else if psituacao.Caption = 'Alterando' then
  begin
    vlNomeArq := ExtractFilePath(Application.ExeName) + 'relat\' + self.registrorelnomearquivo.AsString + '.fr3';
    if FileExists(vlNomeArq) then
    begin
      { lre.Open;
        lre.Append;
        lrerelcodigo.AsInteger := registrorelcodigo.AsInteger;
        lreclbcodigo.AsString := vusrcodigo;
        lrelreregistro.AsFloat := now;
        BlobField := lre.FieldByName('relarquivo') as TBlobField;
        BlobField.LoadFromFile(vlNomeArq);
        lre.Post; }

      registro.Edit;
      BlobField := registro.FieldByName('relarquivo') as TBlobField;
      BlobField.LoadFromFile(vlNomeArq);
      registro.Post;

    end;
  end;

  if hmre > 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('framre'));
    fra.salvacolunas;
  end;

  inherited;

end;

procedure Tfrel.btGeradorClick(Sender: TObject);
var
  C: integer;
  T: TStringField;
  D: TDateField;
  F: TFloatField;
  I: TIntegerField;

  frm: Tfrmbase;
  SqlTemp: string;
  sqlcamp: string;
  vCampo: TDBEdit;
  vEtiqueta: TLabel;
  vPrimeiroCampo: twincontrol;

  vlNomeArq: string;
  BlobField: TBlobField;

begin
  inherited;

  frxUniDACComponents.DefaultDatabase := zcone;

  try

    if registro.State <> dsBrowse then
    begin
      self.registro.Post;
    end;

    self.registro.Edit;
    self.registrorelnomearquivo.AsString := 'rel' + relcodigo.Field.AsString;
    self.registro.Post;

    if not DirectoryExists(ExtractFilePath(Application.ExeName) + 'relat') then
      CreateDir(ExtractFilePath(Application.ExeName) + 'relat');

    vlNomeArq := ExtractFilePath(Application.ExeName) + 'relat\' + self.registrorelnomearquivo.AsString + '.fr3';

    if psituacao.Caption = 'Alterando' then
    begin
      if FileExists(vlNomeArq) then
      begin
        lre.Open;
        lre.Append;
        lrerelcodigo.AsString := registrorelcodigo.AsString;
        lreclbcodigo.AsInteger := Acesso.Usuario;
        lrelreregistro.AsFloat := now;
        BlobField := lre.FieldByName('relarquivo') as TBlobField;
        BlobField.LoadFromFile(vlNomeArq);
        lre.Post;

      end;
    end;

    if registrorelusaparametros.AsInteger = 1 then
    begin

      crl.Close;
      crl.Params[0].AsString := self.registrorelcodigo.AsString;
      crl.Open;

      crm.Close;
      crm.Params[0].AsString := self.registrorelcodigo.AsString;
      crm.Open;

      if crl.IsEmpty then
      begin
        showmessage('Não há parametros selecionados !');
        exit;

      end;

      consulta.Close;
      consulta.sql.Text := 'DROP TEMPORARY TABLE IF EXISTS ' + 'tpr' + self.registrorelcodigo.AsString;
      consulta.ExecSQL;

      if not crl.IsEmpty then
      begin
        SqlTemp := 'CREATE TEMPORARY TABLE ' + 'tpr' + self.registrorelcodigo.AsString + ' ( ';
      end;

      C := 0;
      while not crl.Eof do
      begin
        if C = 0 then
        begin
          sqlcamp := crlcrmnome.AsString;
        end;
        if crltcacodigo.AsInteger = tcaInteiro then
        begin
          SqlTemp := SqlTemp + crlcrmnome.AsString + ' int(11),';
        end
        else if crltcacodigo.AsInteger = tcaData then
        begin
          SqlTemp := SqlTemp + crlcrmnome.AsString + ' date,';
        end
        else if crltcacodigo.AsInteger = tcaFlutuante then
        begin
          SqlTemp := SqlTemp + crlcrmnome.AsString + ' float(15,3),';
        end
        else if crltcacodigo.AsInteger = tcaTexto then
        begin
          SqlTemp := SqlTemp + crlcrmnome.AsString + ' varchar(255),';
        end;

        crl.Next;
        C := C + 1;
      end;

      SqlTemp := copy(SqlTemp, 1, length(SqlTemp) - 1) + ')';

      consulta.Close;
      consulta.sql.Text := SqlTemp;
      consulta.ExecSQL;

      if crl.Active then
      begin
        frm := Tfrmbase.Create(Application);
        frm.IdModulo := '03.06.80.008-03';
        frm.lbcodigojanela.Caption := self.name;
        frm.registro.Connection := zcone;
        frm.zcone := self.zcone;
        frm.registro.sql.Text := 'select * from ' + 'tpr' + self.registrorelcodigo.AsString + ' where ' + sqlcamp + '=:' + sqlcamp;
        frm.vchave := '0';
        frm.Acesso := Acesso;
        frm.Caption := 'Parâmetros do Relatório';
        frm.name := 'fpr' + self.registrorelcodigo.AsString;
        crl.first;
        C := 1;
        while not crl.Eof do
        begin

          if crltcacodigo.AsInteger = tcaInteiro then
          begin
            I := TIntegerField.Create(frm.registro);
            I.FieldName := crlcrmnome.AsString;
            I.name := frm.registro.name + I.FieldName;
            I.Index := frm.registro.FieldCount;
            I.DataSet := frm.registro;
            frm.registro.FieldDefs.UpDate;
            I.Required := false;
            vCampo := TDBEdit.Create(frm);
            vCampo.Parent := frm.Principal;
            vCampo.DataSource := frm.DSRegistro;
            vCampo.DataField := I.FieldName;
            vCampo.name := I.FieldName;
            vCampo.left := 136;
            vCampo.Width := 70;
            vCampo.Top := (C * 27) - 24;
            if C = 1 then
            begin
              vPrimeiroCampo := vCampo;
            end;
            C := C + 1;
          end
          else if crltcacodigo.AsInteger = tcaData then
          begin
            D := TDateField.Create(frm.registro);
            D.FieldName := crlcrmnome.AsString;
            D.name := frm.registro.name + D.FieldName;
            D.Index := frm.registro.FieldCount;
            D.DataSet := frm.registro;
            frm.registro.FieldDefs.UpDate;
            D.Required := false;

            vCampo := TDBEdit.Create(frm);
            vCampo.Parent := frm.Principal;
            vCampo.DataSource := frm.DSRegistro;
            vCampo.DataField := D.FieldName;
            vCampo.name := D.FieldName;
            vCampo.left := 136;
            vCampo.Width := 95;
            vCampo.Top := (C * 27) - 24;

            if C = 1 then
            begin
              vPrimeiroCampo := vCampo;
            end;
            C := C + 1;

          end
          else if crltcacodigo.AsInteger = tcaFlutuante then
          begin
            F := TFloatField.Create(frm.registro);
            F.FieldName := crlcrmnome.AsString;
            F.name := frm.registro.name + F.FieldName;
            F.Index := frm.registro.FieldCount;
            F.DataSet := frm.registro;
            frm.registro.FieldDefs.UpDate;
            F.Required := false;

            vCampo := TDBEdit.Create(frm);
            vCampo.Parent := frm.Principal;
            vCampo.DataSource := frm.DSRegistro;
            vCampo.DataField := F.FieldName;
            vCampo.name := F.FieldName;
            vCampo.left := 136;
            vCampo.Width := 95;
            vCampo.Top := (C * 27) - 24;

            if C = 1 then
            begin
              vPrimeiroCampo := vCampo;
            end;
            C := C + 1;

          end
          else if crltcacodigo.AsInteger = tcaTexto then
          begin
            T := TStringField.Create(frm.registro);
            T.FieldName := crlcrmnome.AsString;
            T.name := frm.registro.name + T.FieldName;
            T.Index := frm.registro.FieldCount;
            T.DataSet := frm.registro;
            frm.registro.FieldDefs.UpDate;
            T.Required := false;

            vCampo := TDBEdit.Create(frm);
            vCampo.Parent := frm.Principal;
            vCampo.DataSource := frm.DSRegistro;
            vCampo.DataField := T.FieldName;
            vCampo.name := T.FieldName;
            vCampo.left := 136;
            vCampo.Width := 250;
            vCampo.Top := (C * 27) - 24;

            if C = 1 then
            begin
              vPrimeiroCampo := vCampo;
            end;
            C := C + 1;

          end;

          vEtiqueta := TLabel.Create(frm.registro);
          vEtiqueta.Parent := frm.Principal;
          vEtiqueta.name := 'l' + crlcrmnome.AsString;;
          vEtiqueta.Caption := crlcrmidentificacao.AsString;
          vEtiqueta.left := 8;
          vEtiqueta.Top := vCampo.Top + 3;

          crl.Next;
        end;

        frm.ShowModal;

        vdados.Close;
        vdados.sql.Text := 'select * from ' + 'tpr' + self.registrorelcodigo.AsString;
        vdados.Open;
        Application.ProcessMessages;
      end;
    end;

    if psituacao.Caption = 'Alterando' then
    begin
      consulta.Close;
      consulta.sql.Text := 'select relarquivo from rel where relcodigo=' + chr(39) + registrorelcodigo.AsString + chr(39);
      consulta.Open;

      (registro.FieldByName('relarquivo') as TBlobField).SaveToFile(vlNomeArq);

      if FileExists(vlNomeArq) then
      begin
        relatorio.LoadFromFile(vlNomeArq);
      end;

    end
    else
    begin

    end;

    relatorio.DesignReport();

    relatorio.SaveToFile(vlNomeArq);

    bconfirma.Enabled := true;

  finally

  end;
end;

procedure Tfrel.bvalidarClick(Sender: TObject);
var
  podemre: boolean;
  fra: Tfrabase;
  I: integer;
begin
  if (relidentificacao.Field.AsString = '') or (reltitulo.Field.AsString = '') or (relusaparametros.Field.AsString = '') or (relsituacao.Field.AsString = '') then
  begin
    showmessage('Verifique os campos do relatório!');
    exit;

  end;

  self.bvalidar.Visible := false;

  if psituacao.Caption = 'Incluindo' then
    self.registrorelnomearquivo.AsString := 'rel' + self.registrorelcodigo.AsString;

  If (self.registro.State = dsEdit) Then
    self.registro.Post
  Else If (self.registro.State = dsInsert) Then
    self.registro.Post;

  bconfirma.Enabled := true;

  hmre := CarregaFrame('mmre', PlMre, 'Relatórios');
  fra := nil;
  fra := Tfrabase(Application.FindComponent('framre'));
  plManutencao.Visible := true;

  if self.psituacao.Caption = 'Incluindo' then
  begin
    if fra <> nil then
      if fra.vretorno = '0' then
      begin
        podemre := false;
        self.psituacao.Caption := 'Cancelando';
      end;
  end
  else
    podemre := true;

  btGerador.Enabled := true;

end;

procedure Tfrel.FormCreate(Sender: TObject);
begin
  inherited;
  relatorio.AddFunction('function AjustaDias(Data: TDateTime; vDias: Integer): Tdatetime', 'DelphiFunctions', 'Adiciona ou Remove dias.');
  relatorio.AddFunction('function DataExtenso(Data: TDateTime): String', 'DelphiFunctions', 'Retorna Data por extenso.');
  relatorio.AddFunction('function ValorExtenso(Valor: Double): String', 'DelphiFunctions', 'Retorna valor em reais por extenso.');
  relatorio.AddFunction('function StringReplace(const S, OldPattern, NewPattern: string): string', 'DelphiFunctions',
    'Função StringReplace do Delphi com flags rfReplaceAll e rfIgnoreCase.');
end;

procedure Tfrel.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfrel.registroAfterInsert(DataSet: TDataSet);
var

  vlChaverel: string;

begin
  inherited;

  cfg.Open;
  vlChaverel := TGUID.NewGuid.ToString;
  registrorelcodigo.AsString := StringReplace(copy(vlChaverel, 2, 11), '-', '_', [rfReplaceAll, rfIgnoreCase]);
  registroreltipo.AsInteger := 1;

end;

function Tfrel.relatorioUserFunction(const MethodName: string; var Params: Variant): Variant;
begin
  If LowerCase(MethodName) = 'dataextenso' Then
    Result := DataExtenso(Params[0]);

  If LowerCase(MethodName) = 'valorextenso' Then
    Result := ValorExtenso(Params[0]);

  If LowerCase(MethodName) = 'stringreplace' Then
    Result := StringReplace(Params[0], Params[1], Params[2], [rfReplaceAll, rfIgnoreCase]);
end;

end.
