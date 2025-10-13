unit ufctzauto;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, Uni, ufuncoes;

type
  Tfctzauto = class(TForm)
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
    rmgcedcodigo: TIntegerField;
    rmgrmgcompetencia: TDateField;
    rmgrmginclusao: TDateTimeField;
    rmgrmgtipo: TIntegerField;
    pct: TUniQuery;
    consulta: TUniQuery;
    pcttdgcodigo: TIntegerField;
    pctcfgcodigo: TIntegerField;
    pctflacodigo: TIntegerField;
    pcttogorigctacre: TIntegerField;
    pcttogorigctadeb: TIntegerField;
    pctpcthistpadrao: TIntegerField;
    pctpctcampoval: TStringField;
    pctpctcampohis: TStringField;
    pcttogcampo_cre: TStringField;
    pcttogtabela_cre: TStringField;
    pcttogcampo_deb: TStringField;
    pcttogtabela_deb: TStringField;
    sqlval: TUniQuery;
    dtl: TUniQuery;
    pctmdacodigo: TIntegerField;
    pcb: TUniQuery;
    prg: TUniQuery;
    pcbpcbchave: TIntegerField;
    pcbccochave: TIntegerField;
    pcbpcgcodigo: TIntegerField;
    pcbpcbvalor: TFloatField;
    pcbphgcodigo: TIntegerField;
    pcbpcbcomplhist: TStringField;
    prgprgchave: TIntegerField;
    prgpcbchave: TIntegerField;
    prgprgvalor: TFloatField;
    prgprgtipo: TIntegerField;
    prgccgcodigo: TIntegerField;
    prgprgpercentual: TFloatField;
    drg: TUniQuery;
    drgdrgchave: TIntegerField;
    drgmlgchave: TIntegerField;
    drgdrgvalor: TFloatField;
    drgdrgtipo: TIntegerField;
    drgccgcodigo: TIntegerField;
    drgdrgpercentual: TFloatField;
    cfg: TUniQuery;
    cfgmctb: TUniQuery;
    cfgmctbcfgcodigo: TIntegerField;
    cfgmctbcfgctbcliindiv: TIntegerField;
    cfgmctbcfgctbcli: TIntegerField;
    cfgmctbcfgctbforindiv: TIntegerField;
    cfgmctbcfgctbfor: TIntegerField;
    cfgmctbccgcodigo: TIntegerField;
    cfgmctbcfgctbmodo: TIntegerField;
    cfgmctbcfgctbphgchdevol: TIntegerField;
    cfgmctbcfgctbphgdeposito: TIntegerField;
    cfgmctbcfgctbphgestorno: TIntegerField;
    cfgmctbcfgctbphgresgch: TIntegerField;
    cfgmctbcfgctbpcgchemcob: TIntegerField;
    cfgmctbcfgctbpcgrecebimentos: TIntegerField;
    cfgmctbcfgctbpcgpagamentos: TIntegerField;
    cfgmctbcfgctbpcgpgtodesc: TIntegerField;
    cfgmctbcfgctbpcgpgtomulta: TIntegerField;
    cfgmctbcfgctbpcgpgtojuros: TIntegerField;
    cfgmctbcfgctbpcgrctodesc: TIntegerField;
    cfgmctbcfgctbpcgrctomulta: TIntegerField;
    cfgmctbcfgctbpcgrctojuros: TIntegerField;
    cfgmctbcfgctbpcgicmarecu: TIntegerField;
    cfgmctbcfgctbpcgipiarecu: TIntegerField;
    cfgmctbcfgctbpcgpisarecu: TIntegerField;
    cfgmctbcfgctbpcgcofinsarecu: TIntegerField;
    cfgmctbcfgctbpcgicmsarecu: TIntegerField;
    cfgmctbcfgctbpcgicmareco: TIntegerField;
    cfgmctbcfgctbpcgipiareco: TIntegerField;
    cfgmctbcfgctbpcgpisareco: TIntegerField;
    cfgmctbcfgctbpcgcofinsareco: TIntegerField;
    cfgmctbcfgctbpcgcsllareco: TIntegerField;
    cfgmctbcfgctbpcgcsrfareco: TIntegerField;
    cfgmctbcfgctbpcgirpjareco: TIntegerField;
    cfgmctbcfgctbpcgicm: TIntegerField;
    cfgmctbcfgctbpcgipi: TIntegerField;
    cfgmctbcfgctbpcgpis: TIntegerField;
    cfgmctbcfgctbpcgcofins: TIntegerField;
    cfgmctbcfgctbpcgcsll: TIntegerField;
    cfgmctbcfgctbpcgcsrf: TIntegerField;
    cfgmctbcfgctbpcgirpj: TIntegerField;
    cfgmctbcfgctbusaccg: TIntegerField;
    mfi: TUniQuery;
    mfitmfcodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfietdcodigo: TIntegerField;
    mfirfihistorico: TStringField;
    mfimfidata: TDateField;
    mfitfdcodigo: TIntegerField;
    mfiflacodigo: TIntegerField;
    cfgmctbcfgctbphgpgtodesc: TIntegerField;
    cfgmctbcfgctbphgpgtomulta: TIntegerField;
    cfgmctbcfgctbphgpgtojuros: TIntegerField;
    cfgmctbcfgctbphgrctodesc: TIntegerField;
    cfgmctbcfgctbphgrctomulta: TIntegerField;
    cfgmctbcfgctbphgrctojuros: TIntegerField;
    cfgmctbcfgctbphgrecebimentos: TIntegerField;
    cfgmctbcfgctbphgpagamentos: TIntegerField;
    etv: TUniQuery;
    etvetvcodigo: TIntegerField;
    etvetdcodigo: TIntegerField;
    etvtvicodigo: TIntegerField;
    etvpcgcodigo: TIntegerField;
    tit: TUniQuery;
    mfititcodigo: TIntegerField;
    pcr: TUniQuery;
    pcrpcrchave: TIntegerField;
    pcrtitcodigo: TIntegerField;
    pcrpcgcodigo: TIntegerField;
    pcrpcrvalor: TFloatField;
    pcrphgcodigo: TIntegerField;
    pcrpcrcomplhist: TStringField;
    prr: TUniQuery;
    prrprrchave: TIntegerField;
    prrpcrchave: TIntegerField;
    prrprrvalor: TFloatField;
    prrprrtipo: TIntegerField;
    prrccgcodigo: TIntegerField;
    prrprrpercentual: TFloatField;
    prrpcgcodigo: TIntegerField;
    prgpcgcodigo: TIntegerField;
    drgpcgcodigo: TIntegerField;
    cfgmctbcfgctbpcgvnddesccom: TIntegerField;
    cfgmctbcfgctbpcgcprdesccom: TIntegerField;
    cfgmctbcfgctbpcgsrvdesccom: TIntegerField;
    cfgmctbcfgctbphgvnddesccom: TIntegerField;
    cfgmctbcfgctbphgsrvdesccom: TIntegerField;
    cfgmctbcfgctbphgcprdesccom: TIntegerField;
    cfgmctbcfgctbphgvendas: TIntegerField;
    cfgmctbcfgctbphgcompras: TIntegerField;
    cfgmctbcfgctbphgservicos: TIntegerField;
    mes: TUniQuery;
    mespcgcodigo: TIntegerField;
    mesphgcodigo: TIntegerField;
    mespcgentidade: TIntegerField;
    mesitmtotal: TFloatField;
    mesitmdesconto: TFloatField;
    mesmesregistro: TDateField;
    rfi: TUniQuery;
  private
    { Private declarations }
    Fzcone: tuniconnection;
    function BuscaCampo(vCampo, vTabela, vLote, vTfdCodigo, vMdaCodigo: string): string;
    function MostraLista(modulo: string; vusuario: string; vLteChave: string; vTfdCodigo: string; vCedcodigo: string; vFlacodigo: string; vPcgCodigo: string;
      vPhgCodigo: string; vRmgValor: string): string;
    procedure VerAtualizacao(pacote: string);
  public
    { Public declarations }

    { Private declarations }
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  end;

  TExecF = function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vtipolista: Integer; vmodulo: string; vfiltro: string;
    vmodo: string): string;

  TContaCorrente = Function(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vTfdCodigo: Integer; vCedcodigo: Integer;
    vFlacodigo: string; vPcgCodigo: string; vPhgCodigo: string; vRmgValor: string): boolean;

var
  fctzauto: Tfctzauto;

implementation

{$R *.dfm}

uses ufctz;

