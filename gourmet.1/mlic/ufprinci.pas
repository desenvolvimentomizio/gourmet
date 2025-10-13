unit ufprinci;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  Tfprinci = class(TForm)
    btChamaLicenca: TButton;
    lbLicanca: TLabel;
    procedure btChamaLicencaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fprinci: Tfprinci;

  function licenca: string; stdcall; external 'mlic.lic';

implementation

{$R *.dfm}

procedure Tfprinci.btChamaLicencaClick(Sender: TObject);
begin
   lbLicanca.Caption:=licenca;
end;

end.
