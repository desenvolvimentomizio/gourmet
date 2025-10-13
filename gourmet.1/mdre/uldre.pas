unit uldre;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufradre, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tldre = class(Tlfrmbase)
    fradre: Tfradre;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldre: Tldre;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldre := Tldre.Create(pCargaFrame);
  try
    ldre.ShowModal;
    Result := ldre.fradre.vretorno;
  finally
    ldre.Free;
  end;
end;

exports formu;

end.
