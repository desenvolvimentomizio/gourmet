unit ufmenssagem;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Objects;

type
  Tfmenssagem = class(TForm)
    rrMensagem: TRoundRect;
    lbmenssagem: TLabel;
    procedure tmTempoTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fmenssagem: Tfmenssagem;

implementation

{$R *.fmx}

procedure Tfmenssagem.tmTempoTimer(Sender: TObject);
begin
  close;
end;

end.
