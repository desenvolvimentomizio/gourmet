unit ufracge;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, uFuncoes, uPegaBase, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc;

type
  Tfracge = class(Tfrabase)
    uqtabelacgechave: TIntegerField;
    uqtabelacgeidentificacao: TStringField;
    uqtabelacgedatainicial: TDateField;
    uqtabelacgedatafinal: TDateField;
    uqtabelacgeano: TIntegerField;
    Panel1: TPanel;
    DBGridApuracao: TDBGrid;
    acg: TUniQuery;
    Dacg: TDataSource;
    ActApuracao: TAction;
    plRealizaApuracao: TPanel;
    pbMostraApuracao: TProgressBar;
    cge: TUniQuery;
    ccg: TUniQuery;
    ccgccgcodigo: TIntegerField;
    cgedcg: TUniQuery;
    dcg: TUniQuery;
    analisevertical: TUniQuery;
    cgeccgcodigo: TIntegerField;
    cgeccgidentificacao: TStringField;
    cgeseacodigo: TIntegerField;
    cgecgerealizado01: TFloatField;
    cgecgeprevisto01: TFloatField;
    cgeogesaldo01: TFloatField;
    cgecgerealizado02: TFloatField;
    cgecgeprevisto02: TFloatField;
    cgeogesaldo02: TFloatField;
    cgecgerealizado03: TFloatField;
    cgecgeprevisto03: TFloatField;
    cgeogesaldo03: TFloatField;
    cgecgerealizado04: TFloatField;
    cgecgeprevisto04: TFloatField;
    cgeogesaldo04: TFloatField;
    cgecgerealizado05: TFloatField;
    cgecgeprevisto05: TFloatField;
    cgeogesaldo05: TFloatField;
    cgecgerealizado06: TFloatField;
    cgecgeprevisto06: TFloatField;
    cgeogesaldo06: TFloatField;
    cgecgerealizado07: TFloatField;
    cgecgeprevisto07: TFloatField;
    cgeogesaldo07: TFloatField;
    cgecgerealizado08: TFloatField;
    cgecgeprevisto08: TFloatField;
    cgeogesaldo08: TFloatField;
    cgecgerealizado09: TFloatField;
    cgecgeprevisto09: TFloatField;
    cgeogesaldo09: TFloatField;
    cgecgerealizado10: TFloatField;
    cgecgeprevisto10: TFloatField;
    cgeogesaldo10: TFloatField;
    cgecgerealizado11: TFloatField;
    cgecgeprevisto11: TFloatField;
    cgeogesaldo11: TFloatField;
    cgecgerealizado12: TFloatField;
    cgecgeprevisto12: TFloatField;
    cgeogesaldo12: TFloatField;
    cgecedcodigo: TIntegerField;
    acgacgchave: TIntegerField;
    acgcgechave: TIntegerField;
    acgccgcodigo: TIntegerField;
    acgccgestrutural: TStringField;
    acgccgidentificacao: TStringField;
    acgacgprevisto01: TFloatField;
    acgacgrealizado01: TFloatField;
    acgacgsaldo01: TFloatField;
    acgacgpercentual01: TFloatField;
    acgacgprevisto02: TFloatField;
    acgacgrealizado02: TFloatField;
    acgacgsaldo02: TFloatField;
    acgacgpercentual02: TFloatField;
    acgacgprevisto03: TFloatField;
    acgacgrealizado03: TFloatField;
    acgacgsaldo03: TFloatField;
    acgacgpercentual03: TFloatField;
    acgacgprevisto04: TFloatField;
    acgacgrealizado04: TFloatField;
    acgacgsaldo04: TFloatField;
    acgacgpercentual04: TFloatField;
    acgacgprevisto05: TFloatField;
    acgacgrealizado05: TFloatField;
    acgacgsaldo05: TFloatField;
    acgacgpercentual05: TFloatField;
    acgacgprevisto06: TFloatField;
    acgacgrealizado06: TFloatField;
    acgacgsaldo06: TFloatField;
    acgacgpercentual06: TFloatField;
    acgacgprevisto07: TFloatField;
    acgacgrealizado07: TFloatField;
    acgacgsaldo07: TFloatField;
    acgacgpercentual07: TFloatField;
    acgacgprevisto08: TFloatField;
    acgacgrealizado08: TFloatField;
    acgacgsaldo08: TFloatField;
    acgacgpercentual08: TFloatField;
    acgacgprevisto09: TFloatField;
    acgacgrealizado09: TFloatField;
    acgacgsaldo09: TFloatField;
    acgacgpercentual09: TFloatField;
    acgacgprevisto10: TFloatField;
    acgacgrealizado10: TFloatField;
    acgacgsaldo10: TFloatField;
    acgacgpercentual10: TFloatField;
    acgacgprevisto11: TFloatField;
    acgacgrealizado11: TFloatField;
    acgacgsaldo11: TFloatField;
    acgacgpercentual11: TFloatField;
    acgacgprevisto12: TFloatField;
    acgacgrealizado12: TFloatField;
    acgacgsaldo12: TFloatField;
    acgacgpercentual12: TFloatField;
    acgacgprevistogeral: TFloatField;
    acgacgrealizadogeral: TFloatField;
    acgacgsaldogeral: TFloatField;
    acgacgpercentualgeral: TFloatField;
    acgseacodigo: TIntegerField;
    acgcedcodigo: TIntegerField;
    mes: TUniQuery;
    acgccgtitulo: TStringField;
    ced: TUniQuery;
    Splitter1: TSplitter;
    ccx: TUniQuery;
    ccxccxchave: TIntegerField;
    ccxccxdatahoraabert: TDateTimeField;
    ccxinicio: TUniQuery;
    ccxinicioccxchave: TIntegerField;
    ccxinicioccxdatahoraabert: TStringField;
    ccxfinal: TUniQuery;
    ccxfinalccxchave: TIntegerField;
    ccxfinalccxdatahoraabert: TStringField;
    ccxccxdatahorafecha: TDateTimeField;
    cfg: TUniQuery;
    cfgcfgusagou: TIntegerField;
    ActHistoricosReceitas: TAction;
    dtl: TUniQuery;
    dtldtlvalor: TFloatField;
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActApuracaoExecute(Sender: TObject);
    procedure DBGridApuracaoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActHistoricosReceitasExecute(Sender: TObject);
  private
    { Private declarations }
    procedure Carregar; override;
    procedure Descarregar; override;
  public
    { Public declarations }
  end;

