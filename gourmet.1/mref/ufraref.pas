unit ufraref;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfraref = class(Tfrabase)
    uqtabelarefcodigo: TIntegerField;
    uqtabelarefidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fraref: Tfraref;

  // In�cio ID do M�dulo fraref
const
  vPlIdMd = '02.04.80.001-01';
  vPlTitMdl = 'Respons�vel pelo Frete';

  // Fim ID do M�dulo fraref

implementation

{$R *.dfm}

end.
