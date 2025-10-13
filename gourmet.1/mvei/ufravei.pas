unit ufravei;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,uPegabase;

type
  Tfravei = class(Tfrabase)
    uqtabelaveicodigo: TIntegerField;
    uqtabelaveiplaca: TStringField;
    uqtabelamrvcodigo: TIntegerField;
    uqtabelaveimodelo: TStringField;
    mrv: tuniquery;
    mrvmrvcodigo: TIntegerField;
    mrvmrvidentificacao: TStringField;
    uqtabelamrvidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fravei: Tfravei;

  // Início ID do Módulo fravei
const
  vPlIdMd = '01.03.80.001-01';
  vPlTitMdl = 'Veículos';

  // Fim ID do Módulo fravei

implementation

uses
  ufvei;

{$R *.dfm}



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fravei := Tfravei.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fravei := Tfravei.Create(pCargaFrame);
  try
    fravei.CriaAcoesDeAcesso;
  finally
    fravei.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfravei.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfvei, uqtabelaveicodigo.AsString, '');
end;

procedure Tfravei.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfvei, '', '');
end;

end.