function ContaContabil(vEtdCodigo: Integer; vTviCodigo: Integer): string;
begin

  fctzauto.etv.close;
  fctzauto.etv.Params[0].AsInteger := vEtdCodigo;
  fctzauto.etv.Params[1].AsInteger := vTviCodigo;
  fctzauto.etv.Open;

  if fctzauto.etvpcgcodigo.AsString = '' then
  begin
    if vTviCodigo = 1 then
      result := fctzauto.cfgmctbcfgctbcli.AsString
    else
      result := fctzauto.cfgmctbcfgctbfor.AsString;
  end
  else
    result := fctzauto.etvpcgcodigo.AsString;
end;

function ContabilizacaoBaixaRFI(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vTdgCodigo: string;
  vCcoChave: string): boolean;
var
  vlFlaCodigo: string;

  vlPcgContaCCO: string;
  vlPhgContaCCO: string;
  vlCompleHistCCO: string;
  vlValorContaCCO: string;

  vlPcgContaRFI: string;
  vlPhgContaRFI: string;
  vlCompleHistRFI: string;
  vlValorContaRFI: string;

  vlData: Tdate;
  vlAgora: TdateTime;

  vlTfdCodigo: Integer;
  vlTitCodigo: Integer;

  i: Integer;

begin
  try
    fctzauto := Tfctzauto.Create(AOwner);
    fctzauto.zcone := conexao;

    for i := 0 to fctzauto.ComponentCount - 1 do
    begin
      if fctzauto.Components[i] is TUniQuery then
      begin
        (fctzauto.Components[i] as TUniQuery).Connection := fctzauto.zcone;
      end;
    end;

    fctzauto.cfgmctb.Open;
    fctzauto.cfg.Open;

    vlData := StrToDate(hoje(application, conexao));
    vlAgora := StrToDateTime(agora(application, conexao));

    fctzauto.mfi.close;
    fctzauto.mfi.Connection := conexao;
    fctzauto.mfi.Params[0].AsString := vLteChave;
    fctzauto.mfi.Open;

    vlTfdCodigo := fctzauto.mfitfdcodigo.AsInteger;
    vlTitCodigo := fctzauto.mfititcodigo.AsInteger;

    if fctzauto.mfi.IsEmpty then
      exit;

    if vCcoChave <> '' then
    begin
      vlFlaCodigo := '1';

      fctzauto.mlg.close;
      fctzauto.mlg.Connection := conexao;
      fctzauto.mlg.Params[0].AsString := vLteChave;
      fctzauto.mlg.Open;

      if fctzauto.mlg.IsEmpty then
        fctzauto.mlg.Append
      else
        fctzauto.mlg.Edit;

      fctzauto.mlgclbcodigo.AsString := vusuario;
      fctzauto.mlgmlgsituacao.AsInteger := 1;
      fctzauto.mlgflacodigo.AsString := vlFlaCodigo;
      fctzauto.mlgmlgdata.AsFloat := date;
      fctzauto.mlgltechave.AsString := vLteChave;
      fctzauto.mlg.Post;

      fctzauto.consulta.close;
      fctzauto.consulta.sql.Text := 'select cco.cedcodigo, cco.ccovalor, cta.pcgcodigo, ';
      fctzauto.consulta.sql.Add(' cco.ccohistorico from cco,cta where cco.ctacodigo=cta.ctacodigo and cco.ccochave=' + vCcoChave);
      fctzauto.consulta.Open;

      vlPcgContaCCO := fctzauto.consulta.fields[2].AsString;

      if (vlTfdCodigo = tfdRecebimentos) or (vlTfdCodigo = tfdReceber) then
        vlPhgContaCCO := fctzauto.cfgmctbcfgctbphgrecebimentos.AsString;

      if (vlTfdCodigo = tfdPagamentos) or (vlTfdCodigo = tfdPagar) then
        vlPhgContaCCO := fctzauto.cfgmctbcfgctbphgpagamentos.AsString;

      vlValorContaCCO := fctzauto.consulta.fields[1].AsString;
      vlCompleHistCCO := fctzauto.consulta.fields[3].AsString;

      { registro do lançamento base }
      fctzauto.rmg.close;
      fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
      fctzauto.rmg.Open;

      If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
        VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vlPhgContaCCO, vlData, vlPcgContaCCO, 1, vlValorContaCCO]), []) Then
        fctzauto.rmg.Append
      else
        fctzauto.rmg.Edit;

      fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
      fctzauto.rmgphgcodigo.AsString := vlPhgContaCCO;
      fctzauto.rmgrmgdata.AsFloat := vlData;
      fctzauto.rmgrmgvalor.AsString := vlValorContaCCO;
      fctzauto.rmgrmgcomplemento.AsString := vlCompleHistCCO;

      if fctzauto.consulta.fields[0].AsInteger = 0 then
        fctzauto.rmgcedcodigo.AsString := '1'
      else
        fctzauto.rmgcedcodigo.AsString := '0';

      fctzauto.rmgpcgcodigo.AsString := vlPcgContaCCO;
      fctzauto.rmgrmgcompetencia.AsFloat := vlData;
      fctzauto.rmgrmginclusao.AsFloat := vlAgora;
      fctzauto.rmgrmgtipo.AsInteger := 2;
      fctzauto.rmg.Post;

      fctzauto.pcr.close;
      fctzauto.pcr.Params[0].AsInteger := vlTitCodigo;
      fctzauto.pcr.Open;

      { * registro de centro de custos se houver * }
      fctzauto.prr.close;
      fctzauto.prr.Params[0].AsString := fctzauto.pcrpcrchave.AsString;
      fctzauto.prr.Open;

      if not fctzauto.prr.IsEmpty then
      begin
        fctzauto.prr.First;
        while not fctzauto.prr.Eof do
        begin
          fctzauto.drg.close;
          fctzauto.drg.Params[0].AsString := fctzauto.rmgmlgchave.AsString;
          fctzauto.drg.Open;

          If Not fctzauto.drg.Locate('mlgchave;ccgcodigo;drgpercentual;pcgcodigo',
            VarArrayOf([fctzauto.prrpcrchave.AsString, fctzauto.prrccgcodigo.AsString, fctzauto.prrprrpercentual.AsString, vlPcgContaCCO]), []) Then
            fctzauto.drg.Append
          else
            fctzauto.drg.Edit;

          fctzauto.drgmlgchave.AsString := fctzauto.rmgmlgchave.AsString;
          fctzauto.drgdrgvalor.AsFloat := strtofloat(vlValorContaCCO) * (fctzauto.prrprrpercentual.AsFloat / 100);
          fctzauto.drgdrgtipo.AsString := fctzauto.prrprrtipo.AsString;
          fctzauto.drgccgcodigo.AsString := fctzauto.prrccgcodigo.AsString;
          fctzauto.drgdrgpercentual.AsString := fctzauto.prrprrpercentual.AsString;
          fctzauto.drgpcgcodigo.AsString := vlPcgContaCCO;
          fctzauto.drg.Post;

          fctzauto.prr.Next;
        end;
      end;

      while not fctzauto.mfi.Eof do
      begin

        fctzauto.rmg.close;
        fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
        fctzauto.rmg.Open;

        { contabilizao do valor Principal }

        if (vlTfdCodigo = tfdRecebimentos) or (vlTfdCodigo = tfdReceber) then
        begin

          if fctzauto.mfitmfcodigo.AsInteger = tmfRecebimento then
          begin
            if fctzauto.cfgmctbcfgctbcliindiv.AsInteger = 0 then
              vlPcgContaRFI := fctzauto.cfgmctbcfgctbcli.AsString
            else
              vlPcgContaRFI := ContaContabil(fctzauto.mfietdcodigo.AsInteger, 1);

            vlPhgContaRFI := fctzauto.cfgmctbcfgctbphgrecebimentos.AsString;
            vlCompleHistRFI := fctzauto.mfirfihistorico.AsString;
            vlValorContaRFI := fctzauto.mfimfivalor.AsString;
          end;

          if fctzauto.mfitmfcodigo.AsInteger = tmfRecebimentoMulta then
          begin
            vlPcgContaRFI := fctzauto.cfgmctbcfgctbpcgrctomulta.AsString;
            vlPhgContaRFI := fctzauto.cfgmctbcfgctbphgrctomulta.AsString;
            vlCompleHistRFI := 'Multa sobre ' + fctzauto.mfirfihistorico.AsString;
            vlValorContaRFI := fctzauto.mfimfivalor.AsString;
          end;

          if fctzauto.mfitmfcodigo.AsInteger = tmfRecebimentoJuros then
          begin
            vlPcgContaRFI := fctzauto.cfgmctbcfgctbpcgrctojuros.AsString;
            vlPhgContaRFI := fctzauto.cfgmctbcfgctbphgrctojuros.AsString;
            vlCompleHistRFI := 'Juros sobre ' + fctzauto.mfirfihistorico.AsString;
            vlValorContaRFI := fctzauto.mfimfivalor.AsString;
          end;

        end;

        if (vlTfdCodigo = tfdPagamentos) or (vlTfdCodigo = tfdPagar) then
        begin
          { *Liquidação do principal* }
          if fctzauto.mfitmfcodigo.AsInteger = tmfPagamento then
          begin

            fctzauto.pcr.close;
            fctzauto.pcr.Params[0].AsInteger := vlTitCodigo;
            fctzauto.pcr.Open;

            if not fctzauto.pcr.IsEmpty then
            begin
              vlPcgContaRFI := fctzauto.pcrpcgcodigo.AsString;
              vlPhgContaRFI := fctzauto.pcrphgcodigo.AsString;
              vlCompleHistRFI := fctzauto.pcrpcrcomplhist.AsString;
              vlValorContaRFI := fctzauto.mfimfivalor.AsString;
            end
            else
            begin
              if fctzauto.cfgmctbcfgctbforindiv.AsInteger = 0 then
                vlPcgContaRFI := fctzauto.cfgmctbcfgctbfor.AsString
              else
                vlPcgContaRFI := ContaContabil(fctzauto.mfietdcodigo.AsInteger, 2);

              vlPhgContaRFI := fctzauto.cfgmctbcfgctbphgpagamentos.AsString;
              vlCompleHistRFI := fctzauto.mfirfihistorico.AsString;
              vlValorContaRFI := fctzauto.mfimfivalor.AsString;
            end;

            { * registro de centro de custos se houver * }
            fctzauto.prr.close;
            fctzauto.prr.Params[0].AsString := fctzauto.pcrpcrchave.AsString;
            fctzauto.prr.Open;

            if not fctzauto.prr.IsEmpty then
            begin
              fctzauto.prr.First;
              while not fctzauto.prr.Eof do
              begin
                fctzauto.drg.close;
                fctzauto.drg.Params[0].AsString := fctzauto.rmgmlgchave.AsString;
                fctzauto.drg.Open;

                If Not fctzauto.drg.Locate('mlgchave;ccgcodigo;drgpercentual;drgvalor;pcgcodigo',
                  VarArrayOf([fctzauto.prrpcrchave.AsString, fctzauto.prrccgcodigo.AsString, fctzauto.prrprrpercentual.AsString, fctzauto.mfimfivalor.AsString,
                  fctzauto.prrpcgcodigo.AsString]), []) Then
                  fctzauto.drg.Append
                else
                  fctzauto.drg.Edit;

                fctzauto.drgmlgchave.AsString := fctzauto.rmgmlgchave.AsString;
                fctzauto.drgdrgvalor.AsFloat := fctzauto.mfimfivalor.AsFloat * (fctzauto.prrprrpercentual.AsFloat / 100);
                fctzauto.drgdrgtipo.AsString := fctzauto.prrprrtipo.AsString;
                fctzauto.drgccgcodigo.AsString := fctzauto.prrccgcodigo.AsString;
                fctzauto.drgdrgpercentual.AsString := fctzauto.prrprrpercentual.AsString;
                fctzauto.drgpcgcodigo.AsString := vlPcgContaRFI;
                fctzauto.drg.Post;

                fctzauto.prr.Next;
              end;
            end;

          end;

          { *Liquidação do Multa* }

          if fctzauto.mfitmfcodigo.AsInteger = tmfPagamentoMulta then
          begin
            vlPcgContaRFI := fctzauto.cfgmctbcfgctbpcgpgtomulta.AsString;
            vlPhgContaRFI := fctzauto.cfgmctbcfgctbphgpgtomulta.AsString;
            vlCompleHistRFI := 'Multa sobre ' + fctzauto.mfirfihistorico.AsString;
            vlValorContaRFI := fctzauto.mfimfivalor.AsString;

            fctzauto.pcr.close;
            fctzauto.pcr.Params[0].AsInteger := vlTitCodigo;
            fctzauto.pcr.Open;

            { * registro de centro de custos se houver * }
            fctzauto.prr.close;
            fctzauto.prr.Params[0].AsString := fctzauto.pcrpcrchave.AsString;
            fctzauto.prr.Open;

            if not fctzauto.prr.IsEmpty then
            begin
              fctzauto.prr.First;
              while not fctzauto.prr.Eof do
              begin
                fctzauto.drg.close;
                fctzauto.drg.Params[0].AsString := fctzauto.rmgmlgchave.AsString;
                fctzauto.drg.Open;

                If Not fctzauto.drg.Locate('mlgchave;ccgcodigo;drgpercentual;drgvalor;pcgcodigo',
                  VarArrayOf([fctzauto.prrpcrchave.AsString, fctzauto.prrccgcodigo.AsString, fctzauto.prrprrpercentual.AsString, fctzauto.mfimfivalor.AsString,
                  vlPcgContaRFI]), []) Then
                  fctzauto.drg.Append
                else
                  fctzauto.drg.Edit;

                fctzauto.drgmlgchave.AsString := fctzauto.rmgmlgchave.AsString;
                fctzauto.drgdrgvalor.AsFloat := fctzauto.mfimfivalor.AsFloat * (fctzauto.prrprrpercentual.AsFloat / 100);
                fctzauto.drgdrgtipo.AsString := fctzauto.prrprrtipo.AsString;
                fctzauto.drgccgcodigo.AsString := fctzauto.prrccgcodigo.AsString;
                fctzauto.drgdrgpercentual.AsString := fctzauto.prrprrpercentual.AsString;
                fctzauto.drgpcgcodigo.AsString := vlPcgContaRFI;
                fctzauto.drg.Post;

                fctzauto.prr.Next;
              end;
            end;

          end;

          { *Liquidação do Juros* }

          if fctzauto.mfitmfcodigo.AsInteger = tmfPagamentoJuros then
          begin
            vlPcgContaRFI := fctzauto.cfgmctbcfgctbpcgpgtojuros.AsString;
            vlPhgContaRFI := fctzauto.cfgmctbcfgctbphgpgtojuros.AsString;
            vlCompleHistRFI := 'Juros sobre ' + fctzauto.mfirfihistorico.AsString;
            vlValorContaRFI := fctzauto.mfimfivalor.AsString;

            fctzauto.pcr.close;
            fctzauto.pcr.Params[0].AsInteger := vlTitCodigo;
            fctzauto.pcr.Open;

            { * registro de centro de custos se houver * }
            fctzauto.prr.close;
            fctzauto.prr.Params[0].AsString := fctzauto.pcrpcrchave.AsString;
            fctzauto.prr.Open;

            if not fctzauto.prr.IsEmpty then
            begin
              fctzauto.prr.First;
              while not fctzauto.prr.Eof do
              begin
                fctzauto.drg.close;
                fctzauto.drg.Params[0].AsString := fctzauto.rmgmlgchave.AsString;
                fctzauto.drg.Open;

                If Not fctzauto.drg.Locate('mlgchave;ccgcodigo;drgpercentual;drgvalor;pcgcodigo',
                  VarArrayOf([fctzauto.prrpcrchave.AsString, fctzauto.prrccgcodigo.AsString, fctzauto.prrprrpercentual.AsString, fctzauto.mfimfivalor.AsString,
                  vlPcgContaRFI]), []) Then
                  fctzauto.drg.Append
                else
                  fctzauto.drg.Edit;

                fctzauto.drgmlgchave.AsString := fctzauto.rmgmlgchave.AsString;
                fctzauto.drgdrgvalor.AsFloat := fctzauto.mfimfivalor.AsFloat * (fctzauto.prrprrpercentual.AsFloat / 100);
                fctzauto.drgdrgtipo.AsString := fctzauto.prrprrtipo.AsString;
                fctzauto.drgccgcodigo.AsString := fctzauto.prrccgcodigo.AsString;
                fctzauto.drgdrgpercentual.AsString := fctzauto.prrprrpercentual.AsString;
                fctzauto.drgpcgcodigo.AsString := vlPcgContaRFI;
                fctzauto.drg.Post;

                fctzauto.prr.Next;
              end;
            end;

          end;

        end;

        { verifica lançamento a credito }
        if vlPcgContaRFI <> '' then
        begin

          If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
            VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vlPhgContaRFI, vlData, vlPcgContaRFI, 1, vlValorContaRFI]), []) Then
            fctzauto.rmg.Append
          else
            fctzauto.rmg.Edit;

          fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
          fctzauto.rmgphgcodigo.AsString := vlPhgContaRFI;
          fctzauto.rmgrmgdata.AsFloat := vlData;
          fctzauto.rmgrmgvalor.AsString := vlValorContaRFI;
          fctzauto.rmgrmgcomplemento.AsString := vlCompleHistRFI;
          fctzauto.rmgpcgcodigo.AsString := vlPcgContaRFI;
          fctzauto.rmgcedcodigo.AsString := '0';
          fctzauto.rmgrmgcompetencia.AsFloat := vlData;
          fctzauto.rmgrmginclusao.AsFloat := vlAgora;
          fctzauto.rmgrmgtipo.AsInteger := 2;
          fctzauto.rmg.Post;

        end;

        fctzauto.mfi.Next;
      end;

    end;

  finally
    freeandnil(fctzauto);
  end;
