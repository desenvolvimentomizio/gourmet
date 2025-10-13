unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, MemDS, DBAccess,
  Uni, UniProvider, MySQLUniProvider;

type
  TForm1 = class(TForm)
    producao: TUniConnection;
    MySQLUniProvider: TMySQLUniProvider;
    UniQueryProducao: TUniQuery;
    nova: TUniConnection;
    UniQueryNova: TUniQuery;
    Button1: TButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
