unit ufinf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tfinf = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bfechar: TBitBtn;
    plDetalhe: TPanel;
    PlTitulo: TPanel;
    DBLista: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  finf: Tfinf;

implementation

{$R *.dfm}

end.
