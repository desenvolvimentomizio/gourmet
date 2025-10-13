unit ulcrf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufracrf,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uPegaBase;

type
  Tlcrf = class(Tlfrmbase)
    fracrf: Tfracrf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcrf: Tlcrf;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcrf := Tlcrf.Create(pCargaFrame);
  try
    lcrf.ShowModal;
    Result := lcrf.fracrf.vretorno;
  finally
    lcrf.Free;
  end;
end;

exports formu;


end.
