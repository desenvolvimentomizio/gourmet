unit ufradnr;

interface

uses
  Winapi.Windows, Winapi.Messages,Vcl.ComCtrls, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, 
Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess,      Vcl.Menus, 
Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  Tfradnr = class(Tfrabase)
    uqtabeladnrcodigo: TIntegerField;
    uqtabeladnridentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fradnr: Tfradnr;

const
vPlTitMdl = 'Lista de Denners';
implementation

{$R *.dfm}

end.