var
  fracge: Tfracge;

  // Início ID do Módulo fraprg
const
  vPlIdMd = '0.0.0.00-01';
  vPlTitMdl = 'Apuração';

  // Fim ID do Módulo fraprg

implementation

uses
  ufcge;

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracge := Tfracge.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracge := Tfracge.Create(pCargaFrame);
  try
    fracge.CriaAcoesDeAcesso;
  finally
    fracge.Free;
  end;
end;

exports defineacesso, formuFrame;

procedure Tfracge.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcge, self.uqtabelacgechave.AsString, '');
end;

procedure Tfracge.ActApuracaoExecute(Sender: TObject);
var
  vPrimeiroDia: string;
  vUltimoDia: string;

  vPrimeiroDiaHora: string;
  vUltimoDiaHora: string;

  vOrcPrimeiroDia: string;
  vOrcUltimoDia: string;
  vldia: string;
  vlMeses: Integer;
  vlPrimeiroMes: Integer;
  vlUltimoMes: Integer;
  year, month, Day: Word;

  vlValorConta: Double;
  vlValorSaldo: Double;
  vlValorPrevisto: Double;
  vlValorRealizado: Double;

  i, n, m, x: Integer;

  vlNivel1: Double;
  vlNivel2: Double;
  vlNivel3: Double;
  vlNivel4: Double;
  vlNivel5: Double;
  vlNivel6: Double;
  vlNivel7: Double;
  vlNivel8: Double;
  vlNivel9: Double;

  vlNivelPrevisto1: Double;
  vlNivelPrevisto2: Double;
  vlNivelPrevisto3: Double;
  vlNivelPrevisto4: Double;
  vlNivelPrevisto5: Double;
  vlNivelPrevisto6: Double;
  vlNivelPrevisto7: Double;
  vlNivelPrevisto8: Double;
  vlNivelPrevisto9: Double;

  vlNivelSaldo1: Double;
  vlNivelSaldo2: Double;
  vlNivelSaldo3: Double;
  vlNivelSaldo4: Double;
  vlNivelSaldo5: Double;
  vlNivelSaldo6: Double;
  vlNivelSaldo7: Double;
  vlNivelSaldo8: Double;
  vlNivelSaldo9: Double;

  vlPercentual: Double;
  vlSPercentual: String;
  vlTotalGrupo: Double;
  vlTotalApurado: Double;

  vlclasse: string;
  vlContaTitulo: string;
  vlUltimaContaTitulo: string;
  vlNaturezaAtual: Integer;

  vlChave: Integer;
  vlUltima: boolean;

  vlTotalTrocaDevolucao: Double;

