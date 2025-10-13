unit ulbrm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, ufrabase, ufrabrm,uPegaBase;

type
  Tlbrm = class(Tlfrmbase)
    frabrm: Tfrabrm;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbrm: Tlbrm;

  //Ocorrências em Boletos
const
  vplidmd = '00.00.00.000-02';

implementation


{$R *.dfm}


function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lbrm := Tlbrm.Create(pCargaFrame);
  try
    lbrm.ShowModal;
    Result := lbrm.frabrm.vretorno;
  finally
    lbrm.Free;
  end;
end;

exports formu;


end.
