unit ufrasfn;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc,  System.ImageList, Vcl.ImgList, Vcl.Dialogs,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,System.SysUtils, ufuncoes;

type
  Tfrasfn = class(Tfrabase)
    uqtabelasfncodigo: TIntegerField;
    uqtabelaunicodigo: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelauninome: TStringField;
    uqtabelapronome: TStringField;
    uqtabelasfnquantidade: TFloatField;
    uqtabelasfnordem: TIntegerField;
    sip: TUniQuery;
    sipsipcodigo: TIntegerField;
    sipsipidentificacao: TStringField;
    ActDesativar: TAction;
    ActReativar: TAction;
    uqtabelasipcodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActDesativarExecute(Sender: TObject);
    procedure ActReativarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure Carregar; override;
  end;

var
  frasfn: Tfrasfn;

  // Início ID do Módulo frasfn
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Sabores por Unidades do Produto';

  // Fim ID do Módulo frasfn

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);


implementation

uses
  ufsfn;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frasfn := Tfrasfn.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frasfn := Tfrasfn.Create(pCargaFrame);
  try
    frasfn.CriaAcoesDeAcesso;
  finally
    frasfn.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrasfn.Carregar;
begin



  MontaFiltroEsp(sip, IntToStr(sipNormal));


  inherited Carregar;


end;


procedure Tfrasfn.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);

var
  fixRect: TRect;
begin
  fixRect := Rect;

  If Odd(DSTabela.DataSet.RecNo) Then
    dbglista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    dbglista.Canvas.Brush.Color := CLWHITE;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(dbglista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := $00FFB76F; // PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := $00FFB76F; // PEG_COR_SELCGRID; // $004080FF;

      FillRect(fixRect);
      // Font.Color :=  CLWHITE;
      Font.Style := [fsbold];
    End;

  with TFriendly(dbglista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }

        Brush.Color := $00FFB76F; // PEG_COR_SELCGRID; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('sipcodigo').asinteger = 2 then
  begin

    If gdSelected In State Then
    begin
      With (Sender As TDBGrid).Canvas Do
      Begin

        Brush.Color := $00FFB76F; // PEG_COR_SELCGRID; // $004080FF;
        // Font.Color := CLWHITE;
        FillRect(fixRect);
        Font.Style := [fsbold];
      End;
    end
    else
      (Sender as TDBGrid).Canvas.Font.Color := $007D7D7D;

  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);


end;

procedure Tfrasfn.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfsfn, uqtabelasfncodigo.AsString, '');
end;

procedure Tfrasfn.ActDesativarExecute(Sender: TObject);
begin
  inherited;

  If application.MessageBox(PChar('Confirma a DESATIVAÇÃO do fracionamento selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE sfn SET sipcodigo = 2 WHERE sfncodigo = ' + self.uqtabelasfncodigo.AsString);
    consulta.ExecSQL;

    SalvarSTG('sfn', 'sfncodigo');
    RegistraAlteracaoParaCargas;

    self.actatualizar.Execute;
    uqtabela.Next;

  End;

end;

procedure Tfrasfn.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfsfn, '', '');
end;

procedure Tfrasfn.ActReativarExecute(Sender: TObject);

Var
  rg: Integer;
Begin
  Inherited;

  rg := self.uqtabelaprocodigo.asinteger;
  consulta.Close;
  consulta.SQL.Clear;
  consulta.SQL.Add('UPDATE sfn SET sipcodigo = 1 WHERE sfncodigo = ' + self.uqtabelasfncodigo.AsString);
  consulta.ExecSQL;

  SalvarSTG('sfn', 'sfncodigo');
  RegistraAlteracaoParaCargas;

  self.actatualizar.Execute;

  uqtabela.Locate('sfncodigo', rg, []);

end;

end.
