unit ufrasen;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfrasen = class(Tfrabase)
    uqtabelasencodigo: TIntegerField;
    uqtabelasenidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  frasen: Tfrasen;

  // In�cio ID do M�dulo frasen
const
  vPlIdMd = '03.06.80.002-01';
  vPlTitMdl = 'Sim/N�o';

  // Fim ID do M�dulo frasen

implementation

{$R *.dfm}

end.
