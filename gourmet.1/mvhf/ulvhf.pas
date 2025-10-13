unit ulvhf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, ufrabase, ufravhf,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,upegabase;

type
  Tlvhf = class(Tlfrmbase)
    fravhf: Tfravhf;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lvhf: Tlvhf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lvhf := Tlvhf.Create(pCargaFrame);
  try

    lvhf.ShowModal;
    Result := lvhf.fravhf.vretorno;
  finally
    lvhf.Free;
  end;
end;

exports formu;

end.
