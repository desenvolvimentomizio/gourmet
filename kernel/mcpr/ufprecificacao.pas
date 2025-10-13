unit ufprecificacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  Vcl.DBCtrls, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, Vcl.DBCGrids;

type
  Tfprecificacao = class(Tfrmbase)
    FDitens: TFDMemTable;
    FDitensitmchave: TIntegerField;
    FDitensprocodigo: TIntegerField;
    FDitenspuncodigo: TIntegerField;
    FDitensprmprecocompra: TFloatField;
    FDitensprmpercmargemlucro: TFloatField;
    FDitensprmprecovenda: TFloatField;
    FDitensprmimpostovenda: TFloatField;
    FDitensprmcomissaovenda: TFloatField;
    FDitensprmfretevenda: TFloatField;
    FDitensprmcustooperacional: TFloatField;
    FDitensprmtaxajuros: TFloatField;
    FDitensprminadimplencia: TFloatField;
    FDitensprmicmcompra: TFloatField;
    FDitensprmicmvenda: TFloatField;
    FDitensprmipi: TFloatField;
    FDitensprmicmST: TFloatField;
    FDitensprmfretecompra: TFloatField;
    FDitensprmoutras: TFloatField;
    FDitenspronome: TStringField;
    FDitensunisimbolo: TStringField;
    pltopo: TPanel;
    DSFDItens: TUniDataSource;
    FDitensprmcustocompra: TFloatField;
    registrorpmchave: TIntegerField;
    registromeschave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrorpmfrete: TFloatField;
    registrorpmoutras: TFloatField;
    registrorpmsubstituicao: TFloatField;
    FDitensrpmchave: TIntegerField;
    Label1: TLabel;
    rpmchave: TDBEdit;
    Label2: TLabel;
    rpmfrete: TDBEdit;
    Label3: TLabel;
    rpmsubstituicao: TDBEdit;
    Label4: TLabel;
    rpmoutras: TDBEdit;
    btDistribuir: TButton;
    FDitensprmcoeficiente: TFloatField;
    FDitensprmlucro: TFloatField;
    ipr: TUniQuery;
    ipriprcodigo: TIntegerField;
    iprflacodigo: TIntegerField;
    ipriprimpostovenda: TFloatField;
    ipriprcomissaovenda: TFloatField;
    ipriprcustooperacional: TFloatField;
    ipriprfretevendas: TFloatField;
    ipriprtaxajuros: TFloatField;
    ipriprinadimplenciaclientes: TFloatField;
    FDitenspunprecoav: TFloatField;
    prm: TUniQuery;
    FDitensprmmargematual: TFloatField;
    DBCtrlGrid1: TDBCtrlGrid;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    prmprecovenda: TDBEdit;
    prmcoeficiente: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    DBEdit15: TDBEdit;
    DataSource1: TDataSource;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    FDitensprmdificm: TFloatField;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    FDitensitmaliqicm: TFloatField;
    FDitensprmcfop: TStringField;
    FDitensprmcusto: TFloatField;
    Label14: TLabel;
    Label25: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label26: TLabel;
    Label19: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    FDitensitmcfop: TStringField;
    DBEdit21: TDBEdit;
    Label16: TLabel;
    Panel2: TPanel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit23: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label22: TLabel;
    procedure btDistribuirClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure prmprecovendaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure prmcoeficienteKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure RecalcularMargem;
    procedure RecalcularPreco;
    { Private declarations }
  public
    { Public declarations }
    vpTotalNota: double;
  end;

var
  fprecificacao: Tfprecificacao;

implementation

{$R *.dfm}

procedure Tfprecificacao.btDistribuirClick(Sender: TObject);