begin
  inherited;
  // try

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := acesso.Filial;
  cfg.Open;

  consulta.Close;
  consulta.SQL.Text := 'delete from dcg where cgechave=' + uqtabelacgechave.AsString;
  consulta.ExecSQL;

  consulta.Close;
  consulta.SQL.Text := 'delete from acg where cgechave=' + uqtabelacgechave.AsString;
  consulta.ExecSQL;

  cge.DisableControls;
  acg.DisableControls;

  // mostra painel para andamento da apuração
  plRealizaApuracao.Visible := true;
  pbMostraApuracao.Position := 0;

  // abre plano de contas que vao compor o orçamento
  ccg.Open;

  // Identifica o primeiro mes do orçamento
  vOrcPrimeiroDia := uqtabelacgedatainicial.AsString;
  DecodeDate(uqtabelacgedatainicial.AsDateTime, year, month, Day);
  vlPrimeiroMes := month;

  // Identifica o ultimp mes do orçamento
  vOrcUltimoDia := uqtabelacgedatafinal.AsString;
  DecodeDate(uqtabelacgedatafinal.AsDateTime, year, month, Day);
  vlUltimoMes := month;
  pbMostraApuracao.max := vlUltimoMes;
  application.ProcessMessages;

  // loop para repassar todos os meses do orçamento
  for vlMeses := vlPrimeiroMes to vlUltimoMes do
  begin
    pbMostraApuracao.Position := pbMostraApuracao.Position + 1;
    application.ProcessMessages;

    // loop para repasar todas contas marcadas para participar do orçamento

    ccg.First;
    while not ccg.Eof do
    begin
      try

        cgedcg.Close;
        cgedcg.ParamByName('dcgmes').AsInteger := vlMeses;
        cgedcg.ParamByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
        cgedcg.ParamByName('ccgcodigo').AsInteger := ccgccgcodigo.AsInteger;
        cgedcg.Open;

        // primeiro dia de cada mes
        vldia := '01/' + formatfloat('00', vlMeses) + '/' + uqtabelacgeano.AsString;

        consulta.Close;
        consulta.SQL.Text := 'select  year(' + QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ), LAST_DAY(' + QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) +
          ') ultimodia ' + ' , CAST(DATE_FORMAT(' + QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ,' + QuotedStr('%Y-%m-01') + ') as DATE) primeirodia ';
        consulta.Open;
        vPrimeiroDia := consulta.FieldByName('primeirodia').AsString;
        vUltimoDia := consulta.FieldByName('ultimodia').AsString;
        consulta.Close;

        // apura a soma de todos registros previstos para esta data

        { vlValorPrevisto := 0;
          consulta.Close;
          consulta.SQL.Text :=
          'SELECT SUM(rfivalor) pcrtotal FROM pcr,rfi WHERE srfcodigo<>9 and pcr.titcodigo=rfi.titcodigo AND rfivencimento BETWEEN :primeirodia AND :ultimodia and pcgcodigo=:pcgcodigo GROUP BY pcgcodigo';
          consulta.ParamByName('primeirodia').AsDate := strtodate(vPrimeiroDia);
          consulta.ParamByName('ultimodia').AsDate := strtodate(vUltimoDia);
          consulta.ParamByName('pcgcodigo').AsInteger := ccgccgcodigo.AsInteger;
          consulta.Open;

          if not consulta.IsEmpty then
          begin
          vlValorPrevisto := consulta.FieldByName('pcrtotal').AsCurrency
          end
          else
          vlValorPrevisto := 0; }

        vlValorPrevisto := 0;
        vlValorRealizado := 0;

        { *
          consulta.Close;
          consulta.SQL.Text :=
          'SELECT SUM(mcgvalor) mcgtotal FROM mcg,cco,cta WHERE cco.ccochave=mcg.mcgchaveorigem AND cta.ctacodigo=cco.ctacodigo and cta.ctafluxo=1 and mcgsituacao=0 and  mcgtabela='
          + QuotedStr('cco') + ' and mcgdata BETWEEN :primeirodia AND :ultimodia and ccgcodigo=:ccgcodigo GROUP BY ccgcodigo';
          consulta.ParamByName('primeirodia').AsDate := strtodate(vPrimeiroDia);
          consulta.ParamByName('ultimodia').AsDate := strtodate(vUltimoDia);
          consulta.ParamByName('ccgcodigo').AsInteger := ccgccgcodigo.AsInteger;
          consulta.Open;
          * }

        consulta.Close;
        consulta.SQL.Text :=
          'SELECT SUM(mcgvalor) mcgtotal FROM mcg,cco,cta WHERE cco.ccochave=mcg.mcgchaveorigem AND cta.ctacodigo=cco.ctacodigo and cta.ctafluxo=1 and mcgsituacao=0 and  mcgtabela='
          + QuotedStr('cco') + ' and mcgcompetencia=:mcgcompetencia and ccgcodigo=:ccgcodigo GROUP BY ccgcodigo';
        consulta.ParamByName('mcgcompetencia').AsString := formatfloat('00', vlMeses) + '-' + copy(uqtabelacgeano.AsString, 3, 2);
        consulta.ParamByName('ccgcodigo').AsInteger := ccgccgcodigo.AsInteger;
        consulta.Open;

        if not consulta.IsEmpty then
        begin
          vlValorRealizado := consulta.FieldByName('mcgtotal').AsCurrency;
        end
        else
          vlValorRealizado := 0;

        // se não houver o registro cria. Salva com o valor apurado

        if cgedcg.IsEmpty then
        begin
          cgedcg.Append;
          cgedcg.FieldByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
          cgedcg.FieldByName('ccgcodigo').AsInteger := ccgccgcodigo.AsInteger;
          cgedcg.FieldByName('dcgprevisao').AsFloat := vlValorPrevisto;
          cgedcg.FieldByName('dcgmes').AsInteger := vlMeses;
          cgedcg.FieldByName('dcgano').AsInteger := uqtabelacgeano.AsInteger;
          cgedcg.FieldByName('dcgrealizado').AsFloat := vlValorRealizado;
          cgedcg.FieldByName('dcgpercotimista').AsFloat := 0;
          cgedcg.FieldByName('dcgperpessimista').AsFloat := 0;
          cgedcg.FieldByName('dcgsituacao').AsInteger := 1;
          cgedcg.FieldByName('clbcodigo').AsInteger := acesso.Usuario;
          cgedcg.FieldByName('dcgregistro').AsString := agora(application, ZCone);
          cgedcg.Post;
        end
        else
        begin
          cgedcg.Edit;
          cgedcg.FieldByName('dcgprevisao').AsFloat := vlValorPrevisto;
          cgedcg.FieldByName('dcgrealizado').AsFloat := vlValorRealizado;
          cgedcg.Post;
        end;

      except

      end;
      ccg.Next;
    end;


    // apuração das vendas

    ccg.First;
    while not ccg.Eof do
    begin
      // try
      cgedcg.Close;
      cgedcg.ParamByName('dcgmes').AsInteger := vlMeses;
      cgedcg.ParamByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
      cgedcg.ParamByName('ccgcodigo').AsInteger := ccgccgcodigo.AsInteger;
      cgedcg.Open;

      // primeiro dia de cada mes
      vldia := '01/' + formatfloat('00', vlMeses) + '/' + uqtabelacgeano.AsString;

      consulta.Close;
      consulta.SQL.Text := 'select  year(' + QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ), LAST_DAY(' + QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) +
        ') ultimodia ' + ' , CAST(DATE_FORMAT(' + QuotedStr(FormatDateTime('yyyy-m-d', strtodate(vldia))) + ' ,' + QuotedStr('%Y-%m-01') + ') as DATE) primeirodia ';
      consulta.Open;

      vPrimeiroDia := consulta.FieldByName('primeirodia').AsString;
      vUltimoDia := consulta.FieldByName('ultimodia').AsString;

      if cfgcfgusagou.AsInteger = 1 then
      begin

        ccxinicio.Close;
        ccxinicio.ParamByName('inicial').AsDate := strtodate(vPrimeiroDia);
        ccxinicio.ParamByName('final').AsDate := strtodate(vUltimoDia);
        ccxinicio.Open;

        ccxfinal.Close;
        ccxfinal.ParamByName('inicial').AsDate := strtodate(vUltimoDia);
        ccxfinal.ParamByName('final').AsDate := strtodate(vUltimoDia);
        ccxfinal.Open;

        ccx.Open;

        if (ccxfinalccxchave.AsString = '') { or (vlMeses = vlUltimoMes) } then
        begin
          ccx.IndexFieldNames := 'ccxchave';
          ccx.Last;
          vlChave := ccxccxchave.AsInteger

        end
        else
        begin
          for x := 0 to 31 do
          begin
            vlChave := ccxfinalccxchave.AsInteger + x;
            if ccx.Locate('ccxchave', vlChave, []) then
            begin
              break;
            end;

          end;

        end;

        vPrimeiroDiaHora := ccxinicioccxdatahoraabert.AsString;

        if ccxccxdatahorafecha.AsString <> '' then
        begin
          vUltimoDiaHora := ccxccxdatahorafecha.AsString
        end
        else
          vUltimoDiaHora := ccxccxdatahorafecha.AsString;

        if vUltimoDiaHora = '' then
        begin
          ccx.IndexFieldNames := 'ccxchave';
          ccx.Last;
          vlChave := ccxccxchave.AsInteger;
        end;

      end
      else
      begin
        vPrimeiroDiaHora := vPrimeiroDia;
        vUltimoDiaHora := vUltimoDia;
      end;

      vlValorPrevisto := 0;

      vlValorRealizado := 0;
      if vUltimoDiaHora = '' then
      begin
        vUltimoDiaHora := agora(application, ZCone);
      end;

      consulta.Close;
      if (vPrimeiroDiaHora <> '') and (vUltimoDiaHora <> '') then
      begin
        mes.SQL.Text := 'SELECT sum(itm.itmtotal)-sum(itm.itmdesconto) mcgtotal ';
        mes.SQL.Add('FROM mes ');
        mes.SQL.Add('INNER JOIN etd ON mes.etdcodigo = etd.etdcodigo ');
        mes.SQL.Add('INNER JOIN toe ON mes.toecodigo = toe.toecodigo ');
        mes.SQL.Add('INNER JOIN sde ON mes.sdecodigo = sde.sdecodigo ');
        mes.SQL.Add('INNER JOIN tdf ON mes.tdfcodigo = tdf.tdfcodigo ');
        mes.SQL.Add('INNER JOIN itm ON mes.meschave = itm.meschave ');
        mes.SQL.Add('INNER JOIN pro ON itm.procodigo = pro.procodigo ');
        mes.SQL.Add('INNER JOIN dpr ON dpr.dprcodigo = pro.dprcodigo ');
        mes.SQL.Add('WHERE mes.mesrefeicao = 0 ');
        mes.SQL.Add('AND mes.sdecodigo = ' + QuotedStr('00') + ' ');
        mes.SQL.Add('AND toe.ttecodigo IN (' + QuotedStr('1') + ', ' + QuotedStr('9') + ') ');
        mes.SQL.Add('AND toe.ttocodigo = 2 ');
        if cfgcfgusagou.AsInteger = 1 then
        begin
          mes.SQL.Add('and (mesinclusao>=:primeirodia and mesinclusao<=:ultimodia' + ') ');
        end
        else
        begin
          mes.SQL.Add('and (mesemissao>=:primeirodia and mesemissao<=:ultimodia' + ') ');
        end;
        mes.SQL.Add(' AND dpr.ccgcodigo=:ccgcodigo ');
        mes.SQL.Add('group BY  dpr.ccgcodigo ');

        if cfgcfgusagou.AsInteger = 1 then
        begin

          mes.ParamByName('primeirodia').AsDateTime := strtodatetime(copy(vPrimeiroDiaHora, 9, 2) + '/' + copy(vPrimeiroDiaHora, 6, 2) + '/' + copy(vPrimeiroDiaHora, 1, 4) + ' ' +
            copy(vPrimeiroDiaHora, 11, 10));
          mes.ParamByName('ultimodia').AsDateTime := strtodatetime(vUltimoDiaHora);

        end
        else
        begin
          mes.ParamByName('primeirodia').AsDateTime := strtodatetime(vPrimeiroDiaHora);
          mes.ParamByName('ultimodia').AsDateTime := strtodatetime(vUltimoDiaHora);
        end;

        mes.ParamByName('ccgcodigo').AsInteger := ccgccgcodigo.AsInteger;
        mes.Open;

        if cfgcfgusagou.AsInteger = 0 then
        begin

          dtl.Close;
          dtl.ParamByName('primeirodia').AsDateTime := strtodatetime(vPrimeiroDiaHora);
          dtl.ParamByName('ultimodia').AsDateTime := strtodatetime(vUltimoDiaHora);

          dtl.ParamByName('flacodigo').AsInteger := acesso.Filial;
          dtl.ParamByName('ccgcodigo').AsInteger := ccgccgcodigo.AsInteger;
          dtl.Open;

          vlTotalTrocaDevolucao := dtldtlvalor.AsCurrency;

        end;







        // fim do movimenta de mes pelo periodo de caixa

        if not mes.IsEmpty then
        begin
          vlValorRealizado := mes.FieldByName('mcgtotal').AsCurrency - vlTotalTrocaDevolucao;
        end
        else
          vlValorRealizado := 0;

        // se não houver o registro cria. Salva com o valor apurado

        if cgedcg.IsEmpty then
        begin
          cgedcg.Append;
          cgedcg.FieldByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
          cgedcg.FieldByName('ccgcodigo').AsInteger := ccgccgcodigo.AsInteger;
          cgedcg.FieldByName('dcgprevisao').AsFloat := vlValorPrevisto;
          cgedcg.FieldByName('dcgmes').AsInteger := vlMeses;
          cgedcg.FieldByName('dcgano').AsInteger := uqtabelacgeano.AsInteger;
          cgedcg.FieldByName('dcgrealizado').AsFloat := vlValorRealizado;
          cgedcg.FieldByName('dcgpercotimista').AsFloat := 0;
          cgedcg.FieldByName('dcgperpessimista').AsFloat := 0;
          cgedcg.FieldByName('dcgsituacao').AsInteger := 1;
          cgedcg.FieldByName('clbcodigo').AsInteger := acesso.Usuario;
          cgedcg.FieldByName('dcgregistro').AsString := agora(application, ZCone);
          cgedcg.Post;
        end
        else
        begin
          if vlValorRealizado <> 0 then
          begin
            cgedcg.Edit;
            cgedcg.FieldByName('dcgprevisao').AsFloat := vlValorPrevisto;
            cgedcg.FieldByName('dcgrealizado').AsFloat := vlValorRealizado;
            cgedcg.Post;
          end;
        end;

      end;
      // except

      // end;
      ccg.Next;
    end;

  end;

  cge.Close;
  cge.ParamByName('cgeano').AsInteger := uqtabelacgeano.AsInteger;
  cge.ParamByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
  cge.Open;

  cge.First;

  consulta.Close;
  consulta.SQL.Text := 'delete from acg where cgechave=' + uqtabelacgechave.AsString;
  consulta.ExecSQL;

  pbMostraApuracao.Position := 0;
  pbMostraApuracao.max := cge.RecordCount;
  application.ProcessMessages;

  while not cge.Eof do
  begin

    pbMostraApuracao.Position := pbMostraApuracao.Position + 1;
    application.ProcessMessages;

    acg.Close;
    acg.ParamByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
    acg.Open;

    if not acg.Locate('ccgcodigo', cge.FieldByName('ccgcodigo').AsInteger, []) then
      acg.Append
    else
      acg.Edit;

    acg.FieldByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
    acg.FieldByName('ccgcodigo').AsInteger := cge.FieldByName('ccgcodigo').AsInteger;
    acg.FieldByName('ccgidentificacao').AsString := cge.FieldByName('ccgidentificacao').AsString;
    consulta.Close;
    consulta.SQL.Text := 'select ccgidentificacao from ccg where ccgcodigo=' + cge.FieldByName('ccgcodigo').AsString;
    consulta.Open;
    acg.FieldByName('seacodigo').AsInteger := cge.FieldByName('seacodigo').AsInteger;

    // acg.FieldByName('acgtitulo').AsString := cge.FieldByName('ccgidentificacao').AsString + ' ' + uppernome(consulta.FieldByName('ccgidentificacao').AsString);
    acg.FieldByName('seacodigo').AsInteger := cge.FieldByName('seacodigo').AsInteger;

    for i := 1 to 12 do
    begin
      try

        if (i >= vlPrimeiroMes) and (i <= vlUltimoMes) then
        begin

          acg.FieldByName('acgprevisto' + formatfloat('00', i)).AsCurrency := cge.FieldByName('cgeprevisto' + formatfloat('00', i)).AsCurrency;
          acg.FieldByName('acgrealizado' + formatfloat('00', i)).AsCurrency := cge.FieldByName('cgerealizado' + formatfloat('00', i)).AsCurrency;

          if cge.FieldByName('cedcodigo').AsInteger = 1 then
            acg.FieldByName('acgsaldo' + formatfloat('00', i)).AsCurrency := 0
          else
            acg.FieldByName('acgsaldo' + formatfloat('00', i)).AsCurrency := acg.FieldByName('acgprevisto' + formatfloat('00', i)).AsCurrency -
              acg.FieldByName('acgrealizado' + formatfloat('00', i)).AsCurrency;
        end;

      except
        showmessage(' campo: ' + 'acgprevisto' + formatfloat('00', i));

      end;
    end;

    try
      acg.Post;
    except
      showmessage(' campo: ' + 'acgprevisto' + formatfloat('00', i));
    end;
    cge.Next;
  end;

  acg.Close;
  acg.ParamByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
  acg.Open;

  dcg.Close;
  dcg.ParamByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
  dcg.Open;

  for i := 1 to 12 do
  begin
    if (i >= vlPrimeiroMes) and (i <= vlUltimoMes) then
    begin

      dcg.FilterSQL := 'dcgmes=' + IntToStr(i);
      dcg.First;
      while not dcg.Eof do
      begin

        if dcg.FieldByName('dcgmes').AsInteger = i then
        begin

          if dcg.FieldByName('dcgrealizado').AsCurrency <> 0 then
          begin

            if not acg.Locate('ccgcodigo', dcg.FieldByName('ccgcodigo').AsInteger, []) then
              acg.Append
            else
              acg.Edit;

            acg.FieldByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;

            consulta.Close;
            consulta.SQL.Text := 'select ccgidentificacao,seacodigo, cedcodigo from ccg where ccgcodigo=' + dcg.FieldByName('ccgcodigo').AsString;
            consulta.Open;

            try

              acg.FieldByName('acgrealizado' + formatfloat('00', i)).AsCurrency := dcg.FieldByName('dcgrealizado').AsCurrency;

            except
              showmessage(' campo: ' + 'aogprevisto' + formatfloat('00', i));

            end;
            try
              acg.Post;
            except
              showmessage(' campo: ' + 'aogprevisto' + formatfloat('00', i));
            end;

          end;
        end;

        dcg.Next;
      end;
    end;
  end;

  acg.Refresh;

  // finally
  if cge.Active then
    cge.First;
  if acg.Active then
    acg.First;

  m := 0;
  for m := 1 to 12 do
  begin
    if (m >= vlPrimeiroMes) and (m <= vlUltimoMes) then
    begin

      acg.Last;

      vlNivel1 := 0;
      vlNivel2 := 0;
      vlNivel3 := 0;
      vlNivel4 := 0;
      vlNivel5 := 0;
      vlNivel6 := 0;
      vlNivel7 := 0;
      vlNivel8 := 0;
      vlNivel9 := 0;

      vlNivelPrevisto1 := 0;
      vlNivelPrevisto2 := 0;
      vlNivelPrevisto3 := 0;
      vlNivelPrevisto4 := 0;
      vlNivelPrevisto5 := 0;
      vlNivelPrevisto6 := 0;
      vlNivelPrevisto7 := 0;
      vlNivelPrevisto8 := 0;
      vlNivelPrevisto9 := 0;

      vlNivelSaldo1 := 0;
      vlNivelSaldo2 := 0;
      vlNivelSaldo3 := 0;
      vlNivelSaldo4 := 0;
      vlNivelSaldo5 := 0;
      vlNivelSaldo6 := 0;
      vlNivelSaldo7 := 0;
      vlNivelSaldo8 := 0;
      vlNivelSaldo9 := 0;

      vlValorConta := 0;
      vlValorPrevisto := 0;
      vlValorSaldo := 0;

      vlclasse := '';
      vlContaTitulo := '';

      vlContaTitulo := acg.FieldByName('ccgestrutural').AsString;
      vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);
      vlclasse := acg.FieldByName('ccgestrutural').AsString;

      n := 1;

      vlNaturezaAtual := acg.FieldByName('cedcodigo').AsInteger;
      while not acg.Bof do
      begin

        if (acg.FieldByName('ccgestrutural').AsString = vlContaTitulo) then
        begin
          acg.Edit;
          acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlValorConta;
          acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlValorPrevisto;
          acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlValorSaldo;
          acg.Post;

          if (length(vlclasse) > length(vlContaTitulo)) and (vlUltima = false) then
          begin
            n := n + 1;
          end
          else
          begin
            vlUltima := false;
            if copy(vlContaTitulo, 1, length(vlclasse) - 1) <> vlclasse then
              n := 1;

            vlclasse := vlContaTitulo;
          end;
          { if vlValorConta < 0 then
            vlValorConta := vlValorConta * -1; }

          case n of
            1:
              begin
                if acg.FieldByName('cedcodigo').AsInteger = 1 then
                begin
                  vlNivel1 := vlNivel1 + vlValorConta;
                  vlNivelPrevisto1 := vlNivelPrevisto1 + vlValorPrevisto;
                  vlNivelSaldo1 := vlNivelSaldo1 + vlValorSaldo;
                end
                else
                begin
                  vlNivel1 := vlNivel1 - vlValorConta;
                  vlNivelPrevisto1 := vlNivelPrevisto1 - vlValorPrevisto;
                  vlNivelSaldo1 := vlNivelSaldo1 - vlValorSaldo;
                end;

                acg.Edit;
                acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlValorConta;
                acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlValorPrevisto;
                acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlValorSaldo;
                acg.Post;

                vlValorConta := 0;
                vlValorPrevisto := 0;
                vlValorSaldo := 0;

                vlclasse := vlContaTitulo;
              end;
            2:
              begin
                if acg.FieldByName('cedcodigo').AsInteger = 1 then
                begin
                  vlNivel2 := vlNivel2 + vlNivel1;
                  vlNivelPrevisto2 := vlNivelPrevisto2 + vlNivelPrevisto1;
                  vlNivelSaldo2 := vlNivelSaldo2 + vlNivelSaldo1;
                end
                else
                begin
                  vlNivel2 := vlNivel2 - vlNivel1;
                  vlNivelPrevisto2 := vlNivelPrevisto2 - vlNivelPrevisto1;
                  vlNivelSaldo2 := vlNivelSaldo2 - vlNivelSaldo1;
                end;

                if length(vlUltimaContaTitulo) = 1 then
                begin
                  acg.Edit;
                  acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlNivel1;
                  acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto1;
                  acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo1;
                  acg.Post;
                  vlNivel1 := 0;
                  vlNivelPrevisto1 := 0;
                  vlclasse := vlContaTitulo;
                end
                else
                begin

                  acg.Edit;
                  acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlNivel2;
                  acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto2;
                  acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo2;
                  acg.Post;
                  vlNivel1 := 0;
                  vlNivelPrevisto1 := 0;
                  vlclasse := vlContaTitulo;
                end;
              end;
            3:
              begin
                if acg.FieldByName('cedcodigo').AsInteger = 1 then
                begin
                  vlNivel3 := vlNivel3 + vlNivel2;
                  vlNivelPrevisto3 := vlNivelPrevisto3 + vlNivelPrevisto2;
                  vlNivelSaldo3 := vlNivelSaldo3 + vlNivelSaldo2;
                end
                else
                begin
                  vlNivel3 := vlNivel3 - vlNivel2;
                  vlNivelPrevisto3 := vlNivelPrevisto3 - vlNivelPrevisto2;
                  vlNivelSaldo3 := vlNivelSaldo3 - vlNivelSaldo2;

                end;

                acg.Edit;
                acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlNivel3;
                acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto3;
                acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo3;
                acg.Post;
                vlNivel2 := 0;
                vlNivelPrevisto2 := 0;
                vlclasse := vlContaTitulo;

              end;
            4:
              begin
                if acg.FieldByName('cedcodigo').AsInteger = 1 then
                begin
                  vlNivel4 := vlNivel4 + vlNivel3;
                  vlNivelPrevisto4 := vlNivelPrevisto4 + vlNivelPrevisto3;
                  vlNivelSaldo4 := vlNivelSaldo4 + vlNivelSaldo3;
                end
                else
                begin
                  vlNivel4 := vlNivel4 - vlNivel3;
                  vlNivelPrevisto4 := vlNivelPrevisto4 - vlNivelPrevisto3;
                  vlNivelSaldo4 := vlNivelSaldo4 - vlNivelSaldo3;

                end;
                acg.Edit;
                acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlNivel4;
                acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto4;
                acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo4;
                acg.Post;
                vlNivel3 := 0;
                vlNivelPrevisto3 := 0;
                vlclasse := vlContaTitulo;
              end;
            5:
              begin
                vlNivel5 := vlNivel5 + vlNivel4;
                vlNivelPrevisto5 := vlNivelPrevisto5 + vlNivelPrevisto4;
                vlNivelSaldo5 := vlNivelSaldo5 + vlNivelSaldo4;

                acg.Edit;
                acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlNivel5;
                acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto5;
                acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo5;
                acg.Post;
                vlNivel4 := 0;
                vlNivelPrevisto4 := 0;
                vlclasse := vlContaTitulo;
              end;
            6:
              begin
                vlNivel6 := vlNivel6 + vlNivel5;
                vlNivelPrevisto6 := vlNivelPrevisto6 + vlNivelPrevisto5;
                vlNivelSaldo6 := vlNivelSaldo6 + vlNivelSaldo5;

                acg.Edit;
                acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlNivel6;
                acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto6;
                acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo6;
                acg.Post;
                vlNivel5 := 0;
                vlNivelPrevisto5 := 0;
                vlclasse := vlContaTitulo;
              end;
            7:
              begin
                vlNivel7 := vlNivel7 + vlNivel6;
                vlNivelPrevisto7 := vlNivelPrevisto7 + vlNivelPrevisto6;
                vlNivelSaldo7 := vlNivelSaldo7 + vlNivelSaldo6;

                acg.Edit;
                acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlNivel7;
                acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto7;
                acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo7;
                vlNivel6 := 0;
                vlNivelPrevisto6 := 0;
                vlclasse := vlContaTitulo;
              end;
            8:
              begin
                vlNivel8 := vlNivel8 + vlNivel7;
                vlNivelPrevisto8 := vlNivelPrevisto8 + vlNivelPrevisto7;
                vlNivelSaldo8 := vlNivelSaldo8 + vlNivelSaldo7;

                acg.Edit;
                acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency := vlNivel8;
                acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency := vlNivelPrevisto8;
                acg.FieldByName('acgsaldo' + formatfloat('00', m)).AsCurrency := vlNivelSaldo8;
                acg.Post;
                vlNivel7 := 0;
                vlNivelPrevisto7 := 0;
                vlclasse := vlContaTitulo;
              end;

          end;

        end
        else
        begin

          if acg.FieldByName('cedcodigo').AsInteger = 1 then
          begin
            vlValorConta := vlValorConta + acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency;
            vlValorPrevisto := vlValorPrevisto + acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency;
            vlValorSaldo := 0;
          end
          else
          begin
            vlValorConta := vlValorConta - acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency;
            vlValorPrevisto := vlValorPrevisto - acg.FieldByName('acgprevisto' + formatfloat('00', m)).AsCurrency;
            vlValorSaldo := 0;
          end;

        end;

        vlContaTitulo := acg.FieldByName('ccgestrutural').AsString;

        if pos('.', acg.FieldByName('ccgestrutural').AsString) > 0 then
        begin
          vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);
          vlUltimaContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);

        end;
        { if (acg.Eof)  then
          vlUltima := true; }

        acg.Prior;
      end;
      acg.Last;

    end;
  end;

  vlContaTitulo := acg.FieldByName('ccgestrutural').AsString;
  vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);
  if pos('.', vlContaTitulo) > 0 then
    vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);

  // finally
  if cge.Active then
    cge.First;

  if acg.Active then
    acg.First;

  cge.EnableControls;
  acg.EnableControls;
  pbMostraApuracao.Position := 0;
  plRealizaApuracao.Visible := false;

  while not acg.Eof do
  begin

    for m := 1 to 12 do
    begin
      if (i >= vlPrimeiroMes) and (i <= vlUltimoMes) then
      begin
        if acg.FieldByName('seacodigo').AsInteger = 0 then
        begin

          vlContaTitulo := acg.FieldByName('ccgidentificacao').AsString;

          if pos('.', vlContaTitulo) > 0 then
            vlContaTitulo := copy(vlContaTitulo, 1, LastCharPos(vlContaTitulo, '.') - 1);

          vlPercentual := 0;
          vlTotalGrupo := 0;
          analisevertical.Close;
          analisevertical.SQL.Text := ' select SUM(acgrealizado' + formatfloat('00', m) + ') dcgtotal FROM acg ';
          analisevertical.SQL.Add('WHERE ccgidentificacao like (' + QuotedStr(vlContaTitulo + '%') + ' ) and LENGTH(ccgidentificacao)=' + IntToStr(length(vlContaTitulo)) +
            ' AND ccgcodigo<>' + acg.FieldByName('ccgcodigo').AsString + ' and seacodigo=0 ');
          analisevertical.Open;

          vlTotalGrupo := analisevertical.FieldByName('dcgtotal').AsCurrency;

          if vlTotalGrupo < 0 then
            vlTotalGrupo := vlTotalGrupo * -1;

          if acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsString <> '' then
          begin
            vlTotalApurado := acg.FieldByName('acgrealizado' + formatfloat('00', m)).AsCurrency;

            if vlTotalApurado < 0 then
              vlTotalApurado := vlTotalApurado * -1;

          end
          else
          begin
            vlTotalApurado := 0;
          end;

          if (vlTotalGrupo <> 0) and (vlTotalApurado <> 0) then
          begin
            vlPercentual := (vlTotalApurado / vlTotalGrupo) * 100;

            vlSPercentual := Floattostr(vlPercentual);
            try
              consulta.Close;
              consulta.SQL.Text := 'update acg set acgpercentual' + formatfloat('00', m) + '=' + buscatroca(vlSPercentual, ',', '.') + ' where ccgcodigo=' +
                acg.FieldByName('ccgcodigo').AsString;
              consulta.ExecSQL;

            except
            end;
          end;

        end;
      end;
    end;
    acg.Next;
  end;

  if acg.Active then
    acg.First;

  // end;

