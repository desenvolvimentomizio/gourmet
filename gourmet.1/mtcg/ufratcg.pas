unit ufratcg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, uPegaBase, Vcl.ComCtrls, ACBrBase, ACBrSocket, ACBrNCMs, Vcl.Mask, Vcl.DBCtrls,
  System.ImageList, Vcl.ImgList,  ACBrIBPTax, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfratcg = class(Tfrabase)
    uqtabelatcgncm: TStringField;
    uqtabelatcgex: TStringField;
    uqtabelatcgtabela: TIntegerField;
    uqtabelatcgaliqnac: TFloatField;
    uqtabelatcgaliqimp: TFloatField;
    uqtabelatcgaliqest: TFloatField;
    uqtabelatcgaliqmun: TFloatField;
    uqtabelatcgdescricao: TStringField;
    ActImportaIBPT: TAction;
    tcg: TUniQuery;
    tcgtcgncm: TStringField;
    tcgtcgex: TStringField;
    tcgtcgtabela: TIntegerField;
    tcgtcgaliqnac: TFloatField;
    tcgtcgaliqimp: TFloatField;
    tcgtcgaliqest: TFloatField;
    tcgtcgaliqmun: TFloatField;
    tcgtcgdescricao: TStringField;
    mostra: TProgressBar;
    ActImportarWeb: TAction;
    ACBrNCMs: TACBrNCMs;
    uqtabelatcgfonte: TStringField;
    uqtabelatcgversao: TStringField;
    uqtabelatcginicio: TDateField;
    uqtabelatcgfinal: TDateField;
    uqtabelatcgchave: TStringField;
    ActPesquisarGTIN: TAction;
    ACBrIBPTax1: TACBrIBPTax;
    ActImportarTXT: TAction;
    OpenDialog: TOpenDialog;
    tcgtcgversao: TStringField;
    uqtabelaansanexo: TStringField;
    procedure ActImportaIBPTExecute(Sender: TObject);
    procedure ActImportarWebExecute(Sender: TObject);
    procedure edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ActPesquisarGTINExecute(Sender: TObject);
    procedure ActImportarTXTExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratcg: Tfratcg;

  // Início ID do Módulo fratcg
const
  vPlIdMd = '00.00.00.000-00';
  vPlTitMdl = 'NCMs da IBPT';

  // Fim ID do Módulo fratcg

implementation

uses
  CSVData, ufncmgtin;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratcg := Tfratcg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratcg := Tfratcg.Create(pCargaFrame);
  try
    fratcg.CriaAcoesDeAcesso;
  finally
    fratcg.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratcg.ActImportaIBPTExecute(Sender: TObject);
var
  OpenDialog: TOpenDialog; // Open dialog variable
  vlNomeArq: String;
  vlCsv: TCSVData;
  vlLinha: Integer;
  vlColuna: Integer;
  i, x: Integer;

  vltcgncm: string;
  vltcgex: string;
  vltcgtabela: string;
  vltcgaliqnac: string;
  vltcgaliqimp: string;
  vltcgaliqest: string;
  vltcgaliqmun: string;
  vltcgdescricao: string;

