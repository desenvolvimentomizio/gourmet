unit ulhit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufrahit,
  uPegaBase;

type
  Tlhit = class(Tlfrmbase)
    frahit: Tfrahit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lhit: Tlhit;

  // Início ID do Módulo lhit
const
  vPlIdMd = '00.00.00.000-01';

  // Fim ID do Módulo lhit

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
var
  i: Integer;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lhit := Tlhit.Create(pCargaFrame);
  lhit.frahit.vChaveMestre := pCargaFrame.Filtro;

  lhit.frahit.uqtabela.FilterSQL := pCargaFrame.Filtro;
  if pos('procodigo', pCargaFrame.Filtro) > 0 then
  begin
    for i := 0 to lhit.frahit.DBGLista.Columns.Count - 1 do
    begin
      if lhit.frahit.DBGLista.Columns[i].FieldName = 'etdidentificacao' then
        lhit.frahit.DBGLista.Columns[i].Visible := true;

      if lhit.frahit.DBGLista.Columns[i].FieldName = 'pronome' then
        lhit.frahit.DBGLista.Columns[i].Visible := false;

    end;

  end
  else
  begin
    for i := 0 to lhit.frahit.DBGLista.Columns.Count - 1 do
    begin
      if lhit.frahit.DBGLista.Columns[i].FieldName = 'etdidentificacao' then
        lhit.frahit.DBGLista.Columns[i].Visible := false;

      if lhit.frahit.DBGLista.Columns[i].FieldName = 'pronome' then
        lhit.frahit.DBGLista.Columns[i].Visible := true;
    end;

  end;

  try
    lhit.ShowModal;
    Result := lhit.frahit.vretorno;
  finally
    lhit.Free;
  end;
end;

exports formu;

end.
