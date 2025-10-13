unit ulspu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufraspu, uPegaBase;

type
  Tlspu = class(Tlfrmbase)
    fraspu: Tfraspu;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lspu: Tlspu;

const
  vplidmd = '00.00.00.000-03';

implementation

{$R *.dfm}




function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lspu := Tlspu.Create(pCargaFrame);
  lspu.fraspu.vChaveMestre:=pCargaFrame.ChaveMestre;
  lspu.fraspu.TxtFiltro:=pCargaFrame.Filtro;
  lspu.fraspu.uqtabela.ParamByName('procodigo').AsString:= lspu.fraspu.TxtFiltro ;
  lspu.fraspu.uqtabela.ParamByName('sbrcodigo').AsString:=lspu.fraspu.vChaveMestre;
  lspu.fraspu.ActAtualizar.Execute;




  try
    lspu.ShowModal;
    Result := lspu.fraspu.vretorno;
  finally
    lspu.Free;
  end;
end;

exports formu;

end.
