unit ufracsi;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfracsi = class(Tfrabase)
    uqtabelacsicodigo: TStringField;
    uqtabelacsiidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fracsi: Tfracsi;

  // In�cio ID do M�dulo fracsi
const
  vPlIdMd = '03.08.20.004-01';
  vPlTitMdl = ' Tabela C�digo de Tributa��o do IPI';

  // Fim ID do M�dulo fracsi

implementation

{$R *.dfm}

end.
