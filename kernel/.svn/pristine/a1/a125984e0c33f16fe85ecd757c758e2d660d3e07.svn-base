unit ufivg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, Vcl.ImgList, PngImageList,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, uFuncoes, System.ImageList,
  DAScript, UniScript, DateUtils;

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
    dataperiodoantorior: TUniQuery;
    dataperiodoatual: TUniQuery;
    ivtnegativo: TUniQuery;
    ivdnegativo: TUniQuery;
    CheckBoxZerarNegativos: TCheckBox;
    ivgvalor: TDBRadioGroup;
    registroivgvalor: TIntegerField;
    preco: TUniQuery;
    spdspddatabalanco: TDateField;
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
var
  vlDataInicioBalanco: string;
  vlDataFinalBalanco: string;
begin
  if registro.State <> dsBrowse then
    registro.Post;
  { * Geração de inventário do saldo * }
  try

    dataperiodoatual.Close;
    dataperiodoatual.ParamByName('spdchave').AsInteger := registrospdchaveinventario.AsInteger;
    dataperiodoatual.Open;

    vlDataFinalBalanco := dataperiodoatual.FieldByName('spddatabalanco').AsString;

    dataperiodoantorior.Close;
    dataperiodoantorior.ParamByName('spdchave').AsInteger := registrospdchaveanterior.AsInteger;
    dataperiodoantorior.Open;

    vlDataInicioBalanco := Datetostr(dataperiodoantorior.FieldByName('spddatabalanco').AsDateTime);

    if ivgtipo.Field.AsInteger = 1 then
    begin
      if spd.Locate('spdchave', spdchaveinventario.Field.AsString, []) then
      begin
        consulta.Close;
        consulta.sql.text := 'set @disable_triggers=1';
        consulta.execsql;

        GeraInventarioSaldo.ParamByName('SpdChave').AsString := spdchaveinventario.Field.AsString;
        GeraInventarioSaldo.ParamByName('EtdCodigo').AsString := etdcodigo.Field.AsString;
        GeraInventarioSaldo.ParamByName('DataInicial').AsString := FormatDateTime('yyyy-mm-dd', strtodate(vlDataInicioBalanco));
        GeraInventarioSaldo.ParamByName('DataFinal').AsString := FormatDateTime('yyyy-mm-dd', strtodate(vlDataFinalBalanco));
        GeraInventarioSaldo.ParamByName('Preco').AsString := registroivgvalor.AsString;
        GeraInventarioSaldo.execsql;

        if CheckBoxZerarNegativos.Checked then
        begin
          ivtnegativo.Close;
          ivtnegativo.sql.text := 'UPDATE ivt SET ivtquantidade=0,ivttotal=0,ivtvalor=0 WHERE ivtquantidade<0 AND spdchave=' + spdchaveinventario.Field.AsString;
          ivtnegativo.execsql;

        end;

        if registroivgvalor.AsInteger = 2 then
        begin

          preco.Close;
          preco.ParamByName('pdata').AsDateTime := strtodatetime(spdspddatabalanco.AsString + ' 23:59:59');
          preco.Open;
          preco.First;

          mostra.Position := 0;
          mostra.Max := preco.RecordCount;

          application.ProcessMessages;

          while not preco.Eof do
          begin

            mostra.Position := mostra.Position + 1;
            application.ProcessMessages;

            ivdnegativo.Close;
            ivdnegativo.sql.text := 'UPDATE ivt SET ivtvalor=' + StringReplace(preco.FieldByName('puncusto').AsString, ',', '.', []) + '  WHERE ivtquantidade>0 AND procodigo=' +
              preco.FieldByName('procodigo').AsString + ' and spdchave=' + spdchaveinventario.Field.AsString;
            ivdnegativo.execsql;

            ivdnegativo.Close;
            ivdnegativo.sql.text := 'UPDATE ivt SET ivttotal=ivtvalor*ivtquantidade WHERE ivtquantidade>0 AND procodigo=' + preco.FieldByName('procodigo').AsString +
              ' and spdchave=' + spdchaveinventario.Field.AsString;
            ivdnegativo.execsql;

            preco.Next;
          end;

        end;

        consulta.Close;
        consulta.sql.text := 'INSERT INTO ivt (select @ivdchavenova ,' + spdchaveinventario.Field.AsString + ' ,procodigo ,' + QuotedStr('1.01.03.01.01') + ' ,0  ,0 ,0 ,1, ';
        consulta.sql.Add(QuotedStr('ZERADO') + ' ,' + etdcodigo.Field.AsString + ' ,1 , (select  ' + 'concat(spddatabalanco,' + QuotedStr(' ') + ' ' + QuotedStr('23:59:59') + ')' +
          '  from spd WHERE spdchave=' + spdchaveinventario.Field.AsString + ')  from pro where procodigo not in (select procodigo from ivt where spdchave=' +
          spdchaveinventario.Field.AsString + '))');
        consulta.execsql;

        ivtnegativo.Close;
        ivtnegativo.sql.text := 'delete from ivt where  ivtquantidade <= 0 and spdchave=' + spdchaveinventario.Field.AsString;
        ivtnegativo.execsql;

        { * Se houver invetário anterior, encerra ele e ajusta o mes e o itm * }
        { if (spdchaveanterior.Field.AsString <> '') and (spdchaveanterior.Field.AsString <> '0') then
          begin
          consulta.close;
          consulta.sql.text := 'CALL  EncerramentoInventario(' + spdchaveanterior.Field.AsString + ',' + self.toeentrada.Field.AsString + ', ' +
          self.toesaida.Field.AsString + ', ' + self.flacodigo.Field.AsString + ')';
          consulta.execsql;
          end; }

      end;
    end;

    { * Geração de inventário do saldo diponivel* }
    if ivgtipo.Field.AsInteger = 2 then
    begin

      consulta.Close;
      consulta.sql.text := 'select count(ivdchave) from ivd';
      consulta.Open;
      if consulta.Fields[0].AsInteger = 0 then
      begin
        consulta.Close;
        consulta.sql.text :=
          'INSERT INTO ivd  ( select ivtchave  ,spdchave  ,procodigo  ,pcccodigo  ,ivtquantidade  ,ivtvalor ,ivttotal  ,ivtproprietario  ,ivtdescricao  ,etdcodigo  ,flacodigo from ivt)';
        consulta.execsql;
      end;

      if spd.Locate('spdchave', spdchaveinventario.Field.AsString, []) then
      begin

        GeraInventarioSaldoDisp.ParamByName('SpdChave').AsString := spdchaveinventario.Field.AsString;
        GeraInventarioSaldoDisp.ParamByName('EtdCodigo').AsString := etdcodigo.Field.AsString;
        GeraInventarioSaldoDisp.ParamByName('DataInicial').AsString := FormatDateTime('yyyy-mm-dd', strtodate(vlDataInicioBalanco));
        GeraInventarioSaldoDisp.ParamByName('DataFinal').AsString := FormatDateTime('yyyy-mm-dd', strtodate(vlDataFinalBalanco));
        GeraInventarioSaldoDisp.ParamByName('Preco').AsString := registroivgvalor.AsString;

        GeraInventarioSaldoDisp.execsql;
        if CheckBoxZerarNegativos.Checked then
        begin
          ivdnegativo.Close;
          ivdnegativo.sql.text := 'UPDATE ivd SET ivdquantidade=0,ivdtotal=0,ivdvalor=0 WHERE ivdquantidade<0 AND spdchave=' + spdchaveinventario.Field.AsString;
          ivdnegativo.execsql;
        end;

        if registroivgvalor.AsInteger = 2 then
        begin
          preco.Close;
          preco.ParamByName('pdata').AsDateTime := strtodatetime(spdspddatabalanco.AsString + timetostr(now()));
          preco.Open;
          preco.First;

          mostra.Position := 0;
          mostra.Max := preco.RecordCount;

          application.ProcessMessages;

          while not preco.Eof do
          begin

            mostra.Position := mostra.Position + 1;
            application.ProcessMessages;

            ivdnegativo.Close;
            ivdnegativo.sql.text := 'UPDATE ivd SET ivdvalor=' + StringReplace(preco.FieldByName('puncusto').AsString, ',', '.', []) + '  WHERE ivdquantidade>0 AND procodigo=' +
              preco.FieldByName('procodigo').AsString + ' and spdchave=' + spdchaveinventario.Field.AsString;
            ivdnegativo.execsql;

            ivdnegativo.Close;
            ivdnegativo.sql.text := 'UPDATE ivd SET ivdtotal=ivdvalor*ivdquantidade WHERE ivdquantidade>0 AND procodigo=' + preco.FieldByName('procodigo').AsString +
              ' and spdchave=' + spdchaveinventario.Field.AsString;
            ivdnegativo.execsql;

            preco.Next;
          end;
        end;

        consulta.Close;
        consulta.sql.text := 'INSERT INTO ivd (select @ivdchavenova ,' + spdchaveinventario.Field.AsString + ' ,procodigo ,' + QuotedStr('1.01.03.01.01') + ' ,0  ,0 ,0 ,1, ';
        consulta.sql.Add(QuotedStr('ZERADO') + ' ,' + etdcodigo.Field.AsString + ' ,1 , (select  ' + 'concat(spddatabalanco,' + QuotedStr(' ') + ' ' + QuotedStr('23:59:59') + ')' +
          '  from spd WHERE spdchave=' + spdchaveinventario.Field.AsString + ')  from pro where procodigo not in (select procodigo from ivd where spdchave=' +
          spdchaveinventario.Field.AsString + '))');
        consulta.execsql;

        ivtnegativo.Close;
        ivtnegativo.sql.text := 'delete from ivd where  ivdquantidade <= 0 and spdchave=' + spdchaveinventario.Field.AsString;
        ivtnegativo.execsql;

        { * Se houver invetário anterior, encerra ele e ajusta o mes e o itm * }
        { if (spdchaveanterior.Field.AsString <> '') and (spdchaveanterior.Field.AsString <> '0') then
          begin

          consulta.close;
          consulta.sql.text := 'CALL  EncerramentoInventarioDisp(' + spdchaveanterior.Field.AsString + ',' + self.toeentrada.Field.AsString + ', ' +
          self.toesaida.Field.AsString + ', ' + self.flacodigo.Field.AsString + ')';
          consulta.execsql;

          end; }

      end;

    end;

  finally

    consulta.Close;
    consulta.sql.text := 'set @disable_triggers=null';
    consulta.execsql;

  end;
  inherited;

  Showmessage('Inventário gerado com sucesso!');

