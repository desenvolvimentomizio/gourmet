unit ulitf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraitf, uPegabase;

type
  Tlitf = class(Tlfrmbase)
    fraitf: Tfraitf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  litf: Tlitf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  litf := Tlitf.Create(pCargaFrame);
  try
    if pCargaFrame.Filtro <> '' then
    begin
      litf.fraitf.vChaveMestre := pCargaFrame.Filtro;
     litf.fraitf.uqtabela.FilterSQL := 'itf.orcchave=' + litf.fraitf.vChaveMestre;
   end;

    litf.ShowModal;
    Result := litf.fraitf.vretorno;
  finally
    litf.Free;
  end;
end;

exports formu;

end.
