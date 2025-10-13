unit uffsr;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs,     frxClass, frxDBSet,
  frxDACComponents, frxUniDACComponents

type
  Tffsr = class(TForm)
    frxUniDACComponents: TfrxUniDACComponents;
    Relatorio: TfrxReport;
    frxTabela: TfrxDBDataset;
  private
    { Private declarations }
    Fzcone: tuniconnection;
  public
    { Public declarations }
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  end;

var
  ffsr: Tffsr;

implementation

{$R *.dfm}

end.
