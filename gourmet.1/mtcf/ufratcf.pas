unit ufratcf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratcf = class(Tfrabase)
    uqtabelatcfcodigo: TStringField;
    uqtabelatcfidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fratcf: Tfratcf;

  // Início ID do Módulo fratcf
const
  vPlIdMd = '03.08.17.002-01';
  vPlTitMdl = 'Tipo de Conhecimento de Frete';

  // Fim ID do Módulo fratcf

implementation

{$R *.dfm}

end.
