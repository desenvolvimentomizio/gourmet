unit ufproducao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  Tfproducao = class(TForm)
  private
    { Private declarations }
  public
    { Public declarations }
    vpOrcchave:string;
  end;

var
  fproducao: Tfproducao;

implementation

{$R *.dfm}

end.
