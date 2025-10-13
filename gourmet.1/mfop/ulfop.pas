unit ulfop;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, 
    
  Vcl.ExtCtrls, ufrabase, ufrafop, uPegaBase;

type
  Tlfop = class(Tlfrmbase)
    frafop: Tfrafop;
  private
  public
    { Public declarations }
  end;

var
  lfop: Tlfop;

implementation

{$R *.dfm}



function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfop := Tlfop.Create(pCargaFrame);
  try
    lfop.ShowModal;
    Result := lfop.frafop.vretorno;
  finally
    lfop.Free;
  end;
end;

exports formu;


end.
