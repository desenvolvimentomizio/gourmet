unit ufajustatng;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfajustatng = class(Tfrmbase)
    registrotitcodigo: TIntegerField;
    registrotngcodigo: TIntegerField;
    Label1: TLabel;
    titcodigo: TDBEdit;
    Label2: TLabel;
    tngcodigo: TDBEdit;
    tng: TUniQuery;
    tngtngcodigo: TIntegerField;
    tngtngidentificacao: TStringField;
    registrotngidentificacao: TStringField;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fajustatng: Tfajustatng;

implementation

{$R *.dfm}

procedure Tfajustatng.bconfirmaClick(Sender: TObject);
begin
  consulta.Close;
  consulta.SQL.Text:='update rfi set tngcodigo='+tngcodigo.Field.AsString +' where titcodigo='+titcodigo.Field.AsString;
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text:='update v_rfi set tngcodigo='+tngcodigo.Field.AsString +' where titcodigo='+titcodigo.Field.AsString;
  consulta.ExecSQL;

  inherited;


end;

end.

