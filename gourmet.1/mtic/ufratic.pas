unit ufratic;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratic = class(Tfrabase)
    uqtabelaticcodigo: TIntegerField;
    uqtabelaticidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fratic: Tfratic;

  // Início ID do Módulo fratic
const
  vPlIdMd = '02.04.80.006-02';
  vPlTitMdl = 'Tipo de Informações Complementares das NF-es';

  // Fim ID do Módulo fratic

implementation

{$R *.dfm}

end.
