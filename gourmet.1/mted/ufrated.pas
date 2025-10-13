unit ufrated;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfrated = class(Tfrabase)
    uqtabelatedcodigo: TIntegerField;
    uqtabelatedidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frated: Tfrated;

  // Início ID do Módulo frated
const
  vPlIdMd = '01.01.80.006-01';
  vPlTitMdl = 'Tipos de Endereço';

  // Fim ID do Módulo frated

implementation

{$R *.dfm}

end.
