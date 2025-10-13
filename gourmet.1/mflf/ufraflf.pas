unit ufraflf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, System.ImageList, Vcl.ImgList;

type
  Tfraflf = class(Tfrabase)
    uqtabelaflfchave: TIntegerField;
    uqtabelaflfdia: TDateField;
    uqtabelatffcodigo: TIntegerField;
    uqtabelaflfvalor: TFloatField;
    uqtabelatffidentificacao: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraflf: Tfraflf;

implementation

{$R *.dfm}

end.
