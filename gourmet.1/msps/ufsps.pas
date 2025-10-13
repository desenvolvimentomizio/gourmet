unit ufsps;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfsps = class(Tfrmbase)
    registrospscodigo: TIntegerField;
    registrouiscodigo: TStringField;
    registroppscodigo: TStringField;
    Label1: TLabel;
    spscodigo: TDBEdit;
    Label2: TLabel;
    ppscodigo: TDBEdit;
    pps: TUniQuery;
    ppsppscodigo: TStringField;
    ppsppsidentificacao: TStringField;
    registroppsidentificacao: TStringField;
    ufs: TUniQuery;
    ufsufsnome: TStringField;
    registroufsnome: TStringField;
    Label3: TLabel;
    ufscodigo: TDBEdit;
    Label4: TLabel;
    uiscodigo: TDBEdit;
    ufsufscodigo: TStringField;
    registroufscodigo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fsps: Tfsps;

implementation

{$R *.dfm}

end.
