unit ufcarga;

interface

uses
  Winapi.Windows, Winapi.Messages, amSplitter, System.SysUtils, uni, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.ExtCtrls, Vcl.Buttons, Data.DB, MemDS, DBAccess;

type
  Tfcarga = class(TForm)
    pbotoes: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    Bevel1: TBevel;
    mostra: TProgressBar;
    Label1: TLabel;
    tipocarga: TComboBox;
    pro: tuniquery;
    consulta: tuniquery;
    Label4: TLabel;
    cfg: tuniquery;
    cfgcfgvertabelaibpt: TIntegerField;
    apv: tuniquery;
    apvapvprecoav: TFloatField;
    apvapvprecoap: TFloatField;
    apvapvdatahora: TDateTimeField;
    apvclbidentificacao: TStringField;
    destinocarga: TLabel;
    apvpuncodigo: TIntegerField;
    apvapvchave: TIntegerField;
    produtoaenviados: TLabel;
    procedure bcancelaClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fzcone: tuniconnection;
    procedure criarquivopro;
    { Private declarations }
  public
    { Public declarations }
    vusrcodigo: String;
  published

    property zcone: tuniconnection read Fzcone write Fzcone;
  end;

var
  fcarga: Tfcarga;

implementation

{$R *.dfm}

uses ufuncoes;

procedure Tfcarga.FormShow(Sender: TObject);
Var
  tq: integer;
Begin

  For tq := 0 To self.ComponentCount - 1 Do
  Begin
    If (Components[tq] Is tuniquery) Then
    Begin
      (Components[tq] As tuniquery).Connection := zcone;
    End;

    If (Components[tq] Is tunitable) Then
    Begin
      (Components[tq] As tunitable).Connection := zcone;
    End;
  End;

  tipocarga.text := 'Enviar TODOS';
  destinocarga.Caption := 'TODOS';

end;

procedure Tfcarga.bcancelaClick(Sender: TObject);
begin
  Close;
end;

procedure Tfcarga.bconfirmaClick(Sender: TObject);
Begin

  if tipocarga.Text='Enviar TODOS' then
  begin
  consulta.Close;
  consulta.SQL.Clear;
  consulta.SQL.Add('update pro set procarga=1');
  consulta.Execsql

  end;


  criarquivopro;


  SHOWMESSAGE('Carga enviada com sucesso !');
  self.bcancela.Click;

end;

Procedure Tfcarga.criarquivopro;
var
  nv1: String;
  nv2: String;
  i:integer;
Begin
  pro.close;
  pro.Open;
  mostra.Max := self.pro.RecordCount;

  while not pro.Eof do
  begin
    mostra.Position := mostra.Position + 1;
    Application.ProcessMessages;

    apv.Close;

    apv.Open;
    apv.Params[0].asstring := self.pro.Fields[0].asstring;
    apv.Open;

    if not apv.IsEmpty then
    begin
      i:=i+1;
      produtoaenviados.Caption:='Produtos enviados: '+inttostr(i);
      Application.ProcessMessages;
      nv1 := self.apvapvprecoav.asstring;
      nv2 := self.apvapvprecoap.asstring;

      consulta.Close;
      consulta.SQL.text := 'UPDATE pun SET ';
      consulta.SQL.Add('punprecoap = ' + Trim(BuscaTroca(nv2, ',', '.')) + ', ');
      consulta.SQL.Add('punprecoav = ' + Trim(BuscaTroca(nv1, ',', '.')) + ' ');
      consulta.SQL.Add('WHERE puncodigo = ' + self.apvpuncodigo.asstring);
      consulta.Execsql;

      apv.First;
      while not apv.Eof do
      begin
        consulta.Close;
        consulta.SQL.text := 'UPDATE apv SET ';
        consulta.SQL.Add('apvdthoraaplicado = ' + chr(39) +ajustadata(datetostr(date))+' '+timetostr(time) + chr(39) + ', ');
        consulta.SQL.Add('spvcodigo = 2 ');
        consulta.SQL.Add('WHERE apvchave = ' + self.apvapvchave.asstring);
        consulta.Execsql;

        apv.Next;
      end;

    end;
    pro.Next;
  end;

  consulta.Close;
  consulta.SQL.Clear;
  consulta.SQL.Add('update pro set procarga=0');
  consulta.Execsql

End;

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string): string;
var
  vch: string;
begin
  vch := '';
  try
    fcarga := Tfcarga.Create(AOwner);
    fcarga.zcone := conexao;
    fcarga.vusrcodigo := vusuario;
    fcarga.ShowModal;
    result := vch;
  finally
    freeandnil(fcarga);
  end;
end;

exports formu;

end.
