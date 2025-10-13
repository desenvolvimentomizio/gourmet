unit ulpcg;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrapcg, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase, System.SysUtils;

type
  Tlpcg = class(Tlfrmbase)
    frapcg: Tfrapcg;

  private
  public
    { Public declarations }
  end;

var
  lpcg: Tlpcg;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lpcg := Tlpcg.Create(pCargaFrame);
  if pCargaFrame.Filtro <> '' then
  begin

    if pos('cfpcodigo', pCargaFrame.Filtro) = 0 THEN
      lpcg.frapcg.uqtabela.FilterSQL := 'pcgestrutural like ' + QuotedStr(pCargaFrame.Filtro + '%');

  end;
  try
    lpcg.ShowModal;
    Result := lpcg.frapcg.vretorno;
  finally
    lpcg.Free;
  end;
end;

exports formu;

end.
