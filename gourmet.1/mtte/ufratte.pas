unit ufratte;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratte = class(Tfrabase)
    uqtabelattecodigo: TIntegerField;
    uqtabelatteidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fratte: Tfratte;

  // Início ID do Módulo fratte
const
  vPlIdMd = '02.04.11.004-01';
  vPlTitMdl = 'Tipo de Transação de Estoque';

  // Fim ID do Módulo fratte

implementation

{$R *.dfm}

end.
