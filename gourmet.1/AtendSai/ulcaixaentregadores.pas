unit ulcaixaentregadores;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tlcaixaentregadores = class(TForm)
    listaOrcs: TDBGrid;
    plBotoes: TPanel;
    btConfirma: TButton;
    btCancela: TButton;
    Dclb: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lcaixaentregadores: Tlcaixaentregadores;

implementation

{$R *.dfm}

end.
