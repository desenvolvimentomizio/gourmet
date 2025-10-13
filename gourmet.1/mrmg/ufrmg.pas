unit ufrmg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils, System.ImageList;

type
  Tfrmg = class(Tfrmbase)
    registrormgchave: TIntegerField;
    registromlgchave: TIntegerField;
    registrophgcodigo: TIntegerField;
    registrormgdata: TDateField;
    registrormgvalor: TFloatField;
    registrormgcomplemento: TStringField;
    registrocodigo: TIntegerField;
    Label1: TLabel;
    rmgchave: TDBEdit;
    Label2: TLabel;
    mlgchave: TDBEdit;
    Label3: TLabel;
    flacodigo: TDBEdit;
    Label4: TLabel;
    rmgdata: TDBEdit;
    Label5: TLabel;
    pcgcodigo: TDBEdit;
    Label6: TLabel;
    cedcodigo: TDBEdit;
    Label7: TLabel;
    rmgvalor: TDBEdit;
    Label8: TLabel;
    phgcodigo: TDBEdit;
    Label9: TLabel;
    mlg: tuniquery;
    mlgmlgchave: TIntegerField;
    mlgclbcodigo: TIntegerField;
    fla: tuniquery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    phg: tuniquery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    registrophgidentificacao: TStringField;
    pltotallote: TPanel;
    drg: tuniquery;
    fcb: tuniquery;
    mlgmlgsituacao: TIntegerField;
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    pcgctacredito: TDBText;
    pcgpcgestrutural: TStringField;
    deb: tuniquery;
    cre: tuniquery;
    debdebitos: TFloatField;
    crecreditos: TFloatField;
    rmgcomplemento: TDBMemo;
    cfgcfgidentificacao: TStringField;
    cfgcfgdtinictb: TDateField;
    cfgcfgdtfinctb: TDateField;
    vdrg: tuniquery;
    mlgflacodigo: TIntegerField;
    pcgestrutural: TDBText;
    Label10: TLabel;
    mlgdata: TDBEdit;
    Dmlg: tunidatasource;
    mlgmlgdata: TDateField;
    mlgflaidentificacao: TStringField;
    info: tuniquery;
    infoclbcodigo: TIntegerField;
    infoflacodigo: TIntegerField;
    registrormgcompetencia: TDateField;
    registrormginclusao: TDateTimeField;
    registrormgtipo: TIntegerField;
    Label11: TLabel;
    rmgcompetencia: TDBEdit;
    registrocedcodigo: TIntegerField;
    ced: tuniquery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    registrocedidenticacao: TStringField;
    registropcgidentificacao: TStringField;
    registropcgestrutural: TStringField;
    procedure pcgcodigoExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure spdbpcghistoricoClick(Sender: TObject);
    procedure rmgdataExit(Sender: TObject);
    procedure rmgvalorExit(Sender: TObject);
    procedure phgcodigoEnter(Sender: TObject);
    procedure rmgcomplementoEnter(Sender: TObject);
    procedure flacodigoExit(Sender: TObject);
  private
    procedure CalculaLote;
    procedure crialotenovo;
  public
    { Public declarations }
    vflacodigo: string;
  end;

var
  frmg: Tfrmg;

  // Início ID do Módulo frarmg
const
  vPlIdMd = '02.02.16.009-02';

  // Fim ID do Módulo frarmg

implementation

{$R *.dfm}

uses ufdrgrmg;

procedure Tfrmg.bcancelaClick(Sender: TObject);
var
  smsg: string;
