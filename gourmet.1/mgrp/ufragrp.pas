unit ufragrp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc,  System.SysUtils, ufuncoes;

type
  Tfragrp = class(Tfrabase)
    uqtabelagrpcodigo: TIntegerField;
    uqtabelagrpidentificacao: TStringField;
    uqtabelacgridentificacao: TStringField;
    uqtabelagrpordem: TIntegerField;
    uqtabelagrpremoto: TIntegerField;
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
  public
    { Public declarations }
        procedure Carregar; override;
  end;

var
  fragrp: Tfragrp;

  // Início ID do Módulo fragrp
const
  vPlIdMd = '01.01.05.005-01';
  vPlTitMdl = 'Grupos de Produtos';

  // Fim ID do Módulo fragrp
type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);


implementation

{$R *.dfm}

uses ufgrp, uftrocagrp, uftrodpr;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragrp := Tfragrp.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fragrp := Tfragrp.Create(pCargaFrame);
  try
    fragrp.CriaAcoesDeAcesso;
  finally
    fragrp.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragrp.Carregar;
begin

  MontaFiltroEsp(sip, IntToStr(sipNormal));

  inherited Carregar;
end;

procedure Tfragrp.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure Tfragrp.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfgrp, self.uqtabelagrpcodigo.AsString, '');
end;

procedure Tfragrp.ActDesativarExecute(Sender: TObject);
begin
  inherited;
  If Application.MessageBox(PChar('Confirma a DESATIVAÇÃO do grupo selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE grp SET sipcodigo = 2 WHERE grpcodigo = ' + self.uqtabelagrpcodigo.AsString);
    consulta.ExecSQL;

    SalvarSTG('grp','grpcodigo');
    RegistraAlteracaoParaCargas;


    self.actatualizar.Execute;
    uqtabela.Next;

  End;

end;

procedure Tfragrp.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfgrp, '', '');
end;

procedure Tfragrp.ActReativarExecute(Sender: TObject);
begin
  inherited;
 If Application.MessageBox(PChar('Confirma a REATIVAÇÃO do grupo selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE grp SET sipcodigo = 1 WHERE grpcodigo = ' + self.uqtabelagrpcodigo.AsString);
    consulta.ExecSQL;

    SalvarSTG('grp','grpcodigo');
    RegistraAlteracaoParaCargas;


    self.actatualizar.Execute;
    uqtabela.Next;

  End;
end;

end.
