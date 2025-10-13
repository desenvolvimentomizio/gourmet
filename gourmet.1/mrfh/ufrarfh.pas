unit ufrarfh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase, uFuncoes,   Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrarfh = class(Tfrabase)
    eva: TUniQuery;
    trfh: TVirtualTable;
    Drfh: TDataSource;
    flh: TUniQuery;
    flhflhano: TStringField;
    flhflhmes: TStringField;
    flhflhchave: TIntegerField;
    rfh: TUniQuery;
    fcl: TUniQuery;
    fclfclcodigo: TIntegerField;
    fclfclcor: TStringField;
    ActGerarPlanilha: TAction;
    gfc: TUniQuery;
    gfcgfcidentificacao: TStringField;
    gfcgfccor: TStringField;
    gfctloidentificacao: TStringField;
    gfcfclidentificacao: TStringField;
    gfcgfcobservacao: TStringField;
    gfcfclvalorbase: TFloatField;
    gfcgfccortitulo: TStringField;
    ats: TUniQuery;
    anf: TUniQuery;
    anfanfidentificacao: TStringField;
    anfanfpercentual: TFloatField;
    anfanfcor: TStringField;
    anfanfcortitulo: TStringField;
    atsatsidentificacao: TStringField;
    atsatspercentual: TFloatField;
    atsatscor: TStringField;
    atsatscortitulo: TStringField;
    ofh: TUniQuery;
    ofhofhobservacao: TStringField;
    ofhofhcor: TStringField;
    ata: TUniQuery;
    titata: TUniQuery;
    titatattaidentificacao: TStringField;
    titehf: TUniQuery;
    ehf: TUniQuery;
    titehftthidentificacao: TStringField;
    titmja: TUniQuery;
    titmjatjaidentificacao: TStringField;
    mja: TUniQuery;
    titscl: TUniQuery;
    scl: TUniQuery;
    titscltscidentificacao: TStringField;
    titehfd: TUniQuery;
    StringField1: TStringField;
    ehfd: TUniQuery;
    titevad: TUniQuery;
    titevadevfidentificacao: TStringField;
    evad: TUniQuery;
    titins: TUniQuery;
    titinstinidentificacao: TStringField;
    ins: TUniQuery;
    tli: TUniQuery;
    tlitliidentificacao: TStringField;
    tlitlicor: TStringField;
    titirp: TUniQuery;
    titirptiridentificacao: TStringField;
    irp: TUniQuery;
    tittco: TUniQuery;
    tittcottbidentificacao: TStringField;
    tco: TUniQuery;
    titevac: TUniQuery;
    evac: TUniQuery;
    titevacevfidentificacao: TStringField;
    dsr: TUniQuery;
    titatattacodigo: TIntegerField;
    titehftthcodigo: TIntegerField;
    titmjatjacodigo: TIntegerField;
    qpagadsr: TUniQuery;
    titevadevfcodigo: TIntegerField;
    titevacevfcodigo: TIntegerField;
    evavhf: TUniQuery;
    vhfeva: TUniQuery;
    titehfdtthcodigo: TIntegerField;
    titscltsccodigo: TIntegerField;
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure preparaplanilha;
    function TituloColuna(vEvfCodigo: string): String;

    { Private declarations }
  public
    { Public declarations }
    vpColunaGeral: Integer;

    vlCorColab: string;
    vlCorTituloColunas: TColor;

    vlCorTituloColunasCredito: TColor;
    vlCorTituloColunasFundoCredito: TColor;

    vlCorTituloColunasDebito: TColor;
    vlCorTituloColunasFundoDebito: TColor;

    procedure Carregar; override;
  end;

var
  frarfh: Tfrarfh;

  // Início ID do Módulo frarfh
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Folha Gerencial';

  // Fim ID do Módulo frarfh

implementation

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Filtro := pCargaFrame.Filtro;
  pCargaFrame.Titulo := vPlTitMdl;
  frarfh := Tfrarfh.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarfh := Tfrarfh.Create(pCargaFrame);
  try
    frarfh.CriaAcoesDeAcesso;
  finally
    frarfh.Free;
  end;
end;
exports defineacesso, formuFrame;


procedure Tfrarfh.Carregar;
begin

  eva.Close;
  eva.Connection := ZCone;
  eva.ParamByName('flhchave').AsString := vChaveMestre;
  eva.open;

  preparaplanilha;

  inherited Carregar;

end;

function Tfrarfh.TituloColuna(vEvfCodigo: string): String;
begin
  Result := '';
  consulta.Close;
  consulta.SQL.Text := 'select evfidentificacao, evfresumida from evf where evfcodigo=' + vEvfCodigo;
  consulta.open;

  if not consulta.IsEmpty then
  begin
    if consulta.FieldByName('evfresumida').AsString <> '' then
      Result := consulta.FieldByName('evfresumida').AsString
    else
      Result := consulta.FieldByName('evfidentificacao').AsString;

  end;

end;

procedure Tfrarfh.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;

