unit ufracsp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfracsp = class(Tfrabase)
    uqtabelacspcodigo: TStringField;
    uqtabelacspidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fracsp: Tfracsp;

  // In�cio ID do M�dulo fracsp
const
  vPlIdMd = '03.08.20.005-01';
  vPlTitMdl = 'C�digo da Situa��o Tribut�ria Referente PIS/PASEP';

  // Fim ID do M�dulo fracsp

implementation

{$R *.dfm}

end.
