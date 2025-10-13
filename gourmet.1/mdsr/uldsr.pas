unit uldsr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufradsr,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,uPegaBase;

type
  Tldsr = class(Tlfrmbase)
    fradsr: Tfradsr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldsr: Tldsr;

implementation

{$R *.dfm}



function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldsr := Tldsr.Create(pCargaFrame);
  try

    ldsr.ShowModal;
    Result := ldsr.fradsr.vretorno;
  finally
    ldsr.Free;
  end;
end;

exports formu;


end.
