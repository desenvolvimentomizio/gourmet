unit uffffi;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfffi = class(Tfrmbase)
    registrofficodigo: TIntegerField;
    registroffiidentificacao: TStringField;
    registroffitipo: TIntegerField;
    Label1: TLabel;
    fficodigo: TDBEdit;
    Label2: TLabel;
    ffiidentificacao: TDBEdit;
    Label3: TLabel;
    DBRadioGroup1: TDBRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fffi: Tfffi;

implementation

{$R *.dfm}

end.
