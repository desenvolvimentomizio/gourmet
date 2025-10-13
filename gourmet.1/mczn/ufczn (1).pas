unit ufczn;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, uFuncoes, uPegaBase, System.ImageList, System.SysUtils, System.DateUtils;

type
  Tfczn = class(Tfrmbase)
    registrocznchave: TIntegerField;
    registrocznabertura: TDateTimeField;
    registrocznfechamento: TDateTimeField;
    registroclbcodigo: TIntegerField;
    Label1: TLabel;
    cznchave: TDBEdit;
    Label2: TLabel;
    cznabertura: TDBEdit;
    lbcznfechamento: TLabel;
    cznfechamento: TDBEdit;
    orc: TUniQuery;
    brc: TUniQuery;
    ito: TUniQuery;
    bto: TUniQuery;
    imm: TUniQuery;
    bmm: TUniQuery;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    pbProcesamento: TProgressBar;
    lbprocessamento: TLabel;
    saldo: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgcfgrefepro: TIntegerField;
    cfgcfgdoisprecos: TIntegerField;
    cfgcfgusagrade: TIntegerField;
    cfgcfgusaenderecamento: TIntegerField;
    cfgcfgprodefineicms: TIntegerField;
    cfgcfgbalanca: TIntegerField;
    cfgcfgextratosegmentado: TIntegerField;
    cfgcfgusaprecobase: TIntegerField;
    cfgcfgtabelasaux: TIntegerField;
    cfgcfgproinativsaldozero: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    procedure ProcessarSaldos;
    { Private declarations }
  public
    { Public declarations }
    vpCznChave: string;
  end;

var
  fczn: Tfczn;

  // Início ID do Módulo fczn
const
  vPlIdMd = '00.00.00.000-01';

implementation

{$R *.dfm}
{
  function formu(pCargaFrame: TCargaFrame): string;
  begin
  Result := '';
  fczn := Tfczn.Create(pCargaFrame);
  if fczn.ShowModal = mrok then
  Result := fczn.vpCznChave;

  fczn.Free;
  end;

  exports formu;
}

procedure Tfczn.bconfirmaClick(Sender: TObject);
var
  I: integer;
begin

  consulta.Close;
  consulta.SQL.Text := '';
  consulta.SQL.Add('DROP TRIGGER IF EXISTS imv_after_del;');
  consulta.SQL.Add('DROP trigger IF EXISTS imv_after_ins;');
  consulta.SQL.Add('DROP trigger IF EXISTS imv_after_upd;');
  consulta.SQL.Add('DROP trigger IF EXISTS itm_after_del;');
  consulta.SQL.Add('DROP trigger IF EXISTS itm_after_ins;');
  consulta.SQL.Add('DROP trigger IF EXISTS itm_after_upd;');
  consulta.SQL.Add('DROP trigger IF EXISTS itm_before_upd;');
  consulta.SQL.Add('DROP trigger IF EXISTS mes_after_upd;');
  consulta.SQL.Add('DROP trigger IF EXISTS mes_before_del;');
  consulta.ExecSQL;

  if cznfechamento.Visible then
  begin

   { consulta.Close;
    consulta.SQL.Text := 'delete from unm where orcchave not in (select orcchave from orc where (orcdataencerr is null) OR (orcdataabert<=(DATE_ADD(NOW(), INTERVAL -90 DAY) )) )';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'delete from olt';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'delete from sbi where itochave in (select itochave from ito,orc where orc.orcchave=ito.orcchave and (orcdataencerr IS NOT null) OR (orcdataabert<=(DATE_ADD(NOW(), INTERVAL -90 DAY) )))';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'delete from sbi where itochave in (select itochave from ito,orc where orc.orcchave=ito.orcchave and (orcdataencerr IS NOT null) OR (orcdataabert<=(DATE_ADD(NOW(), INTERVAL -90 DAY) )))';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'delete from unm where orcchave not in (select orcchave from orc where (orcdataencerr is null) OR (orcdataabert<=(DATE_ADD(NOW(), INTERVAL -90 DAY) )))';
    consulta.ExecSQL;


    consulta.Close;
    consulta.SQL.Text := 'delete from orc where ((orcdataencerr IS NOT null) or (orcdataabert<=(DATE_ADD(NOW(), INTERVAL -30 DAY) ))) and orcchave not in (select orcchave from unm) ';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'delete from orc where stocodigo=9';
    consulta.ExecSQL;}

    consulta.Close;
    consulta.SQL.Text := 'delete from orc where stocodigo=88';
    consulta.ExecSQL;


    consulta.Close;
    consulta.SQL.Text := 'DELETE FROM mor WHERE orcchave NOT IN (SELECT orcchave FROM orc)';
    consulta.ExecSQL;


    consulta.Close;
    consulta.SQL.Text := 'delete from olt where orcchave not in (select orcchave from orc where (orcdataencerr is null) OR (orcdataabert<=(DATE_ADD(NOW(), INTERVAL -90 DAY) )))';
    consulta.ExecSQL;


    consulta.Close;
    consulta.SQL.Text := 'delete from imm where itochave not in (select itochave from ito, orc where ito.orcchave=orc.orcchave and (orcdataencerr is null) OR (orcdataabert<=(DATE_ADD(NOW(), INTERVAL -90 DAY) )))';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'SELECT cfgmgoupedidelivery,cfgmgounumepedint FROM cfgmgou ';
    consulta.Open;

    consulta.Edit;
    consulta.FieldByName('cfgmgoupedidelivery').AsInteger := 0;
    consulta.Post;

    consulta.Edit;
    consulta.FieldByName('cfgmgounumepedint').AsInteger := 5000;
    consulta.Post;

    ProcessarSaldos;
  end;
  inherited;
  self.vpCznChave := self.registrocznchave.AsString;

