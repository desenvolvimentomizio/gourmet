unit ulvee;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufravee,upegabase;

type
  Tlvee = class(Tlfrmbase)
    fravee: Tfravee;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lvee: Tlvee;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lvee := Tlvee.Create(pCargaFrame);
  try

    lvee.ShowModal;
    Result := lvee.fravee.vretorno;
  finally
    lvee.Free;
  end;
end;

exports formu;


end.
