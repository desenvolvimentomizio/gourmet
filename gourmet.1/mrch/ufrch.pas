unit ufrch;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufdlginput, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  Tfrch = class(Tfdlginput)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frch: Tfrch;

implementation

{$R *.dfm}

end.