begin
  inherited;
  if registro.State <> dsBrowse then
    registro.Post;

  consulta.Close;
  consulta.SQL.Text := 'select mestotal from mes where meschave=' + vChaveMestre;
  consulta.Open;

  vpTotalNota := consulta.FieldByName('mestotal').asfloat;

  if ipr.State <> dsBrowse then
    ipr.Post;

  consulta.Close;
  consulta.SQL.Text := 'select ';
  consulta.SQL.add('itm.itmchave,');
  consulta.SQL.add('itm.procodigo,');
  consulta.SQL.add('itm.itmicms,');

  consulta.SQL.add('pro.pronome,');
  consulta.SQL.add('pro.cfocfop,');

  consulta.SQL.add('itm.cfocfopdestinacao itmcfop,');

  consulta.SQL.add('icm.icmaliquotas,');

  consulta.SQL.add('itm.puncodigo,');
  consulta.SQL.add('itm.itmaliqicm,');
  consulta.SQL.add('uni.unisimbolo,');
  consulta.SQL.add('pun.punprecoav,');
  consulta.SQL.add('pun.puncusto,');
  consulta.SQL.add('pun.punmargem,');

  consulta.SQL.add('(itm.itmvalor-(itmdesconto/itmquantidade) ) itmvalor ,');
  consulta.SQL.add('itmquantidade, ');

  consulta.SQL.add('(itm.itmipi/itmquantidade) itmipi,');
  consulta.SQL.add('(itm.itmicm /itmquantidade) itmicm ,');

  consulta.SQL.add('0 prmprecocompra,');
  consulta.SQL.add('0 prmpercmargemlucro,');
  consulta.SQL.add('0 prmprecovenda,');
  consulta.SQL.add('0 prmimpostovenda,');
  consulta.SQL.add('0 prmcomissaovenda,');
  consulta.SQL.add('0 prmfretevenda,');
  consulta.SQL.add('0 prmcustooperacional,');
  consulta.SQL.add('0 prmtaxajuros,');
  consulta.SQL.add('0 prminadimplencia,');
  consulta.SQL.add('0 prmicmcompra,');
  consulta.SQL.add('0 prmicmvenda,');
  consulta.SQL.add('0 prmipi,');
  consulta.SQL.add('0 prmicmST,');
  consulta.SQL.add('0 prmfretecompra,');
  consulta.SQL.add('0 prmoutras,');
  consulta.SQL.add('0 prmcustocompra,');
  consulta.SQL.add('0 prmcoeficiente,');
  consulta.SQL.add('0 prmimpostos,');
  consulta.SQL.add('0 prmlucro');
  consulta.SQL.add
    ('  FROM itm, pro, pun, uni,icm WHERE pro.icmcodigo=icm.icmcodigo and itm.procodigo=pro.procodigo and itm.puncodigo=pun.puncodigo and pun.unicodigo=uni.unicodigo ');
  consulta.SQL.add('  and itm.meschave=:meschave');
  consulta.ParamByName('meschave').AsString := vChaveMestre;
  consulta.Open;

  FDitens.Close;
  FDitens.Open;

  while not consulta.Eof do
  begin
    FDitens.append;
    FDitensrpmchave.AsInteger := registrorpmchave.AsInteger;
    FDitensitmchave.AsInteger := consulta.FieldByName('itmchave').AsInteger;
    FDitensprocodigo.AsInteger := consulta.FieldByName('procodigo').AsInteger;
    FDitenspronome.AsString := consulta.FieldByName('pronome').AsString;
    FDitenspuncodigo.AsInteger := consulta.FieldByName('puncodigo').AsInteger;
    FDitensunisimbolo.AsString := consulta.FieldByName('unisimbolo').AsString;
    FDitenspunprecoav.asfloat := consulta.FieldByName('punprecoav').asfloat;
    FDitensprmprecocompra.asfloat := consulta.FieldByName('itmvalor').asfloat;

    FDitensprmcfop.AsString := consulta.FieldByName('cfocfop').AsString;
    FDitensitmcfop.AsString := consulta.FieldByName('itmcfop').AsString;

    FDitensprmipi.asfloat := consulta.FieldByName('itmipi').asfloat;

    FDitensprmicmST.asfloat := (consulta.FieldByName('itmicms').asfloat / consulta.FieldByName('itmquantidade').asfloat) + rpmsubstituicao.Field.asfloat *
      (consulta.FieldByName('itmvalor').asfloat * consulta.FieldByName('itmquantidade').asfloat / vpTotalNota) / consulta.FieldByName('itmquantidade').asfloat;
    FDitensprmfretecompra.asfloat := rpmfrete.Field.asfloat * (consulta.FieldByName('itmvalor').asfloat * consulta.FieldByName('itmquantidade').asfloat /
      vpTotalNota) / consulta.FieldByName('itmquantidade').asfloat;
    FDitensprmoutras.asfloat := rpmoutras.Field.asfloat * (consulta.FieldByName('itmvalor').asfloat * consulta.FieldByName('itmquantidade').asfloat /
      vpTotalNota) / consulta.FieldByName('itmquantidade').asfloat;

    FDitensprmmargematual.asfloat := consulta.FieldByName('punmargem').asfloat;

    FDitensitmaliqicm.asfloat := consulta.FieldByName('itmaliqicm').asfloat;
    FDitensprmcusto.asfloat := consulta.FieldByName('puncusto').asfloat;

    FDitensprmcustocompra.asfloat := FDitensprmprecocompra.asfloat + FDitensprmipi.asfloat + FDitensprmicmST.asfloat + FDitensprmfretecompra.asfloat +
      FDitensprmoutras.asfloat;
    FDitensprmprecovenda.asfloat := FDitensprmcustocompra.asfloat * (1 + (consulta.FieldByName('punmargem').asfloat / 100));

    if FDitensprmcfop.AsString <> '5.405' then
    begin
      FDitensprmicmvenda.asfloat := FDitensprmprecovenda.asfloat * (consulta.FieldByName('icmaliquotas').asfloat / 100);
      FDitensprmicmcompra.asfloat := consulta.FieldByName('itmicm').asfloat;
    end
    else
    begin
      FDitensprmicmvenda.asfloat := 0;
      FDitensprmicmcompra.asfloat := 0;
    end;

    FDitensprmdificm.asfloat := FDitensprmicmvenda.asfloat - FDitensprmicmcompra.asfloat;
    FDitensprmcoeficiente.asfloat := ((FDitensprmprecovenda.asfloat - FDitensprmcustocompra.asfloat) / FDitensprmcustocompra.asfloat) * 100;

    FDitensprmimpostovenda.asfloat := FDitensprmprecovenda.asfloat * (ipriprimpostovenda.asfloat / 100);
    FDitensprmcustooperacional.asfloat := FDitensprmprecovenda.asfloat * (ipriprcustooperacional.asfloat / 100);
    FDitensprmlucro.asfloat := FDitensprmprecovenda.asfloat - FDitensprmcustocompra.asfloat + FDitensprmicmcompra.asfloat - FDitensprmicmvenda.asfloat -
      FDitensprmimpostovenda.asfloat - FDitensprmcustooperacional.asfloat;
    FDitensprmpercmargemlucro.asfloat := (FDitensprmlucro.asfloat / FDitensprmprecovenda.asfloat) * 100;

    FDitensprmcomissaovenda.asfloat := 0;
    FDitensprmfretevenda.asfloat := 0;
    FDitensprmtaxajuros.asfloat := 0;
    FDitensprminadimplencia.asfloat := 0;

    FDitens.Post;

    consulta.Next;
  end;
  FDitens.First;

