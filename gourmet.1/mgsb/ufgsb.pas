unit ufgsb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfgsb = class(Tfrmbase)
    registrogsbcodigo: TIntegerField;
    registrogsbidentificacao: TStringField;
    Label1: TLabel;
    gsbcodigo: TDBEdit;
    Label2: TLabel;
    gsbidentificacao: TDBEdit;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgsb: Tfgsb;
 // In�cio ID do M�dulo fgsb
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do M�dulo fgsb


implementation

{$R *.dfm}

procedure Tfgsb.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

end.
