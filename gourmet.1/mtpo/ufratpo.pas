unit ufratpo;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfratpo = class(Tfrabase)
    uqtabelatpocodigo: TIntegerField;
    uqtabelatpoidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fratpo: Tfratpo;

  // In�cio ID do M�dulo fratpo
const
  vPlIdMd = '01.01.05.004-01';
  vPlTitMdl = 'Tipos de Produtos';

  // Fim ID do M�dulo fratpo

implementation

{$R *.dfm}

end.
