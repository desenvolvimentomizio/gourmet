unit ulenp;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraenp, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlenp = class(Tlfrmbase)
    fraenp: Tfraenp;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lenp: Tlenp;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lenp := Tlenp.Create(pCargaFrame);
  try
    lenp.ShowModal;
    Result := lenp.fraenp.vretorno;
  finally
    lenp.Free;
  end;
end;

exports formu;

end.
