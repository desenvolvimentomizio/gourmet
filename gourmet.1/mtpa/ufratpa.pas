unit ufratpa;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratpa = class(Tfrabase)
    uqtabelatpacodigo: TIntegerField;
    uqtabelatpaidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fratpa: Tfratpa;

  // Início ID do Módulo fratpa
const
  vPlIdMd = '01.01.01.009-02';
  vPlTitMdl = 'Tipos de Pessoas Autorizadas';

  // Fim ID do Módulo fratpa

implementation

{$R *.dfm}

end.
