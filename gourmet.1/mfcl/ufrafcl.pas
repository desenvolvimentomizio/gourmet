unit ufrafcl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase, ufuncoes, ClipBrd;

type
  Tfrafcl = class(Tfrabase)
    uqtabelafclcodigo: TIntegerField;
    uqtabelafclidentificacao: TStringField;
    uqtabelafclvalorbase: TFloatField;
    uqtabelafcldatainicial: TDateField;
    uqtabelafcldatafinal: TDateField;
    uqtabelaevfcodigo: TIntegerField;
    uqtabelaevfidentificacao: TStringField;
    uqtabelaphgcodigo: TIntegerField;
    uqtabelaphgidentificacao: TStringField;
    uqtabelatthidentificacao: TStringField;
    uqtabelafclcor: TStringField;
    uqtabelatloidentificacao: TStringField;
    mCopiarCor: TMenuItem;
    mColarCor: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    afc: TUniQuery;
    afcafcchave: TIntegerField;
    afcfclcodigo: TIntegerField;
    afcafcdatainicial: TDateField;
    afcafcdatafinal: TDateField;
    afcafcvalor: TFloatField;
    afcafcregistro: TDateTimeField;
    gbafc: TGroupBox;
    DBGridafc: TDBGrid;
    Dafc: TDataSource;
    ActAlterarValor: TAction;
    uqtabelatthcodigo: TIntegerField;
    uqtabelapagadsr: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure mCopiarCorClick(Sender: TObject);
    procedure mColarCorClick(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActAlterarValorExecute(Sender: TObject);
    procedure DBGridafcDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frafcl: Tfrafcl;

  // Início ID do Módulo frafcl
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Funções do Colaboradores';

  // Fim ID do Módulo frafcl

implementation

uses
  uffcl, ufafc;

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frafcl := Tfrafcl.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frafcl := Tfrafcl.Create(pCargaFrame);
  try
    frafcl.CriaAcoesDeAcesso;
  finally
    frafcl.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrafcl.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffcl, uqtabelafclcodigo.AsString, '');
end;

procedure Tfrafcl.ActAlterarValorExecute(Sender: TObject);
begin
  inherited;
  if uqtabelatthcodigo.AsInteger=14 then
  begin
  CriaFormulario(Tfafc, '' ,uqtabelafclcodigo.AsString);
  self.ActAtualizar.Execute;
  end
  else
  begin
    Showmessage('Função não é baseada em valor hora!'+#13+#13+'Por favor altere o valor na lista de Alocação de Função.');

  end;
end;

procedure Tfrafcl.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tffcl, '', '');
end;

procedure Tfrafcl.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  I: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
    if self.uqtabelafclcor.AsString <> '' then
      DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabelafclcor.AsString);

  end
  Else
  begin

    DBGLista.Canvas.Brush.Color := clwhite;

    if self.uqtabelafclcor.AsString <> '' then
      DBGLista.Canvas.Brush.Color := StringToColor(self.uqtabelafclcor.AsString);
  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
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
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;

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

end;

procedure Tfrafcl.DBGridafcDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 GridZebrado(Sender, Rect,  DataCol, Column, State);
end;

procedure Tfrafcl.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if uqtabelafclcodigo.AsString <> '' then
    begin
      afc.Close;
      afc.ParamByName('fclcodigo').AsInteger := uqtabelafclcodigo.AsInteger;
      afc.Open;
      if afc.IsEmpty then
        gbafc.Visible := false
      else
        gbafc.Visible := true;
    end;
end;

procedure Tfrafcl.mColarCorClick(Sender: TObject);
var
  vlCor: Tcolor;
begin
  inherited;
  try
    vlCor := StringToColor(Clipboard.AsText);
    consulta.Close;
    consulta.SQL.Text := 'update fcl set fclcor=' + QuotedStr(Clipboard.AsText) + ' where fclcodigo=' + uqtabelafclcodigo.AsString;
    consulta.ExecSQL;
    ActAtualizar.Execute;
  except

  end;

end;

procedure Tfrafcl.mCopiarCorClick(Sender: TObject);
begin
  inherited;
  Clipboard.AsText := uqtabelafclcor.AsString;
end;

end.
