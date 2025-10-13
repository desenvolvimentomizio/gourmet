unit ufihg;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils,uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess,     
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls;

type
  Tfihg = class(TForm)
    Label1: TLabel;
    EdtArquivo: TEdit;
    spdbpcgdebito: TSpeedButton;
    mostra: TProgressBar;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    abrirarquivo: TOpenDialog;
    consulta: tuniquery;
    phg: tuniquery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    phgphgcomplemento: TStringField;
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spdbpcgdebitoClick(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
  private
    { Private declarations }
    Fzcone: tuniconnection;

  public
    { Public declarations }
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
    { Public declarations }
  end;

var
  fihg: Tfihg;

implementation

{$R *.dfm}

function importahistxtdc(AOwner: TComponent; conexao: tuniconnection; vusuario:string): string;
begin
  try
    fihg := Tfihg.Create(AOwner);
    fihg.zcone := conexao;
    fihg.ShowModal;
  finally
    freeandnil(fihg);
  end;
  result := '';
end;

exports importahistxtdc;

procedure Tfihg.bcancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfihg.bconfirmaClick(Sender: TObject);
var
  i: Integer;
  arq: tstringlist;
  linha: string;
  vphgcodigo: string;
  vphgidentificacao: string;
  vphgcomplemento: string;
  vtescod: Integer;
begin

  consulta.Close;
  consulta.SQL.Text := 'delete from phg';
  consulta.ExecSQL;

  phg.Open;

  try
    arq := tstringlist.Create;
    if fileexists(EdtArquivo.Text) then
    begin
      arq.LoadFromFile(EdtArquivo.Text);
      mostra.Max := arq.Count;
      for i := 0 to arq.Count - 1 do
      begin
        mostra.Position := mostra.Position + 1;
        linha := arq[i];

        try
          vtescod := strtoint(trim(copy(linha, 1, 15)));

          vphgcodigo := trim(copy(linha, 1, 15));
          vphgidentificacao := trim(copy(linha, 13, 100));
          vphgcomplemento := '';

          phg.Append;
          phgphgcodigo.AsString := vphgcodigo;
          phgphgidentificacao.AsString := vphgidentificacao;
          phgphgcomplemento.AsString := vphgcomplemento;

          phg.Post;
        except

        end;

      end;
      showmessage('Importação do Plano de Contas realizado com sucesso!');
      Close;

    end;
  finally
    freeandnil(arq);
  end;

end;

procedure Tfihg.FormShow(Sender: TObject);
var
  i: Integer;
begin

  for i := 0 to self.ComponentCount - 1 do
  begin
    if self.Components[i] is tuniquery then
    begin
      (self.Components[i] as tuniquery).Connection := zcone;
    end;

  end;

end;

procedure Tfihg.spdbpcgdebitoClick(Sender: TObject);
begin
  if abrirarquivo.Execute then
  begin
    EdtArquivo.Text := abrirarquivo.FileName;
  end;
end;

end.
