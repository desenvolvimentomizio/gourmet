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

  // Início ID do Módulo fracsi
const
  vPlIdMd = '03.08.20.004-01';
  vPlTitMdl = ' Tabela Código de Tributação do IPI';

  // Fim ID do Módulo fracsi

implementation

{$R *.dfm}

end.
