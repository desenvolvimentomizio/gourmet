unit ufratoe;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Vcl.StdCtrls, Vcl.DBCtrls, VirtualTable,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Graphics,
  System.SysUtils, uPegaBase, Vcl.Mask, ufuncoes, Vcl.Dialogs, 
  System.ImageList, Vcl.ImgList, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfratoe = class(Tfrabase)
    Dtoo: tunidatasource;
    too: tuniquery;
    tootoochave: TIntegerField;
    toocfocfop: TStringField;
    tootoecodigo: TIntegerField;
    toocfoidentificacao: TStringField;
    uqtabelatoecodigo: TIntegerField;
    uqtabelatoeidentificacao: TStringField;
    uqtabelatoecfopsaida: TStringField;
    uqtabelatoeorigem: TStringField;
    uqtabelatoedescricao: TStringField;
    uqtabelattoidentificacao: TStringField;
    toedescricao: TDBMemo;
    uqtabelattocodigo: TIntegerField;
    uqtabelatmecodigo: TIntegerField;
    uqtabelattmcodigo: TIntegerField;
    uqtabelattecodigo: TIntegerField;
    uqtabelattmidentificacao: TStringField;
    uqtabelatteidentificacao: TStringField;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    uqtabelatoeativo: TStringField;
    uqtabelasenidentificacao: TStringField;
    ActTodos: TAction;
    uqtabelatmeidentificacao: TStringField;
    plMensagem: TPanel;
    uqtabelacstcodigo: TStringField;
    uqtabelacsicodigo: TStringField;
    uqtabelacspcodigo: TStringField;
    uqtabelacsfcodigo: TStringField;
    uqtabelacfgpercentualpis: TFloatField;
    uqtabelacfgpercentualcofins: TFloatField;
    uqtabelacstnormal: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActTodosExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
  private
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  fratoe: Tfratoe;

  // Início ID do Módulo fratoe
const
  vPlIdMd = '02.04.11.001-01';
  vPlTitMdl = 'Operações de Estoque';

  // Fim ID do Módulo fratoe

implementation

{$R *.dfm}

uses uftoe;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratoe := Tfratoe.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratoe := Tfratoe.Create(pCargaFrame);
  try
    fratoe.CriaAcoesDeAcesso;
  finally
    fratoe.Free;
  end;
end;

exports formuFrame, defineacesso;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

procedure Tfratoe.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tftoe, self.uqtabelatoecodigo.AsString, '');
end;

procedure Tfratoe.ActAtualizarExecute(Sender: TObject);
begin
  if ActTodos.Checked then
  begin
    uqtabela.Filter := '';
    uqtabela.Filtered := False;
    ActTodos.Checked := False;
  end
  else
  begin
    if uqtabela.Filter <> '' then
    begin
      if uqtabela.Filter <> '' then
        uqtabela.Filter := uqtabela.Filter + ' AND toeativo = ''1'''
      else
        uqtabela.Filter := 'toeativo = ''1''';
      uqtabela.Filtered := True;

    end
    else
    begin
      uqtabela.Filter := 'toeativo = ''1''';
      uqtabela.Filtered := True;
      ActTodos.Checked := False;
    end;
  end;

  inherited;

end;

procedure Tfratoe.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tftoe, '', '');
end;

procedure Tfratoe.ActTodosExecute(Sender: TObject);
begin
  inherited;
  ActTodos.Checked := True;
  ActAtualizar.Execute;
end;

procedure Tfratoe.Carregar;
begin
  if FormaFrame = ffFormu then
  begin
    if TxtFiltro <> '' then
      TxtFiltro := Trim(TxtFiltro + ' AND toeativo = ''1''')
    else
      TxtFiltro := Trim('toeativo = ''1''');

    uqtabela.Filter := TxtFiltro;
    uqtabela.Filtered := True;
  end;

  inherited;

end;

procedure Tfratoe.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;
begin

  fixRect := Rect;

  If Odd(DStabela.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  if uqtabelatmecodigo.asinteger = 1 then
  begin
    DBGLista.Canvas.Font.Color := clred;
    DBGLista.Canvas.Font.Style := [fsbold];

  end
  else
  begin
    DBGLista.Canvas.Font.Color := clblack;
    DBGLista.Canvas.Font.Style := [];

  end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;

  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

  if Column.FieldName = 'toeativo' then
  begin
    // Desenha um tmpckbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    tmpck := 0;
    if uqtabelatoeativo.AsString = '1' then
      tmpck := DFCS_CHECKED
    else
      tmpck := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do tmpckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or tmpck);
  end;
end;

procedure Tfratoe.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
 if uqtabelatmecodigo.asinteger = 1 then
    plMensagem.Visible := True
  else
    plMensagem.Visible := False;
end;

end.
