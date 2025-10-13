unit ufraaje;

interface

uses

  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Dialogs,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.SysUtils, Vcl.Graphics,
  Vcl.Mask, Vcl.DBCtrls, ufuncoes, System.ImageList, Vcl.ImgList;

type
  Tfraaje = class(Tfrabase)
    listaitm: TDBGrid;
    PlResumoItens: TPanel;
    pgeral: TPanel;
    pdesconto: TPanel;
    pquanti: TPanel;
    pvalor: TPanel;
    ptotal: TPanel;
    itm: TUniQuery;
    itmitmchave: TIntegerField;
    itmmeschave: TIntegerField;
    itmitmitem: TIntegerField;
    itmprocodigo: TIntegerField;
    itmpronome: TStringField;
    itmunisimbolo: TStringField;
    itmitmvalor: TFloatField;
    itmitmquantidade: TFloatField;
    itmitmdesconto: TFloatField;
    itmitmtotal: TFloatField;
    itmcfocfop: TStringField;
    itmitmaliqipi: TFloatField;
    itmitmcusto: TFloatField;
    itmtoecodigo: TIntegerField;
    itmcfocfopdestinacao: TStringField;
    Ditm: TUniDataSource;
    uqtabelameschave: TIntegerField;
    uqtabelamesemissao: TDateField;
    uqtabelatdfidentificacao: TStringField;
    uqtabelamesserie: TStringField;
    uqtabelamesnumero: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelamesvalor: TFloatField;
    uqtabelamesdesconto: TFloatField;
    uqtabelamestotal: TFloatField;
    uqtabelasdeidentificacao: TStringField;
    uqtabelatoeidentificacao: TStringField;
    uqtabelamesregistro: TDateField;
    uqtabelamesprotocolo: TStringField;
    uqtabelasdecodigo: TStringField;
    uqtabelatemcodigo: TIntegerField;
    uqtabelamesdatanfe: TDateField;
    uqtabelatemidentificacao: TStringField;
    uqtabelatdfcodigo: TStringField;
    uqtabelattocodigo: TIntegerField;
    itmitmquanticontada: TFloatField;
    ActConsolidado: TAction;
    ActNaoConcolidado: TAction;
    mnUtilitarios: TMenuItem;
    mnAjustarSaldo: TMenuItem;
    ivd: TUniQuery;
    ivdivdchave: TIntegerField;
    ivdspdchave: TIntegerField;
    ivdprocodigo: TIntegerField;
    ivdpcccodigo: TStringField;
    ivdivdquantidade: TFloatField;
    ivdivdvalor: TFloatField;
    ivdivdtotal: TFloatField;
    ivdivdproprietario: TStringField;
    ivdivddescricao: TStringField;
    ivdetdcodigo: TIntegerField;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    propuncusto: TFloatField;
    ActCorrigirItens: TAction;
    uqtabelamesinclusao: TDateTimeField;
    Recalcularitem1: TMenuItem;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActConsolidadoExecute(Sender: TObject);
    procedure listaitmTitleClick(Column: TColumn);
    procedure listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActNaoConcolidadoExecute(Sender: TObject);
    procedure mnAjustarSaldoClick(Sender: TObject);
    procedure ActCorrigirItensExecute(Sender: TObject);
    procedure Recalcularitem1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraaje: Tfraaje;

  // Início ID do Módulo fraaje
const
  vPlIdMd = '02.04.05.002-01';
  vPlTitMdl = 'Ajustes de Estoque';

  // Fim ID do Módulo fracpr

implementation

{$R *.dfm}

uses ufaje;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraaje := Tfraaje.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraaje := Tfraaje.Create(pCargaFrame);
  try
    fraaje.CriaAcoesDeAcesso;
  finally
    fraaje.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraaje.ActAlterarExecute(Sender: TObject);
begin

  CriaFormulario(Tfaje, self.uqtabelameschave.AsString, inttostr(((Sender as TAction).tag)));
end;

procedure Tfraaje.ActConsolidadoExecute(Sender: TObject);

begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'update pro set proconsolidado=1 where pro.procodigo in (select procodigo from itm,mes where itm.meschave=mes.meschave and mes.meschave='
    + uqtabelameschave.AsString + ')';
  consulta.ExecSQL;
  ShowMessage('Contagem Consolidada! ' + #13 + 'Atualize a lista de Produtos.');
end;

procedure Tfraaje.ActCorrigirItensExecute(Sender: TObject);
var
  vlSaldoAnte: string;
  vlSaldo: Double;
  vlSaldocalc: Double;

  vlToecodigo: Integer;
begin
  inherited;
  uqtabela.First;
  while not uqtabela.eof do
  begin

    try
      itm.First;
      while not itm.eof do
      begin
        consulta.Close;
        consulta.SQL.Text := 'select procodigo from ivd where procodigo=' + itmprocodigo.AsString;
        consulta.Open;

        { if consulta.IsEmpty then
          begin }

        consulta.Close;
        consulta.SQL.Text := 'update itm set itmquantidade=0 where itmchave=' + itmitmchave.AsString;
        consulta.ExecSQL;

        consulta.Close;
        consulta.SQL.Text := 'select CalcSaldoProdutoDispAteExt(' + itmprocodigo.AsString + ', ' +
          QuotedStr(FormatDateTime('yyyy-mm-dd', uqtabelamesemissao.AsFloat)) + ',' +
          QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss', uqtabelamesinclusao.AsFloat)) + ',' + itmitmchave.AsString + ')';
        consulta.Open;
        vlSaldo := consulta.Fields[0].AsFloat;

        // if (itmitmquanticontada.AsFloat-vlSaldo)>0 then

        // if vlSaldo < 0 then
        // vlSaldo := vlSaldo * -1;
        // ShowMessage('Produto: ' + itmprocodigo.AsString + ' saldo anterior: ' + Floattostr(vlSaldo) + #13 + 'contato       : ' + Floattostr(itmitmquanticontada.AsFloat));
        // ShowMessage(itmprocodigo.AsString + ', ' + QuotedStr(FormatDateTime('yyyy-mm-dd', uqtabelamesemissao.AsFloat)) + ',' +
        // QuotedStr(FormatDateTime('yyyy-mm-dd hh:nn:ss', uqtabelamesinclusao.AsFloat)) + ',' + itmitmchave.AsString);

        if (itmitmquanticontada.AsFloat - vlSaldo) > 0 then
        begin
          if vlSaldo > itmitmquanticontada.AsFloat then
          begin

            vlSaldoAnte := Floattostr(itmitmquanticontada.AsFloat - vlSaldo);
          end
          else if vlSaldo < itmitmquanticontada.AsFloat then
          begin

            { if vlSaldo < 0 then
              vlSaldo := vlSaldo * -1; }

            vlSaldoAnte := Floattostr(itmitmquanticontada.AsFloat - vlSaldo);
          end
          else
            vlSaldoAnte := '0';
          consulta.Close;
          consulta.SQL.Text := 'select toecodigo from toe where toecfopsaida=' + chr(39) + '1.000' + chr(39);
          consulta.Open;
          vlToecodigo := consulta.Fields[0].AsInteger;

        end
        else if (itmitmquanticontada.AsFloat - vlSaldo) < 0 then
        begin
          if vlSaldo > itmitmquanticontada.AsFloat then
          begin

            vlSaldoAnte := Floattostr(itmitmquanticontada.AsFloat - vlSaldo);
          end
          else if vlSaldo < itmitmquanticontada.AsFloat then
          begin
            if vlSaldo < 0 then
              vlSaldo := vlSaldo * -1;

            vlSaldoAnte := Floattostr(itmitmquanticontada.AsFloat + vlSaldo);
          end
          else
            vlSaldoAnte := '0';
          consulta.Close;
          consulta.SQL.Text := 'select toecodigo from toe where toecfopsaida=' + chr(39) + '5.000' + chr(39);
          consulta.Open;
          vlToecodigo := consulta.Fields[0].AsInteger;

        end;

        vlSaldocalc := StrtoFloat(vlSaldoAnte);

        if vlSaldocalc < 0 then
          vlSaldocalc := vlSaldocalc * -1;

        vlSaldoAnte := Floattostr(vlSaldocalc);
        vlSaldoAnte := buscatroca(vlSaldoAnte, ',', '.');

        consulta.Close;
        consulta.SQL.Text := 'update itm set toecodigo=' + inttostr(vlToecodigo) + ',  itmquantidade=' + vlSaldoAnte + ' where itmchave=' +
          itmitmchave.AsString;
        consulta.ExecSQL;
        { end; }
        itm.Next;
      end;

    except
      on E: Exception do
      begin
        ShowMessage('Exception class name = ' + E.ClassName);
        ShowMessage('Exception message = ' + E.Message);
      end;

    end;
    uqtabela.Next;
  end;
