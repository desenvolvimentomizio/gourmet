unit ufraefl;

interface

uses
  Winapi.Windows, Winapi.Messages,Vcl.ComCtrls, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, 
Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess,      Vcl.Menus, 
Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfraefl = class(Tfrabase)
    uqtabelaeflcodigo: TIntegerField;
    uqtabelaeflidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraefl: Tfraefl;

const
vPlTitMdl = 'ion = Estágio Folha de Pagamento';
implementation

{$R *.dfm}

end.