begin
  inherited;

  OpenDialog := TOpenDialog.Create(self);
  OpenDialog.InitialDir := GetCurrentDir;
  OpenDialog.Options := [ofFileMustExist];
  OpenDialog.Filter := 'Arquivos tipo Csv |*.csv';
  OpenDialog.FilterIndex := 2;

  if OpenDialog.Execute then
    vlNomeArq := OpenDialog.FileName;

  OpenDialog.Free;

  if fileexists(vlNomeArq) then
  begin
    tcg.Close;
    tcg.Open;
    PnlRodapeGrid.Visible := true;

    vlCsv := TCSVData.Create;
    vlCsv.Delim := ';';
    vlCsv.Quote := '"';
    vlCsv.LoadFromFile(vlNomeArq);

    mostra.Max := vlCsv.Rows;
    mostra.Position := 0;
    Application.ProcessMessages;
    for i := 1 to vlCsv.Rows - 1 do
    begin
      mostra.Position := mostra.Position + 1;
      Application.ProcessMessages;

      for x := 0 to vlCsv.Rows - 1 do
      begin
        case x of
          0:
            vltcgncm := vlCsv.Cell[i, x];
          1:
            vltcgex := vlCsv.Cell[i, x];
          2:
            vltcgtabela := vlCsv.Cell[i, x];
          3:
            vltcgdescricao := vlCsv.Cell[i, x];
          4:
            vltcgaliqnac := vlCsv.Cell[i, x];
          5:
            vltcgaliqimp := vlCsv.Cell[i, x];
          6:
            vltcgaliqest := vlCsv.Cell[i, x];
          7:
            vltcgaliqmun := vlCsv.Cell[i, x];

        end;
      end;

      if tcg.Locate('tcgncm ', vltcgncm, []) then
        tcg.Edit
      else
        tcg.Append;

      tcgtcgncm.AsString := vltcgncm;
      tcgtcgex.AsString := vltcgex;
      tcgtcgtabela.AsString := vltcgtabela;
      tcgtcgaliqnac.AsString := StringReplace(vltcgaliqnac, '.', ',', []);
      tcgtcgaliqimp.AsString := StringReplace(vltcgaliqimp, '.', ',', []);
      tcgtcgaliqest.AsString := StringReplace(vltcgaliqest, '.', ',', []);
      tcgtcgaliqmun.AsString := StringReplace(vltcgaliqmun, '.', ',', []);
      tcgtcgdescricao.AsString := uppercase(vltcgdescricao);
      tcg.Post;

    end;
    showMessage('Arquivo importado com sucess!');
    PnlRodapeGrid.Visible := False;
    self.ActAtualizar.Execute;
  end;

end;

procedure Tfratcg.ActImportarTXTExecute(Sender: TObject);
var
  i: Integer;
  vlVersao: string;
begin
  inherited;
  OpenDialog.Execute;
  if fileexists(OpenDialog.FileName) then
  begin
    PnlRodapeGrid.Visible:=true;
    vlVersao := extractfilename(OpenDialog.FileName);
    vlVersao := copy(vlVersao, 15, 6); // TabelaIBPTaxDF18.1.B.csv

    tcg.Open;
    ACBrIBPTax1.AbrirTabela(OpenDialog.FileName);
    mostra.Max := ACBrIBPTax1.Itens.Count;
    for i := 0 to ACBrIBPTax1.Itens.Count - 1 do
    begin
      // try
      mostra.Position := i;
      Application.ProcessMessages;

      if uqtabela.Locate('tcgncm', ACBrIBPTax1.Itens[i].NCM, []) then
      begin
        consulta.Close;
        consulta.SQL.Text := 'delete from tcg where tcgncm=' + QuotedStr(ACBrIBPTax1.Itens[i].NCM);
        consulta.ExecSQL;
      end;

      tcg.Append;
      tcgtcgncm.AsString := ACBrIBPTax1.Itens[i].NCM;
      tcgtcgex.AsString := ACBrIBPTax1.Itens[i].Excecao;
      tcgtcgtabela.AsInteger := Integer(ACBrIBPTax1.Itens[i].Tabela);
      tcgtcgaliqnac.AsFloat := ACBrIBPTax1.Itens[i].FederalNacional;
      tcgtcgaliqimp.AsFloat := ACBrIBPTax1.Itens[i].FederalImportado;
      tcgtcgaliqest.AsFloat := ACBrIBPTax1.Itens[i].Estadual;
      tcgtcgaliqmun.AsFloat := ACBrIBPTax1.Itens[i].Municipal;
      tcgtcgdescricao.AsString := uppercase(ACBrIBPTax1.Itens[i].Descricao);
      tcgtcgversao.AsString := vlVersao;
      tcg.Post;
      { except
        showMessage('Falha de importação');
        end; }
    end;
     PnlRodapeGrid.Visible:=false;
     showmessage('Atualziação realizada com sucesso!');
  end;
end;

procedure Tfratcg.ActImportarWebExecute(Sender: TObject);
var
  vlNcm: string;
  vlACBrNCM: TACBrNCM;
  i: Integer;
