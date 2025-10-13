unit ufracrg;

interface

uses
  Winapi.Windows, Vcl.Forms, Data.DB, MemDS, DBAccess, Uni, Vcl.Controls,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Buttons, Vcl.ExtCtrls, System.Classes,
  Vcl.Dialogs, System.SysUtils;

type
  Tfracrg = class(TForm)
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
  fracrg: Tfracrg;

implementation

{$R *.dfm}

uses ufuncoes;

procedure Tfracrg.FormShow(Sender: TObject);
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

procedure Tfracrg.bcancelaClick(Sender: TObject);
begin
  Close;
end;

procedure Tfracrg.bconfirmaClick(Sender: TObject);
Begin

  if tipocarga.text = 'Enviar TODOS' then
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

Procedure Tfracrg.criarquivopro;
var
  nv1: String;
  nv2: String;
  i: integer;
  arqbp: tstringlist;
  linhabp: string;
Begin
  pro.Close;
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
      i := i + 1;
      produtoaenviados.Caption := 'Produtos enviados: ' + inttostr(i);
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
        consulta.SQL.Add('apvdthoraaplicado = ' + chr(39) + ajustadata(datetostr(date)) + ' ' + timetostr(time) + chr(39) + ', ');
        consulta.SQL.Add('spvcodigo = 2 ');
        consulta.SQL.Add('WHERE apvchave = ' + self.apvapvchave.asstring);
        consulta.Execsql;

        apv.Next;
      end;

    end;
    pro.Next;
  end;

  mostra.Max := self.pro.RecordCount;
  mostra.Position := 0;
  // Carga para Busca Preço
  pro.Close;
  pro.SQL.text := 'SELECT pun.punbarra, pro.pronomereduzido,  pun.punprecoav fROM pun ';
  pro.SQL.Add('INNER JOIN pro ON pun.procodigo = pro.procodigo order by pro.procodigo');
  pro.Open;
  arqbp := tstringlist.Create;
  pro.First;
  While Not pro.Eof Do
  Begin
    mostra.Position := mostra.Position + 1;
    Application.ProcessMessages;

    linhabp := formatfloat('0000000000000', strtofloat(copy(pro.FieldByName('punbarra').asstring, 2, 14)));
    linhabp := linhabp + '|';
    linhabp := linhabp + Trim(semacento(format('%-30s', [copy(pro.FieldByName('pronomereduzido').asstring, 1, 30)])));
    linhabp := linhabp + '|';
    linhabp := linhabp + Trim(format('%10.2f', [pro.FieldByName('punprecoav').AsFloat]));
    linhabp := linhabp + '|';

    arqbp.Add(linhabp);
    pro.Next;
  End;

  Try
    CreateDir(pchar(extractfilepath(Application.ExeName) + 'buscapreco'));
  Except
  End;

  arqbp.SaveToFile(extractfilepath(Application.ExeName) + 'buscapreco\TBp_produto.txt');

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
    fracrg := Tfracrg.Create(AOwner);
    fracrg.zcone := conexao;
    fracrg.vusrcodigo := vusuario;
    fracrg.ShowModal;
    result := vch;
  finally
    freeandnil(fracrg);
  end;
end;

exports formu;

end.
