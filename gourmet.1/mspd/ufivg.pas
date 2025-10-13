unit ufivg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.ImgList, PngImageList,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uFuncoes, System.ImageList,
  DAScript, UniScript;

type
  Tfivg = class(Tfrmbase)
    registroivgchave: TIntegerField;
    registroetdcodigo: TIntegerField;
    registroflacodigo: TIntegerField;
    registrotoesaida: TIntegerField;
    registrotoeentrada: TIntegerField;
    registrospdchaveanterior: TIntegerField;
    registrospdchaveinventario: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroivgtipo: TIntegerField;
    Label1: TLabel;
    ivgchave: TDBEdit;
    Label2: TLabel;
    etdcodigo: TDBEdit;
    Label3: TLabel;
    flacodigo: TDBEdit;
    Label4: TLabel;
    toesaida: TDBEdit;
    Label5: TLabel;
    toeentrada: TDBEdit;
    Label6: TLabel;
    spdchaveanterior: TDBEdit;
    Label7: TLabel;
    spdchaveinventario: TDBEdit;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    fla: TUniQuery;
    flaflacodigo: TIntegerField;
    flaflaidentificacao: TStringField;
    toe: TUniQuery;
    toetoecodigo: TIntegerField;
    toetoeidentificacao: TStringField;
    spd: TUniQuery;
    spdspdchave: TIntegerField;
    spdspdidentificacao: TStringField;
    registroetdidentificacao: TStringField;
    registroflaidentificacao: TStringField;
    registrotoesaidaidentificacao: TStringField;
    registrotoeentradaidentificacao: TStringField;
    registrospdanterior: TStringField;
    ivgtipo: TDBRadioGroup;
    registroivgregistro: TDateTimeField;
    registrospdinventario: TStringField;
    cfgcfgetdempresa: TIntegerField;
    GeraInventarioSaldo: TUniQuery;
    spdspddatafinal: TDateField;
    spdspddatainicial: TDateField;
    mostra: TProgressBar;
    GeraInventarioSaldoDisp: TUniQuery;
    UniScriptApos: TUniScript;
    UniScriptantes: TUniScript;
    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fivg: Tfivg;

  // Início ID do Módulo fivg
const
  vPlIdMd = '03.08.81.002-03';

  // Fim ID do Módulo fivg

implementation

{$R *.dfm}

