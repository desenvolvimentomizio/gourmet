unit ufvrb;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,   
  
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfvrb = class(Tfrmbase)
    registrovrbcodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    registrovrbidentificacao: TStringField;
    ced: tuniquery;
    cedcedcodigo: TIntegerField;
    cedcedidentificacao: TStringField;
    Label1: TLabel;
    vrbcodigo: TDBEdit;
    Label2: TLabel;
    cedcodigo: TDBEdit;
    Label3: TLabel;
    vrbidentificacao: TDBEdit;
    registrocefidentificacao: TStringField;
  private
  public
    { Public declarations }
  end;

var
  fvrb: Tfvrb;

constvplidmd='02.02.16.013-01';implementation

{$R *.dfm}

end.
