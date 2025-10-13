unit ufsrvfaturamento;

interface

uses
  Winapi.Windows, Vcl.Forms, ufsrvsimples, DBAccess, Uni, Vcl.Dialogs,
  Vcl.ImgList, Vcl.Controls, PngImageList, ACBrBase, ACBrValidador,
  System.Classes, System.Actions, Vcl.ActnList, Vcl.Menus, Data.DB, MemDS,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls,uPegaBase,
  Vcl.ComCtrls, Vcl.Mask, System.SysUtils, uFuncoes, VirtualTable, System.ImageList;

type
  Tfsrvfaturamento = class(Tfsrvsimples)
    cfgcfgdtinictb: TDateField;
    dfa: tuniquery;
    dfadfachave: TIntegerField;
    dfameschave: TIntegerField;
    dfadfameschave: TIntegerField;
    cfgcfgdatapadrao: TDateField;
    procedure bvalidarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ActAFaturarExecute(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsrvfaturamento: Tfsrvfaturamento;

  // Início ID do Módulo frasrv
const
  vPlIdMd = '02.04.09.001-05';

  // Fim ID do Módulo frasrv

implementation

{$R *.dfm}

procedure Tfsrvfaturamento.ActAFaturarExecute(Sender: TObject);
var
  vch: string;
  i: Integer;
begin
  inherited;

  If registro.State <> dsBrowse Then
    registro.Post;

  dfa.Close;
  dfa.Params[0].AsInteger := Self.meschave.Field.AsInteger;
  dfa.Open;

  vch := '';
  vch := MostraLista('mfat', Self.meschave.Field.AsString);

  if vch <> '' then
  begin

    dfa.Close;
    dfa.Filter := 'tdfcodigo <> ''RF''';
    dfa.Filtered := True;
    dfa.Params[0].AsInteger := Self.meschave.Field.AsInteger;
    dfa.Open;

    dfa.First;
    while not dfa.Eof do
    begin

      itmfat.Close;
      itmfat.Params[0].AsString := Self.dfadfameschave.AsString;
      itmfat.Open;

      itmref.Close;
      itmfat.Params[0].AsString := Self.dfadfameschave.AsString;
      itmref.Open;

      while not itmfat.Eof do
      begin
        itmref.Append;
        itmrefmeschave.AsInteger := Self.meschave.Field.AsInteger;

        for i := 3 to itmfat.FieldCount - 1 do
          itmref.FieldByName(itmref.Fields[i].FieldName).AsString := itmfat.FieldByName(itmref.Fields[i].FieldName).AsString;

        (* Gabriel - 24/04/2014 - Removido para atender Sorrigas - Análisar real necessidade desse trecho *)
        (* itmreftoecodigo.AsInteger := registrotoecodigo.AsInteger;

          toe.Locate('toecodigo', registrotoecodigo.AsInteger, []);
          itmrefcfocfop.Asstring := toetoecfopsaida.Asstring;
          itmrefcfocfopdestinacao.Asstring := toetoecfopsaida.Asstring; *)

        itmref.Post;

        itmfat.Next;
      end;

      consulta.Close;
      consulta.SQL.Text := 'update mes set tdfcodigo=' + QuotedStr(tdfRefaturado) + ' where meschave=' + Self.dfadfameschave.AsString;
      consulta.ExecSQL;

      dfa.Next;
    end;

    dfa.Filtered := False;
    dfa.Refresh;

    itm.Refresh;

    recalculatotais;
  end;

  listaitens.SetFocus;

end;

procedure Tfsrvfaturamento.bcancelaClick(Sender: TObject);
begin
  inherited;

  // Verifica se usuário realmente cancelou o registro
  // e retorna situação dos documentos importados como "AF - A Faturar" novamente.
  if (ModalResult = mrCancel) and (dfa.Active) then
  begin
    dfa.First;

    while not dfa.Eof do
    begin
      consulta.Close;
      consulta.SQL.Text := 'UPDATE mes m SET m.tdfcodigo = ''' + tdfMovimentoAFaturar + ''' WHERE m.meschave = :meschave;';
      consulta.Params[0].AsInteger := dfadfameschave.AsInteger;
      consulta.ExecSQL;

      dfa.Next;
    end;
  end;
end;


procedure Tfsrvfaturamento.bconfirmaClick(Sender: TObject);
var
  vRetLote: String;
begin
  inherited;

  if registro.State = dsBrowse then
    registro.Edit;

  registromesprodutos.AsCurrency := vpTotProdutos;
  registromesservicos.AsCurrency := vpTotServiços;
  registro.Post;

  if ModalResult = mrOk then
  begin
    vRetLote := RegistraLote;
    if vRetLote = '' then
    begin
      ModalResult := mrNone;
      Exit;
    end;

    (* Identifica se houve parte de pagamento a prazo *)
    consulta.Close;
    consulta.SQL.Text := 'SELECT rfm.meschave FROM rfm, mfi, mlt, dtl ';
    consulta.SQL.Add('WHERE mfi.rfichave = rfm.rfichave ');
    consulta.SQL.Add('AND mfi.mfichave = mlt.mfichave ');
    consulta.SQL.Add('AND mlt.ltechave = dtl.ltechave ');
    consulta.SQL.Add('AND dtl.mdacodigo = 7 ');
    consulta.SQL.Add('AND rfm.meschave = ' + Self.meschave.Field.AsString);
    consulta.Open;

    if consulta.IsEmpty then
      Exit;

    consulta.Close;
    consulta.SQL.Text := 'UPDATE mes SET tfpcodigo=' + IntToStr(tfpAPrazo) + ' WHERE meschave=' + Self.meschave.Field.AsString;
    consulta.ExecSQL;
  end;
end;

procedure Tfsrvfaturamento.bvalidarClick(Sender: TObject);
begin
  PlDetalhe.Visible := True;
  inherited;

end;

procedure Tfsrvfaturamento.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  Self.registromesemissao.AsFloat := Self.cfgcfgdatapadrao.AsFloat;
  Self.registromesregistro.AsFloat := Self.cfgcfgdatapadrao.AsFloat;
  mesemissao.tabstop := False;
  mesemissao.Color := PEG_COR_VALORPADRAO;
  mesemissao.readonly := True;
  tdfcodigo.readonly := True;
  tdfcodigo.tabstop := False;
  tdfcodigo.Color := PEG_COR_VALORPADRAO;
  PlDetalhe.Visible := False;
end;

end.
