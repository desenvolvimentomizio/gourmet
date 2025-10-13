unit ufrabrg;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase,  System.ImageList,
  Vcl.ImgList, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc, System.SysUtils, ufuncoes;

type
  Tfrabrg = class(Tfrabase)
    uqtabelabrgchave: TIntegerField;
    uqtabelagrpcodigo: TIntegerField;
    uqtabelabrdcodigo: TIntegerField;
    uqtabelabrdidentificacao: TStringField;
    uqtabelagrpidentificacao: TStringField;
    uqtabelasipcodigo: TIntegerField;
    sip: TUniQuery;
    sipsipcodigo: TIntegerField;
    sipsipidentificacao: TStringField;
    ActDesativar: TAction;
    ActReativar: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
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
  frabrg: Tfrabrg;

  // Início ID do Módulo frabrg
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Bordas para os Grupos';

  // Fim ID do Módulo frabrg

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);


implementation

uses
  ufbrg;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frabrg := Tfrabrg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frabrg := Tfrabrg.Create(pCargaFrame);
  try
    frabrg.CriaAcoesDeAcesso;
  finally
    frabrg.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrabrg.Carregar;
begin

  MontaFiltroEsp(sip, IntToStr(sipNormal));

  inherited Carregar;
end;


procedure Tfrabrg.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfbrg, uqtabelabrgchave.AsString, '');
end;

procedure Tfrabrg.ActDesativarExecute(Sender: TObject);
begin
  inherited;
  If Application.MessageBox(PChar('Confirma a DESATIVAÇÃO do borda selecionada?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE brg SET sipcodigo = 2 WHERE brgchave = ' + self.uqtabelabrgchave.AsString);
    consulta.ExecSQL;

    SalvarSTG('brg','brgchave');
    RegistraAlteracaoParaCargas;


    self.actatualizar.Execute;
    uqtabela.Next;

  End;

end;

procedure Tfrabrg.ActExcluirExecute(Sender: TObject);
begin
  inherited;
{}
end;

procedure Tfrabrg.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfbrg, '', '');
end;

procedure Tfrabrg.ActReativarExecute(Sender: TObject);
begin
  inherited;
If Application.MessageBox(PChar('Confirma a REATIVAÇÃO do borda selecionada?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE brg SET sipcodigo = 1 WHERE brgchave = ' + self.uqtabelabrgchave.AsString);
    consulta.ExecSQL;

    SalvarSTG('brg','brgchave');
    RegistraAlteracaoParaCargas;


    self.actatualizar.Execute;
    uqtabela.Next;

  End;

end;

procedure Tfrabrg.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

end.
