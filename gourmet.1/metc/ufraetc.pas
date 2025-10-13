unit ufraetc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfraetc = class(Tfrabase)
    uqtabelaetccodigo: TIntegerField;
    uqtabelaetcidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fraetc: Tfraetc;

  // Início ID do Módulo fraetc
const
  vPlIdMd = '01.01.01.005-01';
  vPlTitMdl = 'Estado Civil ';

  // Fim ID do Módulo fraetc

implementation

{$R *.dfm}

end.
