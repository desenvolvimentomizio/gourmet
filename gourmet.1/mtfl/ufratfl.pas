unit ufratfl;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratfl = class(Tfrabase)
    uqtabelatflcodigo: TIntegerField;
    uqtabelatflidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratfl: Tfratfl;

  // Início ID do Módulo framrv
const
  vPlIdMd = '03.12.80.001-01';
  vPlTitMdl = 'Tipo de Folhas Gerenciais';

  // Fim ID do Módulo framrv

implementation

{$R *.dfm}

end.
