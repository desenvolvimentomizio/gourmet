unit ulbos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ulbatbase, Data.DB, uni, 
    Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Menus;

type
  Tlbos = class(Tlbatbase)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbos: Tlbos;

implementation

{$R *.dfm}

function BuscaAtdOse(AOwner: TComponent; conexao: tuniconnection; usrcodigo: string; moccodigo: Integer; vchave: string): string;
Var
  i: Integer;
Begin
  try
    application.CreateForm(Tlbos, lbos);
    lbos.zcone := conexao;
    lbos.vmoccodigo := moccodigo;
    lbos.vusrcodigo := usrcodigo;
    lbos.vDirRelat := ExtractFilePath(application.ExeName) + 'relat\ordemservico.fr3';

    For i := 0 To lbos.ComponentCount - 1 Do
    Begin
      If lbos.Components[i] Is tuniquery Then
      Begin
        (lbos.Components[i] As tuniquery).Connection := conexao;
      End;
    End;

    lbos.ShowModal;
    result := lbos.vorcchave;

  finally
    freeandnil(lbos);
  end;
End;

exports BuscaAtdOse;

end.