end;

procedure Tfivg.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  cfg.Close;
  cfg.Params[0].AsInteger := acesso.Filial;
  cfg.Open;

  fla.Close;
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
  consulta.Close;
  consulta.sql.text := 'select spddatabalanco from spd where spdchave=' + spdchaveinventario.Field.AsString;
  consulta.Open;

  vlSpdDataBalanco := consulta.Fields[0].AsString;

  if vlSpdDataBalanco <> '' then
  begin
    consulta.Close;
    consulta.sql.text := 'SELECT   spd.spddatabalanco,   spd.spdchave FROM ivt ';
    consulta.sql.Add('INNER JOIN spd    ON ivt.spdchave = spd.spdchave ');
    consulta.sql.Add('WHERE spd.spddatabalanco < :dataFinal ');
    consulta.sql.Add('AND spd.spdchave<>:spdchave ORDER BY spd.spdchave DESC  LIMIT 1');
    consulta.Params[0].AsDate := strtodate(vlSpdDataBalanco);
    consulta.Params[1].AsString := vChaveMestre;
    consulta.Open;
    registrospdchaveanterior.AsInteger := consulta.Fields[1].AsInteger;
    registrospdchaveanterior.Required := true;
  end
  else
    registrospdchaveanterior.Required := false;

end;

end.
