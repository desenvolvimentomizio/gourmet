unit ulprm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase,
  ufrabase, ufraprm, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uPegaBase;

type
  Tlprm = class(Tlfrmbase)
    fraprm: Tfraprm;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lprm: Tlprm;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lprm := Tlprm.Create(pCargaFrame);
  try
    lprm.ShowModal;
    Result := lprm.fraprm.vretorno;
  finally
    lprm.Free;
  end;
end;

exports formu;

end.
