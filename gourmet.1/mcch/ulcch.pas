unit ulcch;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracch, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlcch = class(Tlfrmbase)
    fracch: Tfracch;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcch: Tlcch;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcch := Tlcch.Create(pCargaFrame);
  try
    lcch.ShowModal;
    Result := lcch.fracch.vretorno;
  finally
    lcch.Free;
  end;
end;

exports formu;

end.
