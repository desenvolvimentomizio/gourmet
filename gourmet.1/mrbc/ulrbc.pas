unit ulrbc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrarbc, uPegaBase;

type
  Tlrbc = class(Tlfrmbase)
    frarbc: Tfrarbc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrbc: Tlrbc;

implementation

{$R *.dfm}




function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lrbc := Tlrbc.Create(pCargaFrame);
  try

    lrbc.ShowModal;
    Result := lrbc.frarbc.vretorno;
  finally
    lrbc.Free;
  end;
end;

exports formu;


end.
