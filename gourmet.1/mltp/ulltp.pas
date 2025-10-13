unit ulltp;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraltp, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlltp = class(Tlfrmbase)
    fraltp: Tfraltp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lltp: Tlltp;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lltp := Tlltp.Create(pCargaFrame);
  try
    lltp.ShowModal;
    Result := lltp.fraltp.vretorno;
  finally
    lltp.Free;
  end;
end;

exports formu;

end.
