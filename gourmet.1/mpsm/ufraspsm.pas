unit ufraspsm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage;

type
  Tfraspsm = class(Tfrabase)
    uqtabelapsmchave: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelapsmregistro: TDateTimeField;
    uqtabelapsmtexto01: TStringField;
    uqtabelapsmtexto02: TStringField;
    uqtabelapsmtexto03: TStringField;
    uqtabelapsmtexto04: TStringField;
    uqtabelapsmtexto05: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraspsm: Tfraspsm;

implementation

{$R *.dfm}

end.
