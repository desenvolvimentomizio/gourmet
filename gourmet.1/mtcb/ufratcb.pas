unit ufratcb;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratcb = class(Tfrabase)
    uqtabelatcbcodigo: TIntegerField;
    uqtabelatcbidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratcb: Tfratcb;

  // Início ID do Módulo fratcb
const
  vPlIdMd = '01.10.16.004-01';
  vPlTitMdl = 'Tipos de Contribuintes';

  // Fim ID do Módulo fratcb

implementation

{$R *.dfm}

end.
