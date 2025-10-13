unit ufidm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfidm = class(Tfrmbase)
    registromdrchave: TIntegerField;
    etd: TUniQuery;
    etdidmmarca: TIntegerField;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdetdapelido: TStringField;
    etdetecodigo: TIntegerField;
    etdeteemail: TStringField;
    etdetecontato: TStringField;
    Panel1: TPanel;
    DBGListaete: TDBGrid;
    Detd: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fidm: Tfidm;

implementation

{$R *.dfm}

end.
