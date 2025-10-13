unit ulrfh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrarfh, uPegaBase;

type
  Tlrfh = class(Tlfrmbase)
    frarfh: Tfrarfh;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrfh: Tlrfh;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lrfh := Tlrfh.Create(pCargaFrame);
  try
    lrfh.frarfh.vChaveMestre:=pCargaFrame.ChaveMestre;
    lrfh.ShowModal;
    Result := lrfh.frarfh.vretorno;
  finally
    lrfh.Free;
  end;
end;

exports formu;

procedure Tlrfh.FormShow(Sender: TObject);
begin
  inherited;
  self.WindowState:=wsMaximized;
end;

end.
