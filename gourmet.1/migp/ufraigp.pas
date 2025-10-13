unit ufraigp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
   System.ImageList, Vcl.ImgList,ufuncoes;

type
  Tfraigp = class(Tfrabase)
    uqtabelaprocodigo: TIntegerField;
    uqtabelaproncm: TStringField;
    uqtabelapronome: TStringField;
    uqtabelaprosaldo: TFloatField;
    uqtabelaprosaldodisp: TFloatField;
    uqtabelagrpidentificacao: TStringField;
    uqtabelamaridentificacao: TStringField;
    uqtabelaicmaliquotas: TStringField;
    uqtabelaproreferencia: TStringField;
    uqtabelaproobs: TStringField;
    uqtabelaunisimbolo: TStringField;
    uqtabelapunprecoav: TFloatField;
    uqtabelapunprecoap: TFloatField;
    uqtabelasipcodigo: TIntegerField;
    uqtabelatpocodigo: TIntegerField;
    uqtabelatpoidentificacao: TStringField;
    uqtabelagracodigo: TIntegerField;
    uqtabeladpridentificacao: TStringField;
    uqtabelaproconsolidado: TIntegerField;
    uqtabelapunpercav: TFloatField;
    uqtabelapunpercap: TFloatField;
    uqtabelapuncusto: TFloatField;
    sip: TUniQuery;
    sipsipcodigo: TIntegerField;
    sipsipidentificacao: TStringField;
    ActDesativar: TAction;
    ActReativar: TAction;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActDesativarExecute(Sender: TObject);
    procedure ActReativarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        procedure Carregar; override;
  end;

var
  fraigp: Tfraigp;

  // Início ID do Módulo fraigp
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Ingredientes';

  // Fim ID do Módulo fraigp
type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);


implementation

{$R *.dfm}

uses ufigp;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraigp := Tfraigp.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraigp := Tfraigp.Create(pCargaFrame);
  try
    fraigp.CriaAcoesDeAcesso;
  finally
    fraigp.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraigp.Carregar;
begin

  MontaFiltroEsp(sip, IntToStr(sipNormal));

  inherited Carregar;
end;


procedure Tfraigp.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure Tfraigp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfigp, uqtabelaprocodigo.AsString, '');
end;

procedure Tfraigp.ActDesativarExecute(Sender: TObject);
begin
  inherited;
  If Application.MessageBox(PChar('Confirma a DESATIVAÇÃO do ingrediente selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE pro SET sipcodigo = 2 WHERE procodigo = ' + self.uqtabelaprocodigo.AsString);
    consulta.ExecSQL;

    SalvarSTG('pro','procodigo');
    RegistraAlteracaoParaCargas;


    self.actatualizar.Execute;
    uqtabela.Next;

  End;
end;

procedure Tfraigp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfigp, '', '');

end;

procedure Tfraigp.ActReativarExecute(Sender: TObject);
begin
  inherited;
 If Application.MessageBox(PChar('Confirma a REATIVAÇÃO do ingrediente selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE pro SET sipcodigo = 1 WHERE procodigo = ' + self.uqtabelaprocodigo.AsString);
    consulta.ExecSQL;

    SalvarSTG('pro','procodigo');
    RegistraAlteracaoParaCargas;


    self.actatualizar.Execute;
    uqtabela.Next;

  End;
end;

end.
