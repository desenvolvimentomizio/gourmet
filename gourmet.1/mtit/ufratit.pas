unit ufratit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase, uFuncoes;

type
  Tfratit = class(Tfrabase)
    uqtabelatitcodigo: TIntegerField;
    uqtabelatithistorico: TStringField;
    uqtabelatitvctoinicial: TDateField;
    uqtabelatitvalor: TFloatField;
    ActIncluiraDebito: TAction;
    uqtabelatfdcodigo: TIntegerField;
    mlg: TUniQuery;
    mlgmlgchave: TIntegerField;
    mlgclbcodigo: TIntegerField;
    mlgmlgsituacao: TIntegerField;
    mlgflacodigo: TIntegerField;
    mlgmlgdata: TDateField;
    mlgltechave: TIntegerField;
    rmg: TUniQuery;
    rmgrmgchave: TIntegerField;
    rmgmlgchave: TIntegerField;
    rmgphgcodigo: TIntegerField;
    rmgrmgdata: TDateField;
    rmgrmgvalor: TFloatField;
    rmgrmgcomplemento: TStringField;
    rmgpcgcodigo: TIntegerField;
    rmgpcgcredito: TIntegerField;
    rmgrmgcompetencia: TDateField;
    rmgrmginclusao: TDateTimeField;
    rmgrmgtipo: TIntegerField;
    rmgcedcodigo: TIntegerField;
    pcr: TUniQuery;
    pcrpcrchave: TIntegerField;
    pcrtitcodigo: TIntegerField;
    pcrpcgcodigo: TIntegerField;
    pcrpcrvalor: TFloatField;
    pcrphgcodigo: TIntegerField;
    pcrpcrcomplhist: TStringField;
    lte: TUniQuery;
    lteltechave: TIntegerField;
    lteltedata: TDateField;
    ltelteprincipal: TFloatField;
    lteclbcodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActIncluiraDebitoExecute(Sender: TObject);
  private
    procedure EfetuaContabilizacao(vlchave: string);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fratit: Tfratit;

const
  vPlIdMd = '';
  vPlTitMdl = 'Contabiliziação Manual';

implementation

uses
  uftit;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fratit := Tfratit.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fratit := Tfratit.Create(pCargaFrame);
  try
    fratit.CriaAcoesDeAcesso;
  finally
    fratit.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfratit.ActAlterarExecute(Sender: TObject);
var
  vlchave: string;
begin
  inherited;
  if CriaFormulario(Tftit, uqtabelatitcodigo.AsString, uqtabelatfdcodigo.AsString) then
  begin
    vlchave := mostralista('mpcr', '', uqtabelatitcodigo.AsString);
    EfetuaContabilizacao(vlchave);

  end;
end;

procedure Tfratit.ActIncluiraDebitoExecute(Sender: TObject);
var
  vlchave: string;
begin
  inherited;
  if CriaFormulario(Tftit, '', '1') then
  begin
    vlchave := mostralista('mpcr', '', uqtabelatitcodigo.AsString);
    EfetuaContabilizacao(vlchave);
  end;

end;

procedure Tfratit.EfetuaContabilizacao(vlchave: string);
var
  vlLtechave: string;
  vlData: string;
  vlpcgcodigo: string;
  vlphgcodigo: string;
  vlValor: double;
  vlTitHistorico: string;

begin
  pcr.Close;
  pcr.ParamByName('pcrchave').AsString := vlchave;
  pcr.Open;

  while not pcr.eof do
  begin
    vlpcgcodigo := pcrpcgcodigo.AsString;

    consulta.Close;
    consulta.SQL.Text := 'select titvctoinicial, phgcodigo, titvalor, tithistorico from tit where titcodigo=' + pcrtitcodigo.AsString;
    consulta.Open;

    vlData := consulta.FieldByName('titvctoinicial').AsString;
    vlphgcodigo := consulta.FieldByName('phgcodigo').AsString;
    vlValor := consulta.FieldByName('titvalor').AsFloat;
    vlTitHistorico := consulta.FieldByName('tithistorico').AsString;

    lte.Close;
    lte.FilterSQL := 'ltedata=' + QuotedStr(ajustadata(vlData)) + ' and  clbcodigo=' + acesso.Usuario.ToString + ' and lteprincipal=' +
      buscatroca(floattostr(vlValor), ',', '.');

    lte.Open;

    if not lte.IsEmpty then
      vlLtechave := lte.FieldByName('ltechave').AsString;

    mlg.Close;
    mlg.FilterSQL := 'ltechave=' + vlLtechave;
    mlg.Open;

    if mlg.IsEmpty then
      mlg.Append
    else
      mlg.Edit;

    mlgclbcodigo.AsInteger := acesso.Usuario;
    mlgmlgsituacao.AsInteger := 0;
    mlgflacodigo.AsInteger := acesso.Filial;
    mlgmlgdata.AsString := vlData;
    mlgltechave.AsString := vlLtechave;
    mlg.Post;

    rmg.Close;
    rmg.FilterSQL := 'mlgchave=' + mlgmlgchave.AsString;
    rmg.Open;

    if rmg.IsEmpty then
      rmg.Append
    else
      rmg.Edit;

    rmgmlgchave.AsString := mlgmlgchave.AsString;
    rmgphgcodigo.AsString := vlphgcodigo;
    rmgrmgdata.AsString := vlData;
    rmgrmgvalor.AsFloat := vlValor;
    rmgrmgcomplemento.AsString := vlTitHistorico;
    rmgpcgcodigo.AsString := vlpcgcodigo;
    rmgrmginclusao.AsString := agora(application, ZCone);
    rmgrmgtipo.AsInteger := 0;
    if uqtabelatfdcodigo.AsString = '1' then
      rmgcedcodigo.AsInteger := 0
    else
      rmgcedcodigo.AsInteger := 1;
    rmg.Post;

    pcr.Next;
  end;

end;

procedure Tfratit.ActIncluirExecute(Sender: TObject);
var
  vlchave: string;
begin
  inherited;
  if CriaFormulario(Tftit, '', '2') then
  begin
    vlchave := mostralista('mpcr', '', uqtabelatitcodigo.AsString);
    EfetuaContabilizacao(vlchave);
  end;
end;

end.
