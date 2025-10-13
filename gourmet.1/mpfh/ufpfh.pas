unit ufpfh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, ufuncoes;

type
  Tfpfh = class(Tfrmbase)
    registropfhchave: TIntegerField;
    registroflhchave: TIntegerField;
    registrovhfcodigo: TIntegerField;
    registropfhhoras: TIntegerField;
    pfhchave: TDBEdit;
    Label1: TLabel;
    flhchave: TDBEdit;
    Label2: TLabel;
    tlocodigo: TDBEdit;
    Label3: TLabel;
    vhfcodigo: TDBEdit;
    Label4: TLabel;
    pfhhoras: TDBEdit;
    Label5: TLabel;
    tlo: TUniQuery;
    tlotlocodigo: TIntegerField;
    tlotloidentificacao: TStringField;
    flh: TUniQuery;
    flhflhchave: TIntegerField;
    flhflhidentificacao: TStringField;
    registroflhidentificacao: TStringField;
    vhf: TUniQuery;
    vhfvhfcodigo: TIntegerField;
    vhfvhfidentificacao: TStringField;
    registrovhfidentificacao: TStringField;
    registrotlocodigo: TIntegerField;
    registrotloidentificacao: TStringField;
    registroclbcodigo: TIntegerField;
    registropfhregistro: TDateTimeField;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fpfh: Tfpfh;

implementation

{$R *.dfm}

procedure Tfpfh.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

registroclbcodigo.AsInteger:=acesso.Usuario;
registropfhregistro.AsString:=agora(application, zcone);


end;

end.