end;

function Contabilizacao(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vTdgCodigo: string; vCcoChave: string): boolean;
var
  vlCampoCre: string;
  vlTabelaCre: string;

  vlCampoDeb: string;
  vlTabelaDeb: string;

  vlTfdCodigo: string;

  vlPcgCredito: string;
  vlPcgDebito: string;
  vlPcgCodigo: string;

  vlFlaOrigem: string;
  vlMdaCodigo: string;

  vlValor: string;

  vlTotCre: Double;
  vlTotDeb: Double;

  vlCedCodigo: string;

  i: Integer;
begin
  try

    fctzauto := Tfctzauto.Create(AOwner);

    fctzauto.zcone := conexao;

    for i := 0 to fctzauto.ComponentCount - 1 do
    begin
      if fctzauto.Components[i] is TUniQuery then
      begin
        (fctzauto.Components[i] as TUniQuery).Connection := fctzauto.zcone;
      end;
    end;

    fctzauto.cfg.Open;


   if vLteChave<>'' then
   begin

    fctzauto.consulta.close;
    fctzauto.consulta.sql.Text := 'select tfdcodigo from lte where ltechave=' + vLteChave;
    fctzauto.consulta.Open;

    vlTfdCodigo := fctzauto.consulta.fields[0].AsString;


    fctzauto.pct.close;
    fctzauto.pct.Params[0].AsString := vTdgCodigo;
    fctzauto.pct.Open;

    fctzauto.mlg.close;
    fctzauto.mlg.Params[0].AsString := vLteChave;
    fctzauto.mlg.Open;

   end;

    if not fctzauto.mlg.IsEmpty then
    begin
      fctzauto.consulta.close;
      fctzauto.consulta.sql.Text := 'delete from rmg where mlgchave=' + fctzauto.mlgmlgchave.AsString;
      fctzauto.consulta.ExecSQL;
    end;

    while not fctzauto.pct.Eof do
    begin

      fctzauto.sqlval.close;
      fctzauto.sqlval.sql.Text := fctzauto.pctpctcampoval.AsString;
      fctzauto.sqlval.Params[0].AsString := vLteChave;
      fctzauto.sqlval.Open;

      vlValor := fctzauto.sqlval.fields[0].AsString;

      if (vlValor <> '') and (vlValor <> '0') then
      begin

        vlMdaCodigo := fctzauto.pctmdacodigo.AsString;

        vlCampoCre := fctzauto.pcttogcampo_cre.AsString;
        vlTabelaCre := fctzauto.pcttogtabela_cre.AsString;
        vlPcgCredito := fctzauto.BuscaCampo(vlCampoCre, vlTabelaCre, vLteChave, vlTfdCodigo, vlMdaCodigo);

        vlCampoDeb := fctzauto.pcttogcampo_deb.AsString;
        vlTabelaDeb := fctzauto.pcttogtabela_deb.AsString;
        vlPcgDebito := fctzauto.BuscaCampo(vlCampoDeb, vlTabelaDeb, vLteChave, vlTfdCodigo, vlMdaCodigo);

        vlFlaOrigem := fctzauto.BuscaCampo('FLACODIGO', vlTabelaCre, vLteChave, vlTfdCodigo, vlMdaCodigo);

        fctzauto.mlg.close;
        fctzauto.mlg.Params[0].AsString := vLteChave;
        fctzauto.mlg.Open;

        if fctzauto.mlg.IsEmpty then
          fctzauto.mlg.Append
        else
          fctzauto.mlg.Edit;

        fctzauto.mlgclbcodigo.AsString := vusuario;
        fctzauto.mlgmlgsituacao.AsInteger := 1;
        fctzauto.mlgflacodigo.AsString := vlFlaOrigem;
        fctzauto.mlgmlgdata.AsFloat := date;
        fctzauto.mlgltechave.AsString := vLteChave;
        fctzauto.mlg.Post;

        fctzauto.rmg.close;
        fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
        fctzauto.rmg.Open;

        { * Registro a credito* }

        if vlPcgCredito <> '' then
        begin
          If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo',
            VarArrayOf([fctzauto.mlgmlgchave.AsString, fctzauto.pctpcthistpadrao.AsString, date, vlPcgCredito, 1]), []) Then
            fctzauto.rmg.Append
          else
            fctzauto.rmg.Edit;

          fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
          fctzauto.rmgphgcodigo.AsString := fctzauto.pctpcthistpadrao.AsString;
          fctzauto.rmgrmgdata.AsFloat := date;
          fctzauto.rmgrmgvalor.AsString := vlValor;
          fctzauto.rmgrmgcomplemento.AsString := fctzauto.pctpctcampohis.AsString;
          fctzauto.rmgpcgcodigo.AsString := vlPcgCredito;
          fctzauto.rmgcedcodigo.AsString := '1';
          fctzauto.rmgrmgcompetencia.AsFloat := date;
          fctzauto.rmgrmginclusao.AsFloat := now;
          fctzauto.rmgrmgtipo.AsInteger := 2;
          fctzauto.rmg.Post;
        end;

        if vlPcgDebito <> '' then
        begin
          If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo',
            VarArrayOf([fctzauto.mlgmlgchave.AsString, fctzauto.pctpcthistpadrao.AsString, date, vlPcgDebito, 0]), []) Then
            fctzauto.rmg.Append
          else
            fctzauto.rmg.Edit;

          fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
          fctzauto.rmgphgcodigo.AsString := fctzauto.pctpcthistpadrao.AsString;
          fctzauto.rmgrmgdata.AsFloat := date;
          fctzauto.rmgrmgvalor.AsString := vlValor;
          fctzauto.rmgrmgcomplemento.AsString := fctzauto.pctpctcampohis.AsString;
          fctzauto.rmgpcgcodigo.AsString := vlPcgDebito;
          fctzauto.rmgcedcodigo.AsString := '0';
          fctzauto.rmgrmgcompetencia.AsFloat := date;
          fctzauto.rmgrmginclusao.AsFloat := now;
          fctzauto.rmgrmgtipo.AsInteger := 2;
          fctzauto.rmg.Post;
        end;

      end;
      fctzauto.pct.Next;
    end;

    { registro os valores pre-contabilzados no conta corrente }

    if vCcoChave <> '' then
    begin
      fctzauto.pcb.close;
      fctzauto.pcb.Params[0].AsString := vCcoChave;
      fctzauto.pcb.Open;

      fctzauto.mlg.close;
      fctzauto.mlg.Params[0].AsString := vLteChave;
      fctzauto.mlg.Open;

      if fctzauto.mlg.IsEmpty then
        fctzauto.mlg.Append
      else
        fctzauto.mlg.Edit;

      fctzauto.mlgclbcodigo.AsString := vusuario;
      fctzauto.mlgmlgsituacao.AsInteger := 1;
      fctzauto.mlgflacodigo.AsString := vlFlaOrigem;
      fctzauto.mlgmlgdata.AsFloat := date;
      fctzauto.mlgltechave.AsString := vLteChave;
      fctzauto.mlg.Post;

      fctzauto.consulta.close;
      fctzauto.consulta.sql.Text := 'select cco.cedcodigo, cco.ccovalor, cta.pcgcodigo from cco,cta where cco.ctacodigo=cta.ctacodigo and cco.ccochave=' +
        vCcoChave;
      fctzauto.consulta.Open;
      { registro do lançamento base }
      fctzauto.rmg.close;
      fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
      fctzauto.rmg.Open;

      If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo',
        VarArrayOf([fctzauto.mlgmlgchave.AsInteger, fctzauto.pcbphgcodigo.AsString, date, vlPcgCredito, 1, fctzauto.pcbpcbvalor.AsString]), []) Then
        fctzauto.rmg.Append
      else
        fctzauto.rmg.Edit;

      fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
      fctzauto.rmgphgcodigo.AsString := fctzauto.pcbphgcodigo.AsString;
      fctzauto.rmgrmgdata.AsFloat := date;
      fctzauto.rmgrmgvalor.AsCurrency := fctzauto.consulta.fields[1].AsCurrency; // fctzauto.pcbpcbvalor.AsString;
      fctzauto.rmgrmgcomplemento.AsString := fctzauto.pcbpcbcomplhist.AsString;

      if fctzauto.consulta.fields[0].AsInteger = 0 then
        fctzauto.rmgcedcodigo.AsString := '1'
      else
        fctzauto.rmgcedcodigo.AsString := '0';

      fctzauto.rmgpcgcodigo.AsInteger := fctzauto.consulta.fields[2].AsInteger;
      fctzauto.rmgrmgcompetencia.AsFloat := date;
      fctzauto.rmgrmginclusao.AsFloat := now;
      fctzauto.rmgrmgtipo.AsInteger := 2;
      fctzauto.rmg.Post;

      while not fctzauto.pcb.Eof do
      begin

        fctzauto.rmg.close;
        fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
        fctzauto.rmg.Open;

        fctzauto.consulta.close;
        fctzauto.consulta.sql.Text := 'select cedcodigo from cco where ccochave=' + vCcoChave;
        fctzauto.consulta.Open;

        if fctzauto.consulta.fields[0].AsInteger = 0 then
        begin
          vlPcgDebito := fctzauto.pcbpcgcodigo.AsString;
          vlPcgCredito := '';
        end
        else
        begin
          vlPcgCredito := fctzauto.pcbpcgcodigo.AsString;
          vlPcgDebito := '';

        end;

        { verifica lançamento a credito }
        if vlPcgCredito <> '' then
        begin

          If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
            VarArrayOf([fctzauto.mlgmlgchave.AsInteger, fctzauto.pcbphgcodigo.AsString, date, vlPcgCredito, 1, fctzauto.pcbpcbvalor.AsString]), []) Then
            fctzauto.rmg.Append
          else
            fctzauto.rmg.Edit;

          fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
          fctzauto.rmgphgcodigo.AsString := fctzauto.pcbphgcodigo.AsString;
          fctzauto.rmgrmgdata.AsFloat := date;
          fctzauto.rmgrmgvalor.AsString := fctzauto.pcbpcbvalor.AsString;
          fctzauto.rmgrmgcomplemento.AsString := fctzauto.pcbpcbcomplhist.AsString;
          fctzauto.rmgpcgcodigo.AsString := vlPcgCredito;
          fctzauto.rmgcedcodigo.AsString := '1';
          fctzauto.rmgrmgcompetencia.AsFloat := date;
          fctzauto.rmgrmginclusao.AsFloat := now;
          fctzauto.rmgrmgtipo.AsInteger := 2;
          fctzauto.rmg.Post;

        end;
        { verifica lançamento a debito }
        if vlPcgDebito <> '' then
        begin

          If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
            VarArrayOf([fctzauto.mlgmlgchave.AsInteger, fctzauto.pcbphgcodigo.AsString, date, vlPcgDebito, 0, fctzauto.pcbpcbvalor.AsString]), []) Then
            fctzauto.rmg.Append
          else
            fctzauto.rmg.Edit;

          fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
          fctzauto.rmgphgcodigo.AsString := fctzauto.pcbphgcodigo.AsString;
          fctzauto.rmgrmgdata.AsFloat := date;
          fctzauto.rmgrmgvalor.AsString := fctzauto.pcbpcbvalor.AsString;
          fctzauto.rmgrmgcomplemento.AsString := fctzauto.pcbpcbcomplhist.AsString;
          fctzauto.rmgcedcodigo.AsString := '0';
          fctzauto.rmgpcgcodigo.AsString := vlPcgDebito;
          fctzauto.rmgrmgcompetencia.AsFloat := date;
          fctzauto.rmgrmginclusao.AsFloat := now;
          fctzauto.rmgrmgtipo.AsInteger := 2;
          fctzauto.rmg.Post;

        end;

        fctzauto.prg.close;
        fctzauto.prg.Params[0].AsString := fctzauto.pcbpcbchave.AsString;
        fctzauto.prg.Open;

        if not fctzauto.prg.IsEmpty then
        begin
          fctzauto.prg.First;
          while not fctzauto.prg.Eof do
          begin
            fctzauto.drg.close;
            fctzauto.drg.Params[0].AsString := fctzauto.rmgmlgchave.AsString;
            fctzauto.drg.Open;

            If Not fctzauto.drg.Locate('mlgchave;ccgcodigo;drgpercentual;drgvalor',
              VarArrayOf([fctzauto.prgpcbchave.AsString, fctzauto.prgccgcodigo.AsString, fctzauto.prgprgpercentual.AsString, fctzauto.prgprgvalor.AsString]
              ), []) Then
              fctzauto.drg.Append
            else
              fctzauto.drg.Edit;

            fctzauto.drgmlgchave.AsString := fctzauto.rmgmlgchave.AsString;
            fctzauto.drgdrgvalor.AsString := fctzauto.prgprgvalor.AsString;
            fctzauto.drgdrgtipo.AsString := fctzauto.prgprgtipo.AsString;
            fctzauto.drgccgcodigo.AsString := fctzauto.prgccgcodigo.AsString;
            fctzauto.drgdrgpercentual.AsString := fctzauto.prgprgpercentual.AsString;
            fctzauto.drgpcgcodigo.AsString := fctzauto.rmgpcgcodigo.AsString;
            fctzauto.drg.Post;

            fctzauto.prg.Next;
          end;

          { fctzauto.drg.close;
            fctzauto.drg.Params[0].AsString := fctzauto.rmgmlgchave.AsString;
            fctzauto.drg.Open;

            If Not fctzauto.drg.Locate('mlgchave;ccgcodigo;drgpercentual;drgvalor',
            VarArrayOf([fctzauto.prgpcbchave.AsString, fctzauto.prgccgcodigo.AsString, fctzauto.prgprgpercentual.AsString, fctzauto.prgprgvalor.AsString]
            ), []) Then
            fctzauto.drg.Append
            else
            fctzauto.drg.Edit;

            fctzauto.drgmlgchave.AsString := fctzauto.rmgmlgchave.AsString;
            fctzauto.drgdrgvalor.AsString := fctzauto.prgprgvalor.AsString;
            fctzauto.drgdrgtipo.AsString := fctzauto.prgprgtipo.AsString;
            fctzauto.drgccgcodigo.AsString := fctzauto.cfgmctbccgcodigo.AsString;
            fctzauto.drgpcgcodigo.AsString := fctzauto.rmgpcgcodigo.AsString;
            fctzauto.drgdrgpercentual.AsString := '100';
            fctzauto.drg.Post; }

        end
        else
        begin

        end;
        fctzauto.pcb.Next;
      end;

    end;

    vlTotCre := 0;
    vlTotDeb := 0;

    fctzauto.rmg.First;
    while not fctzauto.rmg.Eof do
    begin
      if fctzauto.rmgcedcodigo.AsString = '1' then
        vlTotCre := vlTotCre + fctzauto.rmgrmgvalor.AsFloat;

      if fctzauto.rmgcedcodigo.AsString = '0' then
        vlTotDeb := vlTotDeb + fctzauto.rmgrmgvalor.AsFloat;

      fctzauto.rmg.Next;
    end;

    if vlTotCre <> vlTotDeb then
    begin
      if (vlTotCre - vlTotDeb) > 0 then
      begin
        vlValor := floattostr(vlTotCre - vlTotDeb);
        vlCedCodigo := '0';
        vlPcgCodigo := '';
      end
      else
      begin
        vlValor := floattostr((vlTotCre - vlTotDeb) * -1);
        vlCedCodigo := '1';
        vlPcgCodigo := '';
      end;

      if fctzauto.MostraLista('mctz', vusuario, vLteChave, vlTfdCodigo, vlCedCodigo, vlFlaOrigem, vlPcgCodigo, fctzauto.rmgphgcodigo.AsString, vlValor) <> ''
      then
      begin
        result := true;
      end
      else
      begin
        result := false;
      end;
    end
    else
    begin
      result := true;
    end;

  finally

    freeandnil(fctzauto);
  end;

