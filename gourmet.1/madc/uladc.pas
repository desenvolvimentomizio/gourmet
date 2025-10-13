unit uladc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraadc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tladc = class(Tlfrmbase)
    fraadc: Tfraadc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ladc: Tladc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ladc := Tladc.Create(pCargaFrame);
  try
    ladc.fraadc.uqtabela.FilterSQL:='adcencerramento IS null';
    ladc.ShowModal;
    Result := ladc.fraadc.vretorno;
  finally
    ladc.Free;
  end;
end;

exports formu;

end.
