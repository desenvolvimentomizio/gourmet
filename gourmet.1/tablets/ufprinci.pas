unit ufprinci;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.WebBrowser,
  FMX.TMSWebBrowser, FMX.StdCtrls, FMX.Controls.Presentation;

type
  Tfprinci = class(TForm)
    WebBrowserTablet: TTMSFMXWebBrowser;
    ToolBarPrincipal: TToolBar;
    SpeedButtonConfig: TSpeedButton;
    LabelTopo: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprinci: Tfprinci;

implementation

{$R *.fmx}

procedure Tfprinci.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
 if Key = vkHardwareBack then
  begin
  Key:=0;
  WebBrowserTablet.URL := 'http://192.168.5.245:8077/m';

  end;
end;

procedure Tfprinci.FormShow(Sender: TObject);
begin
  WebBrowserTablet.URL := 'http://192.168.5.245:8077/m';

end;

end.
