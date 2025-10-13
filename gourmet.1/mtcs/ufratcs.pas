unit ufratcs;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratcs = class(Tfrabase)
    uqtabelatcsidentificacao: TStringField;
    uqtabelatcscodigo: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fratcs: Tfratcs;

  // Início ID do Módulo fra
const
  vPlIdMd = '03.08.18.002-01';
  vPlTitMdl = 'Tipos de Conta de Consumo';

  // Fim ID do Módulo fra

implementation

{$R *.dfm}

end.