begin
  { inherited; }

  if psituacao.Caption = 'Alterando' then
  begin
    smsg := 'Deseja realmente abandonar as alterações ?';
  end
  else
  begin
    smsg := 'Deseja realmente abandonar a inclusão do registro ?';
  end;

  If application.MessageBox(PChar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
  Begin

    { If self.DSRegistro.DataSet.State = dsbrowse Then
      Begin
      self.DSRegistro.DataSet.Edit;
      End;

      If self.DSRegistro.DataSet.State <> dsbrowse Then
      Begin
      self.DSRegistro.DataSet.cancel;
      End; }

    if psituacao.Caption = 'Incluindo' then
    begin
      self.DSRegistro.DataSet.delete;

    end;

    self.ModalResult := mrok;

  end;

end;

procedure Tfrmg.bconfirmaClick(Sender: TObject);
var
  vrmgdata: double;
  vphgcodigo: string;
  vrmgcomplemento: string;
  vsuper: integer;
begin
  vsuper := 0;

  vrmgdata := self.registrormgdata.AsFloat;
  vphgcodigo := self.registrophgcodigo.AsString;
  vrmgcomplemento := self.registrormgcomplemento.AsString;

  { inherited; }
  If self.bconfirma.Caption = 'Confirma' Then
  Begin
    if self.psituacao.Caption = 'Incluindo' then
    begin
      self.registromlgchave.asinteger := self.mlgmlgchave.asinteger;
    end;

    If self.SalvaRegistro Then
    Begin

      CalculaLote;

      if cre.Fields[0].AsFloat = deb.Fields[0].AsFloat then // lote fechado
      begin
        if not mlg.Active then
        begin
          mlg.Open;
        end;
        mlg.Edit;
        mlgmlgsituacao.asinteger := 1;
        mlg.Post;
        crialotenovo;
      end;

      if self.psituacao.Caption = 'Incluindo' then
      begin

        registro.Append;
        registrormgdata.AsFloat := vrmgdata;
        registrormgcompetencia.AsFloat := vrmgdata;
        self.registrophgcodigo.AsString := vphgcodigo;
        self.registrormgcomplemento.AsString := vrmgcomplemento;

        self.registrormgvalor.AsCurrency := cre.Fields[0].AsCurrency - deb.Fields[0].AsCurrency;
        if self.registrormgvalor.AsCurrency < 0 then
          self.registrormgvalor.AsCurrency := self.registrormgvalor.AsCurrency * -1;

        rmgdata.SetFocus;
      end
      else
      begin
        self.ModalResult := mrok;
      end;
    End
    Else
    Begin
      showmessage('Registro incompleto, favor verficar !');
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

procedure Tfrmg.bfecharClick(Sender: TObject);
begin
  { inherited; }
  self.ModalResult := mrok;
end;

procedure Tfrmg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  cfg.Close;
  cfg.Open;

  fcb.Close;
  fcb.Params[0].asinteger := Acesso.Usuario;
  fcb.Open;

  if fcb.RecordCount = 1 then
  begin
    flacodigo.Enabled := false;
    flacodigo.TabStop := false;
    vflacodigo := self.fcb.Fields[0].AsString;
  end
  else if fcb.RecordCount > 1 then
  begin
    vflacodigo := '999';
    flacodigo.Enabled := true;
    flacodigo.TabStop := true;
  end;

  if psituacao.Caption = 'Incluindo' then
  begin
    if cfgcfgdtinictb.AsFloat = cfgcfgdtfinctb.AsFloat then
    begin
      rmgdata.Field.AsFloat := cfgcfgdtinictb.AsFloat;
      rmgcompetencia.Field.AsFloat := cfgcfgdtinictb.AsFloat;
    end;
    mlg.Close;
    mlg.Params[0].asinteger := Acesso.Usuario;
    mlg.Params[1].AsString := vflacodigo;
    mlg.Params[2].asinteger := 0;
    mlg.Open;

    crialotenovo;

  end;
  if psituacao.Caption = 'Alterando' then
  begin
    mlg.Close;

    info.Close;
    info.Params[0].asinteger := self.registromlgchave.asinteger;
    info.Open;

    mlg.Params[0].AsString := self.infoclbcodigo.AsString;
    mlg.Params[1].AsString := self.infoflacodigo.AsString;
    mlg.Params[2].asinteger := 1;
    mlg.Open;

    if mlg.Locate('mlgchave', self.mlgchave.Field.asinteger, []) then
    begin
      mlg.Edit;
      mlgmlgsituacao.asinteger := 0;

    end;
  end;

end;

procedure Tfrmg.pcgcodigoExit(Sender: TObject);
var
  vestcta1: string;
  vestcta2: string;
  vestcta3: string;
  vestcta4: string;
  vestcta5: string;

  vtestcta1: string;
  vtestcta2: string;
  vtestcta3: string;
  vtestcta4: string;
  vtestcta5: string;

  vestccu: string;
begin
  inherited;
  self.ValidaSaida(Sender);
  if self.pcgcodigo.Field.AsString <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select pcgidentificacao, pcgestrutural from pcg where pcgcodigo=' + self.pcgcodigo.Field.AsString;
    consulta.Open;

    if consulta.RecordCount = 0 then
    begin
      showmessage('Atenção código de conta inválido!');
      pcgcodigo.Field.AsString := '';
      pcgcodigo.SetFocus;
    end
    else
    begin

      consulta.Close;
      consulta.SQL.Text := 'select pcgestrutural from rpg,pcg where rpg.pcgconta01=pcg.pcgcodigo';
      consulta.Open;

      vestcta1 := consulta.Fields[0].AsString;

      consulta.Close;
      consulta.SQL.Text := 'select pcgestrutural from rpg,pcg where rpg.pcgconta02=pcg.pcgcodigo';
      consulta.Open;

      vestcta2 := consulta.Fields[0].AsString;

      consulta.Close;
      consulta.SQL.Text := 'select pcgestrutural from rpg,pcg where rpg.pcgconta03=pcg.pcgcodigo';
      consulta.Open;

      vestcta3 := consulta.Fields[0].AsString;

      consulta.Close;
      consulta.SQL.Text := 'select pcgestrutural from rpg,pcg where rpg.pcgconta04=pcg.pcgcodigo';
      consulta.Open;

      vestcta4 := consulta.Fields[0].AsString;

      consulta.Close;
      consulta.SQL.Text := 'select pcgestrutural from rpg,pcg where rpg.pcgconta05=pcg.pcgcodigo';
      consulta.Open;

      vestcta5 := consulta.Fields[0].AsString;

      consulta.Close;

      vtestcta1 := copy(self.pcgestrutural.Field.AsString, 1, length(vestcta1));
      vtestcta2 := copy(self.pcgestrutural.Field.AsString, 1, length(vestcta2));
      vtestcta3 := copy(self.pcgestrutural.Field.AsString, 1, length(vestcta3));
      vtestcta4 := copy(self.pcgestrutural.Field.AsString, 1, length(vestcta4));
      vtestcta5 := copy(self.pcgestrutural.Field.AsString, 1, length(vestcta5));

      if ((vestcta1 = vtestcta1) and (vestcta1 <> '') and (vtestcta1 <> '')) or ((vestcta2 = vtestcta2) and (vestcta2 <> '') and (vtestcta2 <> '')) or
        ((vestcta3 = vtestcta3) and (vestcta3 <> '') and (vtestcta3 <> '')) or ((vestcta4 = vtestcta4) and (vestcta4 <> '') and (vtestcta4 <> '')) or
        ((vestcta5 = vtestcta5) and (vestcta5 <> '') and (vtestcta5 <> '')) then
      begin

        vdrg.Close;
        vdrg.Params[0].asinteger := self.registrormgchave.asinteger;
        vdrg.Params[1].asinteger := 0;
        vdrg.Open;
        if vdrg.RecordCount > 0 then
        begin
          self.registro.Post;
          CriaFormulario(Tfdrgrmg, vdrg.Fields[0].AsString, self.registromlgchave.AsString, '0');
          self.registro.Edit;

        end
        else
        begin
          self.registro.Post;
          CriaFormulario(Tfdrgrmg, '', self.registromlgchave.AsString, '0');
          self.registro.Edit;

        end;

      end;

    end;
  end
  else
  begin

  end;
end;

procedure Tfrmg.phgcodigoEnter(Sender: TObject);
begin
  inherited;
  phgcodigo.SelectAll;
end;

procedure Tfrmg.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrormginclusao.AsDateTime := Now;
  registrormgtipo.asinteger := 1;
end;

procedure Tfrmg.rmgcomplementoEnter(Sender: TObject);
begin
  inherited;
  rmgcomplemento.SelectAll;
end;

procedure Tfrmg.rmgdataExit(Sender: TObject);
var
  di: tdate;
  df: tdate;
  dl: tdate;
  dm: tdate;
  vsuper: integer;
begin
  inherited;
  vsuper := 0;
  self.ValidaSaida(Sender);

  di := (cfgcfgdtinictb.AsFloat - 5);
  df := (cfgcfgdtfinctb.AsFloat + 1);
  dl := rmgdata.Field.AsFloat;
  dm := mlgdata.Field.AsFloat;


    if (dl < di) or (dl > df) then
    begin
      showmessage('ATENÇÃO, registro fora do período contábil!');
      rmgdata.SetFocus;
    end;

    if dl <> dm then
    begin
      if self.mlg.RecordCount = 0 then
      begin
        self.crialotenovo;
      end
      else
      begin

        showmessage('ATENÇÃO, registro com data fora da data do Lote em aberto!');
        rmgdata.SetFocus;
      end;
    end;



end;

procedure Tfrmg.rmgvalorExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);
  vflacodigo := self.flacodigo.Field.AsString;

  { if psituacao.Caption = 'Incluindo' then
    begin
    mlg.Close;
    mlg.Params[0].AsString := self.vusrcodigo;
    mlg.Params[1].AsString := self.flacodigo.Field.AsString;
    mlg.Params[2].asinteger := 0;
    mlg.Open;
    end; }

  { if mlg.RecordCount = 0 then
    begin
    if self.psituacao.Caption = 'Incluindo' then
    begin
    crialotenovo;
    self.registromlgchave.asinteger := self.mlgmlgchave.asinteger;
    end;
    end
    else
    begin
    CalculaLote;
    if self.psituacao.Caption = 'Incluindo' then
    begin
    self.registromlgchave.asinteger := self.mlgmlgchave.asinteger;
    end;

    end; }

  CalculaLote;
  if self.psituacao.Caption = 'Incluindo' then
  begin
    self.registromlgchave.asinteger := self.mlgmlgchave.asinteger;
  end;

