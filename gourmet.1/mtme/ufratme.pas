unit ufratme;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfratme = class(Tfrabase)
    uqtabelatmecodigo: TIntegerField;
    uqtabelatmeidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fratme: Tfratme;

  // Início ID do Módulo fratme
const
  vPlIdMd = '02.04.11.003-01';
  vPlTitMdl = 'Movimento Físico do Estoque';

  // Fim ID do Módulo fratme

implementation

{$R *.dfm}

end.
