unit ufbpl;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, PngImageList, System.ImageList;

type
  Tfbpl = class(Tfrmbase)
    registrobplcodigo: TIntegerField;
    registrobplidentificacao: TStringField;
    registrobplnomearq: TStringField;
    Label1: TLabel;
    bplcodigo: TDBEdit;
    Label2: TLabel;
    bplidentificacao: TDBEdit;
    Label3: TLabel;
    bplnomearq: TDBEdit;
    registrobplfranome: TStringField;
    Label4: TLabel;
    bplfranome: TDBEdit;
    registrobplfuncao: TStringField;
    Label5: TLabel;
    bplfuncao: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbpl: Tfbpl;

const
  vPlIdMd = '03.07.80.013-02';

implementation

{$R *.dfm}

procedure Tfbpl.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
