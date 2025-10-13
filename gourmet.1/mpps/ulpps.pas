unit ulpps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufrapps,uPegaBase;

type
  Tlpps = class(Tlfrmbase)
    frapps: Tfrapps;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lpps: Tlpps;


  // In�cio ID do M�dulo lpps
const
  vPlIdMd = '00.00.00.000-02';

  // Fim ID do M�dulo lpps

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpps := Tlpps.Create(pCargaFrame);
  try
    lpps.ShowModal;
    Result := lpps.frapps.vretorno;
  finally
    lpps.Free;
  end;
end;

exports formu;


end.
