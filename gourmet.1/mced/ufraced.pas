unit ufraced;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfraced = class(Tfrabase)
    uqtabelacedcodigo: TIntegerField;
    uqtabelacedidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fraced: Tfraced;

  // In�cio ID do M�dulo fraced
const
  vPlIdMd = '03.06.80.004-01';
  vPlTitMdl = 'Cr�dito / D�bito';

  // Fim ID do M�dulo fraced

implementation

{$R *.dfm}

end.