end;


procedure Tfctzauto.VerAtualizacao(pacote: string);
type
  TVerificaAtualizacao = function(onwer: TApplication; varquivo: String; vPasta: String; vExtensao: string; vVersao: String = ''): String;

var
  pack: Cardinal;
  vlVerificaAtualizacao: TVerificaAtualizacao;
begin
  if not fileexists(extractfilepath(Application.ExeName) + 'modulos\matz.bpl') then
  begin
    exit;
  end;

  pack := LoadPackage('modulos\matz.bpl');
  if pack <> 0 then
  begin
    try
      @vlVerificaAtualizacao := GetProcAddress(pack, PChar('VerificaAtualizacao'));
      if Assigned(vlVerificaAtualizacao) then
      begin

        if (pacote='mcre') or (pacote='mcpa') then
        vlVerificaAtualizacao(Application, 'mrfi.bpl', 'modulos', '.bpl');

        if (pacote='mbrp') or (pacote='mmbrr') then
        vlVerificaAtualizacao(Application, 'mbrf.bpl', 'modulos', '.bpl');



        vlVerificaAtualizacao(Application, pacote + '.bpl', 'modulos', '.bpl');

      end;
    finally
      DoUnLoadPackage(Application, pack);
    end;
  end;

end;



function Tfctzauto.MostraLista(modulo: string; vusuario: string; vLteChave: string; vTfdCodigo: string; vCedcodigo: string; vFlacodigo: string;
  vPcgCodigo: string; vPhgCodigo: string; vRmgValor: string): string;
