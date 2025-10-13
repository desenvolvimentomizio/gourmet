unit ufcfgbase;

interface

uses
  Winapi.Windows, System.SysUtils,uni, Vcl.Graphics, Vcl.Dialogs, Vcl.Menus,
  Vcl.ImgList, Vcl.Controls, System.Classes, Vcl.ActnList, Vcl.Grids,
  Vcl.DBGrids, Winapi.WinInet,
  Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Forms, Vcl.ComCtrls, Vcl.Buttons, Vcl.Mask, Vcl.DBCtrls, Winapi.Messages, amSplitter,
       Data.DB,
  MemDS, DBAccess, ACBrNFe;

type
  Tfcfgbase = class(TForm)
    DSRegistro: tunidatasource;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    paginas: TPageControl;
    Principal: TTabSheet;
    cfg: tuniquery;
    consulta: tuniquery;
    registro: tuniquery;
    dcp: tuniquery;
    dcpdcpcodigo: TIntegerField;
    dcpdcpcampo: TStringField;
    dcpdcpdescricao: TStringField;
    dcpdcpspedfiscal: TIntegerField;
    dtb: tuniquery;
    dtbdtbcodigo: TIntegerField;
    dtbdtbtabela: TStringField;
    dtbdtbdescricao: TStringField;
    coa: tuniquery;
    coacoacodigo: TIntegerField;
    coadtbcodigo: TIntegerField;
    coadcpcodigo: TIntegerField;
    coacoadata: TDateField;
    coausrcodigo: TIntegerField;
    coacoaanterior: TStringField;
    coacoaatual: TStringField;
    pfr: tuniquery;
    pfrpfrcodigo: TIntegerField;
    pfrpfrnomeform: TStringField;
    pfrpfrlargura: TIntegerField;
    pfrpfraltura: TIntegerField;
    pfrusrcodigo: TIntegerField;
    psf: tuniquery;
    psfpsfcodigo: TIntegerField;
    psfpfrcodigo: TIntegerField;
    psfpsfalinhamento: TIntegerField;
    psfpsfposicao: TIntegerField;
    psfpsfnome: TStringField;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    // lista para controlar paginas
    Fzcone: tuniconnection;
    listapaginas: tstringlist;

    // armazena dados para registro de alteração
    vdadosatuais: tstringlist;
    procedure abretabelasaux;
    procedure ajustacampos;
    procedure configurcampos;
    procedure criabusca(destino: tdbedit; etiqueta: TStringField);
    procedure descargadedllTimer(Sender: TObject);
    procedure DSRegistroDataChange(Sender: TObject; Field: TField);
    procedure limpatexto(Sender: TObject);
    procedure paginasChange(Sender: TObject);
    procedure registraalteracoes;
    procedure registroAfterInsert(DataSet: TDataSet);
    function SalvaRegistro: Boolean;
    function validadatamovimento(dia: String): Boolean;
    procedure ValidaSaida(Sender: TObject);
    procedure carregaposicoes;
    procedure salvaposicoes;
    function MostraLista(modulo: string): string;
    procedure VerAtualizacao(pacote: string);
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  public
    { Public declarations }
    pack: cardinal;
    vChaveMestre: string;
    vchave: string;
    txtFiltro: string;
    vusrcodigo: string;
    vchavepesquisa: string;
    procedure ajustabotoes;
    function CarregaFrame(pacote: string; destino: TPanel; conexao: tuniconnection): thandle;
    procedure DoUnLoadPackage(Module: HModule);

  end;

  TCargaFrame = function(AOwner: TComponent; Parente: TWinControl; conexao: tuniconnection; vusuario: string;
    vchave: string): TFrame;

  TExec = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string): string;

var
  fcfgbase: Tfcfgbase;

implementation

{$R *.dfm}

uses ufbusca;


function InternetAtiva: Boolean;
var
  Flags: Cardinal;
begin
  Result := False;
  if not InternetGetConnectedState(@Flags, 0) then
    Result := False
  else
    Result := true;
end;

procedure Tfcfgbase.bcancelaClick(Sender: TObject);
begin
  If self.DSRegistro.DataSet.State = dsbrowse Then
  Begin
    self.DSRegistro.DataSet.Edit;
  End;

  If self.DSRegistro.DataSet.State <> dsbrowse Then
  Begin
    self.DSRegistro.DataSet.cancel;
  End;

  If psituacao.Caption = 'Incluindo' Then
  Begin
    If Not registro.IsEmpty Then
    Begin
      self.DSRegistro.DataSet.Delete;
    End;
  End;

  close;
end;

procedure Tfcfgbase.bconfirmaClick(Sender: TObject);
begin
  If bconfirma.Caption = 'Confirma' Then
  Begin
    If SalvaRegistro Then
    Begin
      modalresult := mrok;
    End
    Else
    Begin
      showmessage('Cadastro incompleto, favor verficar !');
    End;
  End
  Else
  Begin
    paginas.ActivePageIndex := paginas.ActivePageIndex + 1;

    If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;
    If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;
    If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;
    If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;
    If paginas.Pages[paginas.ActivePageIndex].TabVisible = false Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex + 1;
    End;

    ajustabotoes;

    Try
      (self.paginas.Pages[paginas.ActivePageIndex] As TTabSheet).SetFocus;
    Except
    End;
  End;

