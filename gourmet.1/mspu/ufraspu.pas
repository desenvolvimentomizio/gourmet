unit ufraspu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  upegabase;

type
  Tfraspu = class(Tfrabase)
    uqtabelaspucodigo: TIntegerField;
    uqtabelasbrcodigo: TIntegerField;
    uqtabelasbridentificacao: TStringField;
    uqtabelapuncodigo: TIntegerField;
    uqtabelapunidentificacao: TStringField;
    uqtabelaspupreco: TCurrencyField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaspuadicional: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraspu: Tfraspu;


  // Início ID do Módulo fravrp
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Preços por Sabor';

  // Fim ID do Módulo fravrp



implementation

uses
  ufspu;

{$R *.dfm}



function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.titulo := vPlTitMdl;
  fraspu := Tfraspu.Create(pCargaFrame);
  Result := fraspu;
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.titulo := vPlTitMdl;
  fraspu := Tfraspu.Create(pCargaFrame);
  try
    fraspu.CriaAcoesDeAcesso;
  finally
    fraspu.Free;
  end;
end;



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraspu := Tfraspu.Create(pCargaFrame);
end;
exports execute, defineacesso, formuFrame;

procedure Tfraspu.ActAlterarExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfspu, self.uqtabelaspucodigo.AsString,self.vChaveMestre,TxtFiltro);
end;

procedure Tfraspu.ActIncluirExecute(Sender: TObject);
begin
  inherited;
   CriaFormulario(Tfspu, '',self.vChaveMestre, TxtFiltro);
end;

procedure Tfraspu.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  tmpck: Integer;
    R: TRect;
begin
  inherited;
if Column.FieldName = 'spuadicional' then
  begin

    // Desenha um tmpckbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    tmpck := 0;
    if uqtabelaspuadicional.AsString = '1' then
      tmpck := DFCS_CHECKED
    else
      tmpck := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do tmpckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or tmpck);
  end;

end;

end.
