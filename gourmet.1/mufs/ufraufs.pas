unit ufraufs;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfraufs = class(Tfrabase)
    uqtabelaufscodigo: TStringField;
    uqtabelaufssigla: TStringField;
    uqtabelaufsnome: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fraufs: Tfraufs;

  // Início ID do Módulo fraufs
const
  vPlIdMd = '01.01.80.009-01';
  vPlTitMdl = 'Unidades Federativas';

  // Fim ID do Módulo fraufs

implementation

{$R *.dfm}

end.
