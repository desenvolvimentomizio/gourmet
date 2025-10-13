unit ufrabrd;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase,  System.ImageList,
  Vcl.ImgList, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, System.SysUtils, ufuncoes;

type
  Tfrabrd = class(Tfrabase)
    uqtabelabrdcodigo: TIntegerField;
    uqtabelabrdidentificacao: TStringField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
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
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  frabrd: Tfrabrd;

  // Início ID do Módulo frabrd
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Complemento ou Base';

  // Fim ID do Módulo frabrd

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

implementation

uses
  ufbrd;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabrd := Tfrabrd.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabrd := Tfrabrd.Create(pCargaFrame);
  try
    frabrd.CriaAcoesDeAcesso;
  finally
    frabrd.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabrd.Carregar;
begin

  MontaFiltroEsp(sip, IntToStr(sipNormal));

  inherited Carregar;
end;

procedure Tfrabrd.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  fixRect := Rect;

  If Odd(DSTabela.DataSet.RecNo) Then
    dbglista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    dbglista.Canvas.Brush.Color := CLWHITE;

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

procedure Tfrabrd.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfbrd, uqtabelabrdcodigo.AsString, '');
end;

procedure Tfrabrd.ActDesativarExecute(Sender: TObject);
begin
  inherited;

  If Application.MessageBox(PChar('Confirma a DESATIVAÇÃO da borda selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE brd SET sipcodigo = 2 WHERE brdcodigo = ' + self.uqtabelabrdcodigo.AsString);
    consulta.ExecSQL;

    SalvarSTG('brd','brdcodigo');
    RegistraAlteracaoParaCargas;

    self.actatualizar.Execute;
    uqtabela.Next;

  End;

end;

procedure Tfrabrd.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfbrd, '', '');
end;

procedure Tfrabrd.ActReativarExecute(Sender: TObject);
begin
  inherited;
  If Application.MessageBox(PChar('Confirma a REATIVAÇÃO da borda selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE brd SET sipcodigo = 1 WHERE brdcodigo = ' + self.uqtabelabrdcodigo.AsString);
    consulta.ExecSQL;

    SalvarSTG('brd','brdcodigo');
    RegistraAlteracaoParaCargas;


    self.actatualizar.Execute;
    uqtabela.Next;

  End;
end;

end.
