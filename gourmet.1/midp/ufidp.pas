unit ufidp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfidp = class(Tfrmbase)
    registroidpcodigo: TIntegerField;
    registroidpidentificacao: TStringField;
    Label1: TLabel;
    idpcodigo: TDBEdit;
    Label2: TLabel;
    idpidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fidp: Tfidp;

implementation

{$R *.dfm}

end.
