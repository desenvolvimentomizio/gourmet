unit uftcs;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, Data.DB, MemDS, DBAccess,     
 Vcl.ComCtrls, Vcl.Buttons,
  Vcl.ExtCtrls;

type
  Tftcs = class(Tfrmbase)
    registrotcsidentificacao: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    tcsidentificacao: TDBEdit;
    registrotcscodigo: TStringField;
    tcsCodigo: TDBEdit;
  private
  public
    { Public declarations }
  end;

var
  ftcs: Tftcs;

constvplidmd='03.08.18.002-01';implementation

{$R *.dfm}

end.
