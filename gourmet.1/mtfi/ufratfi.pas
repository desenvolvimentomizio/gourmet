unit ufratfi;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratfi = class(Tfrabase)
    uqtabelatficodigo: TIntegerField;
    uqtabelatfiidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fratfi: Tfratfi;

  // In�cio ID do M�dulo fratfi
const
  vPlIdMd = '02.02.80.003-01';
  vPlTitMdl = 'Tipos de Documentos Financeiros';

  // Fim ID do M�dulo fratfi

implementation

{$R *.dfm}

end.
