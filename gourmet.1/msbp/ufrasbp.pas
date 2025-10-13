unit ufrasbp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc,  System.ImageList, Vcl.ImgList, Vcl.Dialogs,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, System.SysUtils, ufuncoes;

type
  Tfrasbp = class(Tfrabase)
    uqtabelasbrcodigo: TIntegerField;
    uqtabelasbridentificacao: TStringField;
    uqtabelapronome: TStringField;
    uqtabelasenidentificacao: TStringField;
    uqtabelasbrordem: TIntegerField;
    uqtabelagrpidentificacao: TStringField;
    sip: TUniQuery;
    sipsipcodigo: TIntegerField;
    sipsipidentificacao: TStringField;
    uqtabelasipcodigo: TIntegerField;
    ActDesativar: TAction;
    ActReativar: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
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
  frasbp: Tfrasbp;

  // Início ID do Módulo frasbp
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Ingredientes do Produto';

  // Fim ID do Módulo frasbp
type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

implementation

uses
  ufsbp;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frasbp := Tfrasbp.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frasbp := Tfrasbp.Create(pCargaFrame);
  try
    frasbp.CriaAcoesDeAcesso;
  finally
    frasbp.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrasbp.Carregar;
begin

  MontaFiltroEsp(sip, IntToStr(sipNormal));

  inherited Carregar;
end;
procedure Tfrasbp.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
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

procedure Tfrasbp.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfsbp, uqtabelasbrcodigo.AsString, '');
end;

procedure Tfrasbp.ActDesativarExecute(Sender: TObject);
begin
  inherited;
  If Application.MessageBox(PChar('Confirma a DESATIVAÇÃO do sabor selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE sbr SET sipcodigo = 2 WHERE sbrcodigo = ' + self.uqtabelasbrcodigo.AsString);
    consulta.ExecSQL;

    SalvarSTG('sbr','sbrcodigo');
    RegistraAlteracaoParaCargas;


    self.actatualizar.Execute;
    uqtabela.Next;

  End;

end;

procedure Tfrasbp.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfsbp, '', '');
end;

procedure Tfrasbp.ActReativarExecute(Sender: TObject);
begin
  inherited;
 If Application.MessageBox(PChar('Confirma a REATIVAÇÃO do sabor selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin

    consulta.Close;
    consulta.SQL.Clear;
    consulta.SQL.Add('UPDATE sbr SET sipcodigo = 1 WHERE sbrcodigo = ' + self.uqtabelasbrcodigo.AsString);
    consulta.ExecSQL;

    SalvarSTG('sbr','sbrcodigo');
    RegistraAlteracaoParaCargas;


    self.actatualizar.Execute;
    uqtabela.Next;

  End;

end;

end.
