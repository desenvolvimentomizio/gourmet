unit ulbom;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,uni, Data.DB, MemDS, DBAccess;

type
  Tlbom = class(TForm)
    consulta: tuniquery;
  private
    { Private declarations }
    Fzcone: tuniconnection;

  public
    { Public declarations }
   vorcchave:string;
   vmoccodigo:Integer;
   vusrcodigo:string;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  end;
var
  lbom: Tlbom;

implementation

{$R *.dfm}


function BuscaMesa(AOwner: TComponent; conexao: tuniconnection; usrcodigo: string; moccodigo: Integer; vchave: string): string;
Var
  i: Integer;
Begin
  try
    application.CreateForm(Tlbom, lbom);
    lbom.zcone := conexao;
    lbom.vmoccodigo := moccodigo;
    lbom.vusrcodigo := usrcodigo;

    For i := 0 To lbom.ComponentCount - 1 Do
    Begin
      If lbom.Components[i] Is tuniquery Then
      Begin
        (lbom.Components[i] As tuniquery).Connection := conexao;
      End;
    End;
    lbom.consulta.close;
    lbom.consulta.SQL.Text:='select orcchave from orc where orcdataencerr is null and orcmesa='+ vchave ;
    lbom.consulta.Open;
    if lbom.consulta.IsEmpty then
          lbom.vorcchave:=''
    else
         lbom.vorcchave:=lbom.consulta.Fields[0].AsString;
    result := lbom.vorcchave;
  finally
    freeandnil(lbom);
  end;
End;

exports BuscaMesa;


end.
