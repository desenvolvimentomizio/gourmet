unit ulbcd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulbatbase, Data.DB, uni, 
    Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus;

type
  Tlcnd = class(Tlbatbase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcnd: Tlcnd;

implementation

{$R *.dfm}

function BuscaAtdCnd(AOwner: TComponent; conexao: tuniconnection; usrcodigo: string; moccodigo: Integer; vchave: string): string;
Var
  i: Integer;
Begin
  try
    application.CreateForm(Tlcnd, lcnd);
    lcnd.zcone := conexao;
    lcnd.vmoccodigo := moccodigo;
    lcnd.vusrcodigo := usrcodigo;
    lcnd.vDirRelat := ExtractFilePath(application.ExeName) + 'relat\condicional.fr3';

    For i := 0 To lcnd.ComponentCount - 1 Do
    Begin
      If lcnd.Components[i] Is tuniquery Then
      Begin
        (lcnd.Components[i] As tuniquery).Connection := conexao;
      End;
    End;

    lcnd.ShowModal;
    result := lcnd.vorcchave;

  finally
    freeandnil(lcnd);
  end;
End;

exports BuscaAtdCnd;

end.