end;

procedure Tfraaje.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfaje, '', '');
end;

procedure Tfraaje.ActNaoConcolidadoExecute(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'update pro set proconsolidado=0 where pro.procodigo in (select procodigo from itm,mes where itm.meschave=mes.meschave and mes.meschave='
    + uqtabelameschave.AsString + ')';
  consulta.ExecSQL;
  ShowMessage('Desmarcado como Contagem Consolidada! ' + #13 + 'Atualize a lista de Produtos.');
end;

procedure Tfraaje.Carregar;
begin
  inherited;

  CarregarColunas(listaitm);
end;

procedure Tfraaje.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if self.uqtabelameschave.AsString <> '' then
  begin
    itm.Close;
    itm.Params[0].AsInteger := self.uqtabelameschave.AsInteger;
    itm.Open;
  end;

end;

procedure Tfraaje.listaitmDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfraaje.listaitmTitleClick(Column: TColumn);
var
  i: Integer;
  vCampoPrincipal: String;
  vRegistroAtual: String;
  vtitucol: string;
  vnomecol: string;
  vtipocol: TFieldType;
  vpalavra: string;
  vordem: string;
  xordem: Integer;
begin
  vCampoPrincipal := Ditm.DataSet.Fields[0].FieldName;
  vRegistroAtual := Ditm.DataSet.Fields[0].AsString;

  if (Column.FieldName <> 'ccovencimento') and (Column.FieldName <> 'ccoemissao') then
  begin
    if Ditm.DataSet = itm then
      itm.IndexFieldNames := Column.FieldName;

    if Ditm.DataSet is TVirtualTable then
      (Ditm.DataSet as TVirtualTable).IndexFieldNames := Column.FieldName;
  end;

  vtitucol := listaitm.Columns[Column.Index].Title.Caption;
  vnomecol := Column.Field.FieldName;

  if Column.Field.FieldKind = fkData then
    vtipocol := Column.Field.DataType
  else if Column.Field.tag = 999 then
    vtipocol := ftArray;

  if (vtipocol = ftString) then
    vpalavra := self.Ditm.DataSet.FieldByName(vnomecol).AsString
  else
    vpalavra := '';

  for i := 0 to listaitm.Columns.Count - 1 do
  begin
    listaitm.Columns[i].Title.Font.Color := clBlack;
    listaitm.Columns[i].Title.Font.Style := [];
  end;

  listaitm.Columns[Column.Index].Title.Font.Color := clRed;
  listaitm.Columns[Column.Index].Title.Font.Style := [fsBold];

  // vordem := Self.DSTabela.DataSet.Fields[Column.Index].FieldName;
  vordem := Column.Field.FieldName;

  listaitm.SelectedIndex := Column.Index;
  xordem := Column.Index;

  if Ditm.DataSet.Active then
    Ditm.DataSet.Locate(vCampoPrincipal, vRegistroAtual, []);

end;

procedure Tfraaje.mnAjustarSaldoClick(Sender: TObject);
begin

  inherited;
  ivd.Open;
  pro.Open;
  pro.First;
  while not pro.eof do
  begin

    if ivd.Locate('procodigo', proprocodigo.AsInteger, []) then
      ivd.Edit
    else
      ivd.Append;

    ivdspdchave.AsInteger := 5;
    ivdprocodigo.AsInteger := proprocodigo.AsInteger;
    ivdpcccodigo.AsString := '1.01.03.01.01';
    ivdivdquantidade.AsFloat := 0;
    ivdivdvalor.AsFloat := 0;
    ivdivdtotal.AsFloat := 0;
    ivdivdproprietario.AsString := '1';
    ivdivddescricao.AsString := '';
    ivdetdcodigo.AsInteger := 249;

    ivd.Post;

    pro.Next;
  end;

  uqtabela.First;
  while not uqtabela.eof do
  begin
    itm.First;
    while not itm.eof do
    begin

      if ivd.Locate('procodigo', itmprocodigo.AsInteger, []) then
        ivd.Edit
      else
        ivd.Append;

      ivdspdchave.AsInteger := 5;
      ivdprocodigo.AsInteger := proprocodigo.AsInteger;
      ivdpcccodigo.AsString := '1.01.03.01.01';
      ivdivdquantidade.AsFloat := itmitmquanticontada.AsFloat;
      pro.Locate('procodigo', itmprocodigo.AsInteger, []);

      ivdivdvalor.AsFloat := propuncusto.AsFloat;

      ivdivdtotal.AsFloat := propuncusto.AsFloat * ivdivdquantidade.AsFloat;

      ivdivdproprietario.AsString := '1';
      ivdivddescricao.AsString := '';
      ivdetdcodigo.AsInteger := 249;

      ivd.Post;

      itm.Next;
    end;

    uqtabela.Next;
  end;
end;

procedure Tfraaje.Recalcularitem1Click(Sender: TObject);
var
  vlSaldoDoDia: Currency;
  vlQtdContada: Currency;
  vlitmQuantidade: Currency;
  vlToecodigo: Integer;
  vlnegativo: Double;
begin
  // 50 +
  // 51 -
  inherited;
  uqtabela.First;
  while not uqtabela.eof do
  begin
    itm.First;
    while not itm.eof do
    begin

      vlnegativo := 0;
      vlSaldoDoDia := 0;
      vlQtdContada := 0;
      vlitmQuantidade := 0;
      vlToecodigo := 0;

      if itmprocodigo.AsString ='12160' then
      showmessage('');


      consulta.Close;
      consulta.SQL.Text := 'select CalcSaldoProdutoDispAteAju(' + itmprocodigo.AsString + ',' + QuotedStr(ajustadata(uqtabelamesregistro.AsString)) + ',' +
        itmitmchave.AsString + ')';
      consulta.Open;

      vlSaldoDoDia := consulta.Fields[0].Ascurrency;
      if vlSaldoDoDia <= 0 then
      begin
        vlSaldoDoDia := vlSaldoDoDia * -1;
        vlnegativo := 1;
      end;

      vlQtdContada := itmitmquanticontada.Ascurrency;
      vlitmQuantidade := itmitmquantidade.Ascurrency;

      vlToecodigo := itmtoecodigo.AsInteger;

      if vlnegativo = 1 then
      begin
        vlitmQuantidade := vlSaldoDoDia+vlQtdContada  ; // vlQtdContada-(vlSaldoDoDia+vlnegativo)
        vlToecodigo := 51;
      end
      else
      begin
        vlitmQuantidade :=vlSaldoDoDia- vlQtdContada  ; // vlQtdContada+(vlSaldoDoDia+vlnegativo);
        vlToecodigo := 50;
      end;

      if vlSaldoDoDia > vlQtdContada then
      begin
      if vlnegativo=1 then
        vlToecodigo := 50
       else
        vlToecodigo := 51
      end
      else
        vlToecodigo := 50;

      if vlQtdContada = 0 then
      begin
        vlitmQuantidade := vlSaldoDoDia;
      end;
      if vlitmQuantidade < 0 then
        vlitmQuantidade := vlitmQuantidade * -1;

      consulta.Close;
      consulta.SQL.Text := 'update itm set toecodigo=' + inttostr(vlToecodigo) + ', itmquantidade=' + buscatroca(format('%12.4f', [vlitmQuantidade]), ',', '.')
        + ' where itmchave=' + itmitmchave.AsString;
      consulta.ExecSQL;

      itm.Next;
    end;

    uqtabela.Next;

  end;
end;

end.
