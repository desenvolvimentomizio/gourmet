unit ufamd;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfamd = class(Tfrmbase)
    registroamdchave: TIntegerField;
    registroaplcodigo: TIntegerField;
    apl: tuniquery;
    aplaplcodigo: TIntegerField;
    aplaplidentificacao: TStringField;
    mda: tuniquery;
    mdamdacodigo: TIntegerField;
    mdamdaidentificacao: TStringField;
    registromdacodigo: TIntegerField;
    registromdaidentificacao: TStringField;
    Label1: TLabel;
    amdchave: TDBEdit;
    Label3: TLabel;
    mdacodigo: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  famd: Tfamd;

implementation

{$R *.dfm}

procedure Tfamd.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
   self.registroaplcodigo.AsString:=self.vChaveMestre;
end;

end.
