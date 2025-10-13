unit ufratmf;

interface

uses
  Winapi.Windows, Winapi.Messages,Vcl.ComCtrls, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, 
Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, VirtualTable, Data.DB, MemDS,
  DBAccess,      Vcl.Menus, 
Vcl.ActnList, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons, Vcl.Imaging.jpeg,
  Vcl.Imaging.pngimage;

type
  Tfratmf = class(Tfrabase)
    uqtabelatbmcodigo: TIntegerField;
    uqtabelatmfidentificacao: TStringField;
    uqtabelacedidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratmf: Tfratmf;

const
vPlTitMdl = 'Tipo de Movimento Financeiro';
implementation

{$R *.dfm}

end.
