unit ulfcl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrafcl,uPegaBase;

type
  Tlfcl = class(Tlfrmbase)
    frafcl: Tfrafcl;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfcl: Tlfcl;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfcl := Tlfcl.Create(pCargaFrame);
  try

    lfcl.ShowModal;
    Result := lfcl.frafcl.vretorno;
  finally
    lfcl.Free;
  end;
end;

exports formu;

end.
