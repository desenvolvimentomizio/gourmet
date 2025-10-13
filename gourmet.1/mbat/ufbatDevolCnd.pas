unit ufbatDevolCnd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess, Uni,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  uBuscaProduto, ufuncoes, Vcl.Mask, Vcl.DBCtrls;

type
  TfbatDevolCnd = class(Tfrmbase)
    DBGListaItens: TDBGrid;
    plbotoesitens: TPanel;
    Panel1: TPanel;
    cdBarra: TEdit;
    lito: TUniQuery;
    litoitoitem: TIntegerField;
    litoprocodigo: TIntegerField;
    litopronome: TStringField;
    litoitoquantidade: TFloatField;
    litoitovalor: TFloatField;
    litoitototal: TFloatField;
    litoitodesconto: TFloatField;
    litoitosaldo: TFloatField;
    litoprosaldodisp: TFloatField;
    litoitochave: TIntegerField;
    litounisimbolo: TStringField;
    litounicodigo: TIntegerField;
    litoorcchave: TIntegerField;
    litotdecodigo: TIntegerField;
    litoproreferencia: TStringField;
    litoitoproservico: TStringField;
    litoitoinfadprod: TStringField;
    litotpocodigo: TIntegerField;
    litoitoprocomple: TStringField;
    Dlito: TUniDataSource;
    litoitoquanticondi: TFloatField;
    litoitoquantidevolcondi: TFloatField;
    registroorcchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroetdidentificacao: TStringField;
    registroorcdataabert: TDateField;
    registroclbcodigo: TIntegerField;
    registroclbidentificacao: TStringField;
    registroorcnome: TStringField;
    registroorctelefone: TStringField;
    registroorcendereco: TStringField;
    registroorcdescrpagto: TStringField;
    registroorcgeral: TFloatField;
    registroorcdesconto: TFloatField;
    registroorctotal: TFloatField;
    registrostoidentificacao: TStringField;
    registropuoidentificacao: TStringField;
    registroedrcodigo: TIntegerField;
    registrostocodigo: TIntegerField;
    Panel2: TPanel;
    Label1: TLabel;
    orcchave: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    etdcodigo: TDBEdit;
    orcdataabert: TDBEdit;
    clbidentificacao: TDBEdit;
    etdidentificacao: TDBEdit;
    ito: TUniQuery;
    itoitochave: TIntegerField;
    itoorcchave: TIntegerField;
    itoprocodigo: TIntegerField;
    itoitoquantidade: TFloatField;
    itoitoquanticondi: TFloatField;
    itoitoquantidevolcondi: TFloatField;
    itostocodigo: TIntegerField;
    orc: TUniQuery;
    orcorcchave: TIntegerField;
    orcorcgeralav: TFloatField;
    orcorcgeralap: TFloatField;
    orcorcdescontoav: TFloatField;
    orcorcdescontoap: TFloatField;
    orcorctotalav: TFloatField;
    orcorctotalap: TFloatField;
    procedure cdBarraKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBGListaItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    procedure Recalculatotal;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbatDevolCnd: TfbatDevolCnd;

implementation

{$R *.dfm}

procedure TfbatDevolCnd.cdBarraKeyPress(Sender: TObject; var Key: Char);
var
  vProduto: Integer;
  vCBarra: String;
  vEmbalagem: Integer;
