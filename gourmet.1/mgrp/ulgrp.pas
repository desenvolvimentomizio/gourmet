unit ulgrp;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufragrp, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlgrp = class(Tlfrmbase)
    fragrp: Tfragrp;
  private
  public
    { Public declarations }
  end;

var
  lgrp: Tlgrp;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lgrp := Tlgrp.Create(pCargaFrame);
  try
    lgrp.ShowModal;
    Result := lgrp.fragrp.vretorno;
  finally
    lgrp.Free;
  end;
end;

exports formu;

end.
