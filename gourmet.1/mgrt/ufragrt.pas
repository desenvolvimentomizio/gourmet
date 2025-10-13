unit ufragrt;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList, uPegaBase,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  Tfragrt = class(Tfrabase)
    uqtabelagrtcodigo: TIntegerField;
    uqtabelagrtidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fragrt: Tfragrt;


  // Início ID do Módulo fragrt
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Classes de Cliente';

  // Fim ID do Módulo fragrt



implementation

uses
  ufgrt;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragrt := Tfragrt.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fragrt := Tfragrt.Create(pCargaFrame);
  try
    fragrt.CriaAcoesDeAcesso;
  finally
    fragrt.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfragrt.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgrt, uqtabelagrtcodigo.AsString, '');

end;

procedure Tfragrt.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgrt, '', '');
end;

end.