begin

  inherited;

  try
    PnlRodapeGrid.Visible := true;
    uqtabela.DisableControls;
    mostra.Visible := true;
    mostra.Max := uqtabela.RecordCount;
    uqtabela.First;

    while not uqtabela.Eof do
    begin
      mostra.Position := mostra.Position + 1;
      Application.ProcessMessages;

      // ACBrNCMs.NCMS.Count;

      vlNcm := ACBrNCMs.DescricaoNcm(uqtabelatcgncm.AsString);
      if vlNcm <> '' then
      begin
        consulta.Close;
        consulta.SQL.Text := 'update tcg set tcgdescricao=' + QuotedStr(vlNcm) + ' where tcgncm=' + uqtabelatcgncm.AsString;
        consulta.ExecSQL;
      end;

      uqtabela.Next;
    end;
    uqtabela.First;

  finally
    uqtabela.EnableControls;
    PnlRodapeGrid.Visible := False;
  end;
end;

procedure Tfratcg.ActPesquisarGTINExecute(Sender: TObject);
Var
  vfncmgtin: tfncmgtin;
  rg: Integer;
  vlNcm: string;
Begin
  Inherited;
  try
    rg := uqtabela.RecNo;
    vfncmgtin := tfncmgtin.Create(self);

    vfncmgtin.NCM.Connection := self.zcone;
    if vfncmgtin.ShowModal = mrok then
    begin
      vlNcm := vfncmgtin.EdNCM.Text;
      if not uqtabela.Locate('tcgncm', vlNcm, []) then
      begin
        showMessage('NCM não localizado!');
        uqtabela.RecNo := rg;
      end;

    end
    else
    begin
      uqtabela.RecNo := rg;
    end;
  finally
    FreeAndNil(vfncmgtin);
  end;

end;

procedure Tfratcg.edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  query: String;
  filtro: String;
  linha: String;
  i: Integer;
  pala1: String;
  pala2: String;
  pala3: String;
  pala4: String;
  pala5: String;

  vlsqlbase: string;
  vlInicio: Integer;
  vlNomeChave: string;
  vlCampos: String;
  vlTabela: String;
  vlSqlOriginal: string;
