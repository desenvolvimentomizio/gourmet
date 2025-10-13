unit ulentregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Data.DB,
  ufuncoes, frxClass, frxDACComponents, frxUniDACComponents;

type
  Tlentregadores = class(TForm)
    listaOrcs: TDBGrid;
    plBotoes: TPanel;
    btConfirma: TButton;
    btCancela: TButton;
    Dclb: TDataSource;
    btRelatorioSimples: TButton;
    btRelatorioDetalhado: TButton;
    frxUniDACComponents: TfrxUniDACComponents;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure btRelatorioSimplesClick(Sender: TObject);
    procedure btRelatorioDetalhadoClick(Sender: TObject);
    procedure listaOrcsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    vpTipoLista: Integer;
  end;

var
  lentregadores: Tlentregadores;

implementation



uses
  uFPrinciSai;
type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);
  TCellGrid = class(TCustomGrid);

{$R *.dfm}

procedure Tlentregadores.btCancelaClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tlentregadores.btConfirmaClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tlentregadores.btRelatorioDetalhadoClick(Sender: TObject);
var
  vlNomeArq: string;
  BlobField: TBlobField;
begin

  FprinciSai.consulta.close;
  FprinciSai.consulta.SQL.Text := 'select relarquivo from rel where relcodigo=' + chr(39) + FprinciSai.cfgcfgmgourelentrecomple.AsString + chr(39);
  FprinciSai.consulta.Open;

  vlNomeArq := ExtractFilePath(application.ExeName) + 'Relat\relatorioentdetalhado.fr3';

  BlobField := FprinciSai.consulta.Fields[0] as TBlobField;
  BlobField.SaveToFile(vlNomeArq);

  if not FileExists(vlNomeArq) then
  begin
    showmessage('Arquivo nao localizado: ' + vlNomeArq);
    Exit;
  end;

  FprinciSai.relatorio.LoadFromFile(vlNomeArq);

  FprinciSai.relatorio.Variables['cznchave'] := QuotedStr(FprinciSai.vpCznChave);
  FprinciSai.relatorio.Variables['etdcodigoent'] := QuotedStr(Dclb.DataSet.FieldByName('etdcodigo').AsString);


  FprinciSai.relatorio.PrepareReport(true);
  FprinciSai.relatorio.PrintOptions.ShowDialog := false;
  FprinciSai.relatorio.ShowProgress := false;
  FprinciSai.relatorio.ShowReport;

end;

procedure Tlentregadores.btRelatorioSimplesClick(Sender: TObject);
var
  vlNomeArq: string;
  BlobField: TBlobField;
begin

  FprinciSai.consulta.close;
  FprinciSai.consulta.SQL.Text := 'select relarquivo from rel where relcodigo=' + chr(39) + FprinciSai.cfgcfgmgourelentreresumido.AsString + chr(39);
  FprinciSai.consulta.Open;

  vlNomeArq := ExtractFilePath(application.ExeName) + 'Relat\relatorioentsimples.fr3';

  BlobField := FprinciSai.consulta.Fields[0] as TBlobField;
  BlobField.SaveToFile(vlNomeArq);

  if not FileExists(vlNomeArq) then
  begin
    showmessage('Arquivo nao localizado: ' + vlNomeArq);
    Exit;
  end;

  FprinciSai.relatorio.LoadFromFile(vlNomeArq);

  FprinciSai.relatorio.Variables['cznchave'] := QuotedStr(FprinciSai.vpCznChave);
  FprinciSai.relatorio.Variables['etdcodigoent'] := QuotedStr(Dclb.DataSet.FieldByName('etdcodigo').AsString);

  FprinciSai.relatorio.PrepareReport(true);
  FprinciSai.relatorio.PrintOptions.ShowDialog := false;
  FprinciSai.relatorio.ShowProgress := false;
  FprinciSai.relatorio.ShowReport;

end;

procedure Tlentregadores.listaOrcsDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin

  fixRect := Rect;

  If Odd(Dclb.DataSet.RecNo) Then
    listaOrcs.Canvas.Brush.Color := PEG_COR_BASE
  Else
    listaOrcs.Canvas.Brush.Color := CLWHITE;

  { if Dclb.DataSet.FieldByName('qtdent').asstring<>'0' then
      listaOrcs.Canvas.Font.Color:=clblack
      else
      listaOrcs.Canvas.Font.Color:=clsilver;}



  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(fixRect);
      Font.Color := clWhite;
    End;

  { Get active record within grids TDataLink. The active record will be
    the current record in the dataset. Check against Row that we are
    trying to Draw, -1 to offset the column headings within grid. }
  with TFriendly(listaOrcs) do

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        Brush.Color := PEG_COR_SELCGRID; { set grids canvas to win highlight colour }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State); { now redraw the cell, but highlighted }
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);


end;

end.