end;

procedure Tfrmg.spdbpcghistoricoClick(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(phgcodigo, registrophgidentificacao);
  if vchavepesquisa <> '' then
  begin
    phgcodigo.Field.AsString := vchavepesquisa;
  end;
  phgcodigo.SetFocus;
end;

procedure Tfrmg.CalculaLote;
begin

  if not mlg.Active then
  begin
    mlg.Open;
  end;

  deb.Close;
  deb.Params[0].asinteger := self.mlgmlgchave.asinteger;
  deb.Open;

  cre.Close;
  cre.Params[0].asinteger := self.mlgmlgchave.asinteger;
  cre.Open;

  if cre.Fields[0].AsFloat > deb.Fields[0].AsFloat then
  begin
    pltotallote.Visible := true;
    pltotallote.Caption := 'ATENÇÃO, diferença de R$ ' + format('%12.2f', [cre.Fields[0].AsFloat - deb.Fields[0].AsFloat]) + ' a CRÉDITO no Lote!';
  end
  else if cre.Fields[0].AsFloat < deb.Fields[0].AsFloat then
  begin
    pltotallote.Visible := true;
    pltotallote.Caption := 'ATENÇÃO, diferença de R$ ' + format('%12.2f', [deb.Fields[0].AsFloat - cre.Fields[0].AsFloat]) + ' a DÉBITO no Lote!';
  end
  else
  begin
    pltotallote.Caption := '';
    pltotallote.Visible := false;
    pltotallote.Caption := '';
  end;
end;

procedure Tfrmg.crialotenovo;
begin

  if self.psituacao.Caption = 'Incluindo' then
  begin
    if not mlg.Active then
    begin
      mlg.Open;
    end;

    mlg.Append;
    mlgclbcodigo.asinteger := Acesso.Usuario;
    if vflacodigo <> '999' then
    begin
      mlgflacodigo.AsString := vflacodigo;
    end
    else
    begin
      mlgflacodigo.AsString := self.flacodigo.Field.AsString;
    end;
    mlgmlgdata.AsFloat := date;
    mlgmlgsituacao.asinteger := 0;
    mlg.Post;

  end;
end;

procedure Tfrmg.flacodigoExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);
  consulta.Close;
  consulta.SQL.Text := 'select flacodigo from fcb where flacodigo=' + self.flacodigo.Field.AsString + ' and clbcodigo=' + Acesso.Usuario.ToString;
  consulta.Open;
  if consulta.IsEmpty then
  begin
    showmessage('Usuário não autorizado a usar esta filial !');
    self.flacodigo.Field.AsString := '';
    self.flacodigo.SetFocus;
  end;

end;

end.
