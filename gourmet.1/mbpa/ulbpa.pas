unit ulbpa;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,

  Vcl.ExtCtrls, ufrabase, ufrabpa,upegabase;

type
  Tlbpa = class(Tlfrmbase)
    frabpa: Tfrabpa;
  private
  public
    { Public declarations }
  end;

var
  lbpa: Tlbpa;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbpa := Tlbpa.Create(pCargaFrame);
  try
    lbpa.ShowModal;
    Result := lbpa.frabpa.vretorno;
  finally
    lbpa.Free;
  end;
end;

exports formu;

end.
