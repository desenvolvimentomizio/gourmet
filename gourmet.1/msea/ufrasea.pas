unit ufrasea;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfrasea = class(Tfrabase)
    uqtabelaseacodigo: TIntegerField;
    uqtabelaseaidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  frasea: Tfrasea;

  // In�cio ID do M�dulo frasea
const
  vPlIdMd = '02.02.16.012-01';
  vPlTitMdl = 'Natureza das Contas Cont�beis';

  // Fim ID do M�dulo frasea

implementation

{$R *.dfm}

end.
