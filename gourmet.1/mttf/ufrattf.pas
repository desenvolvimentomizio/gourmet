unit ufrattf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfrattf = class(Tfrabase)
    uqtabelattfcodigo: TIntegerField;
    uqtabelattfidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frattf: Tfrattf;

  // In�cio ID do M�dulo frattf
const
  vPlIdMd = '01.01.80.007-01';
  vPlTitMdl = 'Tipos de Telefone';

  // Fim ID do M�dulo frattf

implementation

{$R *.dfm}

end.
