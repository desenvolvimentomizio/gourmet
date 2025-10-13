unit ulccg;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraccg, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlccg = class(Tlfrmbase)
    fraccg: Tfraccg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lccg: Tlccg;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lccg := Tlccg.Create(pCargaFrame);
 { if pCargaFrame.Filtro<>'' then
  lccg.fraccg.uqtabela.FilterSQL:=pCargaFrame.Filtro;}
  try
    lccg.ShowModal;
    Result := lccg.fraccg.vretorno;
  finally
    lccg.Free;
  end;
end;

exports formu;

end.
