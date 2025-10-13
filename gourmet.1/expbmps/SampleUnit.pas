{
  PngUnit Freeware (c) 1999  Jack Goman
  http://SharePower.VirtualAve.net/png.html}
unit SampleUnit;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, PngUnit;

type
  TForm1 = class(TForm)
    OpenButton: TButton;
    SaveButton: TButton;
    Image1: TImage;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Label1: TLabel;
    procedure OpenButtonClick(Sender: TObject);
    procedure SaveButtonClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.OpenButtonClick(Sender: TObject);
var Bitmap1:TBitmap;
begin
  if OpenDialog1.Execute then
    if UpperCase(ExtractFileExt(OpenDialog1.Filename))='.PNG' then begin
      Bitmap1:=TBitmap.Create;
      ReadBitmapFromPngFile(OpenDialog1.Filename, Bitmap1);
      Image1.Picture.Bitmap.Assign(Bitmap1);
      Bitmap1.Free;
    end else Image1.Picture.Bitmap.LoadFromFile(OpenDialog1.Filename);
  //Image1.Invalidate;  
end;

procedure TForm1.SaveButtonClick(Sender: TObject);
begin
  if SaveDialog1.Execute then WriteBitmapToPngFile(SaveDialog1.Filename, Image1.Picture.Bitmap,clNone);
end;

end.
   