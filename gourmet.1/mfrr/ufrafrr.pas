unit ufrafrr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfrafrr = class(Tfrabase)
    uqtabelafrrcodigo: TIntegerField;
    uqtabelafrridentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  frafrr: Tfrafrr;

  // In�cio ID do M�dulo frafrr
const
  vPlIdMd = '02.02.15.001-01';
  vPlTitMdl = 'Frequ�ncia dos Registros Financeiros';

  // Fim ID do M�dulo frafrr

implementation

{$R *.dfm}

end.
