unit ultdv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulfrmbase, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, ufrabase, ufratdv,
  uPegaBase, Data.DB, MemDS, DBAccess, Uni;

type
  Tltdv = class(Tlfrmbase)
    fratdv: Tfratdv;
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ltdv: Tltdv;

  // Início ID do Módulo ltdv
const
  vPlIdMd = '00.00.00.000-02';

  // Fim ID do Módulo ltdv

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.Titulo := vPlTitMdl;
  ltdv := Tltdv.Create(pCargaFrame);
  try
    ltdv.ShowModal;
    Result := ltdv.fratdv.vpMdtChave;
  finally
    ltdv.Free;
  end;
end;

exports formu;

procedure Tltdv.bcancelaClick(Sender: TObject);
begin

  if ltdv.fratdv.idt.Active then
  begin
    ltdv.fratdv.idt.First;
    while not ltdv.fratdv.idt.Eof do
    begin
      ltdv.fratdv.consulta.Close;
      ltdv.fratdv.consulta.SQL.Text := 'delete from idt where idtchave=' + ltdv.fratdv.idtidtchave.AsString;
      ltdv.fratdv.consulta.ExecSQL;

      ltdv.fratdv.idt.Next;
    end;

    ltdv.fratdv.recalculartotal;
  end;

  inherited;

end;

end.