end;

procedure Tfcfgbase.bfecharClick(Sender: TObject);
begin
  If bfechar.Caption = 'Fechar' Then
  Begin
    If DSRegistro.DataSet.State <> dsbrowse Then
    Begin
      DSRegistro.DataSet.cancel;
    End;
    close;

  End;

  If bfechar.Caption = 'Voltar' Then
  Begin
    paginas.ActivePageIndex := paginas.ActivePageIndex - 1;

    If Not paginas.Pages[paginas.ActivePageIndex].TabVisible Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex - 1;
    End;
    If Not paginas.Pages[paginas.ActivePageIndex].TabVisible Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex - 1;
    End;
    If Not paginas.Pages[paginas.ActivePageIndex].TabVisible Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex - 1;
    End;
    If Not paginas.Pages[paginas.ActivePageIndex].TabVisible Then
    Begin
      paginas.ActivePageIndex := paginas.ActivePageIndex - 1;
    End;

    If paginas.PageCount > 1 Then
    Begin
      bconfirma.Caption := 'Avançar';
    End;
    If paginas.ActivePageIndex = 0 Then
    Begin
      bfechar.Caption := 'Fechar';
      bfechar.Visible := false;
    End;
  End;

end;

procedure Tfcfgbase.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
Var
  i: integer;
Begin
  salvaposicoes;

  freeandnil(listapaginas);
  freeandnil(vdadosatuais);

  Try
    If self.DSRegistro.DataSet.State <> dsbrowse Then
    Begin
      self.DSRegistro.DataSet.cancel;
    End;
  Except
  End;
end;

procedure Tfcfgbase.FormCreate(Sender: TObject);
begin

  // lista para controlar paginas
  listapaginas := tstringlist.Create;

  // armazena dados para registro de alteração
  vdadosatuais := tstringlist.Create;

end;

procedure Tfcfgbase.FormKeyPress(Sender: TObject; var Key: Char);
begin
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
    If (Sender Is tdbgrid) Then
    Begin
      Key := #0;
      (Sender As tdbgrid).SelectedIndex := (Sender As tdbgrid).SelectedIndex + 1;
      If (Sender As tdbgrid).SelectedIndex = ((Sender As tdbgrid).Columns.Count) Then
      Begin
        (Sender As tdbgrid).SelectedIndex := 1;
        (Sender As tdbgrid).DataSource.DataSet.Next;
        If (Sender As tdbgrid).DataSource.DataSet.Eof Then
        Begin
          Perform(WM_NEXTDLGCTL, 0, 0);
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
  End;

end;

procedure Tfcfgbase.FormShow(Sender: TObject);
begin

  If self.registro.Active = false Then
  Begin

    If registro.Params.Count = 2 Then
    Begin
      If (self.vchave <> '') And (self.vChaveMestre <> '') Then
      Begin
        registro.Params[0].Asstring := self.vchave;
        registro.Params[1].Asstring := self.vChaveMestre;
      End;
    End;

    If registro.Params.Count = 1 Then
    Begin
      If self.vchave <> '' Then
      Begin
        registro.Params[0].AsString := self.vchave;
      End;
    End;

    registro.open;
    If registro.RecordCount = 0 Then
    Begin
      registro.Append;
      psituacao.Caption := 'Incluindo';
    End
    Else
    Begin
      registro.Edit;
      psituacao.Caption := 'Alterando';
    End;
  End;

  ajustacampos;

  abretabelasaux;

  paginas.ActivePageIndex := 0;

  If self.BorderStyle = bsnone Then
  Begin
    self.pbotoes.Visible := false;
  End;

  If cfg.sql.Text <> '' Then
  Begin
    cfg.open;
  End;

  carregaposicoes;

end;

Procedure Tfcfgbase.abretabelasaux;
Var
  i: integer;
Begin

  For i := 0 To self.ComponentCount - 1 Do
  Begin
    If self.Components[i] Is tuniquery Then
    Begin
      If (self.Components[i] As tuniquery).Tag <> 0 Then
      Begin
        If (self.Components[i] As tuniquery).sql.Text <> '' Then
        Begin
          (self.Components[i] As tuniquery).close;
          (self.Components[i] As tuniquery).open;
        End;
      End;
    End;
  End;

End;

Procedure Tfcfgbase.registraalteracoes;
Var
  nc: String;
  nt: String;
  vc: String;
  ntab: String;
  i: integer;
  tbl: tuniquery;
