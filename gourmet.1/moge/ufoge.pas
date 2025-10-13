unit ufoge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,ufuncoes, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tfoge = class(Tfrmbase)
    registroogechave: TIntegerField;
    registroogeidentificacao: TStringField;
    registroogedatainicial: TDateField;
    registroogedatafinal: TDateField;
    registroogepercotimista: TFloatField;
    registroogeperpecimista: TFloatField;
    registroogeestagio: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroogeregistro: TDateTimeField;
    Label1: TLabel;
    Label2: TLabel;
    ogechave: TDBEdit;
    ogeidentificacao: TDBEdit;
    ogeano: TDBEdit;
    Label3: TLabel;
    registroogeano: TIntegerField;
    Label4: TLabel;
    ogedatainicial: TDBEdit;
    Label5: TLabel;
    ogedatafinal: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  foge: Tfoge;

implementation

{$R *.dfm}

procedure Tfoge.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

registroogepercotimista.AsFloat:=0;
registroogeperpecimista.AsFloat:=0;
registroogeestagio.AsInteger:=1;
registroclbcodigo.AsInteger:=acesso.Usuario;
registroogeregistro.AsString:=agora(application,ZCone);

end;

end.
