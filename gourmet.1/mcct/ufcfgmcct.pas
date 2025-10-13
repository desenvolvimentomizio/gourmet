unit ufcfgmcct;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfcfgmcct = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgmcctipos: TStringField;
    registrocfgmcctformavalor: TStringField;
    registrocfgmcctidentificador: TStringField;
    registrocfgmcctempercentual: TIntegerField;
    sen: TUniQuery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosencfgmcctempercentual: TStringField;
    registrocfgmcctusarenovacao: TIntegerField;
    registrosencfgmcctusarenovacao: TStringField;
    registrocfgmcctusadatafinal: TIntegerField;
    registrosencfgmcctusadatafinal: TStringField;
    registrocfgmccttipovalor: TStringField;
    Label1: TLabel;
    cfgcodigo: TDBEdit;
    Label2: TLabel;
    cfgmcctipos: TDBEdit;
    Label3: TLabel;
    cfgmcctformavalor: TDBEdit;
    Label4: TLabel;
    cfgmcctidentificador: TDBEdit;
    Label5: TLabel;
    cfgmcctempercentual: TDBEdit;
    Label6: TLabel;
    cfgmcctusarenovacao: TDBEdit;
    Label7: TLabel;
    cfgmcctusadatafinal: TDBEdit;
    Label8: TLabel;
    cfgmccttipovalor: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgmcct: Tfcfgmcct;

implementation

{$R *.dfm}

end.
