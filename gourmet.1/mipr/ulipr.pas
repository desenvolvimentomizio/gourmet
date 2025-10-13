unit ulipr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase,
  ufrabase, ufraipr, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, uPegaBase;

type
  Tlipr = class(Tlfrmbase)
    fraipr: Tfraipr;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lipr: Tlipr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lipr := Tlipr.Create(pCargaFrame);
  try
    lipr.ShowModal;
    Result := lipr.fraipr.vretorno;
  finally
    lipr.Free;
  end;
end;

exports formu;

end.
