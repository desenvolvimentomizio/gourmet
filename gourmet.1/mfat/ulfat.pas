unit ulfat;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, Data.DB, MemDS, DBAccess, Uni, ufrabase,
  ufrafat, Vcl.StdCtrls, Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls,
  uPegaBase;

type
  Tlfat = class(Tlfrmbase)
    frafat: Tfrafat;
    dfa: tuniquery;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  lfat: Tlfat;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfat := Tlfat.Create(pCargaFrame);
  try
    lfat.ShowModal;
    Result := lfat.frafat.vretorno;
  finally
    lfat.Free;
  end;
end;

exports formu;

procedure Tlfat.bconfirmaClick(Sender: TObject);
begin
  frafat.dfa.Close;
  frafat.dfa.Open;

  frafat.uqtabela.DisableControls;
  frafat.uqtabela.First;
  while not frafat.uqtabela.Eof do
  begin
    if frafat.uqtabelamesfaturar.AsInteger = 1 then
    begin
      frafat.dfa.Append;
      frafat.dfameschave.Asstring := frafat.vmeschave;
      frafat.dfadfameschave.AsInteger := frafat.uqtabelameschave.AsInteger;
      frafat.dfa.Post;
    end;

    frafat.uqtabela.Next;
  end;
  frafat.uqtabela.EnableControls;

  inherited;
end;

end.
