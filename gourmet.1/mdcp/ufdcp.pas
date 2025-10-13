unit ufdcp;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, 
System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess,   
  
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfdcp = class(Tfrmbase)
    registrodcpcodigo: TIntegerField;
    registrodcpcampo: TStringField;
    registrodcpdescricao: TStringField;
    Label1: TLabel;
    dcpcodigo: TDBEdit;
    Label2: TLabel;
    dcpcampo: TDBEdit;
    Label3: TLabel;
    dcpdescricao: TDBMemo;
    Label4: TLabel;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    registrosenspedfiscal: TStringField;
    registrodcpspedfiscal: TIntegerField;
    dcpspedfiscal: TDBEdit;
  private
  public
    { Public declarations }
  end;

var
  fdcp: Tfdcp;

implementation

{$R *.dfm}

end.
