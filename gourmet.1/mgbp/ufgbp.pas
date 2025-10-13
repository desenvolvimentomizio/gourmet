unit ufgbp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,   
  
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfgbp = class(Tfrmbase)
    registrogbpcodigo: TIntegerField;
    registrogbpidentificacao: TStringField;
    Label1: TLabel;
    gbpcodigo: TDBEdit;
    Label2: TLabel;
    gbpidentificacao: TDBEdit;
  private
  public
    { Public declarations }
  end;

var
  fgbp: Tfgbp;

constvplidmd='02.02.16.006-01';implementation

{$R *.dfm}

end.
