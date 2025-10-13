unit uffflh;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,     
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask,
  System.Actions, Vcl.ActnList;

type
  Tfflh = class(Tfrmbase)
    efl: tuniquery;
    registroflhchave: TIntegerField;
    e: TIntegerField;
    registroeflcodigo: TIntegerField;
    efleflidentificacao: TStringField;
    registroflhmes: TStringField;
    registroflhano: TStringField;
    registroflhdtinicial: TDateField;
    registroflhdtfinal: TDateField;
    registroflhdtpgto: TDateField;
    Label1: TLabel;
    flhchave: TDBEdit;
    Label2: TLabel;
    eflcodigo: TDBEdit;
    Label4: TLabel;
    flhmes: TDBEdit;
    Label5: TLabel;
    flhano: TDBEdit;
    Label6: TLabel;
    flhdtinicial: TDBEdit;
    Label7: TLabel;
    flhdtfinal: TDBEdit;
    Label8: TLabel;
    flhdtpgto: TDBEdit;
    registroeflidentificacao: TStringField;
    registroflhIdentificacao: TStringField;
    Label3: TLabel;
    flhIdentificacao: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fflh: Tfflh;

implementation

{$R *.dfm}

end.
