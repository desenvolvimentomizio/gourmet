unit ufracio;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfracio = class(Tfrabase)
    uqtabelaciocodigo: TIntegerField;
    uqtabelacioidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fracio: Tfracio;

  // Início ID do Módulo fracio
const
  vPlIdMd = '01.11.20.004-01';
  vPlTitMdl = 'Condições do Imposto';

  // Fim ID do Módulo fracio

implementation

{$R *.dfm}

end.
