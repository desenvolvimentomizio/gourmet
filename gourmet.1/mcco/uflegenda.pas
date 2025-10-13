unit uflegenda;

interface

uses
  Winapi.Windows, uftutor, System.Classes, Vcl.Controls, Vcl.StdCtrls;

type
  Tflegenda = class(Tftutor)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  flegenda: Tflegenda;

implementation

{$R *.dfm}

procedure Tflegenda.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = #13) or (Key = #27) then
    close;
end;

end.
