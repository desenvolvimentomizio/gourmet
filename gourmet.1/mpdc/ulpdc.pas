unit ulpdc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufrapdc,
  uPegaBase;

type
  Tlpdc = class(Tlfrmbase)
    frapdc: Tfrapdc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpdc: Tlpdc;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpdc := Tlpdc.Create(pCargaFrame);
  try
    lpdc.ShowModal;
    Result := lpdc.frapdc.vretorno;
  finally
    lpdc.Free;
  end;
end;

exports formu;

end.