var
  execf: TContaCorrente;

  ch: string;
  vu: string;
  pack: THandle;
  retorno: boolean;
begin


  if InternetAtiva then
  begin
      VerAtualizacao(Modulo);
  end;


  pack := LoadPackage('modulos\' + modulo + '.bpl');
  if pack <> 0 then
    try
      @execf := GetProcAddress(pack, PChar('ContaCorrente'));
      if Assigned(execf) then
      begin
        vu := vusuario;
        retorno := execf(application, Self.zcone, vu, vLteChave, strtoint(vTfdCodigo), strtoint(vCedcodigo), vFlacodigo, vPcgCodigo, vPhgCodigo, vRmgValor);

        if retorno then
          ch := vRmgValor
        else
          ch := '';

        result := ch;
      end;
    finally
      if modulo <> 'mpeg' then
        DoUnLoadPackage(application, pack);
    end;
end;

function Tfctzauto.BuscaCampo(vCampo: string; vTabela: string; vLote: string; vTfdCodigo: string; vMdaCodigo: string): string;
var
  vlRetorno: string;
begin
  case strtoint(vTfdCodigo) of
    tfdContaCorrente:
      begin

        { case strtoint(vMdaCodigo) of
          mdaDinheiro:
          begin }

        if ((lowercase(vCampo) = 'pcgcodigo') and (lowercase(vTabela) = 'cta')) or (lowercase(vCampo) = 'flacodigo') then
        begin
          consulta.close;
          consulta.sql.Text := 'SELECT cta.pcgcodigo, cta.flacodigo ';
          consulta.sql.Add('FROM dtl ');
          consulta.sql.Add('INNER JOIN lte ON dtl.ltechave = lte.ltechave ');
          consulta.sql.Add('INNER JOIN ccd ON ccd.dtlchave = dtl.dtlchave ');
          consulta.sql.Add('INNER JOIN cco ON ccd.ccochave = cco.ccochave ');
          consulta.sql.Add('INNER JOIN cta ON cco.ctacodigo = cta.ctacodigo ');
          consulta.sql.Add('where lte.ltechave=' + vLote + ' and dtl.mdacodigo=' + vMdaCodigo);
          consulta.Open;
          vlRetorno := consulta.Fieldbyname(lowercase(vCampo)).AsString;
        end;

        { end;
          end; }
      end;
  end;
  result := vlRetorno;
end;

function ContabilizacaoDevolucaoCheque(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vFlaOrigem: string;
  vFlaDestino: string; vPcgCredito: string; vPcgDebito: string; vPhgCodigo: string; vRmgValor: string; vComplemento: string): boolean;
var
  i: Integer;
begin

  try
    fctzauto := Tfctzauto.Create(AOwner);

    fctzauto.zcone := conexao;

    for i := 0 to fctzauto.ComponentCount - 1 do
    begin
      if fctzauto.Components[i] is TUniQuery then
      begin
        (fctzauto.Components[i] as TUniQuery).Connection := fctzauto.zcone;
      end;
    end;
    fctzauto.cfg.Open;
    fctzauto.cfgmctb.Open;
    fctzauto.mlg.close;
    fctzauto.mlg.Params[0].AsString := vLteChave;
    fctzauto.mlg.Open;

    if fctzauto.mlg.IsEmpty then
      fctzauto.mlg.Append
    else
      fctzauto.mlg.Edit;

    fctzauto.mlgclbcodigo.AsString := vusuario;
    fctzauto.mlgmlgsituacao.AsInteger := 1;
    fctzauto.mlgflacodigo.AsString := vFlaOrigem;
    fctzauto.mlgmlgdata.AsFloat := date;
    fctzauto.mlgltechave.AsString := vLteChave;
    fctzauto.mlg.Post;

    fctzauto.rmg.close;
    fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
    fctzauto.rmg.Open;

    { registro da credito }

    If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
      VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vPhgCodigo, date, vPcgCredito, 1, vRmgValor]), []) Then
      fctzauto.rmg.Append
    else
      fctzauto.rmg.Edit;

    fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
    fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgchdevol.AsString;
    fctzauto.rmgrmgdata.AsFloat := date;
    fctzauto.rmgrmgvalor.AsString := vRmgValor;
    fctzauto.rmgrmgcomplemento.AsString := vComplemento;
    fctzauto.rmgcedcodigo.AsString := '1';
    fctzauto.rmgpcgcodigo.AsString := vPcgCredito;
    fctzauto.rmgrmgcompetencia.AsFloat := date;
    fctzauto.rmgrmginclusao.AsFloat := now;
    fctzauto.rmgrmgtipo.AsInteger := 2;
    fctzauto.rmg.Post;

    { registro da débito }
    If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
      VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vPhgCodigo, date, vPcgDebito, 0, vRmgValor]), []) Then
      fctzauto.rmg.Append
    else
      fctzauto.rmg.Edit;

    fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
    fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgchdevol.AsString;
    fctzauto.rmgrmgdata.AsFloat := date;
    fctzauto.rmgrmgvalor.AsString := vRmgValor;
    fctzauto.rmgrmgcomplemento.AsString := vComplemento;
    fctzauto.rmgcedcodigo.AsString := '0';
    fctzauto.rmgpcgcodigo.AsString := vPcgDebito;
    fctzauto.rmgrmgcompetencia.AsFloat := date;
    fctzauto.rmgrmginclusao.AsFloat := now;
    fctzauto.rmgrmgtipo.AsInteger := 2;
    fctzauto.rmg.Post;

    { contabilização de cheques para em devolucao / cobrança }

    fctzauto.rmg.Append;
    fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
    fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgchdevol.AsString;
    fctzauto.rmgrmgdata.AsFloat := date;
    fctzauto.rmgrmgvalor.AsString := vRmgValor;
    fctzauto.rmgrmgcomplemento.AsString := vComplemento;
    fctzauto.rmgcedcodigo.AsString := '1';
    fctzauto.rmgpcgcodigo.AsString := vPcgDebito;
    fctzauto.rmgrmgcompetencia.AsFloat := date;
    fctzauto.rmgrmginclusao.AsFloat := now;
    fctzauto.rmgrmgtipo.AsInteger := 2;
    fctzauto.rmg.Post;

    { registro da débito }
    fctzauto.rmg.Append;
    fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
    fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgchdevol.AsString;
    fctzauto.rmgrmgdata.AsFloat := date;
    fctzauto.rmgrmgvalor.AsString := vRmgValor;
    fctzauto.rmgrmgcomplemento.AsString := vComplemento;
    fctzauto.rmgcedcodigo.AsString := '0';
    fctzauto.rmgpcgcodigo.AsString := fctzauto.cfgmctbcfgctbpcgchemcob.AsString;
    fctzauto.rmgrmgcompetencia.AsFloat := date;
    fctzauto.rmgrmginclusao.AsFloat := now;
    fctzauto.rmgrmgtipo.AsInteger := 2;
    fctzauto.rmg.Post;

  finally
    freeandnil(fctzauto);
  end;