Begin

  coa.open;

  For i := 0 To self.vdadosatuais.Count - 1 Do
  Begin

    nt := copy(self.vdadosatuais.Strings[i], 1, pos('=', self.vdadosatuais.Strings[i]) - 1);

    nc := copy(self.vdadosatuais.Strings[i], pos('=', self.vdadosatuais.Strings[i]) + 1, 500);

    nc := copy(nc, 1, pos('-', nc) - 1);

    vc := copy(self.vdadosatuais.Strings[i], pos('-', self.vdadosatuais.Strings[i]) + 1, 250);

    ntab := nt;
    Try
      If self.FindComponent(ntab) <> Nil Then
      Begin
        tbl := tuniquery.Create(self);
        tbl := (self.FindComponent(ntab) As tuniquery);
      End;
      If tbl.FieldByName(nc).AsString <> '' Then
      Begin
        If tbl.FieldByName(nc).AsString <> vc Then
        Begin

          dtb.close;
          dtb.sql.Text := 'select * from dtb where dtbtabela=' + chr(39) + copy(nc, 1, 3) + chr(39);
          dtb.open;
          If Not dtb.IsEmpty Then
          Begin
            dcp.close;
            dcp.sql.Text := 'select * from dcp where dcpcampo=' + chr(39) + nc + chr(39);
            dcp.open;
            If Not dcp.IsEmpty Then
            Begin
              coa.Append;
              coadtbcodigo.AsInteger := dtb.FieldByName('dtbcodigo').AsInteger;
              coadcpcodigo.AsInteger := dcp.FieldByName('dcpcodigo').AsInteger;
              coacoaanterior.AsString := vc;
              coacoaatual.AsString := tbl.FieldByName(nc).AsString;
              coausrcodigo.AsString := self.vusrcodigo;
              coacoadata.AsFloat := date;
              coa.post;
            End;
          End;
        End;
      End;

    Finally
      // tbl.Free;
    End;
  End;
  coa.close;

End;

Procedure Tfcfgbase.registroAfterInsert(DataSet: TDataSet);
Begin
  self.registro.Fields[0].AsString := '0';
  If self.vChaveMestre <> '' Then
  Begin
    self.registro.Fields[1].AsString := self.vChaveMestre;
  End;
End;

Procedure Tfcfgbase.ajustacampos;
Var
  ncomp: string;
  etitext: TDBText;
  u: integer;
  n: String;
  x: integer;
  i: integer;
  k: integer;
  etibeve: TBevel;
  spdpesq: TSpeedButton;
  // h: TIcon;
  bmp: TBitmap;
  vnocamp: TWinControl;
  vnocam: string;

Begin
  // paginas.ActivePageIndex := 0;
  If self.DSRegistro.DataSet.Active Then
  Begin
    For i := 0 To self.ComponentCount - 1 Do
    Begin

      If (Components[i] Is tdbedit) Then
      Begin
        If (Components[i] As tdbedit).DataSource.DataSet.Active Then
        Begin
          // (components[i] as tdbedit).BorderStyle:=bsnone;
          n := (Components[i] As tdbedit).Name;

          If (Components[i] As tdbedit).Field.Required Then
          Begin
            (Components[i] As tdbedit).Color := clYellow;

            ncomp := (Components[i] As tdbedit).DataField;

            { for k := 0 to self.ComponentCount - 1 do
              begin
              if (self.Components[k] is tlabel) then
              begin

              vnocamp := nil;
              vnocamp := (self.Components[k] as tlabel).FocusControl;

              if vnocamp <> nil then
              begin

              vnocam := vnocamp.Name;

              if vnocam = ncomp then
              begin


              (self.Components[k] as tlabel).Caption :=
              (self.Components[k] as tlabel).Caption + ' *';
              end;

              end;
              end;
              end; }

          End
          Else If (Components[i] As tdbedit).Field.AutoGenerateValue = arautoinc Then
          Begin
            (Components[i] As tdbedit).Color := clBtnFace;
            (Components[i] As tdbedit).Font.Color := clred;
            (Components[i] As tdbedit).ReadOnly := true;
            (Components[i] As tdbedit).TabStop := false;
          End
          Else
          Begin
            (Components[i] As tdbedit).Color := clwhite;
          End;
          (Components[i] As tdbedit).OnKeyPress := FormKeyPress;
          (Components[i] As tdbedit).OnExit := self.ValidaSaida;
          u := (Components[i] As tdbedit).DataSource.DataSet.FieldCount - 1;
          x := (Components[i] As tdbedit).Field.Index + 1;
          If x <= u Then
          Begin

            If (Components[i] As tdbedit).DataSource.DataSet.Fields[x].FieldKind = fkLookup Then
            Begin
              Try

                spdpesq := TSpeedButton.Create(self);
                spdpesq.Top := (Components[i] As tdbedit).Top - 1;
                spdpesq.Width := 23;
                spdpesq.Height := 23;
                spdpesq.left := (Components[i] As tdbedit).left + (Components[i] As tdbedit).Width + 5;
                spdpesq.Parent := (Components[i] As tdbedit).Parent;
                spdpesq.Tag := i;
                // spdpesq.Flat:=true;

                spdpesq.Name := 'spdb' + (Components[i] As tdbedit).Parent.Name + (Components[i] As tdbedit).Name;

                spdpesq.OnClick := limpatexto;

                If fileexists(extractfilepath(application.ExeName) + 'tema\busca.bmp') Then
                Begin
                  bmp := TBitmap.Create;
                  Try
                    bmp.Height := spdpesq.Glyph.Height;
                    bmp.Width := spdpesq.Glyph.Width;
                    bmp.Assign(spdpesq.Glyph);
                    spdpesq.Glyph.LoadFromFile(extractfilepath(application.ExeName) + 'tema\busca.bmp');
                  Finally
                    bmp.Free;
                  End;

                End;

                spdpesq.Visible := (Components[i] As tdbedit).Visible;
                etibeve := TBevel.Create(self);
                etibeve.Parent := (Components[i] As tdbedit).Parent;
                etibeve.Name := 'p' + (Components[i] As tdbedit).Parent.Name + (Components[i] As tdbedit).Name;
                etibeve.left := (Components[i] As tdbedit).left + (Components[i] As tdbedit).Width + 25;
                etibeve.Width := (Components[i] As tdbedit).DataSource.DataSet.Fields[x].Size * self.Font.Size;
                etibeve.Top := (Components[i] As tdbedit).Top;
                etibeve.Height := (Components[i] As tdbedit).Height;
                etibeve.Visible := (Components[i] As tdbedit).Visible;
                etitext := TDBText.Create(self);
                etitext.Parent := (Components[i] As tdbedit).Parent;
                etitext.DataSource := (Components[i] As tdbedit).DataSource;
                etitext.Name := 'l' + (Components[i] As tdbedit).Name;
                etitext.DataField := (Components[i] As tdbedit).DataSource.DataSet.Fields[x].FieldName;
                etitext.left := (Components[i] As tdbedit).left + (Components[i] As tdbedit).Width + 32;
                etitext.Width := etibeve.Width - 10;
                etitext.Top := (Components[i] As tdbedit).Top + 5;
                etitext.Height := (Components[i] As tdbedit).Height - 7;
                etitext.Visible := (Components[i] As tdbedit).Visible;
              Except
              End;
            End;
            If (Components[i] As tdbedit).Field.AutoGenerateValue = arautoinc Then
            Begin
              (Components[i] As tdbedit).Color := clBtnFace;
              (Components[i] As tdbedit).Font.Color := clred;
              (Components[i] As tdbedit).ReadOnly := true;
              (Components[i] As tdbedit).TabStop := false;
            End;
          End;
          vdadosatuais.add((Components[i] As tdbedit).DataSource.DataSet.Name + '=' + (Components[i] As tdbedit).Field.FullName +
            '-' + (Components[i] As tdbedit).Field.AsString);
        End;
      End

      Else If (Components[i] Is tdbComboBox) Then
      Begin
        If (Components[i] As tdbComboBox).Field.Required Then
        Begin
          (Components[i] As tdbComboBox).Color := clYellow;
        End
        Else
        Begin
          (Components[i] As tdbComboBox).Color := clwhite;
        End;
        (Components[i] As tdbComboBox).OnKeyPress := FormKeyPress;
        (Components[i] As tdbComboBox).OnExit := self.ValidaSaida;
        // (Components[i] As tdbComboBox).OnEnter := self.aoentrarnocampo;
        vdadosatuais.add((Components[i] As tdbComboBox).DataSource.DataSet.Name + '=' + (Components[i] As tdbComboBox)
          .Field.FullName + '-' + (Components[i] As tdbComboBox).Field.AsString);

      End
      Else If (Components[i] Is tDBMemo) Then
      Begin
        (Components[i] As tDBMemo).OnKeyPress := FormKeyPress;
      End
    End;

  End;

  configurcampos;

