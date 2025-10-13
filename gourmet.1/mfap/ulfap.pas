unit ulfap;

interface

uses
  Winapi.Windows, Vcl.Forms, ulfrmbase, ufrabase, ufrafap, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, uPegaBase;

type
  Tlfap = class(Tlfrmbase)
    frafap: Tfrafap;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lfap: Tlfap;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  lfap := Tlfap.Create(pCargaFrame);
  try
    lfap.ShowModal;
    Result := lfap.frafap.vretorno;
  finally
    lfap.Free;
  end;
end;

exports formu;

procedure Tlfap.bconfirmaClick(Sender: TObject);
begin
  with frafap do
  begin
    uqtabela.Filter := 'fapselecionado=1';
    uqtabela.Filtered := True;

    uqtabela.First;
    while not uqtabela.Eof do
    begin
      prf.Close;
      prf.ParamByName('procodigo').AsString := vpProCodigo;
      prf.ParamByName('fapcodigo').AsInteger := uqtabelafapcodigo.AsInteger;
      prf.Open;

      if prf.IsEmpty then
      begin
        prf.Append;
        prfprocodigo.AsString := vpProCodigo;
        prffapcodigo.AsInteger := uqtabelafapcodigo.AsInteger;
        prf.Post;
      end;

      uqtabela.Next;
    end;
  end;

  inherited;
end;

end.
