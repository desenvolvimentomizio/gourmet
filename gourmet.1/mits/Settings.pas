unit Settings;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, CheckLst, Buttons;

type
  TFormSettings = class(TForm)
    CheckListBox: TCheckListBox;
    BitBtnOK: TBitBtn;
    BitBtnCancel: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSettings: TFormSettings;

implementation

{$R *.dfm}

end.