End;

Procedure Tfcfgbase.limpatexto(Sender: TObject);
Var
  c: integer;
Begin
  If Sender Is TSpeedButton Then
  Begin
    c := (Sender As TSpeedButton).Tag;
    If (Components[c] As tdbedit).Enabled Then
    Begin

      If (Components[c] As tdbedit).DataSource.DataSet.State = dsbrowse Then
      Begin
        (Components[c] As tdbedit).DataSource.DataSet.Edit;
      End;
      (Components[c] As tdbedit).Text := '';
      ValidaSaida(Components[c] As tdbedit);
    End;
  End;

End;

Procedure Tfcfgbase.paginasChange(Sender: TObject);
Begin
End;

Procedure Tfcfgbase.configurcampos;
Begin
  { verificar necessidade }
End;

Procedure Tfcfgbase.ValidaSaida(Sender: TObject);
Var
  u: integer;
  x: integer;
  n: String;
  i: integer;
  p: integer;
  v: variant;
  vc, vt: String;
  d: String;
Begin

  p := self.ComponentCount;
  If (Sender Is tdbedit) Then
  Begin
    If ((Sender As tdbedit).Text = '') Then
    Begin
      n := (Sender As tdbedit).Name;
      p := 0;
      u := (Sender As tdbedit).DataSource.DataSet.FieldCount - 1;
      x := (Sender As tdbedit).Field.Index + 1;
      If x <= u Then
      Begin
        If (Sender As tdbedit).DataSource.DataSet.Fields[x].FieldKind = fkLookup Then
        Begin
          criabusca((Sender As tdbedit), ((Sender As tdbedit).DataSource.DataSet.Fields[x] As TStringField));
        End
        Else
        Begin

          If ((Sender As tdbedit).Color = clYellow) Or ((Sender As tdbedit).Color = $00AEC9FF) Then
          Begin
            If self.ActiveControl Is TBitBtn Then
            Begin
              If (self.ActiveControl As TBitBtn).Name = 'bcancela' Then
              Begin
                bcancela.Click;
              End
              Else
              Begin
                showmessage('Campo Obrigatório !');
                (Sender As tdbedit).SetFocus;
              End;

            End
            Else
            Begin
              showmessage('Campo Obrigatório !');
              (Sender As tdbedit).SetFocus;
            End;

          End
          Else
          Begin
            If ((Sender As tdbedit).Field Is TDateField) Then
            Begin
              d := (Sender As tdbedit).Field.AsString;
              If d = '' Then
              Begin
                ((Sender As tdbedit).Field As TDateField).EditMask := '!99/99/9999;1;_';
                (Sender As tdbedit).Field.AsString := '';
              End;
              If Not validadatamovimento((Sender As tdbedit).Field.AsString) Then
              Begin
                showmessage('Atenção: Sistema bloqueado. Por favor,feche caixa dos dias anteriores !');
              End;

            End;
          End;
        End;
      End;
    End
    Else If ((Sender As tdbedit).Text <> '') Then
    Begin

      n := (Sender As tdbedit).Name;
      p := 0;
      For i := 0 To self.ComponentCount - 1 Do
      Begin
        If UPPERCASE(self.Components[i].Name) = trim(UPPERCASE('l' + n)) Then
        Begin
          p := i;
          break;
        End;
      End;
      u := (Sender As tdbedit).DataSource.DataSet.FieldCount - 1;
      x := (Sender As tdbedit).Field.Index + 1;
      If x <= u Then
      Begin
        If (Sender As tdbedit).DataSource.DataSet.Fields[x].FieldKind = fkLookup Then
        Begin
          (Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet.close;
          (Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet.open;
          (Sender As tdbedit).DataSource.DataSet.Fields[x].RefreshLookupList;
          vt := (Sender As tdbedit).DataSource.DataSet.Fields[x].AsString;
          If vt = '' Then
          Begin
            If (Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet Is tuniquery Then
            Begin
              vc := ((Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet As tuniquery).sql.Text;
              If pos(':', vc) > 0 Then
              Begin
                ((Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet As tuniquery).close;
                vc := copy(vc, pos(':', vc), 500);
                vc := trim(copy(vc, 2, pos(' ', vc) - 1));
                ((Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet As tuniquery).ParamByName(vc).AsString :=
                  (Sender As tdbedit).DataSource.DataSet.FieldByName(vc).AsString;
                ((Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet As tuniquery).open;
              End
              Else
              Begin
                ((Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet As tuniquery).close;
                ((Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet As tuniquery).open;
              End;
            End;

            (Sender As tdbedit).DataSource.DataSet.Fields[x].LookupDataSet.Refresh;
            (Sender As tdbedit).DataSource.DataSet.Fields[x].RefreshLookupList;

            vt := (Sender As tdbedit).DataSource.DataSet.Fields[x].AsString;
            If vt = '' Then
            Begin
              criabusca((Sender As tdbedit), ((Sender As tdbedit).DataSource.DataSet.Fields[x] As TStringField));
            End;
          End;
        End;
      End;

      If (Sender As tdbedit).Tag <> 88 Then
      Begin

        If pos('@', (Sender As tdbedit).Text) = 0 Then
        Begin
          (Sender As tdbedit).Text := UPPERCASE((Sender As tdbedit).Text);
        End
        Else
        Begin
          (Sender As tdbedit).Text := lowercase((Sender As tdbedit).Text);
        End;

      End;
      If ((Sender As tdbedit).Field Is TDateField) Then
      Begin
        d := (Sender As tdbedit).Field.AsString;
        If d = '' Then
        Begin
          ((Sender As tdbedit).Field As TDateField).EditMask := '!99/99/9999;1;_';
          (Sender As tdbedit).Field.AsString := '';
        End;
        If Not validadatamovimento((Sender As tdbedit).Field.AsString) Then
        Begin
          showmessage('Atenção: Sistema bloqueado. Por favor,feche caixa dos dias anteriores !');
        End;
      End;
    End;
    If ((Sender As tdbedit).DataSource.DataSet.State = dsinsert) Or ((Sender As tdbedit).DataSource.DataSet.State = dsedit) Then
    Begin
      If pos('@', (Sender As tdbedit).Text) = 0 Then
      Begin
        (Sender As tdbedit).Field.AsString := UPPERCASE((Sender As tdbedit).Field.AsString);
      End
      Else
      Begin
        (Sender As tdbedit).Field.AsString := lowercase((Sender As tdbedit).Field.AsString);
      End;
    End;
  End
  Else If (Sender Is TDBLookupComboBox) Then
  Begin
    If ((Sender As TDBLookupComboBox).Text = '') Then
    Begin
      (Sender As TDBLookupComboBox).SetFocus;
    End;
  End;

End;

Procedure Tfcfgbase.criabusca(destino: tdbedit; etiqueta: TStringField);
Var
  query: String;
  filtro: String;
  campo: String;
  ordem: String;
  de: String;
  sqll: String;
  i, u: integer;
  lg: integer;
  titcampos: tstringlist;
  rstok: integer;
  v: integer;
  ndll: String;
  nmodulo: String;
  retorno: String;
  pesq: String;
  edtcampo: TField;
  frm: TForm;
Begin
  ndll := '';
  retorno := '';
  If (etiqueta.LookupDataSet Is tuniquery) Then
  Begin
    pesq := 'pesquisa';
    filtro := (etiqueta.LookupDataSet As tuniquery).sql.Text;
    de := trim(copy(filtro, pos('from', lowercase(filtro)) + 4, 200));
    ndll := 'm' + de;

    nmodulo := 'formu';

    If ndll = 'metd' Then
    Begin
      If (self.Caption = 'Compra') Or  (self.Caption = 'Saída') Or (self.Caption = 'Contas a Pagar') Then
      Begin
        ndll := 'mfrn';
        // nmodulo := 'modulofrn';
      End
      Else If (self.Caption = 'Entrada') Or (self.Caption = 'Venda') Or (self.Caption = 'Contas a Receber') Then
      Begin
        ndll := 'mcli';
        // nmodulo := 'modulocli';
      End
      Else If (self.Caption = 'Conhecimento de Transporte') or (self.Caption = 'Dados de Transporte') Then
      Begin
        ndll := 'mtrs';
        // nmodulo := 'modulotrs';
      End;

    End;

    If ndll = 'mtoe' Then
    Begin
      If self.Caption = 'Compra' Then
      Begin
        ndll := 'mtoe';
        nmodulo := 'modulotoe';
        pesq := 'pesquisa+' + self.txtFiltro;
      End;
    End;

    If ndll = 'mpun' Then
    Begin
      pesq := 'pesquisa+procodigo=' + destino.DataSource.DataSet.FieldByName('procodigo').AsString;
    End;

  End;

  ndll := extractfilepath(application.ExeName) + ndll;
  If fileexists(ndll + '.bpl') Then
  Begin
    // vchavepesquisa:='';
    retorno := MostraLista(ndll);

    If retorno = '0' Then
    Begin
      retorno := '';
    End;

    If retorno <> '' Then
    Begin
      (etiqueta.LookupDataSet As tuniquery).close;
      (etiqueta.LookupDataSet As tuniquery).open;

      vchavepesquisa := retorno;
      try
        if destino.Tag = 0 then
        begin
          destino.Field.AsString := retorno;
          destino.SetFocus;
        end;
      except
      end;

    End;

  End
  Else
  Begin

    titcampos := tstringlist.Create;
    fbusca := tfbusca.Create(application);
    fbusca.Name := self.Name + 'busca' + destino.Field.FieldName;
    filtro := '';
    ordem := '';
    If (etiqueta.LookupDataSet Is tuniquery) Then
    Begin
      filtro := (etiqueta.LookupDataSet As tuniquery).sql.Text;

      titcampos.clear;

      For i := 0 To (etiqueta.LookupDataSet As tuniquery).FieldCount - 1 Do
      Begin
        titcampos.add((etiqueta.LookupDataSet As tuniquery).Fields[i].DisplayLabel);
        lg := lg + ((etiqueta.LookupDataSet As tuniquery).Fields[i].DisplayWidth * 4);
      End;

      If pos(':', filtro) > 0 Then
      Begin
        campo := copy(filtro, pos(':', filtro), 500);
        campo := copy(campo, 1, pos(' ', campo) - 1);

      End;
      If pos('WHERE', UPPERCASE(filtro)) > 0 Then
      Begin
        sqll := copy(filtro, 1, pos('from', filtro) - 1);
        de := copy(filtro, pos('from', lowercase(filtro)) + 5, 200);
        de := trim(copy(de, 1, pos('where', lowercase(de)) - 1));
        filtro := ' and ' + copy(filtro, pos('WHERE', UPPERCASE(filtro)) + 5, LENGth(filtro));
        If pos('order by', filtro) > 0 Then
        Begin
          ordem := ' ' + trim(copy(filtro, pos('order by', lowercase(filtro)), 200));
          filtro := copy(filtro, 1, pos('order by', filtro) - 2);
        End;
      End
      Else
      Begin
        sqll := copy(filtro, 1, pos('from', filtro) - 1);
        If pos('ORDER BY', UPPERCASE(filtro)) > 0 Then
        Begin

          de := copy(filtro, pos('from', lowercase(filtro)) + 5, 200);
          ordem := ' ' + trim(copy(de, pos('order by', lowercase(de)), 200));
          de := trim(copy(de, 1, pos('order by', lowercase(de)) - 1));
        End
        Else
        Begin
          de := trim(copy(filtro, pos('from', lowercase(filtro)) + 4, 200));
        End;

        filtro := '';
      End;
    End;

    If filtro = ' and ' Then
    Begin
      filtro := '';
    End;
    If de = '' Then
    Begin
      de := copy(destino.Field.FieldName, 1, 3);
    End;
    If ordem = '' Then
    Begin
      ordem := ' order by ' + etiqueta.FieldName;
    End;
    query := sqll + ' from ' + de + '  where ' + etiqueta.FieldName + ' like ' + chr(39) + '%' + '' + '%' + chr(39) +
      filtro + ordem;

    consulta.close;
    consulta.sql.clear;
    consulta.sql.add(query);
    If campo <> '' Then
    Begin
      campo := trim(copy(campo, 2, 200));
      consulta.ParamByName(campo).AsString := self.DSRegistro.DataSet.FieldByName(campo).AsString;
      fbusca.vcampo := campo;
      fbusca.vvalor := self.DSRegistro.DataSet.FieldByName(campo).AsString;
    End;

    If consulta.Connection = Nil Then
    Begin
      consulta.Connection := self.zcone;
    End;

    consulta.open;

    For i := 0 To (etiqueta.LookupDataSet As tuniquery).FieldCount - 1 Do
    Begin
      consulta.Fields[i].DisplayLabel := titcampos[i];
    End;

    fbusca.Dconsulta.DataSet := consulta;

    If lg < 100 Then
      lg := 100;
    lg := 0;
    For u := 0 To fbusca.listabusca.Columns.Count - 1 Do
    Begin
      lg := lg + (fbusca.listabusca.Columns[u].Width + 5);
    End;
    lg := lg + 15;

    fbusca.Width := lg;

    Try
      rstok := fbusca.ShowModal;
      If rstok = mrok Then
      Begin
        (etiqueta.LookupDataSet As tuniquery).close;
        (etiqueta.LookupDataSet As tuniquery).open;
        destino.Field.AsString := consulta.Fields[0].AsString;
        destino.SetFocus;
      End
      Else If rstok = mrcancel Then
      Begin
        destino.Field.AsString := '';
        destino.SetFocus;
      End;
    Finally
      freeandnil(fbusca);
      self.SetFocus;
    End;
  End;

End;


procedure Tfcfgbase.VerAtualizacao(pacote: string);
begin
end;


function Tfcfgbase.MostraLista(modulo: string): string;
var
  exec: TExec;
  ch: string;
  vu: string;
begin


 if InternetAtiva then
  begin
      VerAtualizacao(Modulo);
  end;

  pack := LoadPackage('modulos\'+modulo + '.bpl');
  if pack <> 0 then
    try
      @exec := GetProcAddress(pack, PChar('formu'));

      if Assigned(exec) then
      begin
        vu := '1';
        ch := exec(application, self.zcone, vu);
        result := ch;
      end;
    finally
      DoUnLoadPackage(pack);
    end;

end;

Procedure Tfcfgbase.descargadedllTimer(Sender: TObject);
Begin
End;

Procedure Tfcfgbase.DSRegistroDataChange(Sender: TObject; Field: TField);
Begin
  If Not self.registro.IsEmpty Then
  Begin
    self.vchave := self.registro.Fields[0].AsString;
  End
  Else
  Begin
    self.vchave := '0';
  End;

End;

Function Tfcfgbase.validadatamovimento(dia: String): Boolean;
Var
  d1: tdate;
  d2: tdate;
Begin

  d1 := date;
  d2 := date;
  Try
    consulta.close;
    consulta.sql.Text := 'select cfgdtcaixa from cfg';
    consulta.open;

    d1 := strtodate(dia);
    d2 := strtodate(consulta.Fields[0].AsString) - 1;
  Except

  End;

  If d1 > d2 Then
  Begin
    result := true;
  End
  Else
  Begin
    result := true;
  End;

End;

Function Tfcfgbase.SalvaRegistro: Boolean;
Var
  i: integer;
  p: String;
  vid: String;
  campo: TField;
  DllHandle: thandle;
  // AjustaChaveMestre: TAjustaChaveMestre;
  // SalvarRegistro: TSalvarRegistro;
  vregdet: integer;
Begin
  result := true;
  If self.DSRegistro.DataSet.State = dsbrowse Then
  Begin
    self.DSRegistro.DataSet.Edit;
  End;

  If self.DSRegistro.DataSet.State <> dsbrowse Then
  Begin
    For i := 0 To self.ComponentCount - 1 Do
    Begin
      If (self.Components[i] Is tdbedit) Then
      Begin
        If ((self.Components[i] As tdbedit).Field Is TDateField) Then
        Begin
          p := (self.Components[i] As tdbedit).Field.AsString;
          If p = '' Then
          Begin
            ((self.Components[i] As tdbedit).Field As TDateField).EditMask := '!99/99/9999;1;_';
            (self.Components[i] As tdbedit).Field.AsString := '';
          End;
        End;
      End;
    End;
  End;

  If self.DSRegistro.DataSet.State = dsedit Then
  Begin
    registraalteracoes;
  End;

  If self.DSRegistro.DataSet.State <> dsbrowse Then
  Begin
    // Try

    If self.vChaveMestre <> '' Then
    Begin
      self.registro.Fields[1].AsString := self.vChaveMestre;
    End;

    self.DSRegistro.DataSet.post;
    self.vchave := self.DSRegistro.DataSet.Fields[0].AsString;

  End;

  consulta.close;
  consulta.sql.Text := 'select last_insert_id()';
  consulta.open;

  vid := consulta.Fields[0].AsString;

End;

Procedure Tfcfgbase.ajustabotoes;
Var
  i: integer;
  pga, lpg: String;
Begin

  self.listapaginas.clear;
  For i := 0 To paginas.PageCount - 1 Do
  Begin
    If paginas.Pages[i].TabVisible Then
    Begin
      listapaginas.add(paginas.Pages[i].Name);
    End;
  End;
  Try
    pga := paginas.ActivePage.Name;
    lpg := listapaginas[listapaginas.Count - 1];
    If pga = lpg Then
    Begin
      bconfirma.Caption := 'Confirma';
      bfechar.Visible := true;
      bfechar.Caption := 'Voltar';
    End
    Else
    Begin
      bconfirma.Caption := 'Avançar';
      bfechar.Visible := true;
      bfechar.Caption := 'Voltar';
    End;
  Except
    bconfirma.Caption := 'Confirma';
    bfechar.Visible := true;
    bfechar.Caption := 'Voltar';

  End;
  If paginas.ActivePageIndex = 0 Then
  Begin
    bfechar.Visible := false;
    bfechar.Caption := 'Fechar';
  End;
End;

function Tfcfgbase.CarregaFrame(pacote: string; destino: TPanel; conexao: tuniconnection): thandle;
var
  exec: TCargaFrame;
  frame: TFrame;
  pack: cardinal;
begin
  pack := LoadPackage('modulos\'+pacote+ '.bpl');
  if pack <> 0 then
    try
      @exec := GetProcAddress(pack, PChar('execute'));
      if Assigned(exec) then
      begin
        exec(application, destino, conexao, self.vusrcodigo, self.vchave);
      end;
    finally
      result := pack;
    end;
end;

procedure Tfcfgbase.DoUnLoadPackage(Module: HModule);
var
  i: integer;
  M: TMemoryBasicInformation;
begin
  for i := application.ComponentCount - 1 downto 0 do
  begin
    VirtualQuery(GetClass(application.Components[i].ClassName), M, SizeOf(M));
    if (Module = 0) or (HModule(M.AllocationBase) = Module) then
      application.Components[i].Free;
  end;
  UnRegisterModuleClasses(Module);
  UnLoadPackage(Module);
end;

procedure Tfcfgbase.carregaposicoes;
Var
  i: integer;
  nomedll: String;
Begin

  pfr.close;
  pfr.Params[0].AsString := self.vusrcodigo;
  pfr.Params[1].AsString := self.Name;
  pfr.open;

  If Not pfr.IsEmpty Then
  Begin
    if (self is TForm) then
    begin
      (self as TForm).Height := self.pfrpfraltura.AsInteger;
      (self as TForm).Width := self.pfrpfrlargura.AsInteger;
    end;
  End;

  { psf.close;
    psf.Params[0].AsInteger := pfr.Fields[0].AsInteger;
    psf.open;


    if not psf.IsEmpty then
    begin
    while not psf.Eof do
    begin
    // left 3, bottom=2

    if self.FindComponent(self.psfpsfnome.AsString) is TSplitter then
    begin

    if self.psfpsfalinhamento.AsInteger = 3 then
    begin
    (self.FindComponent(self.psfpsfnome.AsString) as TSplitter).left :=
    self.psfpsfposicao.AsInteger;
    end
    else if self.psfpsfalinhamento.AsInteger = 2 then
    begin
    (self.FindComponent(self.psfpsfnome.AsString) as TSplitter).top :=
    self.psfpsfposicao.AsInteger;
    end;

    end;

    psf.Next;
    end;
    end; }
end;

procedure Tfcfgbase.salvaposicoes;
Var
  i: integer;
  nomedll: String;
Begin

  pfr.close;
  pfr.Params[0].AsString := self.vusrcodigo;
  pfr.Params[1].AsString := self.Name;
  pfr.open;

  psf.close;
  psf.Params[0].AsInteger := pfr.Fields[0].AsInteger;
  psf.open;
  if (self is TForm) then
  begin

    If pfr.IsEmpty Then
    Begin
      pfr.Append;
    end
    else
    begin
      pfr.Edit;
    end;

    self.pfrpfrnomeform.AsString := self.Name;
    self.pfrusrcodigo.AsString := self.vusrcodigo;
    self.pfrpfraltura.AsInteger := (self as TForm).Height;
    self.pfrpfrlargura.AsInteger := (self as TForm).Width;
    self.pfr.post;

    { psf.close;
      psf.Params[0].AsInteger := pfr.Fields[0].AsInteger;
      psf.open;

      for i := 0 to self.ComponentCount - 1 do
      begin
      if (self.Components[i] is TSplitter) then
      begin

      if psf.Locate('psfnome', (self.FindComponent(self.Components[i].Name) as TSplitter).Name, [locaseinsensitive]) then
      begin
      psf.Edit;
      end
      else
      begin
      psf.Append;
      end;

      self.psfpfrcodigo.AsInteger := self.pfrpfrcodigo.AsInteger;
      if (self.FindComponent(self.Components[i].name) as TSplitter).Align = alleft
      then
      begin
      self.psfpsfalinhamento.AsInteger := 3;
      end
      else
      begin
      self.psfpsfalinhamento.AsInteger := 2;
      end;

      if (self.FindComponent(self.Components[i].name) as TSplitter).Align = alleft
      then
      begin
      self.psfpsfposicao.AsInteger :=
      (self.FindComponent(self.Components[i].name) as TSplitter).left;
      end
      else
      begin
      self.psfpsfposicao.AsInteger :=
      (self.FindComponent(self.Components[i].name) as TSplitter).Top;
      end;
      self.psfpsfnome.AsString :=
      (self.FindComponent(self.Components[i].name) as TSplitter).Name;
      psf.post;
      end;
      end; }
  end;
end;

end.
