unit ufrcftrans;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.DBCtrls, Vcl.Mask;

type
  Tfrcftrans = class(Tfrmbase)
    registrorcfchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registrocedcodigo: TIntegerField;
    registrorcfvalor: TFloatField;
    registrorcfdata: TDateField;
    registrorcfhistorico: TStringField;
    registrotcrcodigo: TIntegerField;
    registrotsccodigo: TIntegerField;
    registrotnccodigo: TIntegerField;
    registrorcfhora: TTimeField;
    rcf: TUniQuery;
    rcfrcfchave: TIntegerField;
    rcfrcfvalor: TFloatField;
    rcfetdidentificacao: TStringField;
    rcfetdcodigo: TIntegerField;
    rcfrcfdata: TDateField;
    rcfrcfdestino: TIntegerField;
    rcfrcforigem: TIntegerField;
    Label1: TLabel;
    rcfchave: TDBEdit;
    rcfdata: TDBEdit;
    Label2: TLabel;
    Label5: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    rcfvalor: TDBEdit;
    Label4: TLabel;
    rcfhistorico: TDBMemo;
    bSelecionar: TBitBtn;
    plItens: TPanel;
    DBLista: TDBGrid;
    Drcf: TDataSource;
    procedure bSelecionarClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure DBListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    function mostralistacreditos(modulo, vusuario, vfiltro, vmodo, vtnccodigo,
      vrcrcodigo: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

  TFormuSelecionaCreditos = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
    vmodo: string; vtnccodigo: string; vrcrcodigo: string; vvalor: string; vLote: string): string;


var
  frcftrans: Tfrcftrans;
    // Início ID do Módulo frctrans
const
  vPlIdMd = '00.00.00.000-01';



implementation

{$R *.dfm}

function Tfrcftrans.mostralistacreditos(modulo: string; vusuario: string; vfiltro: string; vmodo: string; vtnccodigo: string; vrcrcodigo: string): string;
var
  execf: TFormuSelecionaCreditos;

  ch: string;
  vu: string;
begin
  pack := LoadPackage('modulos\' + modulo + '.bpl');
  if pack <> 0 then
    try
      @execf := GetProcAddress(pack, PChar('FormuSelecionaCreditos'));
      if Assigned(execf) then
      begin
        vu := vusuario;
        ch := execf(Application, Self.zcone, vu, 1, '', vfiltro, vmodo, vtnccodigo, vrcrcodigo, '0', '0');
        Result := ch;
      end;
    finally
      if modulo <> 'mpeg' then
        DoUnLoadPackage(pack);
    end;
end;


procedure Tfrcftrans.bconfirmaClick(Sender: TObject);
begin
 if rcf.IsEmpty then
  begin
    ShowMessage('É necessário selecionar créditos para transferir!');
    Exit;
  end;

  inherited;

end;

procedure Tfrcftrans.bSelecionarClick(Sender: TObject);
var
  vch: string;
  i: Integer;
  vlTotDouble: double;
begin
  { inherited; }

  If registro.State <> dsBrowse Then
    registro.Post;

  { dfa.Close;
    dfa.Params[0].AsInteger := Self.meschave.Field.AsInteger;
    dfa.Open; }

  consulta.Close;
  consulta.sql.Text := 'select v_rcr.rcrchave from v_rcr where v_rcr.rcrsaldo>0';
  consulta.Open;

  if consulta.IsEmpty then
  begin
    ShowMessage('Não há registros para transferir!');

    Exit;
  end;

  vch := '';
  vch := mostralistacreditos('mscr', Acesso.Usuario.ToString, Self.etdcodigo.Field.AsString, '1', '1', Self.rcfchave.Field.AsString);

  vlTotDouble := 0;
  if vch <> '' then
  begin

    rcf.Close;
    rcf.Params[0].AsString := Self.rcfchave.Field.AsString;
    rcf.Open;

    rcf.First;
    while not rcf.Eof do
    begin
      vlTotDouble := vlTotDouble + rcfrcfvalor.AsCurrency;

      rcf.Next;
    end;

  end
  else
  begin
    rcf.Close;
  end;

  If registro.State <> dsedit Then
    registro.Edit;

  rcfvalor.Field.AsFloat := vlTotDouble;


end;

procedure Tfrcftrans.DBListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrcftrans.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfrcftrans.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registroetdcodigo.AsString := Self.vChaveMestre;
  registrorcfdata.AsFloat := date;
  registrorcfhora.AsFloat := time;

  registrocedcodigo.AsInteger := 1; // credito
  registrotcrcodigo.AsInteger := 9; // avulso, digitado manual
  registrotsccodigo.AsInteger := 1; // em aberto
  registrotnccodigo.AsInteger := 1; // creditos
  registrorcfvalor.AsFloat := 0;
  registrorcfhistorico.AsString := '';
end;

end.
