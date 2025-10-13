unit uftog;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, DAScript, UniScript, Vcl.StdCtrls,
  Vcl.DBCtrls, Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, System.SysUtils;

type
  Tftog = class(Tfrmbase)
    registrotogcodigo: TIntegerField;
    registrotogidentificacao: TStringField;
    registrotogcampo: TStringField;
    registrotogdescricao: TStringField;
    registrotogtabela: TStringField;
    Label1: TLabel;
    togcodigo: TDBEdit;
    Label2: TLabel;
    togidentificacao: TDBEdit;
    Label3: TLabel;
    togcampo: TDBEdit;
    Label4: TLabel;
    togtabela: TDBEdit;
    Label5: TLabel;
    togdescricao: TDBMemo;
    UniScript: TUniScript;
    registrogtocodigo: TIntegerField;
    gto: TUniQuery;
    gtogtocodigo: TIntegerField;
    gtogtoidentificacao: TStringField;
    registrogtoidentificacao: TStringField;
    Label6: TLabel;
    gtocodigo: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ftog: Tftog;

const
  vPlIdMd = '03.06.81.008-02';

implementation

{$R *.dfm}

procedure Tftog.bconfirmaClick(Sender: TObject);
begin
  inherited;
  UniScript.Connection := zcone;

  UniScript.sql.Clear;
  UniScript.sql.Text := 'DROP PROCEDURE IF EXISTS AtualizaColunas//';
  UniScript.sql.Add('CREATE DEFINER = ' + chr(39) + 'root' + chr(39) + '@' + chr(39) + '%' + chr(39) + ' PROCEDURE AtualizaColunas ()');
  UniScript.sql.Add('BEGIN ');
  UniScript.sql.Add('IF NOT EXISTS (SELECT * FROM information_schema.COLUMNS WHERE TABLE_SCHEMA = DATABASE() ');
  UniScript.sql.Add('AND COLUMNS.TABLE_NAME = ' + chr(39) + lowercase(self.registrotogtabela.AsString) + chr(39) + ' AND COLUMNS.COLUMN_NAME = ' + chr(39) +
    lowercase(self.registrotogcampo.AsString) + chr(39) + ') THEN ');

  UniScript.sql.Add('ALTER TABLE ' + lowercase(self.registrotogtabela.AsString) + '  ADD COLUMN ' + lowercase(self.registrotogcampo.AsString) +
    ' int(11) DEFAULT NULL COMMENT ' + chr(39) + lowercase(self.registrotogidentificacao.AsString) + chr(39) + ';');

  UniScript.sql.Add('END IF;');
  UniScript.sql.Add('END//');
  UniScript.sql.Add('CALL AtualizaColunas()//');

  UniScript.Execute;

end;

procedure Tftog.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

end;

end.
