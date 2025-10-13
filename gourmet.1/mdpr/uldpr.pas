unit uldpr;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufradpr, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tldpr = class(Tlfrmbase)
    fradpr: Tfradpr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldpr: Tldpr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldpr := Tldpr.Create(pCargaFrame);
  try
    ldpr.ShowModal;
    Result := ldpr.fradpr.vretorno;
  finally
    ldpr.Free;
  end;
end;

exports formu;

end.
