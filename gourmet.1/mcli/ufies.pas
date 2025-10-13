unit ufies;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, MemDS, DBAccess, Uni;

type
  Tfies = class(TForm)
    edr: TUniQuery;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Dedr: TDataSource;
    DBGrid1: TDBGrid;
    edredrinscest: TStringField;
    edretdcodigo: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fies: Tfies;

implementation

{$R *.dfm}

end.
