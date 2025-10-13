unit uftco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  ufuncoes;

type
  Tftco = class(Tfrmbase)
    registrotcochave: TIntegerField;
    registrovhfcodigo: TIntegerField;
    registrottbcodigo: TIntegerField;
    registrotcodescricao: TStringField;
    registrotcovalorhora: TFloatField;
    registrotcohoras: TTimeField;
    registroflhchaveprimeira: TIntegerField;
    registroflhchavesegunda: TIntegerField;
    registroclbcodigo: TIntegerField;
    Label1: TLabel;
    tcochave: TDBEdit;
    Label2: TLabel;
    vhfcodigo: TDBEdit;
    ttbcodigo: TDBEdit;
    Label3: TLabel;
    tcodescricao: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    tcovalorhora: TDBEdit;
    Label6: TLabel;
    tcohoras: TDBEdit;
    Label7: TLabel;
    flhchaveprimeira: TDBEdit;
    Label8: TLabel;
    flhchavesegunda: TDBEdit;
    registrotcoregistro: TDateTimeField;
    vhf: TUniQuery;
    vhfvhfcodigo: TIntegerField;
    vhfvhfidentificacao: TStringField;
    registrovhfidentificacao: TStringField;
    ttb: TUniQuery;
    ttbttbidentificacao: TStringField;
    registrottbidentificacao: TStringField;
    flh: TUniQuery;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    registroflhflhchaveprimeira: TStringField;
    registroflhflhchavesegunda: TStringField;
    ttbttbcodigo: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftco: Tftco;

implementation

{$R *.dfm}

procedure Tftco.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrotcoregistro.AsString:=agora(application,ZCone);
  registroclbcodigo.AsInteger:=acesso.Usuario;
end;

end.
