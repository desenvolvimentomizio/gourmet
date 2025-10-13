unit ultdg;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufratdg, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tltdg = class(Tlfrmbase)
    fratdg: Tfratdg;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltdg: Tltdg;

  // Início ID do Módulo ltdg
const
  vPlIdMd = '03.06.81.008-02';

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltdg := Tltdg.Create(pCargaFrame);
  try
    ltdg.ShowModal;
    Result := ltdg.fratdg.vretorno;
  finally
    ltdg.Free;
  end;
end;

exports formu;

end.
