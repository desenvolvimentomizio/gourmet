unit ulhrf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufrahrf,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uPegaBase;

type
  Tlhrf = class(Tlfrmbase)
    frahrf: Tfrahrf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lhrf: Tlhrf;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lhrf := Tlhrf.Create(pCargaFrame);
  try
    lhrf.ShowModal;
    Result := lhrf.frahrf.vretorno;
  finally
    lhrf.Free;
  end;
end;

exports formu;

end.
