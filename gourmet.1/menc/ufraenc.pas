unit ufraenc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage;

type
  Tfraenc = class(Tfrabase)
    uqtabelaencchave: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelactacodigo: TIntegerField;
    uqtabelactaidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var

  fraenc: Tfraenc;
  const
  vPlIdMd = '';
  vPlTitMdl = 'Conta Corrente';

implementation

{$R *.dfm}

end.
