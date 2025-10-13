unit uffcf;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Uni, MemDS, DBAccess;

type
  Tffcf = class(Tfrmbase)
    registrofcfchave: TIntegerField;
    registrofeccodigo: TStringField;
    registrofnccodigo: TIntegerField;
    fec: tuniquery;
    fecfeccodigo: TStringField;
    fecfecidentificacao: TStringField;
    registrofecidentificacao: TStringField;
    Label1: TLabel;
    fcfchave: TDBEdit;
    Label3: TLabel;
    feccodigo: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
  private
  public
    { Public declarations }
  end;

var
  ffcf: Tffcf;

implementation

{$R *.dfm}

procedure Tffcf.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  self.registrofnccodigo.AsString := self.vChaveMestre;

end;

end.
