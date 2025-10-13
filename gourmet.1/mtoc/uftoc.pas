unit uftoc;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tftoc = class(Tfrmbase)
    registrotoccodigo: TIntegerField;
    registrotocidentificacao: TStringField;
    Label1: TLabel;
    toccodigo: TDBEdit;
    Label2: TLabel;
    tocidentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftoc: Tftoc;

implementation

{$R *.dfm}

end.
