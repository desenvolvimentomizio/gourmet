unit ufepa;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,   
  
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfepa = class(Tfrmbase)
    registroepacodigo: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrotpacodigo: TIntegerField;
    registroepaidentificacao: TStringField;
    registroepalimite: TFloatField;
    registroepadata: TDateField;
    etd: tuniquery;
    etdetdcodigo: TIntegerField;
    tpa: tuniquery;
    tpatpacodigo: TIntegerField;
    Label1: TLabel;
    epacodigo: TDBEdit;
    Label4: TLabel;
    tpacodigo: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    epalimite: TDBEdit;
    Label8: TLabel;
    epadata: TDBEdit;
    tpatpaidentificacao: TStringField;
    registrotpaidentificacao: TStringField;
    etdetdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    registroepadoc1: TStringField;
    epadoc1: TDBEdit;
    epaidentificacao: TDBEdit;
    Label3: TLabel;
  private
  public
    { Public declarations }
  end;

var
  fepa: Tfepa;

constvplidmd='01.01.01.008-01';implementation

{$R *.dfm}

end.
