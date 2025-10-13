unit ulprc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufraprc, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlprc = class(Tlfrmbase)
    fraprc: Tfraprc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lprc: Tlprc;

  // Início ID do Módulo fraprc
const
  vPlIdMd = '01.10.81.001-02';

  // Fim ID do Módulo fraprc

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lprc := Tlprc.Create(pCargaFrame);
  try
    lprc.fraprc.vChaveMestre:= pCargaFrame.ChaveMestre;
    lprc.ShowModal;
    Result := lprc.fraprc.vretorno;
  finally
    lprc.Free;
  end;
end;

exports formu;

end.
