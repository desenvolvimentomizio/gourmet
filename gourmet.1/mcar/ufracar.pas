unit ufracar;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase,  System.ImageList,
  Vcl.ImgList, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfracar = class(Tfrabase)
    uqtabelacarcodigo: TIntegerField;
    uqtabelacaridentificacao: TStringField;
    uqtabelactaidentificacao: TStringField;
    uqtabelatctcodigo: TIntegerField;
    uqtabelasenidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fracar: Tfracar;

  // Início ID do Módulo fracar
const
  vPlIdMd = '02.02.13.002-01';
  vPlTitMdl = 'Carteiras';

  // Fim ID do Módulo fracar

implementation

{$R *.dfm}

uses ufcar;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracar := Tfracar.Create(pCargaFrame);
end;

exports formuFrame;

procedure Tfracar.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfcar, uqtabelacarcodigo.AsString, '');
end;

procedure Tfracar.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfcar, '', '');
end;

procedure Tfracar.Carregar;
begin
  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
    begin
      uqtabela.Filter := TxtFiltro;
      uqtabela.Filtered := True;
    end;

  inherited;

end;

end.
