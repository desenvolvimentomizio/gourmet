unit uffra;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, PngImageList;

type
  Tffra = class(Tfrmbase)
    registrofracodigo: TIntegerField;
    registrofraidentificacao: TStringField;
    registrofraidmd: TStringField;
    registrofranome: TStringField;
    registrobplcodigo: TIntegerField;
    bpl: TUniQuery;
    bplbplcodigo: TIntegerField;
    bplbplidentificacao: TStringField;
    Label1: TLabel;
    fracodigo: TDBEdit;
    Label2: TLabel;
    fraidentificacao: TDBEdit;
    Label3: TLabel;
    fraidmd: TDBEdit;
    Label4: TLabel;
    franome: TDBEdit;
    Label5: TLabel;
    bplcodigo: TDBEdit;
    registrobplidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ffra: Tffra;

  // Início ID do Módulo ffra
const
  vPlIdMd = '03.07.81.001-02';

  // Fim ID do Módulo ffra

implementation

{$R *.dfm}

procedure Tffra.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

end.
