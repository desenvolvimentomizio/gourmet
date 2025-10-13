unit ufgcc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  Tfgcc = class(Tfrmbase)
    registrogcccodigo: TIntegerField;
    registrogccmascara: TStringField;
    registrogccidentificacao: TStringField;
    Label1: TLabel;
    gcccodigo: TDBEdit;
    Label2: TLabel;
    gccmascara: TDBEdit;
    Label3: TLabel;
    gccidentificacao: TDBEdit;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgestrutural: TStringField;
    ccgccgidentificacao: TStringField;
    ccggcccodigo: TIntegerField;
    ccgseacodigo: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fgcc: Tfgcc;

implementation

{$R *.dfm}

procedure Tfgcc.bconfirmaClick(Sender: TObject);
begin
  inherited;
  ccg.Open;
  ccg.Append;
  consulta.Close;
  consulta.sql.Text := 'select max(ccgcodigo) as chave from ccg';
  consulta.Open;
  ccgccgcodigo.asinteger := consulta.fields[0].asinteger + 1;
  ccgccgestrutural.AsString := self.registrogcccodigo.AsString;
  ccgccgidentificacao.AsString := self.registrogccidentificacao.AsString;
  ccggcccodigo.asinteger := self.registrogcccodigo.asinteger;
  ccgseacodigo.asinteger := 1;
  ccg.post;

end;

end.