end;

function ContabilizacaoTransferencia(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vFlaOrigem: string; vFlaDestino: string;
  vPcgCredito: string; vPcgDebito: string; vPhgCodigo: string; vRmgValor: string; vComplemento: string): boolean;
var
  i: Integer;
begin

  try
    fctzauto := Tfctzauto.Create(AOwner);

    fctzauto.zcone := conexao;

    for i := 0 to fctzauto.ComponentCount - 1 do
    begin
      if fctzauto.Components[i] is TUniQuery then
      begin
        (fctzauto.Components[i] as TUniQuery).Connection := fctzauto.zcone;
      end;
    end;
    fctzauto.cfg.Open;
    fctzauto.cfgmctb.Open;

    fctzauto.mlg.close;
    fctzauto.mlg.Params[0].AsString := vLteChave;
    fctzauto.mlg.Open;

    if fctzauto.mlg.IsEmpty then
      fctzauto.mlg.Append
    else
      fctzauto.mlg.Edit;

    fctzauto.mlgclbcodigo.AsString := vusuario;
    fctzauto.mlgmlgsituacao.AsInteger := 1;
    fctzauto.mlgflacodigo.AsString := vFlaOrigem;
    fctzauto.mlgmlgdata.AsFloat := date;
    fctzauto.mlgltechave.AsString := vLteChave;
    fctzauto.mlg.Post;

    fctzauto.rmg.close;
    fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
    fctzauto.rmg.Open;

    { registro da credito }

    If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
      VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vPhgCodigo, date, vPcgCredito, 1, vRmgValor]), []) Then
      fctzauto.rmg.Append
    else
      fctzauto.rmg.Edit;

    fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
    fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgdeposito.AsString;
    fctzauto.rmgrmgdata.AsFloat := date;
    fctzauto.rmgrmgvalor.AsString := vRmgValor;
    fctzauto.rmgrmgcomplemento.AsString := vComplemento;
    fctzauto.rmgcedcodigo.AsString := '1';
    fctzauto.rmgpcgcodigo.AsString := vPcgCredito;
    fctzauto.rmgrmgcompetencia.AsFloat := date;
    fctzauto.rmgrmginclusao.AsFloat := now;
    fctzauto.rmgrmgtipo.AsInteger := 2;
    fctzauto.rmg.Post;

    { registro da débito }
    If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
      VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vPhgCodigo, date, vPcgDebito, 0, vRmgValor]), []) Then
      fctzauto.rmg.Append
    else
      fctzauto.rmg.Edit;

    fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
    fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgdeposito.AsString;
    fctzauto.rmgrmgdata.AsFloat := date;
    fctzauto.rmgrmgvalor.AsString := vRmgValor;
    fctzauto.rmgrmgcomplemento.AsString := vComplemento;
    fctzauto.rmgcedcodigo.AsString := '0';
    fctzauto.rmgpcgcodigo.AsString := vPcgDebito;
    fctzauto.rmgrmgcompetencia.AsFloat := date;
    fctzauto.rmgrmginclusao.AsFloat := now;
    fctzauto.rmgrmgtipo.AsInteger := 2;
    fctzauto.rmg.Post;

  finally
    freeandnil(fctzauto);
  end;

