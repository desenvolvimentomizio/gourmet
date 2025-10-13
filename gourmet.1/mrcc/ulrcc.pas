unit ulrcc;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrarcr, ufrarcc,
  Vcl.StdCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  uPegaBase;

type
  Tlrcc = class(Tlfrmbase)
    frarcc: Tfrarcc;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrcc: Tlrcc;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lrcc := Tlrcc.Create(pCargaFrame);
  try
    { if vtipolista = 1 then
      begin
      lfram.txtfiltro := Trim(vfiltro);

      if pos('procodigo = ', vfiltro) > 0 then
      begin
      vlEtdCodigo := Trim(copy(vfiltro, pos('etdcodigo = ', vfiltro) + 11, 10));
      lfram.vChaveMestre := vlEtdCodigo;
      end;
      lfram.edbusca.Tag := 1;
      lfram.PlFiltros.Visible := true;
      end; }

    lrcc.ShowModal;
    Result := lrcc.frarcc.vretorno;
  finally
    lrcc.Free;
  end;
end;

exports formu;

end.
