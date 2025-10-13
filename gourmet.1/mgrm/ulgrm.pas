unit ulgrm;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufragrm, Uni, uPegaBase;

type
  Tlgrm = class(Tlfrmbase)
    fragrm: Tfragrm;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lgrm: Tlgrm;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lgrm := Tlgrm.Create(pCargaFrame);
  try
    lgrm.ShowModal;
    Result := lgrm.fragrm.vretorno;
  finally
    lgrm.Free;
  end;
end;

exports formu;

end.
