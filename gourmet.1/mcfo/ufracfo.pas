unit ufracfo;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls;

type
  Tfracfo = class(Tfrabase)
    uqtabelacfocfop: TStringField;
    uqtabelacfoidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fracfo: Tfracfo;

  // Início ID do Módulo fracfo
const
  vPlIdMd = '02.04.11.002-01';
  vPlTitMdl = 'Código Fiscal de Operações e Prestações - CFOP';

  // Fim ID do Módulo fracfo

implementation

{$R *.dfm}

end.
