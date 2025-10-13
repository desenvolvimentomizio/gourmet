unit ufftfd;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftfd = class(Tfrmbase)
    registrotfdcodigo: TIntegerField;
    registrotfdidentificacao: TStringField;
    Label1: TLabel;
    tfdcodigo: TDBEdit;
    Label2: TLabel;
    tfdidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftfd: Tftfd;

implementation

{$R *.dfm}

end.
