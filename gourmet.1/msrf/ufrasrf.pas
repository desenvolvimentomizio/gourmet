unit ufrasrf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfrasrf = class(Tfrabase)
    uqtabelasrfcodigo: TIntegerField;
    uqtabelasrfidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frasrf: Tfrasrf;

  // In�cio ID do M�dulo frasrf
const
  vPlIdMd = '';
  vPlTitMdl = 'Situa��o de Registro Financeiro';

  // Fim ID do M�dulo frasrf

implementation

{$R *.dfm}

end.
