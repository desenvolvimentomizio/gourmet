unit ufetc;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfetc = class(Tfrmbase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    registroectidentificacao: TStringField;
    registroecttelefone: TStringField;
    ectidentifica: TDBEdit;
    ecttelefone: TDBEdit;
    registroectcodigo: TIntegerField;
    ectcodigo: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fetc: Tfetc;

implementation

{$R *.dfm}

end.
