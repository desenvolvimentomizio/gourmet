unit ufrasbr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,  System.ImageList,
  Vcl.ImgList, Vcl.Dialogs, System.SysUtils, ufuncoes ;

type
  Tfrasbr = class(Tfrabase)
    uqtabelasbrcodigo: TIntegerField;
    uqtabelasbridentificacao: TStringField;
    uqtabelagrpcodigo: TIntegerField;
    uqtabelagrpidentificacao: TStringField;
    uqtabelasenidentificacao: TStringField;
    uqtabelasbrordem: TIntegerField;
    uqtabelasipcodigo: TIntegerField;
    ActDesativar: TAction;
    ActReativar: TAction;
    sip: TUniQuery;
    sipsipcodigo: TIntegerField;
    sipsipidentificacao: TStringField;
    ActPrecos: TAction;
    uqtabelaprocodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActDesativarExecute(Sender: TObject);
    procedure ActReativarExecute(Sender: TObject);
    procedure ActPrecosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  frasbr: Tfrasbr;

  // Início ID do Módulo frasbr
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Sabores para Grupos';

  // Fim ID do Módulo frasbr

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

implementation

uses
  ufsbr;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frasbr := Tfrasbr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frasbr := Tfrasbr.Create(pCargaFrame);
  try
    frasbr.CriaAcoesDeAcesso;
  finally
    frasbr.Free;
  end;
end;

exports formuFrame, defineacesso;

{$R *.dfm}

procedure Tfrasbr.Carregar;
begin

  MontaFiltroEsp(sip, IntToStr(sipNormal));

  inherited Carregar;
end;

procedure Tfrasbr.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
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

procedure Tfrasbr.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfsbr, uqtabelasbrcodigo.AsString, '');
end;

procedure Tfrasbr.ActDesativarExecute(Sender: TObject);
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

procedure Tfrasbr.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfsbr, '', '');
end;

procedure Tfrasbr.ActPrecosExecute(Sender: TObject);
begin
  inherited;
  MostraLista('mspu',self.uqtabelaprocodigo.AsString,self.uqtabelasbrcodigo.AsString );
end;

procedure Tfrasbr.ActReativarExecute(Sender: TObject);
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
