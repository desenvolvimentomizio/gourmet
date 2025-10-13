unit uftfn;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftfn = class(Tfrmbase)
    registrotfncodigo: TIntegerField;
    registrotfnidentificacao: TStringField;
    Label1: TLabel;
    tfncodigo: TDBEdit;
    Label2: TLabel;
    tfnidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftfn: Tftfn;

implementation

{$R *.dfm}

end.
