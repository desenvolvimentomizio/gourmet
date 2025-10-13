unit ulmnf;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, uframnf, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlmnf = class(Tlfrmbase)
    framnf: Tframnf;
    procedure framnfActCancelarNFEExecute(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  lmnf: Tlmnf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lmnf := Tlmnf.Create(pCargaFrame);
  try
    lmnf.ShowModal;
    Result := lmnf.framnf.vretorno;
  finally
    lmnf.Free;
  end;
end;

exports formu;

procedure Tlmnf.framnfActCancelarNFEExecute(Sender: TObject);
begin
  inherited;
  framnf.ActCancelarNFEExecute(Sender);

end;

end.
