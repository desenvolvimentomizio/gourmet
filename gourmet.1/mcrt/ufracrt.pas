unit ufracrt;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfracrt = class(Tfrabase)
    uqtabelacrtcodigo: TIntegerField;
    uqtabelacrtidentificacao: TStringField;
    uqtabelacrtdescricao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fracrt: Tfracrt;

  // Início ID do Módulo fracrt
const
  vPlIdMd = '03.08.20.002-01';
  vPlTitMdl = 'Código de Regime Tributário';

  // Fim ID do Módulo fracrt

implementation

{$R *.dfm}

end.
