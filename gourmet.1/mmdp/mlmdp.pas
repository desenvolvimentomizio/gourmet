unit mlmdp;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframdp, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlmdp = class(Tlfrmbase)
    framdp: Tframdp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lmdp: Tlmdp;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmdp := Tlmdp.Create(pCargaFrame);
  try
    lmdp.ShowModal;
    Result := lmdp.framdp.vretorno;
  finally
    lmdp.Free;
  end;
end;

exports formu;

end.
