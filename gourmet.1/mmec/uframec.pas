unit uframec;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tframec = class(Tfrabase)
    uqtabelamecidentificacao: TStringField;
    uqtabelameccodigo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framec: Tframec;


const
  vPlIdMd = '';
  vPlTitMdl = 'Modos de Cobranças';

implementation

{$R *.dfm}
function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framec := Tframec.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  framec := Tframec.Create(pCargaFrame);
  try
    framec.CriaAcoesDeAcesso;
  finally
    framec.Free;
  end;
end;

exports formuFrame, defineacesso;

end.
