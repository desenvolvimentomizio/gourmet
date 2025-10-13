unit ulttf;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrattf, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlttf = class(Tlfrmbase)
    frattf: Tfrattf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lttf: Tlttf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lttf := Tlttf.Create(pCargaFrame);
  try
    lttf.ShowModal;
    Result := lttf.frattf.vretorno;
  finally
    lttf.Free;
  end;
end;

exports formu;

end.
