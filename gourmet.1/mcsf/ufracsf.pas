unit ufracsf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfracsf = class(Tfrabase)
    uqtabelacsfcodigo: TStringField;
    uqtabelacsfidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fracsf: Tfracsf;

  // Início ID do Módulo fracsf
const
  vPlIdMd = '03.08.20.003-01';
  vPlTitMdl = 'Código da Situação Tributária Referente ao COFINS';

  // Fim ID do Módulo fracsf

implementation

{$R *.dfm}

end.
