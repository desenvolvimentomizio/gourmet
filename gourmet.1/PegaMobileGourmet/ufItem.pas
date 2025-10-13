unit ufItem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.ScrollBox,
  FMX.Memo, FMX.StdCtrls, FMX.Controls.Presentation;

type
  TfItem = class(TForm)
    tbItem: TToolBar;
    btFecharItem: TButton;
    MemPro: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fItem: TfItem;

implementation

{$R *.fmx}

end.
