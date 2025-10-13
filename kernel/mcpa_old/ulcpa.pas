unit ulcpa;

interface

uses
  Winapi.Windows, Vcl.Forms, ulrfi, ufrabase, ufrarfi, ufracpa, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcpa = class(Tlrfi)
    fracpa: Tfracpa;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcpa: Tlcpa;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcpa := Tlcpa.Create(pCargaFrame);
  try
    lcpa.ShowModal;
    Result := lcpa.fracpa.vretorno;
  finally
    lcpa.Free;
  end;
end;

exports formu;

end.
