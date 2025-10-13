unit ufrauni;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs;

type

  Tfrauni = class(Tfrabase)
    UQTabelaunicodigo: TIntegerField;
    UQTabelaunisimbolo: TStringField;
    UQTabelauninome: TStringField;
    pun: tuniquery;
    pununicodigo: TIntegerField;
    puntuncodigo: TIntegerField;
    uqtabelatuncodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frauni: Tfrauni;

  // Início ID do Módulo frauni
const
  vPlIdMd = '01.01.05.003-01';
  vPlTitMdl = 'Unidades';

  // Fim ID do Módulo frauni
implementation

{$R *.dfm}

uses ufuni;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frauni := Tfrauni.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frauni := Tfrauni.Create(pCargaFrame);
  try
    frauni.CriaAcoesDeAcesso;
  finally
    frauni.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrauni.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfuni, self.UQTabelaunicodigo.AsString, '');
end;

procedure Tfrauni.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfuni, '', '');
end;

end.
