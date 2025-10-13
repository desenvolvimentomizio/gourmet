unit uftabelas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids, MemDS,
  DBAccess, Uni, VirtualTable;

type
  Tftabelas = class(TForm)
    Dconsulta: TDataSource;
    DBGridTabelas: TDBGrid;
    tabes: TVirtualTable;
    tabestabela: TStringField;
    tabesregistros: TIntegerField;
    tabescampos: TIntegerField;
    procedure DBGridTabelasTitleClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftabelas: Tftabelas;

implementation

{$R *.dfm}

procedure Tftabelas.DBGridTabelasTitleClick(Column: TColumn);
begin
self.tabes.IndexFieldNames:=Column.FieldName;
end;

end.
