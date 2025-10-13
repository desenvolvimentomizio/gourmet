unit ufetd;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfetd = class(Tfrmbase)
    registromeschave: TIntegerField;
    registroetdcodigo: TIntegerField;
    Label1: TLabel;
    meschave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fetd: Tfetd;
const
  vPlIdMd = '02.04.88.001-02';

implementation

{$R *.dfm}

procedure Tfetd.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

end.
