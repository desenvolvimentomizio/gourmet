unit ufFormTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, System.ImageList,
  Vcl.ImgList, Vcl.Menus;

type
  TfFormTeste = class(TForm)
    PopupMenu: TPopupMenu;
    mnMudarContigenciaManual: TMenuItem;
    N2: TMenuItem;
    MOSTRARImpressor: TMenuItem;
    OCULTARImpressor: TMenuItem;
    N1: TMenuItem;
    Fechar: TMenuItem;
    ImageList1: TImageList;
    TrayIcon: TTrayIcon;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fFormTeste: TfFormTeste;

implementation

{$R *.dfm}

end.
