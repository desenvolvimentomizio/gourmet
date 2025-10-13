unit uframdc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tframdc = class(Tfrabase)
    uqtabelamdccodigo: TIntegerField;
    uqtabelamdcidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  framdc: Tframdc;

  // Início ID do Módulo framdc
const
  vPlIdMd = '02.02.14.001-01';
  vPlTitMdl = 'Alíneas de Devolução de Cheques';

  // Fim ID do Módulo frafrn

implementation

{$R *.dfm}

end.
