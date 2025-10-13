unit ufset;

interface

uses
  Winapi.Windows, Vcl.Forms, Data.DB, MemDS, DBAccess, Uni, Vcl.ExtCtrls,
  System.Classes, Vcl.Controls, Vcl.ComCtrls, System.SysUtils, uFuncoes;

type
  Tfset = class(TForm)
    mostra: TProgressBar;
    fechador: TTimer;
    consulta: tuniquery;
    pro: tuniquery;
    proprosaldo: TFloatField;
    mov: tuniquery;
    movprocodigo: TIntegerField;
    movquant: TFloatField;
    movquantidade: TFloatField;
    movttecodigo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure fechadorTimer(Sender: TObject);
  private
    { Private declarations }
    Fzcone: tuniconnection;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  public
    { Public declarations }
    vchave: String;
    vprocodigo: tstringlist;
  end;

var
  fset: Tfset;

implementation

{$R *.dfm}

function formu(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: integer; vmodulo: string; vfiltro: string): string;
var
  vch: string;
  dados: String;
  I: integer;
  cod: String;
begin

  dados := vfiltro;

  try
    fset := Tfset.create(AOwner);

    cod := copy(dados, 1, pos(',', dados) - 1);
    fset.vprocodigo.Add(cod);
    dados := copy(dados, pos(',', dados) + 1);

    While cod <> '' Do
    Begin
      cod := copy(dados, 1, pos(',', dados) - 1);
      If cod <> '' Then
      Begin
        fset.vprocodigo.Add(cod);
        dados := copy(dados, pos(',', dados) + 1);
      End;
    End;

    fset.zcone := conexao;
    fset.ShowModal;
    result := vch;
  finally
    freeandnil(fset);
  end;

end;

exports formu;

procedure Tfset.fechadorTimer(Sender: TObject);
begin
  close;
end;

procedure Tfset.FormCreate(Sender: TObject);
begin
  vprocodigo := tstringlist.create;
end;

procedure Tfset.FormShow(Sender: TObject);
Var
  I: integer;
  saldo: String;
Begin

  For I := 0 To self.ComponentCount - 1 Do
  Begin
    If (self.Components[I] Is tuniquery) Then
    Begin
      (self.Components[I] As tuniquery).Connection := self.zcone;
    End;
  End;

  Try
    mostra.Max := vprocodigo.Count;

    For I := 0 To self.vprocodigo.Count - 1 Do
    Begin

      mostra.Position := mostra.Position + 1;
      application.ProcessMessages;

      mov.close;
      mov.SQL.Text := 'select itm.procodigo,sum(itmquantidade) as quant,sum(itmcontendo*if(toe.ttecodigo=1 ' +
        ',itmquantidade*-1,itmquantidade)) as quantidade,ttecodigo ' +
        'from toe,mes,itm,pro where toe.toecodigo=mes.toecodigo and mes.meschave=itm.meschave and ' + 'itm.procodigo=pro.procodigo and itm.procodigo=' +
        vprocodigo[I] + ' and proestoque=' + chr(39) + '1' + chr(39) + ' group by itm.procodigo';
      mov.Open;

      saldo := self.movquantidade.asstring;
      if saldo <> '' then
      begin
        If pos(',', saldo) > 0 Then
        Begin
          saldo := buscatroca(saldo, ',', '.');
        End;

        consulta.close;
        consulta.SQL.Text := 'update pro set prosaldo=' + saldo + ' where procodigo=' + vprocodigo[I];
        consulta.ExecSQL;
      end;

    End;

  Finally
    fechador.Enabled := true;
  End;

end;

end.
