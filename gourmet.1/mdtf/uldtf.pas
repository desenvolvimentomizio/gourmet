unit uldtf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, uPegaBase, ufrabase, ufradtf;

type
  Tldtf = class(Tlfrmbase)
    fradtf: Tfradtf;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ldtf: Tldtf;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ldtf := Tldtf.Create(pCargaFrame);
  try
    ldtf.ShowModal;
    Result := ldtf.fradtf.vretorno;
  finally
    ldtf.Free;
  end;
end;

exports formu;

procedure Tldtf.bconfirmaClick(Sender: TObject);
begin
  fradtf.dtf.Close;
  fradtf.dtf.Open;

  fradtf.dtf.Append;
  fradtf.dtfdtfmeschave.AsInteger := fradtf.uqtabelameschave.AsInteger;
  fradtf.dtf.Post;




  inherited;

end;

end.
