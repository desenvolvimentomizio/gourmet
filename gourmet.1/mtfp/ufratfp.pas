unit ufratfp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Graphics;

type
  Tfratfp = class(Tfrabase)
    uqtabelatfpidentificacao: TStringField;
    uqtabelatfpcodigo: TIntegerField;
  private
  public
    { Public declarations }
  end;

var
  fratfp: Tfratfp;

  // Início ID do Módulo fratfp
const
  vPlIdMd = '02.04.80.003-01';
  vPlTitMdl = 'Formas de Pagamento';

  // Fim ID do Módulo fratfp

implementation

{$R *.dfm}

end.
