unit ulcfh;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracfh, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcfh = class(Tlfrmbase)
    fracfh: Tfracfh;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcfh: Tlcfh;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcfh := Tlcfh.Create(pCargaFrame);
  try
    lcfh.ShowModal;
    Result := lcfh.fracfh.vretorno;
  finally
    lcfh.Free;
  end;
end;

exports formu;

end.
