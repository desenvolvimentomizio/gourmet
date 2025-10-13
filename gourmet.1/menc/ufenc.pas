unit ufenc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfenc = class(Tfrmbase)
    registroencchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroctacodigo: TIntegerField;
    cta: TUniQuery;
    ctactacodigo: TIntegerField;
    ctactaidentificacao: TStringField;
    registroctaidentificacao: TStringField;
    Label1: TLabel;
    encchave: TDBEdit;
    Label2: TLabel;
    ctacodigo: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fenc: Tfenc;

implementation

{$R *.dfm}

procedure Tfenc.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
   registroetdcodigo.AsString:=vChaveMestre;
end;

end.
