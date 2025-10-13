unit ufmcg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uFuncoes, Vcl.Mask,
  Vcl.DBCtrls, StrUtils;

type
  Tfmcg = class(Tfrmbase)
    registromcgchave: TIntegerField;
    registroccgcodigo: TIntegerField;
    registromcgvalor: TFloatField;
    registromcgdata: TDateField;
    registromcgtabela: TStringField;
    registroclbcodigo: TIntegerField;
    registromcgregistro: TDateTimeField;
    Label1: TLabel;
    mcgchave: TDBEdit;
    Label2: TLabel;
    ccgcodigo: TDBEdit;
    Label3: TLabel;
    mcgvalor: TDBEdit;
    registromcgchaveorigem: TIntegerField;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    ccgccgidentificacao: TStringField;
    registroccgidentificacao: TStringField;
    tit: TUniQuery;
    Label4: TLabel;
    mcgdata: TDBEdit;
    v_rfi: TUniQuery;
    registrorfichave: TIntegerField;
    mcgaju: TUniQuery;
    mcgajumcgchave: TIntegerField;
    mcgajuccgcodigo: TIntegerField;
    mcgajumcgvalor: TFloatField;
    mcgajumcgdata: TDateField;
    mcgajumcgtabela: TStringField;
    mcgajumcgchaveorigem: TIntegerField;
    mcgajumcgsituacao: TIntegerField;
    mcgajuclbcodigo: TIntegerField;
    mcgajumcgregistro: TDateTimeField;
    mcgajurfichave: TIntegerField;
    rfi: TUniQuery;
    registromcgcompetencia: TStringField;
    Label5: TLabel;
    mcgcompetencia: TDBEdit;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure ccgcodigoEnter(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure mcgdataExit(Sender: TObject);
    procedure mcgcompetenciaExit(Sender: TObject);
  private
    { Private declarations }
    vpCedCodigo: String;
    vpRfiChave: String;

  public
    { Public declarations }
  end;

var
  fmcg: Tfmcg;

implementation

{$R *.dfm}

procedure Tfmcg.bconfirmaClick(Sender: TObject);
var
  vlTitTotal: Double;
  vlMcgValor: Double;
  vlMcgChave: string;
begin
  inherited;

  if registromcgtabela.AsString = 'rfi' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT titvalor  FROM tit WHERE titcodigo=' + vChaveMestre;
    consulta.Open;

    vlTitTotal := consulta.FieldByName('titvalor').AsCurrency;

    vlMcgChave := '';
    consulta.Close;
    consulta.SQL.Text := 'SELECT mcg.mcgchave,mcg.ccgcodigo,mcgvalor mcgvalor  FROM mcg WHERE mcgchaveorigem=' + vChaveMestre + '  and mcgtabela=' + QuotedStr('rfi') +
      ' and ccgcodigo=' + ccgcodigo.Field.AsString + ' group by ccgcodigo';
    consulta.Open;

    vlMcgChave := consulta.FieldByName('mcgchave').AsString;

    vlMcgValor := consulta.FieldByName('mcgvalor').AsCurrency;

    if vpRfiChave = '' then
    begin
      rfi.Close;
      rfi.SQL.Text := 'select rfichave,titcodigo, rfivalor, rfivencimento, rfirepetir from rfi where srfcodigo<>9 and titcodigo=' + vChaveMestre;
      rfi.Open;

    end
    else
    begin
      rfi.Close;
      rfi.SQL.Text := 'select rfichave,titcodigo, rfivalor, rfivencimento, rfirepetir from rfi where srfcodigo<>9 and rfichave=' + vpRfiChave;
      rfi.Open;

    end;

    rfi.First;
    while not rfi.Eof do
    begin

      consulta.First;

      while not consulta.Eof do
      begin
        mcgaju.Close;
        mcgaju.ParamByName('mcgchaveorigem').AsInteger := rfi.FieldByName('titcodigo').AsInteger;
        mcgaju.ParamByName('rfichave').AsInteger := rfi.FieldByName('rfichave').AsInteger;
        mcgaju.ParamByName('ccgcodigo').AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;

        mcgaju.Open;

        if mcgaju.IsEmpty then
        begin
          mcgaju.Append;

          mcgajuccgcodigo.AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;
          if vpRfiChave <> '' then
            mcgajumcgvalor.AsCurrency := rfi.FieldByName('rfivalor').AsCurrency
          else
            mcgajumcgvalor.AsCurrency := rfi.FieldByName('rfivalor').AsCurrency;
          // mcgajumcgvalor.AsCurrency := vlMcgValor;


          // mcgajumcgvalor.AsCurrency := vlTitTotal * (rfi.FieldByName('rfivalor').AsCurrency / vlTitTotal);

          mcgajumcgdata.AsDateTime := rfi.FieldByName('rfivencimento').AsDateTime;
          mcgajumcgtabela.AsString := 'rfi';
          mcgajumcgchaveorigem.AsInteger := rfi.FieldByName('titcodigo').AsInteger;
          mcgajumcgsituacao.AsInteger := 0;
          mcgajuclbcodigo.AsInteger := Acesso.Usuario;
          mcgajumcgregistro.AsString := agora(application, ZCone);
          mcgajurfichave.AsInteger := rfi.FieldByName('rfichave').AsInteger;
          mcgaju.Post;
        end
        else
        begin
          mcgaju.Edit;
          mcgajurfichave.AsInteger := rfi.FieldByName('rfichave').AsInteger;
          mcgajumcgvalor.AsCurrency :=vlMcgValor;//   rfi.FieldByName('rfivalor').AsCurrency;
          mcgaju.Post;
        end;

        consulta.Next;
      end;

      rfi.Next;
    end;

  end;

  consulta.Close;
  consulta.SQL.Text := 'delete from mcg where mcgtabela=' + QuotedStr('rfi') + ' and mcgchaveorigem=' + vChaveMestre + ' and rfichave=0';
  consulta.ExecSQL;
end;

procedure Tfmcg.ccgcodigoEnter(Sender: TObject);
begin
  inherited;
  if registromcgtabela.AsString = 'cco' then
    txtFiltro := 'ccgrecdes=' + vpCedCodigo
  else
    txtFiltro := 'ccgrecdes=0';

end;

procedure Tfmcg.FormShow(Sender: TObject);
var
  vlTotCCO: Double;
  vlTotMCG: Double;
  vregistroorigem: string;
begin
  inherited;
  vregistroorigem := vChaveMestre;
  if pos('#', txtFiltro) > 0 then
  begin
    vpRfiChave := trim(copy(txtFiltro, pos('#', txtFiltro) + 1, 10));
  end;

  vlTotCCO := 0;
  vlTotMCG := 0;

  if registromcgtabela.AsString = 'cco' then
  begin

    if registromcgchaveorigem.AsString <> '' then
    begin

      consulta.Close;
      consulta.SQL.Text := 'select ccovencimento, ccovalor, cedcodigo from cco where ccochave=' + registromcgchaveorigem.AsString;
      consulta.Open;

      if not consulta.IsEmpty then
      begin
        registromcgdata.AsString := consulta.FieldByName('ccovencimento').AsString;
        vlTotCCO := consulta.FieldByName('ccovalor').AsFloat;
        vpCedCodigo := consulta.FieldByName('cedcodigo').AsString;
      end;

    end;

    consulta.Close;
    consulta.SQL.Text := 'select  mcgvalor mcgvalor from mcg where mcgchaveorigem=' + registromcgchaveorigem.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      vlTotMCG := consulta.FieldByName('mcgvalor').AsFloat;
    end;

  end

  else if registromcgtabela.AsString = 'rfi' then
  begin

    if registromcgchaveorigem.AsString <> '' then
    begin

      if vpRfiChave <> '' then
      begin
        v_rfi.Close;
        v_rfi.SQL.Text := 'select rfidtultbaixa, rfivencimento from v_rfi where srfcodigo<>9 and titcodigo=' + registromcgchaveorigem.AsString + ' and rfichave=' + vpRfiChave;
        v_rfi.Open;
        if not v_rfi.IsEmpty then
        begin

          if v_rfi.FieldByName('rfidtultbaixa').AsString <> '' then
          begin
            registromcgdata.AsString := v_rfi.FieldByName('rfidtultbaixa').AsString;
          end
          else
          begin
            registromcgdata.AsString := v_rfi.FieldByName('rfivencimento').AsString;
          end;

        end;
      end
      else
      begin
        v_rfi.Close;
        v_rfi.SQL.Text := 'select rfiemissao,rfivencimento from v_rfi where titcodigo=' + registromcgchaveorigem.AsString;
        v_rfi.Open;
        registromcgdata.AsString := v_rfi.FieldByName('rfivencimento').AsString;
      end;

      if vpRfiChave = '' then
      begin
        tit.Close;
        tit.SQL.Text := 'select  rfivalor, 0 cedcodigo,  srfcodigo from rfi where titcodigo=' + registromcgchaveorigem.AsString;
        tit.Open;

      end
      else
      begin
        tit.Close;
        tit.SQL.Text := 'select  rfivalor, 0 cedcodigo,  srfcodigo from rfi where titcodigo=' + registromcgchaveorigem.AsString + ' and rfi.rfichave=' + vpRfiChave;
        tit.Open;
      end;

      if not tit.IsEmpty then
      begin

        vpCedCodigo := tit.FieldByName('cedcodigo').AsString;

        { while not tit.Eof do
          begin }
        if tit.FieldByName('srfcodigo').AsInteger <> 9 then
        begin
          vlTotCCO := vlTotCCO + tit.FieldByName('rfivalor').AsFloat;
        end;

        { tit.Next;
          end; }

      end
      else
      begin
        tit.Close;
        tit.SQL.Text := 'select  rfivalor, 0 cedcodigo,  srfcodigo from rfi where titcodigo=' + registromcgchaveorigem.AsString;
        tit.Open;

        if not tit.IsEmpty then
        begin

          vpCedCodigo := tit.FieldByName('cedcodigo').AsString;

          while not tit.Eof do
          begin
            if tit.FieldByName('srfcodigo').AsInteger <> 9 then
            begin
              vlTotCCO := vlTotCCO + tit.FieldByName('rfivalor').AsFloat;
            end;

            tit.Next;
          end;

        end;

      end;

    end;
    if psituacao.Caption = 'Incluindo' then
    begin

      consulta.Close;
      consulta.SQL.Text := 'select distinct mcgvalor mcgvalor from mcg where rfichave<>0 and mcgchaveorigem=' + registromcgchaveorigem.AsString +
        ' group by ccgcodigo,mcgchaveorigem';
      consulta.Open;

      if not consulta.IsEmpty then
      begin

        while not consulta.Eof do
        begin
          vlTotMCG := vlTotMCG + consulta.FieldByName('mcgvalor').AsFloat;

          consulta.Next;
        end;

      end;

    end
    else
    begin

      consulta.Close;
      consulta.SQL.Text := 'select  mcgvalor mcgvalor from mcg where mcgchave=' + vchave + ' and rfichave<>0 and mcgchaveorigem=' + registromcgchaveorigem.AsString;
      consulta.Open;

      if not consulta.IsEmpty then
      begin
        vlTotMCG := consulta.FieldByName('mcgvalor').AsFloat;

      end;

    end;

  end;
  if psituacao.Caption = 'Incluindo' then
  begin
    if vlTotMCG < 0 then
      vlTotMCG := vlTotMCG * -1;

    registromcgvalor.AsCurrency := vlTotCCO - vlTotMCG;

  end
  else
  begin
    if registromcgtabela.AsString = 'cco' then
      registromcgvalor.AsCurrency := vlTotCCO
    else
      registromcgvalor.AsCurrency := vlTotMCG;
  end;

  ccgcodigo.SetFocus;

end;

procedure Tfmcg.mcgcompetenciaExit(Sender: TObject);
var
  vlmes: string;
  vlano: string;
Const
  meses: Array [0 .. 11] of String = ('01', '02', '03', '04', '05', '06', '07', '08', '09', '10', '11', '12');

begin
  inherited;
  if ActiveControl = bcancela then
    exit;

  ValidaSaida(Sender);
  vlmes := copy(mcgcompetencia.Field.AsString, 1, 2);
  vlano := copy(mcgcompetencia.Field.AsString, 4, 2);

  if MatchStr(vlmes, meses) = false then
  begin
    Showmessage('Mes inválido!');
    mcgcompetencia.SetFocus;
  end;

  if strtoint(vlano) < 17 then
  begin
    Showmessage('Ano inválido!');
    mcgcompetencia.SetFocus;
  end;

end;

procedure Tfmcg.mcgdataExit(Sender: TObject);
var
  Year: Word;
  Month: Word;
  Day: Word;

begin
  inherited;
  if psituacao.Caption = 'Incluindo' then
  begin
    DecodeDate(mcgdata.Field.AsDateTime, Year, Month, Day);
    mcgcompetencia.Field.AsString := formatfloat('00', Month) + '-' + copy(formatfloat('0000', Year), 3, 2);
  end;

end;

procedure Tfmcg.registroAfterInsert(DataSet: TDataSet);
var
  vregistroorigem: string;
  vtabelaorigem: string;

begin
  inherited;
  vregistroorigem := vChaveMestre;
  if pos('#', txtFiltro) > 0 then
  begin
    vpRfiChave := trim(copy(txtFiltro, pos('#', txtFiltro) + 1, 10));
    txtFiltro := trim(copy(txtFiltro, 1, pos('#', txtFiltro) - 1));
    registrorfichave.AsString := vpRfiChave;
  end;

  vtabelaorigem := copy(txtFiltro, pos('=', txtFiltro) + 1, 20);

  registroclbcodigo.AsInteger := Acesso.Usuario;
  registromcgregistro.AsString := agora(application, ZCone);
  registromcgtabela.AsString := trim(stringreplace(vtabelaorigem, chr(39), ' ', [rfReplaceAll, rfIgnoreCase]));
  registromcgchaveorigem.AsString := vregistroorigem;

end;

procedure Tfmcg.registroBeforePost(DataSet: TDataSet);
begin
  inherited;
  if vpRfiChave <> '' then
    registrorfichave.AsString := vpRfiChave;

end;

end.
