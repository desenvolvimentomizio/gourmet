unit uldtm;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufradtm, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tldtm = class(Tlfrmbase)
    fradtm: Tfradtm;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldtm: Tldtm;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldtm := Tldtm.Create(pCargaFrame);
  try
    ldtm.ShowModal;
    Result := ldtm.fradtm.vretorno;
  finally
    ldtm.Free;
  end;
end;

exports formu;

end.
