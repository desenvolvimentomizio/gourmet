unit ufrpgt;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, MemDS, DBAccess,      Vcl.Mask, Vcl.DBCtrls;

type
  Tfrpgt = class(TForm)
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    registro: tuniquery;
    consulta: tuniquery;
    DSRegistro: tunidatasource;
    registrorpgchave: TIntegerField;
    registropcgconta01: TIntegerField;
    registropcgconta02: TIntegerField;
    registropcgconta03: TIntegerField;
    registropcgconta04: TIntegerField;
    registropcgconta05: TIntegerField;
    registropcgccusto01: TIntegerField;
    registropcgccusto02: TIntegerField;
    registropcgccusto03: TIntegerField;
    registropcgccusto04: TIntegerField;
    registropcgccusto05: TIntegerField;
    Label1: TLabel;
    pcgconta01: TDBEdit;
    Label2: TLabel;
    pcgccusto01: TDBEdit;
    Label3: TLabel;
    pcgconta02: TDBEdit;
    Label4: TLabel;
    pcgccusto02: TDBEdit;
    Label5: TLabel;
    pcgconta03: TDBEdit;
    Label6: TLabel;
    pcgccusto03: TDBEdit;
    Label7: TLabel;
    pcgconta04: TDBEdit;
    Label8: TLabel;
    pcgccusto04: TDBEdit;
    Label9: TLabel;
    pcgconta05: TDBEdit;
    Label10: TLabel;
    pcgccusto05: TDBEdit;
    spdbcta01: TSpeedButton;
    Bvcta01: TBevel;
    pcgideconta01: TDBText;
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgestrutural: TStringField;
    pcgpcgidentificacao: TStringField;
    pcgestructa01: TDBText;
    registropcgestructa01: TStringField;
    registropcgestructa02: TStringField;
    registropcgestructa03: TStringField;
    registropcgestructa04: TStringField;
    registropcgestructa05: TStringField;
    registropcgestruccu01: TStringField;
    registropcgestruccu02: TStringField;
    registropcgestruccu03: TStringField;
    registropcgestruccu04: TStringField;
    registropcgestruccu05: TStringField;
    registropcgideconta01: TStringField;
    registropcgideconta02: TStringField;
    registropcgideconta03: TStringField;
    registropcgideconta04: TStringField;
    registropcgideconta05: TStringField;
    registropcgideccusto01: TStringField;
    registropcgideccusto02: TStringField;
    registropcgideccusto03: TStringField;
    registropcgideccusto04: TStringField;
    registropcgideccusto05: TStringField;
    Bvcta02: TBevel;
    Bvcta03: TBevel;
    Bvcta04: TBevel;
    Bvcta05: TBevel;
    pcgestructa02: TDBText;
    pcgideconta02: TDBText;
    pcgestructa03: TDBText;
    pcgideconta03: TDBText;
    pcgestructa04: TDBText;
    pcgideconta04: TDBText;
    pcgestructa05: TDBText;
    pcgideconta05: TDBText;
    spdbcta02: TSpeedButton;
    spdbcta03: TSpeedButton;
    spdbcta04: TSpeedButton;
    spdbcta05: TSpeedButton;
    spdbccu01: TSpeedButton;
    spdbccu02: TSpeedButton;
    spdbccu03: TSpeedButton;
    spdbccu04: TSpeedButton;
    spdbccu05: TSpeedButton;
    Bvccu01: TBevel;
    Bvccu02: TBevel;
    Bvccu03: TBevel;
    Bvccu04: TBevel;
    Bvccu05: TBevel;
    pcgestruccu01: TDBText;
    pcgideccusto01: TDBText;
    pcgestruccu02: TDBText;
    pcgideccusto02: TDBText;
    pcgestruccu03: TDBText;
    pcgideccusto03: TDBText;
    pcgestruccu04: TDBText;
    pcgideccusto04: TDBText;
    pcgestruccu05: TDBText;
    pcgideccusto05: TDBText;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frpgt: Tfrpgt;

implementation

{$R *.dfm}

end.
