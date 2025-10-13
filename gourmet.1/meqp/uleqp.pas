unit uleqp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase,
  ufrabase, ufraeqp, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Uni, uPegaBase;

type
  Tleqp = class(Tlfrmbase)
    fraeqp: Tfraeqp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  leqp: Tleqp;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  leqp := Tleqp.Create(pCargaFrame);
  try
    leqp.ShowModal;
    Result := leqp.fraeqp.vretorno;
  finally
    leqp.Free;
  end;
end;

exports formu;

end.
