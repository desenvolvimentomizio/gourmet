unit ufrcctrans;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrcrtrans, Vcl.Grids, Vcl.DBGrids, Vcl.ImgList,
  Vcl.Controls, PngImageList, System.Classes, System.Actions, Vcl.ActnList,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.StdCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils,
  System.ImageList;

type
  Tfrctrans = class(Tfrcrtrans)
    rcr: TUniQuery;
    rcrrcrchave: TIntegerField;
    rcrrcrvalor: TFloatField;
    rcretdidentificacao: TStringField;
    rcretdcodigo: TIntegerField;
    rcrrcrdata: TDateField;
    rcrrcrorigem: TIntegerField;
    Drcr: TDataSource;
    DBLista: TDBGrid;
    rcrrcrdestino: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bSelecionarClick(Sender: TObject);
    procedure DBListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bconfirmaClick(Sender: TObject);
  private
    function mostralistacreditos(modulo, vusuario, vfiltro, vmodo, vtnccodigo, vrcrcodigo: string): string;
    { Private declarations }
  public
    { Public declarations }
  end;

  TFormuSelecionaCreditos = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
    vmodo: string; vtnccodigo: string; vrcrcodigo: string; vvalor: string; vLote: string): string;

var
  frctrans: Tfrctrans;

  // Início ID do Módulo frctrans
const
  vPlIdMd = '02.02.87.003-03';

implementation

{$R *.dfm}

function Tfrctrans.mostralistacreditos(modulo: string; vusuario: string; vfiltro: string; vmodo: string; vtnccodigo: string; vrcrcodigo: string): string;
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

procedure Tfrctrans.bconfirmaClick(Sender: TObject);
begin
  if rcr.IsEmpty then
  begin
    ShowMessage('É necessário selecionar créditos para transferir!');
    Exit;
  end;

  inherited;
end;

procedure Tfrctrans.bSelecionarClick(Sender: TObject);
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
  vch := mostralistacreditos('mscr', Acesso.Usuario.ToString, Self.etdcodigo.Field.AsString, '1', '1', Self.rcrchave.Field.AsString);

  vlTotDouble := 0;
  if vch <> '' then
  begin

    rcr.Close;
    rcr.Params[0].AsString := Self.rcrchave.Field.AsString;
    rcr.Open;

    rcr.First;
    while not rcr.Eof do
    begin
      vlTotDouble := vlTotDouble + rcrrcrvalor.AsCurrency;

      rcr.Next;
    end;

  end
  else
  begin
    rcr.Close;
  end;

  If registro.State <> dsedit Then
    registro.Edit;

  rcrvalor.Field.AsFloat := vlTotDouble;

end;

procedure Tfrctrans.DBListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrctrans.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfrctrans.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;

  registroetdcodigo.AsString := Self.vChaveMestre;
  registrorcrdata.AsFloat := date;
  registrorcrhora.AsFloat := time;

  registrocedcodigo.AsInteger := 1; // credito
  registrotcrcodigo.AsInteger := 9; // avulso, digitado manual
  registrotsccodigo.AsInteger := 1; // em aberto
  registrotnccodigo.AsInteger := 1; // creditos
  registrorcrvalor.AsFloat := 0;
  registrorcrhistorico.AsString := '';
end;

end.