end;

procedure Tfracge.ActHistoricosReceitasExecute(Sender: TObject);
begin
  inherited;
  mostralista('mhrf', '', acgccgcodigo.AsString);
end;

procedure Tfracge.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcge, '', '');
end;

procedure Tfracge.Carregar;
begin
  inherited;
  CarregarColunas(DBGridApuracao);

end;

procedure Tfracge.DBGridApuracaoDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  Style: Integer;
  i: Integer;
begin

  fixRect := Rect;

  If odd(Dacg.DataSet.RecNo) Then
  begin

    DBGridApuracao.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGridApuracao.Canvas.Brush.Color := clWhite;
  end;

  if self.acgseacodigo.AsString = '0' then
  begin
    DBGridApuracao.Canvas.Font.Style := [fsbold];
    DBGridApuracao.Canvas.Font.Color := clWhite;

    if acgcedcodigo.AsInteger = 1 then
      DBGridApuracao.Canvas.Brush.Color := clNavy
    else
      DBGridApuracao.Canvas.Brush.Color := ClRed;

  end
  else
  begin

    DBGridApuracao.Canvas.Font.Style := [];
    DBGridApuracao.Canvas.Font.Color := clBlack;
    DBGridApuracao.Canvas.Brush.Color := clWhite;

    for i := 1 to 12 do
    begin
      if Column.FieldName = 'acgsaldo' + formatfloat('00', i) then
      begin
        if acg.FieldByName('acgsaldo' + formatfloat('00', i)).AsFloat > 0 then
        begin
          DBGridApuracao.Canvas.Brush.Color := clYellow;
        end
        else if acg.FieldByName('acgsaldo' + formatfloat('00', i)).AsFloat < 0 then
        begin

          DBGridApuracao.Canvas.Brush.Color := clsilver;
        end
        else
        begin

          DBGridApuracao.Canvas.Brush.Color := clWhite;
        end;
      end;
    end;

  end;

  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGridApuracao) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;

  end;

  // end;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clWhite;
    End;

  with TFriendly(DBGridApuracao) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);
  // ShowScrollBar(DBGridApuracao.handle, SB_HORZ, false); // Remove barra Vertical

end;

procedure Tfracge.Descarregar;
begin
  inherited Descarregar;
  SalvarColunas(DBGridApuracao);

end;

procedure Tfracge.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if uqtabela.Active then
  begin
    if uqtabelacgechave.AsString <> '' then
    begin
      acg.Close;
      acg.ParamByName('cgechave').AsInteger := uqtabelacgechave.AsInteger;
      acg.Open;
    end;
  end;

end;

end.
