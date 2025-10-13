unit ufrdcnrautoNFCe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls;

type
  TfrdcnrautoNFCe = class(Tfrmbase)
    registrodtlchave: TIntegerField;
    registrordcnrauto: TStringField;
    Label1: TLabel;
    dtlchave: TDBEdit;
    Label2: TLabel;
    rdcnrauto: TDBEdit;
    procedure registroAfterEdit(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frdcnrautoNFCe: TfrdcnrautoNFCe;

implementation

{$R *.dfm}

procedure TfrdcnrautoNFCe.registroAfterEdit(DataSet: TDataSet);
begin
  inherited;
   registrordcnrauto.AsString:='';
end;

end.