end;

procedure Tfczn.ProcessarSaldos;
var
  I: integer;
  vlSaldo: Double;
  vlSpdChave: integer;

  vlSaldoDisp: Double;

begin
  inherited;
  try

    pbProcesamento.Visible := true;
    lbprocessamento.Visible := true;
    pbProcesamento.Max := pro.RecordCount;
    pbProcesamento.position := 0;
    application.ProcessMessages;
    pro.Open;
    pro.First;

    consulta.Close;
    consulta.SQL.Text := 'SELECT   spdchave,  spdexercicio,  spddatainicial,  spddatafinal,  spddatabalanco, ';
    consulta.SQL.Add('pcccodigo,   spdativo,  spdmotivoinv,  spdvalortotal,  spdarquivo,  spdgeracao,  flacodigo,  spdpasta, ');
    consulta.SQL.Add(' spdregistro,  spdenvio FROM spd order by spdchave limit 1');
    consulta.Open;

    if consulta.IsEmpty then
    begin
      vlSpdChave := 1;
      consulta.Append;
      consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
      consulta.FieldByName('spdexercicio').AsString := FormatDateTime('yyyy', StrToDate(hoje(application, zcone)));
      consulta.FieldByName('spddatainicial').AsFloat := StrToDate(hoje(application, zcone));
      consulta.FieldByName('spddatafinal').AsFloat := EndOfTheMonth(consulta.FieldByName('spddatainicial').AsFloat);
      consulta.FieldByName('spddatabalanco').AsFloat := consulta.FieldByName('spddatafinal').AsFloat;
      consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
      consulta.FieldByName('spdativo').AsString := '1';
      consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
      consulta.Post;

    end
    else
    begin
      vlSpdChave := consulta.FieldByName('spdchave').AsInteger;
    end;

    while not pro.Eof do
    begin

      pbProcesamento.position := pbProcesamento.position + 1;
      application.ProcessMessages;

      consulta.Close;
      consulta.SQL.Text := 'SELECT   ivtchave,  spdchave,  procodigo,  pcccodigo,  ivtquantidade,';
      consulta.SQL.Add('ivtvalor,   ivttotal,  ivtproprietario,  ivtdescricao,  etdcodigo,  flacodigo, ivtregistro FROM ivt where procodigo=' + proprocodigo.AsString);
      consulta.Open;

      if consulta.IsEmpty then
      begin

        consulta.Append;
        consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
        consulta.FieldByName('procodigo').AsInteger := proprocodigo.AsInteger;
        consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
        consulta.FieldByName('ivtquantidade').AsInteger := 0;
        consulta.FieldByName('ivtvalor').AsInteger := 0;
        consulta.FieldByName('ivttotal').AsInteger := 0;
        consulta.FieldByName('ivtproprietario').AsInteger := 1;
        consulta.FieldByName('ivtdescricao').AsString := 'Inventário de inclusão do produto';
        consulta.FieldByName('etdcodigo').AsString := '1';
        consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
        consulta.FieldByName('ivtregistro').AsDatetime := strtodatetime('01/01/2000 00:00:01');
        consulta.Post;
      end;

      consulta.Close;
      consulta.SQL.Text := 'SELECT   ivdchave,  spdchave,  procodigo,  pcccodigo,  ivdquantidade,';
      consulta.SQL.Add('ivdvalor,   ivdtotal,  ivdproprietario,  ivddescricao,  etdcodigo,  flacodigo FROM ivd where procodigo=' + proprocodigo.AsString);
      consulta.Open;

      if consulta.IsEmpty then
      begin

        consulta.Append;
        consulta.FieldByName('spdchave').AsInteger := vlSpdChave;
        consulta.FieldByName('procodigo').AsInteger := proprocodigo.AsInteger;
        consulta.FieldByName('pcccodigo').AsString := '1.01.03.01.01';
        consulta.FieldByName('ivdquantidade').AsInteger := 0;
        consulta.FieldByName('ivdvalor').AsInteger := 0;
        consulta.FieldByName('ivdtotal').AsInteger := 0;
        consulta.FieldByName('ivdproprietario').AsInteger := 1;
        consulta.FieldByName('ivddescricao').AsString := 'Inventário de inclusão do produto';
        consulta.FieldByName('etdcodigo').AsString := '1';
        consulta.FieldByName('flacodigo').AsString := Acesso.Filial.ToString;
        consulta.Post;

      end;

      vlSaldo := 0;
      consulta.Close;
      consulta.SQL.Text := 'select calcSaldoProduto(' + proprocodigo.AsString + ')';
      consulta.Open;
      vlSaldo := consulta.Fields[0].AsFloat;

      vlSaldoDisp := 0;
      consulta.Close;
      consulta.SQL.Text := 'select calcSaldoProdutoDisp(' + proprocodigo.AsString + ')';
      consulta.Open;
      vlSaldoDisp := consulta.Fields[0].AsFloat;

      consulta.Close;
      consulta.SQL.Text := 'UPDATE pro SET prosaldo = ' + buscatroca(floattostr(vlSaldo), ',', '.') + ', prosaldodisp =  ' + buscatroca(floattostr(vlSaldoDisp), ',', '.') +
        ' where procodigo=' + proprocodigo.AsString;
      consulta.ExecSQL;

      if cfgcfgproinativsaldozero.AsInteger = 1 then
      begin

        saldo.Close;
        saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + proprocodigo.AsString + ', IF((select prosaldo from pro where procodigo=' + proprocodigo.AsString + ')=0,2,1) )';
        saldo.ExecSQL;

        saldo.Close;
        saldo.SQL.Text := 'CALL AjustaSitacaoProduto(' + proprocodigo.AsString + ', IF((select prosaldodisp from pro where procodigo=' + proprocodigo.AsString + ')=0,2,1) )';
        saldo.ExecSQL;

      end;

      pro.Next;

    end;

  {  consulta.Close;
    consulta.SQL.Text := 'UPDATE vrp v SET v.vrpsaldo = calcSaldoVariacao(v.vrpcodigo);';
    consulta.ExecSQL;}

  finally
    pbProcesamento.Visible := false;
    lbprocessamento.Visible := false;
  end;

end;

procedure Tfczn.FormShow(Sender: TObject);
begin
  self.IdModulo := vPlIdMd;
  inherited;

  consulta.Close;
  consulta.SQL.Text := 'select cznchave from czn where cznfechamento IS null order by cznchave limit 1';
  consulta.Open;

  if consulta.IsEmpty then
  begin
    lbcznfechamento.Visible := false;
    cznfechamento.Visible := false;
  end
  else
  begin
    lbcznfechamento.Visible := true;
    cznfechamento.Visible := true;

    registro.Cancel;

    registro.Close;
    registro.Params[0].AsInteger := consulta.Fields[0].AsInteger;
    registro.Open;
    registro.Edit;
    psituacao.Caption := 'Alterando';
    registrocznfechamento.AsString := agora(application, zcone);
  end;
  self.Height := 225;
  self.Width := 330;

end;

procedure Tfczn.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrocznabertura.AsString := agora(application, zcone);
  registroclbcodigo.AsInteger := Acesso.Usuario;
end;

end.
