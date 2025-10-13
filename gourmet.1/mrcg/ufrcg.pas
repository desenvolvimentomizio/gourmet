unit ufrcg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni,
  Vcl.ExtCtrls;

type
  Tfrcg = class(TForm)
    mlg: TUniQuery;
    mlgmlgchave: TIntegerField;
    mlgclbcodigo: TIntegerField;
    mlgmlgsituacao: TIntegerField;
    mlgflacodigo: TIntegerField;
    mlgmlgdata: TDateField;
    rmg: TUniQuery;
    rmgrmgchave: TIntegerField;
    rmgmlgchave: TIntegerField;
    rmgphgcodigo: TIntegerField;
    rmgrmgdata: TDateField;
    rmgrmgvalor: TFloatField;
    rmgrmgcomplemento: TStringField;
    rmgpcgdebito: TIntegerField;
    rmgpcgcredito: TIntegerField;
    lbcodigojanela: TPanel;
    consulta: TUniQuery;
    mlgltechave: TIntegerField;
    Timer: TTimer;
    procedure mlgAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure TimerTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Fzcone: tuniconnection;
    vpChaves: TstringList;
    vpTipo: string;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;
  end;

var
  frcg: Tfrcg;

  // Início ID do Módulo frcg
const
  vPlIdMd = '03.10.16.001-01';
  vPlTitMdl = 'Contabilização';

  // Fim ID do Módulo frcg

implementation

{$R *.dfm}

function Contabilizar(AOwner: TComponent; conexao: tuniconnection; vChaves: TstringList; vTipo: string): string;
var
  vch: string;
begin
  try
    frcg := Tfrcg.Create(AOwner);
    frcg.zcone := conexao;

    frcg.vpChaves := vChaves;
    frcg.vpTipo := vTipo;

    frcg.ShowModal;
    Result := vch;
  finally
    FreeAndNil(frcg);
  end;
end;

exports Contabilizar;

procedure Tfrcg.FormShow(Sender: TObject);
var
  i, x: integer;
begin

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TUniQuery then
      (Self.Components[i] as TUniQuery).Connection := Self.zcone;

  end;

  lbcodigojanela.Caption := self.name;

  if (vpTipo = 'CCODeposito') or (vpTipo = 'CCODevolucao') or (vpTipo = 'CCOTransferenciaCHE') or (vpTipo = 'CCOResgateChe') or (vpTipo = 'CCOEstorno') then
  begin

    x := 0;

    consulta.close;
    consulta.sql.Text := 'SELECT cco.ccoemissao, cco.ccovalor, cta.pcgcodigo, ';
    consulta.sql.add('cco.ccohistorico, cco.clbcodigo, cta.flacodigo, ');
    consulta.sql.add('lte.ltechave, cco.ctacodigo, cco.ccochave, cco.cedcodigo, cco.phgcodigo ');
    consulta.sql.add('FROM clt ');
    consulta.sql.add('INNER JOIN lte  ON clt.ltechave = lte.ltechave ');
    consulta.sql.add('INNER JOIN cco ON clt.ccochave = cco.ccochave ');
    consulta.sql.add('INNER JOIN cta ON cco.ctacodigo = cta.ctacodigo');
    consulta.sql.add('where lte.ltechave=' + vpChaves[0]);
    consulta.Open;

    rmg.close;
    rmg.Open;
    mlg.close;
    mlg.Open;

    mlg.Append;
    mlgclbcodigo.AsInteger := consulta.fields[4].AsInteger;
    mlgmlgsituacao.AsInteger := 0;
    mlgflacodigo.AsInteger := consulta.fields[5].AsInteger;
    mlgmlgdata.AsFloat := consulta.fields[0].AsFloat;
    mlg.Post;

    for x := 0 to vpChaves.Count - 1 do
    begin
      consulta.close;
      consulta.sql.Text := 'SELECT cco.ccoemissao, cco.ccovalor, cta.pcgcodigo, ';
      consulta.sql.add('cco.ccohistorico, cco.clbcodigo, cta.flacodigo, ');
      consulta.sql.add('lte.ltechave, cco.ctacodigo, cco.ccochave, cco.cedcodigo, cco.phgcodigo ');
      consulta.sql.add('FROM clt ');
      consulta.sql.add('INNER JOIN lte  ON clt.ltechave = lte.ltechave ');
      consulta.sql.add('INNER JOIN cco ON clt.ccochave = cco.ccochave ');
      consulta.sql.add('INNER JOIN cta ON cco.ctacodigo = cta.ctacodigo');
      consulta.sql.add('where lte.ltechave=' + vpChaves[x]);
      consulta.Open;

      rmg.Append;
      rmgmlgchave.AsInteger := Self.mlgmlgchave.AsInteger;
      if consulta.fields[10].AsString <> '' then
        rmgphgcodigo.AsInteger := consulta.fields[10].AsInteger;

      rmgrmgdata.AsFloat := Self.mlgmlgdata.AsFloat;
      rmgrmgvalor.AsFloat := consulta.fields[1].AsFloat;
      rmgrmgcomplemento.AsString := consulta.fields[3].AsString;
      if consulta.fields[9].AsInteger = 1 then
      begin
        rmgpcgdebito.AsInteger := consulta.fields[2].AsInteger;
      end
      else
      begin
        rmgpcgcredito.AsInteger := consulta.fields[2].AsInteger;
      end;
      rmg.Post;
    end;

  end;
  Timer.Enabled := true;

end;

procedure Tfrcg.mlgAfterInsert(DataSet: TDataSet);
begin
  mlgmlgsituacao.AsInteger := 1;
end;

procedure Tfrcg.TimerTimer(Sender: TObject);
begin
  close;
end;

end.
