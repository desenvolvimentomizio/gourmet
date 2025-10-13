unit ulbor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulbatbase, Data.DB, uni, 
    Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, ufuncoes, Vcl.Menus, DBAccess, MemDS;

type
  Tlbor = class(Tlbatbase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbor: Tlbor;

implementation

{$R *.dfm}

function BuscaAtdOrc(AOwner: TComponent; conexao: tuniconnection; usrcodigo: string; moccodigo: Integer; vchave: string): string;
Var
  i: Integer;
Begin
  try
    Application.CreateForm(Tlbor, lbor);
    lbor.zcone := conexao;
    lbor.vmoccodigo := moccodigo;
    lbor.vusrcodigo := usrcodigo;
    lbor.vDirRelat := ExtractFilePath(Application.ExeName) + 'relat\orcamento.fr3';

    For i := 0 To lbor.ComponentCount - 1 Do
      If lbor.Components[i] Is TUniQuery Then
        (lbor.Components[i] As TUniQuery).Connection := conexao;

    lbor.ShowModal;
    Result := lbor.vorcchave;

  finally
    lbor.Free;
  end;
End;

exports BuscaAtdOrc;

end.
