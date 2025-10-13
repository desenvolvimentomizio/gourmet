unit ufraing;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfraing = class(Tfrabase)
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronomereduzido: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraing: Tfraing;

  // Início ID do Módulo fraing
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Ingredientes';

  // Fim ID do Módulo fraing

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraing := Tfraing.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraing := Tfraing.Create(pCargaFrame);
  try
    fraing.CriaAcoesDeAcesso;
  finally
    fraing.Free;
  end;
end;

exports formuFrame, defineacesso;

end.
