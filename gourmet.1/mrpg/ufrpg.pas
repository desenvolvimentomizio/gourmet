unit ufrpg;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Data.DB, MemDS, DBAccess, 
    
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask;

type
  Tfrpg = class(Tfrmbase)
    pcg: tuniquery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgestrutural: TStringField;
    pcgpcgidentificacao: TStringField;
    registrorpgchave: TIntegerField;
    registropcgconta01: TIntegerField;
    registropcgestructa01: TStringField;
    registropcgideconta01: TStringField;
    registropcgccusto01: TIntegerField;
    registropcgestruccu01: TStringField;
    registropcgideccusto01: TStringField;
    registropcgconta02: TIntegerField;
    registropcgestructa02: TStringField;
    registropcgideconta02: TStringField;
    registropcgccusto02: TIntegerField;
    registropcgestruccu02: TStringField;
    registropcgideccusto02: TStringField;
    registropcgconta03: TIntegerField;
    registropcgestructa03: TStringField;
    registropcgideconta03: TStringField;
    registropcgccusto03: TIntegerField;
    registropcgestruccu03: TStringField;
    registropcgideccusto03: TStringField;
    registropcgconta04: TIntegerField;
    registropcgestructa04: TStringField;
    registropcgideconta04: TStringField;
    registropcgccusto04: TIntegerField;
    registropcgestruccu04: TStringField;
    registropcgideccusto04: TStringField;
    registropcgconta05: TIntegerField;
    registropcgestructa05: TStringField;
    registropcgideconta05: TStringField;
    registropcgccusto05: TIntegerField;
    registropcgestruccu05: TStringField;
    registropcgideccusto05: TStringField;
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
    pcgestructa01: TDBText;
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
    procedure spdbcta01Click(Sender: TObject);
    procedure spdbcta02Click(Sender: TObject);
    procedure spdbcta03Click(Sender: TObject);
    procedure spdbcta04Click(Sender: TObject);
    procedure spdbcta05Click(Sender: TObject);
    procedure spdbccu01Click(Sender: TObject);
    procedure spdbccu02Click(Sender: TObject);
    procedure spdbccu03Click(Sender: TObject);
    procedure spdbccu04Click(Sender: TObject);
    procedure spdbccu05Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
  public
    { Public declarations }
  end;

var
  frpg: Tfrpg;

  // Início ID do Módulo frafop
const
  vPlIdMd = '02.02.16.010-01';

  // Fim ID do Módulo frafop

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string;
  vmodo: string): string;
var
  vch: string;
begin
  try
    frpg := Tfrpg.create(AOwner);
    frpg.vusrcodigo := vusuario;
    frpg.vchave := '1';
    frpg.zcone := conexao;
    frpg.ShowModal;
    result := vch;
  finally
    freeandnil(frpg);
  end;

end;

exports formu;

procedure Tfrpg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  inherited;

  pcg.Open;

  if registro.RecordCount = 0 then
  begin
    registro.Append;
  end
  else
  begin
    registro.Edit;
  end;

  self.ajustabotoes;
end;

procedure Tfrpg.spdbccu01Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgccusto01, registropcgestruccu01);
  if vchavepesquisa <> '' then
  begin
    pcgccusto01.Field.AsString := vchavepesquisa;
  end;
  pcgccusto01.SetFocus;

end;

procedure Tfrpg.spdbccu02Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgccusto02, registropcgestruccu02);
  if vchavepesquisa <> '' then
  begin
    pcgccusto02.Field.AsString := vchavepesquisa;
  end;
  pcgccusto02.SetFocus;

end;

procedure Tfrpg.spdbccu03Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgccusto03, registropcgestruccu03);
  if vchavepesquisa <> '' then
  begin
    pcgccusto03.Field.AsString := vchavepesquisa;
  end;
  pcgccusto03.SetFocus;

end;

procedure Tfrpg.spdbccu04Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgccusto04, registropcgestruccu04);
  if vchavepesquisa <> '' then
  begin
    pcgccusto04.Field.AsString := vchavepesquisa;
  end;
  pcgccusto04.SetFocus;

end;

procedure Tfrpg.spdbccu05Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgccusto05, registropcgestruccu05);
  if vchavepesquisa <> '' then
  begin
    pcgccusto05.Field.AsString := vchavepesquisa;
  end;
  pcgccusto05.SetFocus;

end;

procedure Tfrpg.spdbcta01Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgconta01, registropcgestructa01);
  if vchavepesquisa <> '' then
  begin
    pcgconta01.Field.AsString := vchavepesquisa;
  end;
  pcgconta01.SetFocus;

end;

procedure Tfrpg.spdbcta02Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgconta02, registropcgestructa02);
  if vchavepesquisa <> '' then
  begin
    pcgconta02.Field.AsString := vchavepesquisa;
  end;
  pcgconta02.SetFocus;

end;

procedure Tfrpg.spdbcta03Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgconta03, registropcgestructa03);
  if vchavepesquisa <> '' then
  begin
    pcgconta03.Field.AsString := vchavepesquisa;
  end;
  pcgconta03.SetFocus;

end;

procedure Tfrpg.spdbcta04Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgconta04, registropcgestructa04);
  if vchavepesquisa <> '' then
  begin
    pcgconta04.Field.AsString := vchavepesquisa;
  end;
  pcgconta04.SetFocus;

end;

procedure Tfrpg.spdbcta05Click(Sender: TObject);
begin
  inherited;
  vchavepesquisa := '';
  self.criabusca(pcgconta05, registropcgestructa05);
  if vchavepesquisa <> '' then
  begin
    pcgconta05.Field.AsString := vchavepesquisa;
  end;
  pcgconta05.SetFocus;

end;

end.
