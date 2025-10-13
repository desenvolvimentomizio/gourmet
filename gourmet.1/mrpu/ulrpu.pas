unit ulrpu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufrarpu, uPegaBase;

type
  Tlrpu = class(Tlfrmbase)
    frarpu: Tfrarpu;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lrpu: Tlrpu;

implementation

{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
var
  i: Integer;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lrpu := Tlrpu.Create(pCargaFrame);
  lrpu.frarpu.vChaveMestre := pCargaFrame.Filtro;

  lrpu.frarpu.uqtabela.FilterSQL := pCargaFrame.Filtro;


  {if pos('procodigo', pCargaFrame.Filtro) > 0 then
  begin
    for i := 0 to lrpu.frarpu.DBGLista.Columns.Count - 1 do
    begin
      if lrpu.frarpu.DBGLista.Columns[i].FieldName = 'etdidentificacao' then
        lrpu.frarpu.DBGLista.Columns[i].Visible := true;

      if lrpu.frarpu.DBGLista.Columns[i].FieldName = 'pronome' then
        lrpu.frarpu.DBGLista.Columns[i].Visible := false;

    end;

  end
  else
  begin
    for i := 0 to lrpu.frarpu.DBGLista.Columns.Count - 1 do
    begin
      if lrpu.frarpu.DBGLista.Columns[i].FieldName = 'etdidentificacao' then
        lrpu.frarpu.DBGLista.Columns[i].Visible := false;

      if lrpu.frarpu.DBGLista.Columns[i].FieldName = 'pronome' then
        lrpu.frarpu.DBGLista.Columns[i].Visible := true;
    end;

  end;
  }

  try
    lrpu.ShowModal;
    Result := lrpu.frarpu.vretorno;
  finally
    lrpu.Free;
  end;
end;


exports formu;

end.
