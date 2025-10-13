unit ufratip;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratip = class(Tfrabase)
    uqtabelatipcodigo: TIntegerField;
    uqtabelatipidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratip: Tfratip;

  // Início ID do Módulo fraenp
const
  vPlIdMd = '03.06.86.001-01';
  vPlTitMdl = 'Tipos de Impressoras';

  // Fim ID do Módulo fraenp

implementation

{$R *.dfm}

end.
