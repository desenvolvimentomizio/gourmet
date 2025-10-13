unit ufAjustaTelefone;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.ExtCtrls, Vcl.ComCtrls, ufuncoes;

type
  TfAjustaTelefone = class(TForm)
    Panel1: TPanel;
    ProgressBar1: TProgressBar;
    inicializar: TTimer;
    Consulta: TUniQuery;
    etf: TUniQuery;
    etfetfcodigo: TIntegerField;
    etfetftelefone: TStringField;
    procedure inicializarTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure VerificaTelefone;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAjustaTelefone: TfAjustaTelefone;

implementation

{$R *.dfm}

procedure TfAjustaTelefone.FormShow(Sender: TObject);
begin
  inicializar.Enabled := True;
end;

procedure TfAjustaTelefone.inicializarTimer(Sender: TObject);
begin
  inicializar.Enabled := False;
  VerificaTelefone;

end;

procedure TfAjustaTelefone.VerificaTelefone;
var
  I, t: Integer;
  nume: string;
begin

  etf.Open;
  etf.First;

  ProgressBar1.Max := etf.RecordCount;
  I := 0;
  while not etf.Eof do
  begin
    Inc(I);
    ProgressBar1.Position := I;

    etf.Edit;
    nume := SoNumeros(etfetftelefone.AsString);
    t := length(nume);
    case t of
      8:
        nume := '66' + nume;
      7:
        nume := '663' + nume;
      11:
        nume := copy(nume, 2, 10);

    end;

    etfetftelefone.AsString := SoNumeros(nume);
    etf.Post;
    etf.Next;
  end;

  Consulta.Close;
  Consulta.SQL.Text := 'UPDATE etf ';
  Consulta.SQL.Add('SET etftelefone = CONCAT(SUBSTRING(etftelefone, 1, 2), ' + QuotedStr('9') + ', SUBSTRING(etftelefone, 3, 8))');
  Consulta.SQL.Add('WHERE LENGTH(etftelefone) = 10 ');
  Consulta.SQL.Add('AND (SUBSTRING(etftelefone, 1, 3) = ' + QuotedStr('669') + ' ');
  Consulta.SQL.Add('OR SUBSTRING(etftelefone, 1, 3) = ' + QuotedStr('668')+')');
  Consulta.ExecSQL;

  ModalResult := mrOk;
end;

end.