begin

  fixRect := Rect;

  if Odd(DSTabela.DataSet.RecNo) then
  begin
    if self.uqtabela.FieldByName('rlichave').AsString <> '0' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select tlicor from tli, rli where rli.tlicodigo=tli.tlicodigo and rlichave=' + self.uqtabela.FieldByName('rlichave').AsString;
      consulta.open;

      if consulta.FieldByName('tlicor').AsString <> '' then
      begin
        DBGLista.Canvas.Brush.Color := StringToColor(consulta.FieldByName('tlicor').AsString);
      end
      else
      begin
        if self.uqtabela.FieldByName('fclcor').AsString <> '' then
        begin
          if self.uqtabela.FieldByName('fclcor').AsString <> '' then
            DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabela.FieldByName('fclcor').AsString);
        end
        else
        begin
          DBGLista.Canvas.Brush.Color := PEG_COR_VALORPADRAO;
        end;
      end;

    end
    else
    begin

      if self.uqtabela.FieldByName('fclcor').AsString <> '' then
      begin
        if self.uqtabela.FieldByName('fclcor').AsString <> '' then
          DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabela.FieldByName('fclcor').AsString);
      end
      else
      begin
        DBGLista.Canvas.Brush.Color := PEG_COR_VALORPADRAO;
      end;
    end;

  end
  else
  begin

    if self.uqtabela.FieldByName('rlichave').AsString <> '0' then
    begin
      consulta.Close;
      consulta.SQL.Text := 'select tlicor from tli, rli where rli.tlicodigo=tli.tlicodigo and rlichave=' + self.uqtabela.FieldByName('rlichave').AsString;
      consulta.open;

      if consulta.FieldByName('tlicor').AsString <> '' then
      begin
        DBGLista.Canvas.Brush.Color := StringToColor(consulta.FieldByName('tlicor').AsString);
      end
      else
      begin
        if self.uqtabela.FieldByName('fclcor').AsString <> '' then
        begin
          if self.uqtabela.FieldByName('fclcor').AsString <> '' then
            DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabela.FieldByName('fclcor').AsString);
        end
        else
        begin
          DBGLista.Canvas.Brush.Color := clWhite
        end;
      end;

    end
    else
    begin

      if self.uqtabela.FieldByName('fclcor').AsString <> '' then
      begin
        if self.uqtabela.FieldByName('fclcor').AsString <> '' then
          DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabela.FieldByName('fclcor').AsString);
      end
      else
      begin
        DBGLista.Canvas.Brush.Color := clWhite
      end;
    end;
  end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clSilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clWhite;
    End;

  with TFriendly(DBGLista) do
  begin

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        Brush.Color := clSilver; // $004080FF;
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;
  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

procedure Tfrarfh.preparaplanilha;
var
  i: Integer;
  vlCampoInteiro: TIntegerField;
  vlCampoString: TStringField;
  vlCampoData: TDateField;
  vlCampoHora: TTimeField;

  vlCampoPercentual: TFloatField;
  vlCampoCurrency: TCurrencyField;
  Field: TComponent;
  vlTexto: string;
  vlCriaTabelaRfh: String;
  vlNomeTabelaRfh: string;
  vlLinhaSql: string;
  vlSql: string;
  c: Integer;
  vlFclvalida: Integer;

