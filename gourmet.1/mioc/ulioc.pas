unit ulioc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraioc,uPegaBase;

type
  Tlioc = class(Tlfrmbase)
    fraioc: Tfraioc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lioc: Tlioc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lioc := Tlioc.Create(pCargaFrame);
  try
    lioc.fraioc.vChaveMestre:= pCargaFrame.ChaveMestre;
    lioc.ShowModal;
    Result := lioc.fraioc.vretorno;
  finally
    lioc.Free;
  end;
end;

exports formu;



end.
