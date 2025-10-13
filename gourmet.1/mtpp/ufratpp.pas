unit ufratpp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList, uPegaBase,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  Tfratpp = class(Tfrabase)
    uqtabelatppchave: TIntegerField;
    uqtabelatppiniciovalidade: TDateField;
    uqtabelatpppercorigem: TFloatField;
    uqtabelatpppercdestino: TFloatField;
    uqtabelatppfinalvalidade: TDateField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratpp: Tfratpp;


  // Início ID do Módulo fratpp
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Partilhas do ICM entre Estados';

  // Fim ID do Módulo fratpp



implementation

uses
  uftpp;

{$R *.dfm}



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratpp := Tfratpp.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratpp := Tfratpp.Create(pCargaFrame);
  try
    fratpp.CriaAcoesDeAcesso;
  finally
    fratpp.Free;
  end;
end;

exports formuFrame, defineacesso;



procedure Tfratpp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftpp, uqtabelatppchave.AsString, '');
end;

procedure Tfratpp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tftpp, '', '');
end;

end.
