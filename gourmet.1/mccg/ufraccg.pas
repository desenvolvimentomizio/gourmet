unit ufraccg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Vcl.StdCtrls, VirtualTable, Data.DB,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.ComCtrls, Vcl.Dialogs, Vcl.Graphics,
  System.SysUtils, uPegaBase, ufuncoes, Vcl.Mask, Vcl.DBCtrls, System.ImageList,
  Vcl.ImgList,  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfraccg = class(Tfrabase)
    uqtabelaccgcodigo: TIntegerField;
    uqtabelaccgidentificacao: TStringField;
    uqtabelaccgestrutural: TStringField;
    ActGrupo: TAction;
    Splitter1: TSplitter;
    gcc: TUniQuery;
    uqtabelaseacodigo: TIntegerField;
    gccgcccodigo: TIntegerField;
    gccgccmascara: TStringField;
    gccgccidentificacao: TStringField;
    uqtabelagccidentificacao: TStringField;
    lbEstrutural: TLabel;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActGrupoExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraccg: Tfraccg;

  // Início ID do Módulo fracgg
const
  vPlIdMd = '01.10.16.002-01';
  vPlTitMdl = 'Classificação Financeira';

  // Fim ID do Módulo fracgg

implementation

{$R *.dfm}

uses ufccg, ufgcc;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraccg := Tfraccg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraccg := Tfraccg.Create(pCargaFrame);
  try
    fraccg.CriaAcoesDeAcesso;
  finally
    fraccg.Free;
  end;
end;

exports formuFrame, defineacesso;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

procedure Tfraccg.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfccg, uqtabelaccgcodigo.AsString, '');
end;

procedure Tfraccg.ActExcluirExecute(Sender: TObject);
begin

  consulta.Close;
  consulta.SQL.Text := 'select count(ccgcodigo) ccgcodigo from mcg where ccgcodigo=' + uqtabelaccgcodigo.AsString;
  consulta.Open;

  if consulta.FieldByName('ccgcodigo').AsInteger > 0 then
  begin
    Showmessage('Esta conta esta em uso, não pode ser excluida!');
    exit;
  end
  else
  begin
    inherited;
  end;

end;

procedure Tfraccg.ActGrupoExecute(Sender: TObject);
begin
  CriaFormulario(Tfgcc, '', '');
end;

procedure Tfraccg.ActIncluirExecute(Sender: TObject);
var
  Node: TTreeNode;
  texto: string;
  vlUltNume: string;
  mascara: string;
  vlMasc: string;
  vlPai: string;

begin

  inherited;
  mascara := '000000000000';

  consulta.Close;
  consulta.SQL.Text := 'select gccmascara from gcc where gcccodigo=' + copy(uqtabelaccgestrutural.AsString, 1, 1);
  consulta.Open;

  vlMasc := consulta.fields[0].AsString;
  vlPai := lbEstrutural.Caption;

  if length(vlMasc) = length(uqtabelaccgestrutural.AsString) then
  begin
    Showmessage('Não é possivel incluir Sub-Conta. máscara do Grupo não permite!');
    exit;
  end;

  texto := copy(vlMasc, length(uqtabelaccgestrutural.AsString) + 1, 50);
  if pos('.', texto) > 0 then
  begin
    if pos('.', texto) = 1 then
    begin
      texto := copy(texto, 2, length(texto));
      if pos('.', texto) > 0 then
      begin
        texto := copy(texto, 1, pos('.', texto) - 1);
      end;
    end
    else
    begin
      texto := copy(texto, 1, pos('.', texto) - 1);
    end;
  end;

  consulta.Close;
  if (uqtabelaseacodigo.AsInteger = 1) or (length(vlMasc) = length((vlPai + '.' + texto))) then
    consulta.SQL.Text := 'select ccgestrutural from ccg where ccgestrutural like ' + chr(39) + vlPai + '%' + chr(39) + ' order by ccgestrutural desc limit 1'
  else
    consulta.SQL.Text := 'select ccgestrutural from ccg where length(ccgestrutural)=' + inttostr(length(lbEstrutural.Caption + '.' + texto)) + ' and  ccgestrutural like ' + chr(39)
      + vlPai + '%' + chr(39) + ' order by ccgestrutural desc limit 1';

  consulta.Open;
  vlUltNume := copy(consulta.fields[0].AsString, length(vlPai) + 2, 10);
  if vlUltNume = '' then
    vlUltNume := copy(mascara, 1, length(texto));

  vlUltNume := vlPai + '.' + formatfloat(copy(mascara, 1, length(vlUltNume)), strtoint(vlUltNume) + 1);

  CriaFormulario(Tfccg, '', vlUltNume);

end;

procedure Tfraccg.DBGListaCellClick(Column: TColumn);
begin
  inherited;

  if not gcc.active then
    gcc.Open;

  gcc.Locate('gcccodigo', copy(self.uqtabelaccgestrutural.AsString, 1, pos('.', self.uqtabelaccgestrutural.AsString) - 1), [loPartialKey]);

end;

procedure Tfraccg.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGLista.Canvas.Brush.Color := CLWHITE;
  end;

  if self.uqtabelaseacodigo.AsString = '1' then
  begin
    DBGLista.Canvas.Font.Style := [];
  end
  else
  begin
    DBGLista.Canvas.Font.Style := [fsBold];

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
      Font.Color := CLWHITE;
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

procedure Tfraccg.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  lbEstrutural.Caption := uqtabelaccgestrutural.AsString;
end;

end.