end;

function ContabilizacaoEstorno(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vFlaOrigem: string; vFlaDestino: string;
  vPcgCredito: string; vPcgDebito: string; vPhgCodigo: string; vRmgValor: string; vComplemento: string): boolean;
var
  i: Integer;
begin

  try
    fctzauto := Tfctzauto.Create(AOwner);

    fctzauto.zcone := conexao;

    for i := 0 to fctzauto.ComponentCount - 1 do
    begin
      if fctzauto.Components[i] is TUniQuery then
      begin
        (fctzauto.Components[i] as TUniQuery).Connection := fctzauto.zcone;
      end;
    end;
    fctzauto.cfg.Open;
    fctzauto.cfgmctb.Open;

    fctzauto.mlg.close;
    fctzauto.mlg.Params[0].AsString := vLteChave;
    fctzauto.mlg.Open;

    if fctzauto.mlg.IsEmpty then
      fctzauto.mlg.Append
    else
      fctzauto.mlg.Edit;

    fctzauto.mlgclbcodigo.AsString := vusuario;
    fctzauto.mlgmlgsituacao.AsInteger := 1;
    fctzauto.mlgflacodigo.AsString := vFlaOrigem;
    fctzauto.mlgmlgdata.AsFloat := date;
    fctzauto.mlgltechave.AsString := vLteChave;
    fctzauto.mlg.Post;

    fctzauto.rmg.close;
    fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
    fctzauto.rmg.Open;

    if vPcgCredito <> '' then
    begin

      { registro da credito }

      If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
        VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vPhgCodigo, date, vPcgCredito, 1, vRmgValor]), []) Then
        fctzauto.rmg.Append
      else
        fctzauto.rmg.Edit;

      fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
      fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgestorno.AsString;
      fctzauto.rmgrmgdata.AsFloat := date;
      fctzauto.rmgrmgvalor.AsString := vRmgValor;
      fctzauto.rmgrmgcomplemento.AsString := 'Estorno';
      fctzauto.rmgcedcodigo.AsString := '1';
      fctzauto.rmgpcgcodigo.AsString := vPcgCredito;
      fctzauto.rmgrmgcompetencia.AsFloat := date;
      fctzauto.rmgrmginclusao.AsFloat := now;
      fctzauto.rmgrmgtipo.AsInteger := 2;
      fctzauto.rmg.Post;

    end;

    if vPcgDebito <> '' then
    begin
      { registro da débito }
      If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
        VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vPhgCodigo, date, vPcgDebito, 0, vRmgValor]), []) Then
        fctzauto.rmg.Append
      else
        fctzauto.rmg.Edit;

      fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
      fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgestorno.AsString;
      fctzauto.rmgrmgdata.AsFloat := date;
      fctzauto.rmgrmgvalor.AsString := vRmgValor;
      fctzauto.rmgrmgcomplemento.AsString := 'Estorno';
      fctzauto.rmgcedcodigo.AsString := '0';
      fctzauto.rmgpcgcodigo.AsString := vPcgDebito;
      fctzauto.rmgrmgcompetencia.AsFloat := date;
      fctzauto.rmgrmginclusao.AsFloat := now;
      fctzauto.rmgrmgtipo.AsInteger := 2;
      fctzauto.rmg.Post;

    end;
  finally
    freeandnil(fctzauto);
  end;

end;

function ContabilizacaoRFI(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vTitCodigo: string; vFlaOrigem: string;
  vFlaDestino: string; vPcgCredito: string; vPcgDebito: string; vPhgCodigo: string; vRmgValor: string; vComplemento: string): boolean;
var
  i: Integer;
begin

  try
    fctzauto := Tfctzauto.Create(AOwner);

    fctzauto.zcone := conexao;

    for i := 0 to fctzauto.ComponentCount - 1 do
    begin
      if fctzauto.Components[i] is TUniQuery then
      begin
        (fctzauto.Components[i] as TUniQuery).Connection := fctzauto.zcone;
      end;
    end;
    fctzauto.cfg.Open;
    fctzauto.cfgmctb.Open;

    fctzauto.mlg.close;
    fctzauto.mlg.Params[0].AsString := vLteChave;
    fctzauto.mlg.Open;

    if fctzauto.mlg.IsEmpty then
      fctzauto.mlg.Append
    else
      fctzauto.mlg.Edit;

    fctzauto.mlgclbcodigo.AsString := vusuario;
    fctzauto.mlgmlgsituacao.AsInteger := 1;
    fctzauto.mlgflacodigo.AsString := vFlaOrigem;
    fctzauto.mlgmlgdata.AsFloat := date;
    fctzauto.mlgltechave.AsString := vLteChave;
    fctzauto.mlg.Post;

    fctzauto.rmg.close;
    fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
    fctzauto.rmg.Open;

    if vPcgCredito <> '' then
    begin

      { registro da credito }

      If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
        VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vPhgCodigo, date, vPcgCredito, 1, vRmgValor]), []) Then
        fctzauto.rmg.Append
      else
        fctzauto.rmg.Edit;

      fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
      fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgestorno.AsString;
      fctzauto.rmgrmgdata.AsFloat := date;
      fctzauto.rmgrmgvalor.AsString := vRmgValor;
      fctzauto.rmgrmgcomplemento.AsString := 'Estorno';
      fctzauto.rmgcedcodigo.AsString := '1';
      fctzauto.rmgpcgcodigo.AsString := vPcgCredito;
      fctzauto.rmgrmgcompetencia.AsFloat := date;
      fctzauto.rmgrmginclusao.AsFloat := now;
      fctzauto.rmgrmgtipo.AsInteger := 2;
      fctzauto.rmg.Post;

    end;

    if vPcgDebito <> '' then
    begin
      { registro da débito }
      If Not fctzauto.rmg.Locate('mlgchave;phgcodigo;rmgdata;pcgcodigo;cedcodigo;rmgvalor',
        VarArrayOf([fctzauto.mlgmlgchave.AsInteger, vPhgCodigo, date, vPcgDebito, 0, vRmgValor]), []) Then
        fctzauto.rmg.Append
      else
        fctzauto.rmg.Edit;

      fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
      fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgestorno.AsString;
      fctzauto.rmgrmgdata.AsFloat := date;
      fctzauto.rmgrmgvalor.AsString := vRmgValor;
      fctzauto.rmgrmgcomplemento.AsString := 'Estorno';
      fctzauto.rmgcedcodigo.AsString := '0';
      fctzauto.rmgpcgcodigo.AsString := vPcgDebito;
      fctzauto.rmgrmgcompetencia.AsFloat := date;
      fctzauto.rmgrmginclusao.AsFloat := now;
      fctzauto.rmgrmgtipo.AsInteger := 2;
      fctzauto.rmg.Post;

    end;
  finally
    freeandnil(fctzauto);
  end;