begin
  vCBarra := cdBarra.Text;

  If (Key = #13) Then
  Begin

    Try
      vProduto := BuscaProdutoBarra(Application, zcone, vCBarra, vEmbalagem);

      If vProduto > -1 Then
      Begin
        Key := #0;

        If not(lito.Locate('procodigo', vProduto, [])) Then
        begin
          Application.MessageBox(PChar('Produto não localizado!'), 'Atenção', MB_ICONWARNING + MB_OK);
          cdBarra.Text := '';
          Exit;
        end;

        ito.Locate('procodigo', vProduto, []);
        ito.Edit;
        itoitoquantidevolcondi.AsInteger := itoitoquantidevolcondi.AsInteger + 1;
        itoitoquantidade.AsFloat := itoitoquanticondi.AsFloat - itoitoquantidevolcondi.AsFloat;

        if itoitoquantidade.AsFloat = 0 then
          itostocodigo.AsInteger := stoRetornado;

        ito.Post;

        Recalculatotal;

        lito.Refresh;

        cdBarra.Text := '';
      End;

      If (Dlito.DataSet.RecordCount = 0) Then
      Begin
        Consulta.Close;
        Consulta.SQL.Text := 'update orc set stocodigo=' + IntToStr(stoRetornado) + ' where orcchave=' + registroorcchave.AsString;
        Consulta.ExecSql;

        MessageDlg('Condicional devolvido com sucesso!!', mtInformation, [mbOK], 0);
        Close;
      End;

    Except
      on e: Exception do
      begin
        ShowMessage(e.Message);
        cdBarra.Text := '';
        Application.MessageBox(PChar('Produto não localizado!'), 'Atenção', MB_ICONWARNING + MB_OK);
      end;
    End;
  End;
end;

procedure TfbatDevolCnd.DBGListaItensDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure TfbatDevolCnd.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  salvacolunas(DBGListaItens);
end;

procedure TfbatDevolCnd.FormShow(Sender: TObject);
var
  I: Integer;
begin
  inherited;

  for I := 0 to ComponentCount - 1 do
    if (Components[I] is TDBEdit) then
      TDBEdit(Components[I]).Color := PEG_COR_VALORREQUERIDO;

  cdBarra.Text := '';

  carregacolunas(DBGListaItens);

  lito.Close;
  lito.Params[0].AsInteger := registroorcchave.AsInteger;
  lito.Open;

  ito.Close;
  ito.Params[0].AsInteger := registroorcchave.AsInteger;
  ito.Open;

  orc.Close;
  orc.Params[0].AsInteger := registroorcchave.AsInteger;
  orc.Open;
end;

Procedure TfbatDevolCnd.Recalculatotal;
var
  vlChaveIto: Integer;
  vlBruto: double;
  vlDesconto: double;
  vlLiquido: double;
Begin

  vlChaveIto := litoitochave.AsInteger;

  ito.Refresh;

  If (ito.Active) Then
  Begin

    Consulta.Close;
    Consulta.SQL.Clear;
    Consulta.SQL.Add('update ito, pro, pun set ');
    Consulta.SQL.Add('itovalorav=IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav), ');
    Consulta.SQL.Add('itototalav=IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav)*itoquantidade, ');
    Consulta.SQL.Add('itosaldoav=(IF(punprecoav>0 and itovalorav=0,punprecoav,itovalorav)*itoquantidade)-itodescontoav, ');
    Consulta.SQL.Add('itovalorap=IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap), ');
    Consulta.SQL.Add('itototalap=IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap)*itoquantidade, ');
    Consulta.SQL.Add('itosaldoap=(IF(punprecoap>0 and itovalorap=0,punprecoap,itovalorap)*itoquantidade)-itodescontoap ');
    Consulta.SQL.Add('where pro.procodigo=ito.procodigo and pun.procodigo=pro.procodigo and pun.unicodigo=ito.unicodigo and orcchave=' +
      registroorcchave.AsString);
    Consulta.ExecSql;

    Consulta.Close;
    Consulta.SQL.Clear;
    Consulta.SQL.Add('SELECT SUM(itototalav), SUM(itodescontoav), SUM(itototalap), SUM(itodescontoap), SUM(itoquantidade) ');
    Consulta.SQL.Add('FROM ito WHERE ito.stocodigo IN (1, 2) AND orcchave = ' + registroorcchave.AsString);
    Consulta.Open;

    If (orc.State <> dsEdit) Then
      orc.Edit;

    orcorcgeralav.AsFloat := Consulta.Fields[0].AsFloat;
    orcorcdescontoav.AsFloat := Consulta.Fields[1].AsFloat;

    orcorcgeralap.AsFloat := Consulta.Fields[2].AsFloat;
    orcorcdescontoap.AsFloat := Consulta.Fields[3].AsFloat;

    orcorctotalav.AsFloat := orcorcgeralav.AsFloat - orcorcdescontoav.AsFloat;
    orcorctotalap.AsFloat := orcorcgeralap.AsFloat - orcorcdescontoap.AsFloat;

    orc.Post;

    registro.Refresh;

    Consulta.Close;

    if lito.Active then
    begin
      lito.Refresh;
      lito.Locate('itochave', vlChaveIto, []);
    end;
  End;

End;

end.
