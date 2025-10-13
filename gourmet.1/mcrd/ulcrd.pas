unit ulcrd;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufracrd, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase, Vcl.Dialogs;

type
  Tlcrd = class(Tlfrmbase)
    fracrd: Tfracrd;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcrd: Tlcrd;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lcrd := Tlcrd.Create(pCargaFrame);
  try
    lcrd.ShowModal;
    Result := lcrd.fracrd.vretorno;
  finally
    lcrd.Free;
  end;
end;

exports formu;

procedure Tlcrd.bconfirmaClick(Sender: TObject);
begin
  if self.fracrd.uqtabelaseacodigo.AsInteger = 0 then
  begin
    ShowMessage('Somente contas Analíticas podem receber registros!');
  end
  else
    inherited;

end;

end.
