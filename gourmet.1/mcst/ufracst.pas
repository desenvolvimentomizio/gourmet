unit ufracst;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfracst = class(Tfrabase)
    uqtabelacstcodigo: TStringField;
    uqtabelacstidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fracst: Tfracst;

  // In�cio ID do M�dulo fracst
const
  vPlIdMd = '03.08.20.001-01';
  vPlTitMdl = 'C�digo de Situa��o Tribut�ria - CST/ICMS';

  // Fim ID do M�dulo fracst

implementation

{$R *.dfm}

end.
