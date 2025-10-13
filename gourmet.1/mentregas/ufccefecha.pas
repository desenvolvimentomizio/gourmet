unit ufccefecha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,ufuncoes, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfccefecha = class(Tfrmbase)
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroccechave: TIntegerField;
    registrocznchave: TIntegerField;
    registrocceabertura: TDateTimeField;
    registroccefechamento: TDateTimeField;
    registroccevalor: TFloatField;
    registroccequantidade: TIntegerField;
    registroccesobra: TFloatField;
    registroccefalta: TFloatField;
    Label1: TLabel;
    cceabertura: TDBEdit;
    Label2: TLabel;
    ccefechamento: TDBEdit;
    Label3: TLabel;
    ccevalor: TDBEdit;
    Label5: TLabel;
    ccesobra: TDBEdit;
    Label6: TLabel;
    ccefalta: TDBEdit;
    registroclbcodigo: TIntegerField;
    registroccevalorabertura: TFloatField;
    Label4: TLabel;
    ccevalorabertura: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fccefecha: Tfccefecha;

implementation

{$R *.dfm}

procedure Tfccefecha.FormShow(Sender: TObject);
begin
  inherited;
registroccefechamento.AsString:=agora(application,zcone);
registroccevalor.AsFloat:=0;
registroccequantidade.AsFloat:=0;
registroccesobra.AsFloat:=0;
registroccefalta.AsFloat:=0;
end;

end.
