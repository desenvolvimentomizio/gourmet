unit ufeta;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, 
    Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfeta = class(Tfrmbase)
    registroetacodigo: TIntegerField;
    registroetaidentificacao: TStringField;
    Label1: TLabel;
    etacodigo: TDBEdit;
    Label2: TLabel;
    etaidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  feta: Tfeta;

implementation

{$R *.dfm}

end.