end;

procedure Tfprecificacao.RecalcularPreco;
begin



  FDitensprmcustocompra.asfloat := FDitensprmprecocompra.asfloat + FDitensprmipi.asfloat + FDitensprmicmST.asfloat + FDitensprmfretecompra.asfloat +
    FDitensprmoutras.asfloat;

   FDitensprmprecovenda.AsFloat :=  FDitensprmcustocompra.AsFloat*(1+ (strtofloat(prmcoeficiente.Text)/100));



 // FDitensprmcoeficiente.asfloat := ((strtofloat(prmprecovenda.Text) - FDitensprmcustocompra.asfloat) / FDitensprmcustocompra.asfloat) * 100;
  FDitensprmimpostovenda.asfloat := strtofloat(StringReplace(prmprecovenda.Text,'.','',[])) * (ipriprimpostovenda.asfloat / 100);
  FDitensprmcustooperacional.asfloat := strtofloat(StringReplace(prmprecovenda.Text,'.','',[])) * (ipriprcustooperacional.asfloat / 100);
  FDitensprmlucro.asfloat := strtofloat(StringReplace(prmprecovenda.Text,'.','',[])) - FDitensprmcustocompra.asfloat + FDitensprmicmcompra.asfloat - FDitensprmicmvenda.asfloat -
    FDitensprmimpostovenda.asfloat - FDitensprmcustooperacional.asfloat;
  FDitensprmpercmargemlucro.asfloat := (FDitensprmlucro.asfloat / strtofloat(StringReplace(prmprecovenda.Text,'.','',[]))) * 100;


