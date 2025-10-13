unit uligp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufraigp, uPegaBase;

type
  Tligp = class(Tlfrmbase)
    fraigp: Tfraigp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ligp: Tligp;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ligp := Tligp.Create(pCargaFrame);
  try
    ligp.ShowModal;
    Result := ligp.fraigp.vretorno;
  finally
    ligp.Free;
  end;
end;

exports formu;

end.