end;

function ContabilizacaoVenda(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vTdgCodigo: string; vChave: string): boolean;
var
  i: Integer;
  vPcgCredito: string;
  vPcgDebito: string;
  vPhgCodigo: string;
  vRmgValor: string;
begin

  try
    fctzauto := Tfctzauto.Create(AOwner);

    fctzauto.zcone := conexao;

    for i := 0 to fctzauto.ComponentCount - 1 do
    begin
      if fctzauto.Components[i] is TUniQuery then
      begin
        (fctzauto.Components[i] as TUniQuery).Connection := fctzauto.zcone;
      end;
    end;
    fctzauto.cfg.Open;
    fctzauto.cfgmctb.Open;

    fctzauto.mlg.close;
    fctzauto.mlg.Params[0].AsString := '0';
    fctzauto.mlg.Open;

    if fctzauto.mlg.IsEmpty then
      fctzauto.mlg.Append
    else
      fctzauto.mlg.Edit;

    fctzauto.mlgclbcodigo.AsString := vusuario;
    fctzauto.mlgmlgsituacao.AsInteger := 1;
    fctzauto.mlgflacodigo.AsString := '1';
    fctzauto.mlgmlgdata.AsFloat := date;
    fctzauto.mlg.Post;

    fctzauto.mes.close;
    fctzauto.mes.Params[0].AsString := vChave;
    fctzauto.mes.Open;

    { * contabilização do movimento da mercadoria * }
    fctzauto.mes.First;
    while not fctzauto.mes.Eof do
    begin

      vPcgCredito := fctzauto.mespcgcodigo.AsString;
      vPhgCodigo := fctzauto.mesphgcodigo.AsString;
      vRmgValor := fctzauto.mesitmtotal.AsString;

      fctzauto.rmg.close;
      fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
      fctzauto.rmg.Open;
      { contabiliacao dae venda }
      if (vPcgCredito <> '') and (fctzauto.mesitmtotal.AsCurrency > 0) then
      begin

        { registro da credito }
        fctzauto.rmg.Append;
        fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
        fctzauto.rmgphgcodigo.AsString := vPhgCodigo;
        fctzauto.rmgrmgdata.AsFloat := fctzauto.mesmesregistro.AsFloat;
        fctzauto.rmgrmgvalor.AsString := vRmgValor;
        fctzauto.rmgrmgcomplemento.AsString := '';
        fctzauto.rmgcedcodigo.AsString := '1';
        fctzauto.rmgpcgcodigo.AsString := vPcgCredito;
        fctzauto.rmgrmgcompetencia.AsFloat := fctzauto.mesmesregistro.AsFloat;
        fctzauto.rmgrmginclusao.AsString := agora(application, conexao);
        fctzauto.rmgrmgtipo.AsInteger := 2;
        fctzauto.rmg.Post;

      end;

      { contabiliacao do desconto comercial }
      if (vPcgDebito <> '') and (fctzauto.mesitmdesconto.AsCurrency > 0) then
      begin
        { registro da débito }
        fctzauto.rmg.Append;
        fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
        fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgvnddesccom.AsString;
        fctzauto.rmgrmgdata.AsFloat := date;
        fctzauto.rmgrmgvalor.AsString := fctzauto.mesitmdesconto.AsString;
        fctzauto.rmgrmgcomplemento.AsString := 'Desc. Comercial';
        fctzauto.rmgcedcodigo.AsString := '0';
        fctzauto.rmgpcgcodigo.AsString := fctzauto.cfgmctbcfgctbpcgvnddesccom.AsString;
        fctzauto.rmgrmgcompetencia.AsFloat := fctzauto.mesmesregistro.AsFloat;
        fctzauto.rmgrmginclusao.AsString := agora(application, conexao);
        fctzauto.rmgrmgtipo.AsInteger := 2;
        fctzauto.rmg.Post;

      end;
      fctzauto.mes.Next;
    end;
    { * contabilização da forma de pagamento * }

  finally
    freeandnil(fctzauto);
  end;

end;

function ContabilizacaoCompra(AOwner: TComponent; conexao: tuniconnection; vusuario: string; vLteChave: string; vTdgCodigo: string; vChave: string): boolean;
var
  i: Integer;
  vPcgCredito: string;
  vPcgDebito: string;
  vPhgCodigo: string;
  vRmgValor: string;
begin

  try
    fctzauto := Tfctzauto.Create(AOwner);

    fctzauto.zcone := conexao;

    for i := 0 to fctzauto.ComponentCount - 1 do
    begin
      if fctzauto.Components[i] is TUniQuery then
      begin
        (fctzauto.Components[i] as TUniQuery).Connection := fctzauto.zcone;
      end;
    end;
    fctzauto.cfg.Open;
    fctzauto.cfgmctb.Open;

    fctzauto.mlg.close;
    fctzauto.mlg.Params[0].AsString := '0';
    fctzauto.mlg.Open;

    if fctzauto.mlg.IsEmpty then
      fctzauto.mlg.Append
    else
      fctzauto.mlg.Edit;

    fctzauto.mlgclbcodigo.AsString := vusuario;
    fctzauto.mlgmlgsituacao.AsInteger := 1;
    fctzauto.mlgflacodigo.AsString := '1';
    fctzauto.mlgmlgdata.AsFloat := date;
    fctzauto.mlg.Post;

    fctzauto.mes.close;
    fctzauto.mes.Params[0].AsString := vChave;
    fctzauto.mes.Open;

    { * contabilização do movimento da mercadoria * }
    fctzauto.mes.First;
    while not fctzauto.mes.Eof do
    begin

      vPcgCredito := fctzauto.mespcgcodigo.AsString;
      vPhgCodigo := fctzauto.mesphgcodigo.AsString;
      vRmgValor := fctzauto.mesitmtotal.AsString;

      fctzauto.rmg.close;
      fctzauto.rmg.Params[0].AsString := fctzauto.mlgmlgchave.AsString;
      fctzauto.rmg.Open;
      { contabiliacao dae venda }
      if (vPcgCredito <> '') and (fctzauto.mesitmtotal.AsCurrency > 0) then
      begin

        { registro da credito }
        fctzauto.rmg.Append;
        fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
        fctzauto.rmgphgcodigo.AsString := vPhgCodigo;
        fctzauto.rmgrmgdata.AsFloat := fctzauto.mesmesregistro.AsFloat;
        fctzauto.rmgrmgvalor.AsString := vRmgValor;
        fctzauto.rmgrmgcomplemento.AsString := '';
        fctzauto.rmgcedcodigo.AsString := '1';
        fctzauto.rmgpcgcodigo.AsString := vPcgCredito;
        fctzauto.rmgrmgcompetencia.AsFloat := fctzauto.mesmesregistro.AsFloat;
        fctzauto.rmgrmginclusao.AsString := agora(application, conexao);
        fctzauto.rmgrmgtipo.AsInteger := 2;
        fctzauto.rmg.Post;

      end;

      { contabiliacao do desconto comercial }
      if (vPcgDebito <> '') and (fctzauto.mesitmdesconto.AsCurrency > 0) then
      begin
        { registro da débito }
        fctzauto.rmg.Append;
        fctzauto.rmgmlgchave.AsInteger := fctzauto.mlgmlgchave.AsInteger;
        fctzauto.rmgphgcodigo.AsString := fctzauto.cfgmctbcfgctbphgvnddesccom.AsString;
        fctzauto.rmgrmgdata.AsFloat := date;
        fctzauto.rmgrmgvalor.AsString := fctzauto.mesitmdesconto.AsString;
        fctzauto.rmgrmgcomplemento.AsString := 'Desc. Comercial';
        fctzauto.rmgcedcodigo.AsString := '0';
        fctzauto.rmgpcgcodigo.AsString := fctzauto.cfgmctbcfgctbpcgvnddesccom.AsString;
        fctzauto.rmgrmgcompetencia.AsFloat := fctzauto.mesmesregistro.AsFloat;
        fctzauto.rmgrmginclusao.AsString := agora(application, conexao);
        fctzauto.rmgrmgtipo.AsInteger := 2;
        fctzauto.rmg.Post;

      end;
      fctzauto.mes.Next;
    end;
    { * contabilização da forma de pagamento * }

  finally
    freeandnil(fctzauto);
  end;

end;



exports ContabilizacaoTransferencia, Contabilizacao, ContabilizacaoVenda, ContabilizacaoEstorno, ContabilizacaoDevolucaoCheque, ContabilizacaoBaixaRFI,
  ContabilizacaoRFI, ContabilizacaoCompra;

end.
