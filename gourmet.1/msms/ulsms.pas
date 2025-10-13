unit ulsms;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls,uPegabase, ufrabase, ufrasms;

type
  Tlsms = class(Tlfrmbase)
    frasms: Tfrasms;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lsms: Tlsms;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lsms := Tlsms.Create(pCargaFrame);
  try

    lsms.ShowModal;
    Result := lsms.frasms.vretorno;
  finally
    lsms.Free;
  end;
end;

exports formu;

end.
