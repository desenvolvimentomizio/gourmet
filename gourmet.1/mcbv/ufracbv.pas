unit ufracbv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase,
  VirtualTable, Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tfracbv = class(Tfrabase)
    uqtabelacbvcodigo: TIntegerField;
    uqtabelacbvidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fracbv: Tfracbv;

  // Início ID do Módulo fracbv
const
  vPlIdMd = '01.03.80.003-01';
  vPlTitMdl = 'Combustíveis de Veículos';

  // Fim ID do Módulo fracbv

implementation

{$R *.dfm}

end.
