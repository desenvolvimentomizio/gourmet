unit ufraicm;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfraicm = class(Tfrabase)
    uqtabelaicmcodigo: TStringField;
    uqtabelaicmaliquotas: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fraicm: Tfraicm;

  // Início ID do Módulo fraicm
const
  vPlIdMd = '01.01.05.007-01';
  vPlTitMdl = 'Alíquotas ICMS';

  // Fim ID do Módulo fraicm

implementation

{$R *.dfm}

end.
