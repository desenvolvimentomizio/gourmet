unit ufratev;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratev = class(Tfrabase)
    uqtabelatevcodigo: TIntegerField;
    uqtabelatevidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratev: Tfratev;

  // Início ID do Módulo fratog
const
  vPlIdMd = '03.12.91.001-01';
  vPlTitMdl = 'Tipos de Eventos';

  // Fim ID do Módulo fratog

implementation

{$R *.dfm}

end.