if FDitensprmcfop.AsString <> '5.405' then
  begin
    FDitensprmicmvenda.asfloat := prmprecovenda.Field.asfloat * (consulta.FieldByName('icmaliquotas').asfloat / 100);
  end
  else
  begin
    FDitensprmicmvenda.asfloat := 0;
  end;


  FDitensprmdificm.asfloat := FDitensprmicmvenda.asfloat - FDitensprmicmcompra.asfloat;

end;

procedure Tfprecificacao.RecalcularMargem;
begin


  FDitensprmcustocompra.asfloat := FDitensprmprecocompra.asfloat + FDitensprmipi.asfloat + FDitensprmicmST.asfloat + FDitensprmfretecompra.asfloat +
    FDitensprmoutras.asfloat;

  // FDitensprmprecovenda.AsFloat :=  FDitensprmcustocompra.AsFloat*(1+ (consulta.FieldByName('punmargem').Asfloat/100));



  FDitensprmcoeficiente.asfloat := ((strtofloat(StringReplace(prmprecovenda.Text,'.','',[])) - FDitensprmcustocompra.asfloat) / FDitensprmcustocompra.asfloat) * 100;
  FDitensprmimpostovenda.asfloat := strtofloat(StringReplace(prmprecovenda.Text,'.','',[])) * (ipriprimpostovenda.asfloat / 100);
  FDitensprmcustooperacional.asfloat := strtofloat(StringReplace(prmprecovenda.Text,'.','',[])) * (ipriprcustooperacional.asfloat / 100);
  FDitensprmlucro.asfloat := strtofloat(StringReplace(prmprecovenda.Text,'.','',[])) - FDitensprmcustocompra.asfloat + FDitensprmicmcompra.asfloat - FDitensprmicmvenda.asfloat -
    FDitensprmimpostovenda.asfloat - FDitensprmcustooperacional.asfloat;
  FDitensprmpercmargemlucro.asfloat := (FDitensprmlucro.asfloat / strtofloat(StringReplace(prmprecovenda.Text,'.','',[]))) * 100;

   if FDitensprmcfop.AsString <> '5.405' then
  begin
    FDitensprmicmvenda.asfloat := strtofloat(StringReplace(prmprecovenda.Text,'.','',[])) * (consulta.FieldByName('icmaliquotas').asfloat / 100);
  end
  else
  begin
    FDitensprmicmvenda.asfloat := 0;
  end;

  FDitensprmdificm.asfloat := FDitensprmicmvenda.asfloat - FDitensprmicmcompra.asfloat;

end;

procedure Tfprecificacao.prmcoeficienteKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var
  vlDouble: double;
begin
  inherited;

  if TryStrToFloat(prmcoeficiente.Text, vlDouble) then
  begin
    RecalcularPreco;
  end;

end;

procedure Tfprecificacao.prmprecovendaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
var
  vlDouble: double;
begin
  inherited;

  if TryStrToFloat(prmprecovenda.Text, vlDouble) then
  begin
    RecalcularMargem;
  end;

end;

procedure Tfprecificacao.FormShow(Sender: TObject);
begin
  inherited;
  ipr.Close;
  ipr.ParamByName('flacodigo').AsInteger := acesso.Filial;
  ipr.Open;

end;

procedure Tfprecificacao.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registromeschave.AsString := vChaveMestre;
  registroclbcodigo.AsInteger := acesso.usuario;
  registrorpmfrete.asfloat := 0;
  registrorpmoutras.asfloat := 0;
  registrorpmsubstituicao.asfloat := 0;

end;

end.