begin

  try
    flh.Close;
    flh.ParamByName('flhchave').AsString := vChaveMestre;
    flh.open;

    vlNomeTabelaRfh := 'rfh' + flhflhano.AsString + flhflhmes.AsString;
    vlCriaTabelaRfh := 'DROP TABLE IF EXISTS  ' + vlNomeTabelaRfh + ';';

    vlCriaTabelaRfh := vlCriaTabelaRfh + 'CREATE TABLE IF NOT EXISTS ' + vlNomeTabelaRfh + ' ( ';
    vlSql := 'select ';
    for i := 0 to eva.FieldCount - 1 do
    begin

      if (eva.Fields[i].FieldName = 'etdcodigo') or (eva.Fields[i].FieldName = 'fclcodigo') or (eva.Fields[i].FieldName = 'etdidentificacao') or
        (eva.Fields[i].FieldName = 'evfcodigo') or (eva.Fields[i].FieldName = 'fclidentificacao') or (eva.Fields[i].FieldName = 'tloidentificacao') or
        (eva.Fields[i].FieldName = 'flhidentificacao') or (eva.Fields[i].FieldName = 'flhchave') or (eva.Fields[i].FieldName = 'fclcor') or (eva.Fields[i].FieldName = 'rlichave')
        or (eva.Fields[i].FieldName = 'dtrdataadmissao') or (eva.Fields[i].FieldName = 'dtrnumeregistro') or (eva.Fields[i].FieldName = 'anfidentificacao') or
        (eva.Fields[i].FieldName = 'pfhsemanal') or (eva.Fields[i].FieldName = 'pfhmensal') or (eva.Fields[i].FieldName = 'evasalariobase') or
        (eva.Fields[i].FieldName = 'evatitulacao') or (eva.Fields[i].FieldName = 'evadsrhorasaula') or (eva.Fields[i].FieldName = 'evaquinquenio') or
        (eva.Fields[i].FieldName = 'evachave') or (eva.Fields[i].FieldName = 'vhfcodigo') then
      begin
        if eva.Fields[i].DataType = ftString then
        begin
          vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' varchar(' + eva.Fields[i].Size.ToString + '),';
          vlSql := vlSql + eva.Fields[i].FieldName + ',';
        end
        else if eva.Fields[i].DataType = ftDate then
        begin
          vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' date ,';
          vlSql := vlSql + eva.Fields[i].FieldName + ',';
        end
        else if eva.Fields[i].DataType = ftTime then
        begin
          vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' time ,';
          vlSql := vlSql + eva.Fields[i].FieldName + ',';
        end

        else if eva.Fields[i].DataType = ftInteger then
        begin
          vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' int(10),';
          vlSql := vlSql + eva.Fields[i].FieldName + ',';
        end
        else
        begin
          vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' DECIMAL(12, 3),';
          vlSql := vlSql + eva.Fields[i].FieldName + ',';
        end;
      end
      else
      begin
        vlLinhaSql := vlLinhaSql + 'campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName))) + ' DECIMAL(12, 3),';
        vlSql := vlSql + 'campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName))) + ',';
      end;

    end;

    vlCriaTabelaRfh := vlCriaTabelaRfh + COPY(vlLinhaSql, 1, length(vlLinhaSql) - 1);
    // vlSql := COPY(vlSql, 1, length(vlSql) - 1) + ' from ' + vlNomeTabelaRfh + ' order by etdidentificacao, fclidentificacao';
    vlSql := COPY(vlSql, 1, length(vlSql) - 1) + ' from ' + vlNomeTabelaRfh + ' where pfhsemanal is not null order by etdidentificacao, fclidentificacao';

    vlCriaTabelaRfh := vlCriaTabelaRfh + ' ) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_swedish_ci;';

    consulta.Close;
    consulta.SQL.Text := vlCriaTabelaRfh;
    consulta.ExecSQL;

    uqtabela.Close;
    uqtabela.SQL.Text := vlSql;

    uqtabela.Fields.Clear;
    DBGLista.Columns.Clear;
    c := eva.FieldCount - 1;

    for i := 0 to eva.FieldCount - 1 do
    begin

      if (eva.Fields[i].FieldName = 'etdcodigo') or (eva.Fields[i].FieldName = 'fclcodigo') or (eva.Fields[i].FieldName = 'etdidentificacao') or
        (eva.Fields[i].FieldName = 'evfcodigo') or (eva.Fields[i].FieldName = 'fclidentificacao') or (eva.Fields[i].FieldName = 'tloidentificacao') or
        (eva.Fields[i].FieldName = 'flhchave') or (eva.Fields[i].FieldName = 'flhidentificacao') or (eva.Fields[i].FieldName = 'fclcor') or (eva.Fields[i].FieldName = 'rlichave')
        or (eva.Fields[i].FieldName = 'dtrdataadmissao') or (eva.Fields[i].FieldName = 'dtrnumeregistro') or (eva.Fields[i].FieldName = 'anfidentificacao') or
        (eva.Fields[i].FieldName = 'pfhsemanal') or (eva.Fields[i].FieldName = 'pfhmensal') or (eva.Fields[i].FieldName = 'evasalariobase') or
        (eva.Fields[i].FieldName = 'evatitulacao') or (eva.Fields[i].FieldName = 'evadsrhorasaula') or (eva.Fields[i].FieldName = 'evaquinquenio') or
        (eva.Fields[i].FieldName = 'evachave') or (eva.Fields[i].FieldName = 'vhfcodigo') then
      begin
        if eva.Fields[i].DataType = ftString then
        begin

          Field := TStringField.Create(self);
          TStringField(Field).FieldName := eva.Fields[i].FieldName;
          if (eva.Fields[i].FieldName = 'fclcodigo') then
            TStringField(Field).DisplayLabel := 'Cód.Fun'
          else if (eva.Fields[i].FieldName = 'etdidentificacao') then
            TStringField(Field).DisplayLabel := 'Identificação do Colaborador'
          else if (eva.Fields[i].FieldName = 'fclidentificacao') then
            TStringField(Field).DisplayLabel := 'Função'
          else if (eva.Fields[i].FieldName = 'tloidentificacao') then
            TStringField(Field).DisplayLabel := 'Lotação'
          else if (eva.Fields[i].FieldName = 'flhidentificacao') then
            TStringField(Field).DisplayLabel := 'Folha'
          else if (eva.Fields[i].FieldName = 'dtrdataadmissao') then
            TStringField(Field).DisplayLabel := 'Data de admissão'

          else if (eva.Fields[i].FieldName = 'dtrnumeregistro') then
            TStringField(Field).DisplayLabel := 'Cód. do Livro Registro'

          else if (eva.Fields[i].FieldName = 'anfidentificacao') then
            TStringField(Field).DisplayLabel := 'Titulação'
          else
            TStringField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;

          TStringField(Field).Size := eva.Fields[i].Size;
          TStringField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
          TStringField(Field).Required := eva.Fields[i].Required;
          Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
          TStringField(Field).DataSet := uqtabela;
        end
        else if eva.Fields[i].DataType = ftTime then
        begin
          Field := TTimeField.Create(self);
          TTimeField(Field).FieldName := eva.Fields[i].FieldName;
          TStringField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;

          TTimeField(Field).Size := eva.Fields[i].Size;
          TTimeField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
          TTimeField(Field).Required := eva.Fields[i].Required;
          Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
          TTimeField(Field).DataSet := uqtabela;

        end

        else if eva.Fields[i].DataType = ftDate then
        begin
          Field := TDateField.Create(self);
          TDateField(Field).FieldName := eva.Fields[i].FieldName;

          if (eva.Fields[i].FieldName = 'dtrdataadmissao') then
            TDateField(Field).DisplayLabel := 'Data de admissão'
          else
            TDateField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;

          TDateField(Field).Size := eva.Fields[i].Size;
          TDateField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
          TDateField(Field).Required := eva.Fields[i].Required;
          Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
          TDateField(Field).DataSet := uqtabela;

        end
        else if eva.Fields[i].DataType = ftFloat then
        begin
          Field := TFloatField.Create(self);
          TFloatField(Field).FieldName := eva.Fields[i].FieldName;

          if (eva.Fields[i].FieldName = 'evasalariobase') then
            TFloatField(Field).DisplayLabel := 'Salário Base'
          else if (eva.Fields[i].FieldName = 'evatitulacao') then
            TFloatField(Field).DisplayLabel := 'Titulação'
          else if (eva.Fields[i].FieldName = 'evadsrhorasaula') then
            TFloatField(Field).DisplayLabel := 'Desc. Semanal Remunerado'
          else if (eva.Fields[i].FieldName = 'evaquinquenio') then
            TFloatField(Field).DisplayLabel := 'Quinquenio'

          else
            TFloatField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;
          TFloatField(Field).Size := eva.Fields[i].Size;
          TFloatField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
          TFloatField(Field).DisplayFormat := '#,##0.00';
          TFloatField(Field).Required := eva.Fields[i].Required;
          Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
          TFloatField(Field).DataSet := uqtabela;

        end
        else if eva.Fields[i].DataType = ftInteger then
        begin

          Field := TIntegerField.Create(self);
          TIntegerField(Field).FieldName := eva.Fields[i].FieldName;
          if (eva.Fields[i].FieldName = 'etdcodigo') then
            TStringField(Field).DisplayLabel := 'Código'
          else if (eva.Fields[i].FieldName = 'flhchave') then
            TStringField(Field).DisplayLabel := 'Cód.Folha'
          else if (eva.Fields[i].FieldName = 'pfhsemanal') then
            TTimeField(Field).DisplayLabel := 'Carga Horária Semanal'
          else if (eva.Fields[i].FieldName = 'pfhMensal') then
            TTimeField(Field).DisplayLabel := 'Carga Horária Mensal'
          else if (eva.Fields[i].FieldName = 'rlichave') then
            TStringField(Field).DisplayLabel := 'Reg.Lic'

          else
            TIntegerField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;

          TIntegerField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
          TIntegerField(Field).Required := eva.Fields[i].Required;
          Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
          TIntegerField(Field).DataSet := uqtabela;

        end;

      end
      else
      begin

        Field := TFloatField.Create(self);
        TFloatField(Field).FieldName := 'campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName)));
        TFloatField(Field).DisplayLabel := uppernome(TituloColuna(trim(eva.Fields[i].FieldName)));
        TFloatField(Field).Size := eva.Fields[i].Size;
        TFloatField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
        TFloatField(Field).DisplayFormat := '#,##0.00';
        TFloatField(Field).Required := eva.Fields[i].Required;
        Field.Name := uqtabela.Name + 'campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName)));
        TFloatField(Field).DataSet := uqtabela;

      end;

      DBGLista.Columns.Add;
      DBGLista.Columns[i].FieldName := uqtabela.Fields[i].FieldName;
      DBGLista.Columns[i].Title.Caption := uqtabela.Fields[i].DisplayLabel;

    end;

    uqtabela.open;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE eva r SET fclcodigo=(SELECT fclcodigo FROM vhf WHERE etdcodigo=r.etdcodigo ORDER BY fclcodigo LIMIT 1) WHERE r.fclcodigo=0';
    consulta.ExecSQL;

    eva.Close;
    eva.open;

    eva.First;
    while not eva.Eof do
    begin

      { if eva.FieldByName('etdcodigo').AsInteger = 343 then
        showmessage(''); }

      vlFclvalida := eva.FieldByName('fclcodigo').AsInteger;

      evavhf.Close;
      evavhf.SQL.Text := 'select eva.evachave, vhf.fclcodigo, vhf.vhfcodigo, vhf.etdcodigo, eva.evfcodigo FROM eva, vhf, pfh  WHERE vhf.etdcodigo=' + eva.FieldByName('etdcodigo')
        .AsString + ' and vhf.vhfcodigo=' + eva.FieldByName('vhfcodigo').AsString + ' and pfh.vhfcodigo=vhf.vhfcodigo and pfh.flhchave=' + vChaveMestre + ' and eva.flhchave = ' +
        vChaveMestre + ' and eva.evachave=' + eva.FieldByName('evachave').AsString + ' and  vhf.vhfdatafinal IS null';
      evavhf.open;

      if evavhf.IsEmpty then
      begin
        evavhf.Close;
        evavhf.SQL.Text := 'select eva.evachave, vhf.fclcodigo, vhf.vhfcodigo, vhf.etdcodigo, eva.evfcodigo FROM eva, vhf, pfh  WHERE vhf.etdcodigo=' + eva.FieldByName('etdcodigo')
          .AsString + ' and pfh.vhfcodigo=vhf.vhfcodigo and pfh.flhchave=' + vChaveMestre + ' and eva.flhchave = ' + vChaveMestre + ' and eva.evachave=' +
          eva.FieldByName('evachave').AsString + ' and  vhf.vhfdatafinal IS null';
        evavhf.open;

      end;

      vlFclvalida := evavhf.FieldByName('fclcodigo').AsInteger;

      vhfeva.Close;
      vhfeva.SQL.Text := 'select evachave, fclcodigo, vhfcodigo, evfcodigo from eva where ' // fclcodigo='+eva.FieldByName('fclcodigo').asstring
        + ' flhchave=' + vChaveMestre + ' and evachave=' + eva.FieldByName('evachave').AsString;
      vhfeva.open;

      if ((vhfeva.FieldByName('fclcodigo').AsInteger <> vlFclvalida) and (vhfeva.FieldByName('vhfcodigo').AsString = eva.FieldByName('vhfcodigo').AsString)) and
        (vhfeva.FieldByName('evachave').AsString = eva.FieldByName('evachave').AsString) { and (eva.FieldByName('etdcodigo').AsString = '343') } then
      begin
        if (vhfeva.FieldByName('evfcodigo').AsInteger = 22) or (vhfeva.FieldByName('evfcodigo').AsInteger = 75) or (vhfeva.FieldByName('evfcodigo').AsInteger = 76) or
          (vhfeva.FieldByName('evfcodigo').AsInteger = 64) or (vhfeva.FieldByName('evfcodigo').AsInteger = 59) then
        begin

          vhfeva.Edit;
          vhfeva.FieldByName('fclcodigo').AsString := evavhf.FieldByName('fclcodigo').AsString;
          vhfeva.FieldByName('vhfcodigo').AsString := evavhf.FieldByName('vhfcodigo').AsString;
          vhfeva.Post;
        end;
      end;

      eva.Next;
    end;

    eva.Close;
    eva.open;

    eva.First;
    while not eva.Eof do
    begin

      if uqtabela.Locate('etdcodigo;fclcodigo', VarArrayOf([eva.FieldByName('etdcodigo').AsInteger, eva.FieldByName('fclcodigo').AsInteger]), []) then
        uqtabela.Edit
      else
      begin
        if eva.FieldByName('fclcodigo').AsInteger = 0 then
        begin
          if uqtabela.Locate('etdcodigo', eva.FieldByName('etdcodigo').AsInteger, []) then
            uqtabela.Edit
          else
            uqtabela.Append;
        end
        else
          uqtabela.Append;
      end;

      for i := 0 to eva.FieldCount - 1 do
      begin
        if (eva.Fields[i].FieldName = 'etdcodigo') or (eva.Fields[i].FieldName = 'fclcodigo') or (eva.Fields[i].FieldName = 'etdidentificacao') or
          (eva.Fields[i].FieldName = 'evfcodigo') or (eva.Fields[i].FieldName = 'fclidentificacao') or (eva.Fields[i].FieldName = 'tloidentificacao') or
          (eva.Fields[i].FieldName = 'flhchave') or (eva.Fields[i].FieldName = 'flhidentificacao') or (eva.Fields[i].FieldName = 'fclcor') or (eva.Fields[i].FieldName = 'rlichave')
          or (eva.Fields[i].FieldName = 'dtrdataadmissao') or (eva.Fields[i].FieldName = 'dtrnumeregistro') or (eva.Fields[i].FieldName = 'anfidentificacao') or
          (eva.Fields[i].FieldName = 'pfhsemanal') or (eva.Fields[i].FieldName = 'pfhmensal') or (eva.Fields[i].FieldName = 'evasalariobase') or
          (eva.Fields[i].FieldName = 'evatitulacao') or (eva.Fields[i].FieldName = 'evadsrhorasaula') or (eva.Fields[i].FieldName = 'evaquinquenio') or
          (eva.Fields[i].FieldName = 'evachave') or (eva.Fields[i].FieldName = 'vhfcodigo') then
        begin
          uqtabela.Fields[i].AsString := eva.Fields[i].AsString;
        end
        else
        begin

          if eva.Fields[i].AsString <> '' then
          begin
            vlTexto := StringReplace(eva.Fields[i].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase]);
            uqtabela.FieldByName('campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName)))).AsString := vlTexto;
          end
          else
          begin
            if uqtabela.Fields[i].AsString = '' then
              uqtabela.Fields[i].AsFloat := 0;
          end;
        end;

      end;
      uqtabela.Post;

      eva.Next;
    end;

  finally

  end;

end;

{
  procedure Tfrarfh.preparaplanilha;
  var
  i: Integer;
  vlCampoInteiro: TIntegerField;
  vlCampoString: TStringField;
  vlCampoData: TDateField;
  vlCampoHora: TTimeField;

  vlCampoPercentual: TFloatField;
  vlCampoCurrency: TCurrencyField;
  Field: TComponent;
  vlTexto: string;
  vlCriaTabelaRfh: String;
  vlNomeTabelaRfh: string;
  vlLinhaSql: string;
  vlSql: string;
  c: Integer;
  vlFclvalida: Integer;

  begin

  try
  flh.Close;
  flh.ParamByName('flhchave').AsString := vChaveMestre;
  flh.open;

  vlNomeTabelaRfh := 'rfh' + flhflhano.AsString + flhflhmes.AsString;
  vlCriaTabelaRfh := 'DROP TABLE IF EXISTS  ' + vlNomeTabelaRfh + ';';

  vlCriaTabelaRfh := vlCriaTabelaRfh + 'CREATE TABLE IF NOT EXISTS ' + vlNomeTabelaRfh + ' ( ';
  vlSql := 'select ';
  for i := 0 to eva.FieldCount - 1 do
  begin

  if (eva.Fields[i].FieldName = 'etdcodigo') or (eva.Fields[i].FieldName = 'fclcodigo') or (eva.Fields[i].FieldName = 'etdidentificacao') or
  (eva.Fields[i].FieldName = 'evfcodigo') or (eva.Fields[i].FieldName = 'fclidentificacao') or (eva.Fields[i].FieldName = 'tloidentificacao') or
  (eva.Fields[i].FieldName = 'flhidentificacao') or (eva.Fields[i].FieldName = 'flhchave') or (eva.Fields[i].FieldName = 'fclcor') or (eva.Fields[i].FieldName = 'rlichave')
  or (eva.Fields[i].FieldName = 'dtrdataadmissao') or (eva.Fields[i].FieldName = 'dtrnumeregistro') or (eva.Fields[i].FieldName = 'anfidentificacao') or
  (eva.Fields[i].FieldName = 'pfhsemanal') or (eva.Fields[i].FieldName = 'pfhmensal') or (eva.Fields[i].FieldName = 'evasalariobase') or
  (eva.Fields[i].FieldName = 'evatitulacao') or (eva.Fields[i].FieldName = 'evadsrhorasaula') or (eva.Fields[i].FieldName = 'evaquinquenio') or (eva.Fields[i].FieldName = 'evachave') or (eva.Fields[i].FieldName = 'vhfcodigo') then
  begin
  if eva.Fields[i].DataType = ftString then
  begin
  vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' varchar(' + eva.Fields[i].Size.ToString + '),';
  vlSql := vlSql + eva.Fields[i].FieldName + ',';
  end
  else if eva.Fields[i].DataType = ftDate then
  begin
  vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' date ,';
  vlSql := vlSql + eva.Fields[i].FieldName + ',';
  end
  else if eva.Fields[i].DataType = ftTime then
  begin
  vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' time ,';
  vlSql := vlSql + eva.Fields[i].FieldName + ',';
  end

  else if eva.Fields[i].DataType = ftInteger then
  begin
  vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' int(10),';
  vlSql := vlSql + eva.Fields[i].FieldName + ',';
  end
  else
  begin
  vlLinhaSql := vlLinhaSql + eva.Fields[i].FieldName + ' DECIMAL(12, 3),';
  vlSql := vlSql + eva.Fields[i].FieldName + ',';
  end;
  end
  else
  begin
  vlLinhaSql := vlLinhaSql + 'campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName))) + ' DECIMAL(12, 3),';
  vlSql := vlSql + 'campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName))) + ',';
  end;

  end;

  vlCriaTabelaRfh := vlCriaTabelaRfh + COPY(vlLinhaSql, 1, length(vlLinhaSql) - 1);
  vlSql := COPY(vlSql, 1, length(vlSql) - 1) + ' from ' + vlNomeTabelaRfh + ' where pfhsemanal is not null order by etdidentificacao, fclidentificacao';

  vlCriaTabelaRfh := vlCriaTabelaRfh + ' ) ENGINE = INNODB CHARACTER SET latin1 COLLATE latin1_swedish_ci;';

  consulta.Close;
  consulta.SQL.Text := vlCriaTabelaRfh;
  consulta.ExecSQL;

  uqtabela.Close;
  uqtabela.SQL.Text := vlSql;

  uqtabela.Fields.Clear;
  DBGLista.Columns.Clear;
  c := eva.FieldCount - 1;

  for i := 0 to eva.FieldCount - 1 do
  begin

  if (eva.Fields[i].FieldName = 'etdcodigo') or (eva.Fields[i].FieldName = 'fclcodigo') or (eva.Fields[i].FieldName = 'etdidentificacao') or
  (eva.Fields[i].FieldName = 'evfcodigo') or (eva.Fields[i].FieldName = 'fclidentificacao') or (eva.Fields[i].FieldName = 'tloidentificacao') or
  (eva.Fields[i].FieldName = 'flhchave') or (eva.Fields[i].FieldName = 'flhidentificacao') or (eva.Fields[i].FieldName = 'fclcor') or (eva.Fields[i].FieldName = 'rlichave')
  or (eva.Fields[i].FieldName = 'dtrdataadmissao') or (eva.Fields[i].FieldName = 'dtrnumeregistro') or (eva.Fields[i].FieldName = 'anfidentificacao') or
  (eva.Fields[i].FieldName = 'pfhsemanal') or (eva.Fields[i].FieldName = 'pfhmensal') or (eva.Fields[i].FieldName = 'evasalariobase') or
  (eva.Fields[i].FieldName = 'evatitulacao') or (eva.Fields[i].FieldName = 'evadsrhorasaula') or (eva.Fields[i].FieldName = 'evaquinquenio') or (eva.Fields[i].FieldName = 'evachave') or (eva.Fields[i].FieldName = 'vhfcodigo')  then
  begin
  if eva.Fields[i].DataType = ftString then
  begin

  Field := TStringField.Create(self);
  TStringField(Field).FieldName := eva.Fields[i].FieldName;
  if (eva.Fields[i].FieldName = 'fclcodigo') then
  TStringField(Field).DisplayLabel := 'Cód.Fun'
  else if (eva.Fields[i].FieldName = 'etdidentificacao') then
  TStringField(Field).DisplayLabel := 'Identificação do Colaborador'
  else if (eva.Fields[i].FieldName = 'fclidentificacao') then
  TStringField(Field).DisplayLabel := 'Função'
  else if (eva.Fields[i].FieldName = 'tloidentificacao') then
  TStringField(Field).DisplayLabel := 'Lotação'
  else if (eva.Fields[i].FieldName = 'flhidentificacao') then
  TStringField(Field).DisplayLabel := 'Folha'
  else if (eva.Fields[i].FieldName = 'dtrdataadmissao') then
  TStringField(Field).DisplayLabel := 'Data de admissão'

  else if (eva.Fields[i].FieldName = 'dtrnumeregistro') then
  TStringField(Field).DisplayLabel := 'Cód. do Livro Registro'

  else if (eva.Fields[i].FieldName = 'anfidentificacao') then
  TStringField(Field).DisplayLabel := 'Titulação'
  else
  TStringField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;

  TStringField(Field).Size := eva.Fields[i].Size;
  TStringField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
  TStringField(Field).Required := eva.Fields[i].Required;
  Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
  TStringField(Field).DataSet := uqtabela;
  end
  else if eva.Fields[i].DataType = ftTime then
  begin
  Field := TTimeField.Create(self);
  TTimeField(Field).FieldName := eva.Fields[i].FieldName;
  TStringField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;

  TTimeField(Field).Size := eva.Fields[i].Size;
  TTimeField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
  TTimeField(Field).Required := eva.Fields[i].Required;
  Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
  TTimeField(Field).DataSet := uqtabela;

  end

  else if eva.Fields[i].DataType = ftDate then
  begin
  Field := TDateField.Create(self);
  TDateField(Field).FieldName := eva.Fields[i].FieldName;

  if (eva.Fields[i].FieldName = 'dtrdataadmissao') then
  TDateField(Field).DisplayLabel := 'Data de admissão'
  else
  TDateField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;

  TDateField(Field).Size := eva.Fields[i].Size;
  TDateField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
  TDateField(Field).Required := eva.Fields[i].Required;
  Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
  TDateField(Field).DataSet := uqtabela;

  end
  else if eva.Fields[i].DataType = ftFloat then
  begin
  Field := TFloatField.Create(self);
  TFloatField(Field).FieldName := eva.Fields[i].FieldName;

  if (eva.Fields[i].FieldName = 'evasalariobase') then
  TFloatField(Field).DisplayLabel := 'Salário Base'
  else if (eva.Fields[i].FieldName = 'evatitulacao') then
  TFloatField(Field).DisplayLabel := 'Titulação'
  else if (eva.Fields[i].FieldName = 'evadsrhorasaula') then
  TFloatField(Field).DisplayLabel := 'Desc. Semanal Remunerado'
  else if (eva.Fields[i].FieldName = 'evaquinquenio') then
  TFloatField(Field).DisplayLabel := 'Quinquenio'

  else
  TFloatField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;
  TFloatField(Field).Size := eva.Fields[i].Size;
  TFloatField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
  TFloatField(Field).DisplayFormat := '#,##0.00';
  TFloatField(Field).Required := eva.Fields[i].Required;
  Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
  TFloatField(Field).DataSet := uqtabela;

  end
  else if eva.Fields[i].DataType = ftInteger then
  begin

  Field := TIntegerField.Create(self);
  TIntegerField(Field).FieldName := eva.Fields[i].FieldName;
  if (eva.Fields[i].FieldName = 'etdcodigo') then
  TStringField(Field).DisplayLabel := 'Código'
  else if (eva.Fields[i].FieldName = 'flhchave') then
  TStringField(Field).DisplayLabel := 'Cód.Folha'
  else if (eva.Fields[i].FieldName = 'pfhsemanal') then
  TTimeField(Field).DisplayLabel := 'Carga Horária Semanal'
  else if (eva.Fields[i].FieldName = 'pfhMensal') then
  TTimeField(Field).DisplayLabel := 'Carga Horária Mensal'
  else if (eva.Fields[i].FieldName = 'rlichave') then
  TStringField(Field).DisplayLabel := 'Reg.Lic'

  else
  TIntegerField(Field).DisplayLabel := eva.Fields[i].DisplayLabel;

  TIntegerField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
  TIntegerField(Field).Required := eva.Fields[i].Required;
  Field.Name := uqtabela.Name + eva.Fields[i].FieldName;
  TIntegerField(Field).DataSet := uqtabela;

  end;

  end
  else
  begin

  Field := TFloatField.Create(self);
  TFloatField(Field).FieldName := 'campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName)));
  TFloatField(Field).DisplayLabel := uppernome(TituloColuna(trim(eva.Fields[i].FieldName)));
  TFloatField(Field).Size := eva.Fields[i].Size;
  TFloatField(Field).DisplayWidth := eva.Fields[i].DisplayWidth;
  TFloatField(Field).DisplayFormat := '#,##0.00';
  TFloatField(Field).Required := eva.Fields[i].Required;
  Field.Name := uqtabela.Name + 'campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName)));
  TFloatField(Field).DataSet := uqtabela;

  end;

  DBGLista.Columns.Add;
  DBGLista.Columns[i].FieldName := uqtabela.Fields[i].FieldName;
  DBGLista.Columns[i].Title.Caption := uqtabela.Fields[i].DisplayLabel;

  end;

  uqtabela.open;

  consulta.Close;
  consulta.SQL.Text := 'UPDATE eva r SET fclcodigo=(SELECT fclcodigo FROM vhf WHERE etdcodigo=r.etdcodigo ORDER BY fclcodigo LIMIT 1) WHERE r.fclcodigo=0';
  consulta.ExecSQL;

  eva.Close;
  eva.open;

  eva.First;
  while not eva.Eof do
  begin

  if eva.FieldByName('etdcodigo').AsInteger = 343 then
  showmessage('');

  vlFclvalida := eva.FieldByName('fclcodigo').AsInteger;

  evavhf.Close;
  evavhf.SQL.Text := 'select eva.evachave, vhf.fclcodigo, vhf.vhfcodigo, vhf.etdcodigo, eva.evfcodigo FROM eva, vhf  WHERE vhf.etdcodigo=' + eva.FieldByName('etdcodigo').AsString + ' and eva.flhchave = ' + vChaveMestre +
  ' and eva.evachave='+eva.FieldByName('evachave').AsString+' and  vhf.vhfdatafinal IS null';
  evavhf.open;

  vlFclvalida := evavhf.FieldByName('fclcodigo').AsInteger;


  vhfeva.Close;
  vhfeva.SQL.Text:='select evachave, fclcodigo, vhfcodigo from eva where ' //fclcodigo='+eva.FieldByName('fclcodigo').asstring
  +' flhchave='+vChaveMestre+' and evachave='+eva.FieldByName('evachave').AsString;
  vhfeva.Open;

  if ((vhfeva.FieldByName('fclcodigo').AsInteger<>vlFclvalida) and
  (vhfeva.FieldByName('vhfcodigo').AsString=eva.FieldByName('vhfcodigo').AsString)) and
  (vhfeva.FieldByName('evachave').AsString=eva.FieldByName('evachave').AsString) and (eva.FieldByName('etdcodigo').AsString<>'250')  then
  begin
  vhfeva.Edit;
  vhfeva.FieldByName('fclcodigo').AsString:=evavhf.FieldByName('fclcodigo').AsString;
  vhfeva.FieldByName('vhfcodigo').AsString:=evavhf.FieldByName('vhfcodigo').AsString;
  vhfeva.Post;
  end;






  if uqtabela.Locate('etdcodigo;fclcodigo', VarArrayOf([eva.FieldByName('etdcodigo').AsInteger, vlFclvalida]), []) then
  uqtabela.Edit
  else
  begin
  if eva.FieldByName('fclcodigo').AsInteger = 0 then
  begin
  if uqtabela.Locate('etdcodigo', eva.FieldByName('etdcodigo').AsInteger, []) then
  uqtabela.Edit
  else
  uqtabela.Append;
  end
  else
  uqtabela.Append;
  end;

  for i := 0 to eva.FieldCount - 1 do
  begin
  if (eva.Fields[i].FieldName = 'etdcodigo') or (eva.Fields[i].FieldName = 'fclcodigo') or (eva.Fields[i].FieldName = 'etdidentificacao') or
  (eva.Fields[i].FieldName = 'evfcodigo') or (eva.Fields[i].FieldName = 'fclidentificacao') or (eva.Fields[i].FieldName = 'tloidentificacao') or
  (eva.Fields[i].FieldName = 'flhchave') or (eva.Fields[i].FieldName = 'flhidentificacao') or (eva.Fields[i].FieldName = 'fclcor') or (eva.Fields[i].FieldName = 'rlichave')
  or (eva.Fields[i].FieldName = 'dtrdataadmissao') or (eva.Fields[i].FieldName = 'dtrnumeregistro') or (eva.Fields[i].FieldName = 'anfidentificacao') or
  (eva.Fields[i].FieldName = 'pfhsemanal') or (eva.Fields[i].FieldName = 'pfhmensal') or (eva.Fields[i].FieldName = 'evasalariobase') or
  (eva.Fields[i].FieldName = 'evatitulacao') or (eva.Fields[i].FieldName = 'evadsrhorasaula') or (eva.Fields[i].FieldName = 'evaquinquenio') or (eva.Fields[i].FieldName = 'evachave') or (eva.Fields[i].FieldName = 'vhfcodigo') then
  begin
  uqtabela.Fields[i].AsString := eva.Fields[i].AsString;
  end
  else
  begin

  if eva.Fields[i].AsString <> '' then
  begin
  vlTexto := StringReplace(eva.Fields[i].AsString, '.', ',', [rfReplaceAll, rfIgnoreCase]);
  uqtabela.FieldByName('campo' + formatfloat('000', StrtoInt(trim(eva.Fields[i].FieldName)))).AsString := vlTexto;
  end
  else
  begin
  if uqtabela.Fields[i].AsString = '' then
  uqtabela.Fields[i].AsFloat := 0;
  end;
  end;

  // if eva.Fields[i].FieldName = 'fclcodigo' then
  //    uqtabela.Fields[i].AsInteger := vlFclvalida;



  end;
  uqtabela.Post;

  eva.Next;
  end;

  finally

  end;

  end; }

end.