procedure Tfivg.bconfirmaClick(Sender: TObject);
begin
  if registro.State <> dsBrowse then
    registro.Post;
  { * Geração de inventário do saldo * }
  try
    UniScriptantes.Connection := ZCone;
    UniScriptantes.Execute;

    if ivgtipo.Field.AsInteger = 1 then
    begin
      if spd.Locate('spdchave', spdchaveinventario.Field.AsString, []) then
      begin
        consulta.close;
        consulta.sql.text := 'set @disable_triggers=1';
        consulta.execsql;

        GeraInventarioSaldo.ParamByName('SpdChave').AsString := spdchaveinventario.Field.AsString;
        GeraInventarioSaldo.ParamByName('EtdCodigo').AsString := etdcodigo.Field.AsString;
        GeraInventarioSaldo.ParamByName('DataInicial').AsString := FormatDateTime('yyyy-mm-dd', spdspddatainicial.AsFloat);
        GeraInventarioSaldo.ParamByName('DataFinal').AsString := FormatDateTime('yyyy-mm-dd', spdspddatafinal.AsFloat);
        GeraInventarioSaldo.execsql;

        { * Se houver invetário anterior, encerra ele e ajusta o mes e o itm * }
       { if (spdchaveanterior.Field.AsString <> '') and (spdchaveanterior.Field.AsString <> '0') then
        begin
          consulta.close;
          consulta.sql.text := 'CALL  EncerramentoInventario(' + spdchaveanterior.Field.AsString + ',' + self.toeentrada.Field.AsString + ', ' +
            self.toesaida.Field.AsString + ', ' + self.flacodigo.Field.AsString + ')';
          consulta.execsql;
        end;}

      end;
    end;

    { * Geração de inventário do saldo diponivel* }
    if ivgtipo.Field.AsInteger = 2 then
    begin

      consulta.close;
      consulta.sql.text := 'select count(ivdchave) from ivd';
      consulta.Open;
      if consulta.Fields[0].AsInteger = 0 then
      begin
        consulta.close;
        consulta.sql.text :=
          'INSERT INTO ivd  ( select ivtchave  ,spdchave  ,procodigo  ,pcccodigo  ,ivtquantidade  ,ivtvalor ,ivttotal  ,ivtproprietario  ,ivtdescricao  ,etdcodigo  ,flacodigo from ivt)';
        consulta.execsql;
      end;

      if spd.Locate('spdchave', spdchaveinventario.Field.AsString, []) then
      begin

        GeraInventarioSaldoDisp.ParamByName('SpdChave').AsString := spdchaveinventario.Field.AsString;
        GeraInventarioSaldoDisp.ParamByName('EtdCodigo').AsString := etdcodigo.Field.AsString;
        GeraInventarioSaldoDisp.ParamByName('DataInicial').AsString := FormatDateTime('yyyy-mm-dd', spdspddatainicial.AsFloat);
        GeraInventarioSaldoDisp.ParamByName('DataFinal').AsString := FormatDateTime('yyyy-mm-dd', spdspddatafinal.AsFloat);
        GeraInventarioSaldoDisp.execsql;

        { * Se houver invetário anterior, encerra ele e ajusta o mes e o itm * }
       { if (spdchaveanterior.Field.AsString <> '') and (spdchaveanterior.Field.AsString <> '0') then
        begin

          consulta.close;
          consulta.sql.text := 'CALL  EncerramentoInventarioDisp(' + spdchaveanterior.Field.AsString + ',' + self.toeentrada.Field.AsString + ', ' +
            self.toesaida.Field.AsString + ', ' + self.flacodigo.Field.AsString + ')';
          consulta.execsql;

        end;}

      end;

    end;

  finally
    UniScriptApos.Connection := ZCone;
    UniScriptApos.Execute;

    consulta.close;
    consulta.sql.text := 'set @disable_triggers=null';
    consulta.execsql;

  end;
  inherited;

end;

procedure Tfivg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  cfg.close;
  cfg.Params[0].AsInteger := acesso.Filial;
  cfg.Open;

  fla.close;
  fla.Params[0].AsInteger := acesso.Filial;
  fla.Open;

  inherited;

end;

procedure Tfivg.registroAfterInsert(DataSet: TDataSet);
var
  vlSpdDataBalanco: String;
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  registroflacodigo.AsInteger := acesso.Filial;
  registroivgregistro.AsString := agora(application, ZCone);
  registroivgtipo.AsInteger := 1;
  registrospdchaveinventario.AsString := vChaveMestre;
  registroetdcodigo.AsInteger := cfgcfgetdempresa.AsInteger;
  registroflacodigo.AsInteger := acesso.Filial;
  consulta.close;
  consulta.sql.text := 'select spddatabalanco from spd where spdchave=' + spdchaveinventario.Field.AsString;
  consulta.Open;

  vlSpdDataBalanco := consulta.Fields[0].AsString;

  if vlSpdDataBalanco <> '' then
  begin
    consulta.close;
    consulta.sql.text := 'SELECT   spd.spddatabalanco,   spd.spdchave FROM ivt ';
    consulta.sql.Add('INNER JOIN spd    ON ivt.spdchave = spd.spdchave ');
    consulta.sql.Add('WHERE spd.spddatabalanco < :dataFinal ');
    consulta.sql.Add('AND spd.spdchave<>:spdchave ORDER BY spd.spdchave DESC  LIMIT 1');
    consulta.Params[0].AsDate := StrToDate(vlSpdDataBalanco);
    consulta.Params[1].AsString := vChaveMestre;
    consulta.Open;
    registrospdchaveanterior.AsInteger := consulta.Fields[1].AsInteger;
    registrospdchaveanterior.Required := true;
  end
  else
    registrospdchaveanterior.Required := false;

end;

end.