Begin
  if edbusca.Text = '' then
  begin
    uqtabela.FilterSQL := '';
    ActAtualizar.Execute;
    if (Key = 38) then
    begin
      if dbglista.Visible then
        self.dbglista.SetFocus;
      self.uqtabela.Prior;
      exit;
    end;

    if (Key = 40) or (Key = 39) then
    begin
      if dbglista.Visible then
        self.dbglista.SetFocus;
      self.uqtabela.Next;
      exit;
    end;
  end
  else
  begin
    if (self.ModoFrame = modoPesquisa) or (self.ModoFrame = modoPesqEdicao) then
    begin

      linha := trim(edbusca.Text);
      filtro := trim(edbusca.Text);
      i := pos(' ', linha) - 1;
      If i > 0 Then
      Begin
        pala1 := copy(linha, 1, i);
        linha := trim(copy(linha, i + 1, Length(linha)));
        i := pos(' ', linha) - 1;
        If i > 0 Then
        Begin
          pala2 := trim(copy(linha, 1, i));
          linha := trim(copy(linha, i + 1, Length(linha)));

          i := pos(' ', linha) - 1;
          If i > 0 Then
          Begin
            pala3 := copy(linha, 1, i);
            linha := trim(copy(linha, i + 1, Length(linha)));

            If i > 0 Then
            Begin
              pala4 := copy(linha, 1, i);
              linha := trim(copy(linha, i + 1, Length(linha)));

              If i > 0 Then
              Begin
                pala5 := copy(linha, 1, i);
                linha := trim(copy(linha, i + 1, Length(linha)));
              End
              Else
              Begin
                pala5 := trim(copy(linha, 1, Length(linha)));
              End;

            End
            Else
            Begin
              pala4 := trim(copy(linha, 1, Length(linha)));
            End;

          End
          Else
          Begin
            pala3 := trim(copy(linha, 1, Length(linha)));
          End;

        End
        Else
        Begin
          pala2 := trim(copy(linha, 1, Length(linha)));

        End;

      End
      Else
      Begin
        filtro := 'lower(' + vordem + ') like ' + chr(39) + '%' + lowercase(linha) + '%' + chr(39);
      End;

      If pala1 <> '' Then
      Begin
        filtro := ' lower(' + vordem + ') like ' + chr(39) + '%' + lowercase(pala1) + '%' + chr(39);
      End;

      If pala2 <> '' Then
      Begin
        filtro := filtro + ' and lower(' + vordem + ') like ' + chr(39) + '%' + lowercase(pala2) + '%' + chr(39);
      End;

      If pala3 <> '' Then
      Begin
        filtro := filtro + ' and lower(' + vordem + ') like ' + chr(39) + '%' + lowercase(pala3) + '%' + chr(39);
      End;

      If pala4 <> '' Then
      Begin
        filtro := filtro + ' and lower(' + vordem + ') like ' + chr(39) + '%' + lowercase(pala4) + '%' + chr(39);
      End;

      If pala5 <> '' Then
      Begin
        filtro := filtro + ' and lower(' + vordem + ') like ' + chr(39) + '%' + lowercase(pala5) + '%' + chr(39);
      End;

      vlsqlbase := lowercase(uqtabela.SQL.Text);

      vlNomeChave := trim(copy(vlsqlbase, pos(' ', vlsqlbase), 50));
      vlNomeChave := trim(copy(vlNomeChave, 1, pos(',', vlNomeChave) - 1));

      vlInicio := pos('from', vlsqlbase);
      vlsqlbase := copy(vlsqlbase, vlInicio, Length(vlsqlbase));

      if pos('order by', vlsqlbase) > 0 then
      begin
        vlInicio := pos('order by', vlsqlbase);
        vlsqlbase := copy(vlsqlbase, 1, vlInicio - 1);
      end;

      if pos('.', vlNomeChave) > 0 then
      begin
        vlTabela := copy(vlNomeChave, 1, pos('.', vlNomeChave) - 1);
        vlNomeChave := copy(vlNomeChave, pos('.', vlNomeChave) + 1);
        if uppercase(trim(vlNomeChave)) = uppercase(trim(vordem)) then
        begin
          vlCampos := vlTabela + '.' + vlNomeChave;
          filtro := StringReplace(filtro, vordem, vlCampos, [rfReplaceAll]);
        end
        else
        begin
          vlCampos := vlTabela + '.' + vlNomeChave + ', ' + vordem;
        end;

      end
      else
        vlCampos := vlTabela + '.' + vlNomeChave + ', ' + vordem;

      if uppercase(trim(vlNomeChave)) <> uppercase(trim(vordem)) then
      begin

        if pos('where', vlsqlbase) > 0 then
          query := 'select distinct ' + vlCampos + ' ' + vlsqlbase + ' ' + 'and ' + filtro + ' order by ' + vlCampos + ' limit 1000'
        else
          query := 'select distinct ' + vlCampos + ' ' + vlsqlbase + ' ' + 'where ' + filtro + ' order by ' + vlCampos + ' limit 1000';

        vlSqlOriginal := uqtabela.SQL.Text;

        if filtro <> '' then
        begin

          if pos(' limit 1000', uqtabela.SQL.Text) = 0 then
            uqtabela.SQL.Text := uqtabela.SQL.Text + ' limit 1000';

          If edbusca.Text <> '' Then
          Begin
            if pos(' limit 1000', uqtabela.SQL.Text) = 0 then
              uqtabela.SQL.Text := uqtabela.SQL.Text + ' limit 1000';
          End
          else
          begin
            uqtabela.SQL.Text := StringReplace(uqtabela.SQL.Text, ' limit 1000', '', [rfReplaceAll, rfIgnoreCase]);
          end;

          uqtabela.FilterSQL := filtro;

        end
        else
        begin

        end;

        inherited;
      end
      else
      begin
        inherited;
      end;
    end
    else
      inherited;

  end;

end;

end.
