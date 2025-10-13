unit uftoe;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Controls,
  Vcl.Mask, Vcl.ImgList, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils, System.ImageList, Vcl.Grids, Vcl.DBGrids;

type
  Tftoe = class(Tfrmbase)
    cfo: tuniquery;
    cfocfocfop: TStringField;
    cfocfoidentificacao: TStringField;
    registrotoecodigo: TIntegerField;
    registrotoeidentificacao: TStringField;
    registrotoecfopsaida: TStringField;
    registrocfoidentificacao_sai: TStringField;
    registrottocodigo: TIntegerField;
    registrottoidentificacao: TStringField;
    registrotoedescricao: TStringField;
    registrotoeorigem: TStringField;
    registrottecodigo: TIntegerField;
    registrotoeativo: TStringField;
    registrottmcodigo: TIntegerField;
    Label1: TLabel;
    toecodigo: TDBEdit;
    toeidentificacao: TDBEdit;
    Label2: TLabel;
    Label4: TLabel;
    ttocodigo: TDBEdit;
    Label9: TLabel;
    toecfopsaida: TDBEdit;
    tto: tuniquery;
    ttottocodigo: TIntegerField;
    ttottoidentificacao: TStringField;
    tte: tuniquery;
    ttettecodigo: TIntegerField;
    ttetteidentificacao: TStringField;
    ttm: tuniquery;
    ttmttmcodigo: TIntegerField;
    ttmttmidentificacao: TStringField;
    Label5: TLabel;
    ttecodigo: TDBEdit;
    registrotteidentificacao: TStringField;
    registrottmidentificacao: TStringField;
    Label6: TLabel;
    ttmcodigo: TDBEdit;
    tme: tuniquery;
    tmetmecodigo: TIntegerField;
    tmetmeidentificacao: TStringField;
    registrotmecodigo: TIntegerField;
    registrotmeidentificacao: TStringField;
    Label7: TLabel;
    tmecodigo: TDBEdit;
    DataSource1: tunidatasource;
    tpo: tuniquery;
    tpotpocodigo: TIntegerField;
    tpotpoidentificacao: TStringField;
    GroupBox1: TGroupBox;
    ComboBox1: TComboBox;
    BAdicionar: TBitBtn;
    BRemover: TBitBtn;
    otp: tuniquery;
    otpotpchave: TIntegerField;
    otptoecodigo: TIntegerField;
    otptpocodigo: TIntegerField;
    registrootbcodigo: TIntegerField;
    otb: tuniquery;
    otbotbcodigo: TIntegerField;
    otbotbidentificacao: TStringField;
    registrootbidentificacao: TStringField;
    toeativo: TDBCheckBox;
    cfgcfgusactb: TIntegerField;
    registrotoeentrada: TIntegerField;
    toe: tuniquery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    registrotoetoeentrada: TStringField;
    cfgcfgusacstnoproduto: TIntegerField;
    Dotp: TDataSource;
    otpcfocfop: TStringField;
    DBotp: TDBGrid;
    txctoe: tuniquery;
    Dtxc: TDataSource;
    cto: tuniquery;
    ctoctocodigo: TIntegerField;
    ctoctodescricao: TStringField;
    txctoectodescricao: TStringField;
    txc: tuniquery;
    txctxcchave: TIntegerField;
    txctoecodigo: TIntegerField;
    txcctocodigo: TIntegerField;
    registrocstcodigo: TStringField;
    cst: tuniquery;
    cstcstcodigo: TStringField;
    cstcstidentificacao: TStringField;
    cstcodigo: TDBEdit;
    Label10: TLabel;
    registrocstidentificacao: TStringField;
    registrocsicodigo: TStringField;
    registrocspcodigo: TStringField;
    registrocsfcodigo: TStringField;
    registrocfgpercentualpis: TFloatField;
    registrocfgpercentualcofins: TFloatField;
    csf: tuniquery;
    csfcsfcodigo: TStringField;
    csfcsfidentificacao: TStringField;
    csp: tuniquery;
    cspcspcodigo: TStringField;
    cspcspidentificacao: TStringField;
    csi: tuniquery;
    csicsiidentificacao: TStringField;
    Label11: TLabel;
    csicodigo: TDBEdit;
    Label12: TLabel;
    cspcodigo: TDBEdit;
    Label13: TLabel;
    csfcodigo: TDBEdit;
    registrocsiidentificacao: TStringField;
    registrocspidentificacao: TStringField;
    registrocsfidentificacao: TStringField;
    Label14: TLabel;
    cfgpercentualpis: TDBEdit;
    Label15: TLabel;
    cfgpercentualcofins: TDBEdit;
    csicsicodigo: TStringField;
    cfgcrtcodigo: TIntegerField;
    otptpoidentificacao: TStringField;
    otpcfopcfopsaida: TStringField;
    registrocstnormal: TStringField;
    registrocstnormalidentificacao: TStringField;
    Label3: TLabel;
    cstnormal: TDBEdit;
    registrotoetextonaopermite: TStringField;
    registrotoetextopermite: TStringField;
    Label8: TLabel;
    Label16: TLabel;
    toetextonaopermite: TDBEdit;
    Label17: TLabel;
    toetextopermite: TDBMemo;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure toecfopsaidaExit(Sender: TObject);
    procedure BAdicionarClick(Sender: TObject);
    procedure BRemoverClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ttmcodigoExit(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  ftoe: Tftoe;

  // Início ID do Módulo fratoe
const
  vPlIdMd = '02.04.11.001-02';

  // Fim ID do Módulo fratoe

implementation

{$R *.dfm}

procedure Tftoe.BAdicionarClick(Sender: TObject);
var
  I: Integer;
begin
  inherited;

  if (psituacao.Caption = 'Incluindo') and (registro.State <> dsbrowse) then
    registro.Post;

  if otp.Locate('tpoidentificacao', copy(ComboBox1.Text, 6, 30), [locaseinsensitive]) then
  begin
    ShowMessage('Registro " ' + ComboBox1.Text + ' " já está na lista');
    Exit;
  end;

  if tpo.Locate('tpoidentificacao', copy(ComboBox1.Text, 6, 30), [locaseinsensitive]) then
  begin

    otp.Append;
    otptoecodigo.AsInteger := self.registrotoecodigo.AsInteger;
    otptpocodigo.AsInteger := tpotpocodigo.AsInteger;
    otpcfocfop.AsString := registrotoecfopsaida.AsString;
    otp.Post;

  end;
end;

procedure Tftoe.bconfirmaClick(Sender: TObject);
var
  I: Integer;
  vTpocodigo: Integer;
  vFiltro: String;
  vSeparador: String;
begin


  otp.Close;
  otp.Params[0].AsInteger := registrotoecodigo.AsInteger;
  otp.Open;

  if ttmcodigo.Field.AsInteger <> 0 then // emissão propria
  begin
    if otp.RecordCount <= 0 then
    begin
      if registro.State <> dsbrowse then
      begin
        registro.Post;
        registro.Edit;
      end;

      otp.Append;
      otptoecodigo.AsInteger := registrotoecodigo.AsInteger;
      otptpocodigo.AsInteger := 0;
      otpcfocfop.AsString := toecfopsaida.Field.AsString;
      otp.Post;

      otp.Close;
      otp.Params[0].AsInteger := registrotoecodigo.AsInteger;
      otp.Open;
    end;
  end;

  if otp.RecordCount <= 0 then
    ShowMessage('Por favor, defina os Tipos de Produtos para esta Operação!')
  else
  begin

    inherited;

    // Abre query com dados já cadastrados
    otp.Close;
    otp.Params[0].AsInteger := registrotoecodigo.AsInteger;
    otp.Open;

    { vFiltro := '';
      vSeparador := '';

      for I := 0 to ListBox1.Count - 1 do
      begin
      vTpocodigo := StrToInt(Copy(ListBox1.Items.Strings[I], 1, 2));

      if not otp.Locate('tpocodigo', vTpocodigo, []) then
      begin
      otp.Append;
      otptoecodigo.AsInteger := toecodigo.Field.AsInteger;
      otptpocodigo.AsInteger := vTpocodigo;
      otp.Post;
      end;

      vFiltro := vFiltro + vSeparador + IntToStr(vTpocodigo);
      vSeparador := ', ';
      end;

      // Deleta os registros que não estão mais na lista
      consulta.Close;
      consulta.SQL.Text := 'DELETE FROM otp WHERE ';
      consulta.SQL.Add('toecodigo = ' + registrotoecodigo.AsString + ' AND ');
      consulta.SQL.Add('tpocodigo NOT IN (' + vFiltro + ');');
      consulta.ExecSQL;
      consulta.Close; }
  end;
end;

procedure Tftoe.BitBtn1Click(Sender: TObject);
var
  I: Integer;
begin
  inherited;

  if (psituacao.Caption = 'Incluindo') and (registro.State <> dsbrowse) then
    registro.Post;

end;

procedure Tftoe.BRemoverClick(Sender: TObject);
begin
  inherited;
  otp.Delete;

end;

procedure Tftoe.FormShow(Sender: TObject);
var
  I: Integer;
begin
  IdModulo := vPlIdMd;
  cfg.Connection := zcone;
  cfg.Open;

  { if cfgcfgusacstnoproduto.AsInteger = 1 then
    begin

    registrootbcodigo.Required := True;
    otbcodigo.Visible := True;
    lbaotbcodigo.Visible := True;
    end
    else
    begin }
  registrootbcodigo.Required := False;
  { end; }

  inherited;

  if cfgcfgusactb.AsInteger = 1 then
  begin
    if self.Height < 696 then
      self.Height := 696;

  end
  else
  begin
    if self.Height < 392 then
      self.Height := 392;
  end;

  // Atualiza ComboBox
  tpo.Open;
  tpo.First;
  while not tpo.Eof do
  begin
    ComboBox1.Items.Add(FormatFloat('00', tpotpocodigo.AsInteger) + ' - ' + tpotpoidentificacao.AsString);
    tpo.Next;
  end;

  otp.Close;
  otp.Params[0].AsInteger := registrotoecodigo.AsInteger;
  otp.Open;

  txctoe.Close;
  txctoe.Params[0].AsInteger := registrotoecodigo.AsInteger;
  txctoe.Open;

  { // Atualiza lista com os registros da tabela otp
    consulta.Close;
    consulta.SQL.Text := 'SELECT t.tpocodigo, t.tpoidentificacao FROM otp o, tpo t WHERE ';
    consulta.SQL.Add('o.toecodigo = '' ' + toecodigo.Field.AsString + ' '' AND ');
    consulta.SQL.Add('o.tpocodigo = t.tpocodigo');
    consulta.Open;

    consulta.First;

    while not consulta.Eof do
    begin
    ListBox1.Items.Add(FormatFloat('00', consulta.Fields[0].AsInteger) + ' - ' + consulta.Fields[1].AsString);
    consulta.Next;
    end; }

end;

procedure Tftoe.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrotoeativo.AsInteger := 1;
end;

procedure Tftoe.toecfopsaidaExit(Sender: TObject);
begin
  { inherited; }
  self.ValidaSaida(Sender);
  registrotoeorigem.AsString := copy(self.toecfopsaida.Field.AsString, 1, 1);

end;

procedure Tftoe.ttmcodigoExit(Sender: TObject);
begin
  inherited;


  ValidaSaida(Sender);

  if ttmcodigo.Field.AsInteger = 0 then // emissão propria
  begin
    GroupBox1.Visible := true;
    cstcodigo.Enabled := true;
    csicodigo.Enabled := true;
    cspcodigo.Enabled := true;
    cfgpercentualpis.Enabled := true;
    csfcodigo.Enabled := true;
    cfgpercentualcofins.Enabled := true;
    if psituacao.Caption = 'Incluindo' then
    begin
      cstcodigo.Field.AsString := '';
      csicodigo.Field.AsString := '';
      cspcodigo.Field.AsString := '';
      cfgpercentualpis.Field.AsString := '';
      csfcodigo.Field.AsString := '';
      cfgpercentualcofins.Field.AsString := '';
    end;

  end
  else
  begin

    if (cfgcrtcodigo.AsInteger = 0) or (cfgcrtcodigo.AsInteger = 1) or (cfgcrtcodigo.AsInteger = 2) then // simples
    begin
      GroupBox1.Visible := False;
      cstcodigo.Field.AsString := '900';
      csicodigo.Field.AsString := '99';
      cspcodigo.Field.AsString := '99';
      cfgpercentualpis.Field.AsString := '0';
      csfcodigo.Field.AsString := '99';
      cfgpercentualcofins.Field.AsString := '0';

      cstcodigo.Enabled := False;
      csicodigo.Enabled := False;
      cspcodigo.Enabled := False;
      cfgpercentualpis.Enabled := False;
      csfcodigo.Enabled := False;
      cfgpercentualcofins.Enabled := False;

    end
    else if cfgcrtcodigo.AsInteger = 3 then // normal
    begin
      GroupBox1.Visible := False;
      cstcodigo.Field.AsString := '000';
      csicodigo.Field.AsString := '99';
      cspcodigo.Field.AsString := '99';
      cfgpercentualpis.Field.AsString := '0';
      csfcodigo.Field.AsString := '99';
      cfgpercentualcofins.Field.AsString := '0';

      cstcodigo.Enabled := False;
      csicodigo.Enabled := False;
      cspcodigo.Enabled := False;
      cfgpercentualpis.Enabled := False;
      csfcodigo.Enabled := False;
      cfgpercentualcofins.Enabled := False;

    end;

  end;

end;

end.
