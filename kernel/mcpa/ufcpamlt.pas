unit ufcpamlt;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrfimlt, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.Dialogs, ufrabase, uFuncoes, System.ImageList, uPegaBase, System.SysUtils,
  TypInfo, DateUtils;

type
  Tfcpamlt = class(Tfrfimlt)
    plContab: TPanel;
    cfgcfgusactb: TIntegerField;
    rfm: TUniQuery;
    rfmrfmchave: TIntegerField;
    rfmrfichave: TIntegerField;
    rfmmeschave: TIntegerField;
    rfmflacodigo: TIntegerField;
    registrotngcodigo: TIntegerField;
    tng: TUniQuery;
    tngtngcodigo: TIntegerField;
    tngtngidentificacao: TStringField;
    registrotngidentificacao: TStringField;
    lptngcodigo: TLabel;
    tngcodigo: TDBEdit;
    cfgcfgctbusanucleosgeren: TIntegerField;
    cfgcfgctbusaccg: TIntegerField;
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
    rfmtit: TUniQuery;
    mcgalt: TUniQuery;
    mcgver: TUniQuery;
    v_rfi: TUniQuery;
    v_rfirfinumero: TStringField;
    v_rfirfihistorico: TStringField;
    v_rfirfichave: TIntegerField;
    v_rfirfivencimento: TDateField;
    ajustarfi: TUniQuery;

    procedure FormShow(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure BGerarRepeticoesClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure titvalorparcelaExit(Sender: TObject);
    procedure titvalorExit(Sender: TObject);
    procedure bcancelaClick(Sender: TObject);
    procedure titparcelasEnter(Sender: TObject);
    procedure titvctoinicialEnter(Sender: TObject);
  private
    { Private declarations }
    hpcr: thandle;
    hmcg: thandle;
    procedure atualizadetalhe;
    procedure MostraRateioCTB;
    procedure MostraRateioMCG;
  public
    { Public declarations }
    vpDadosParcelas: string;
    vpMesChaveCPA: String;
    vpRfiValor: Double;
    vpRfiValorAnterior: Double;
    vpqtdparcelasoriginal: integer;
    vptitdatainical: TDate;
  end;

var
  fcpamlt: Tfcpamlt;

implementation

{$R *.dfm}

// Início ID do Módulo fcpamlt
const
  vPlIdMd = '02.02.15.004-03';

  // Fim ID do Módulo fcpamlt

function RegistraCPA(pCargaFrame: TCargaFrame): string;
begin
  fcpamlt := Tfcpamlt.Create(pCargaFrame);
  fcpamlt.vpMesChaveCPA := pCargaFrame.Filtro;
  fcpamlt.ShowModal;
  fcpamlt.Free;
end;

exports RegistraCPA;

procedure Tfcpamlt.bcancelaClick(Sender: TObject);
var
  vlValor: string;
begin

  if psituacao.caption = 'Alterando' then
  begin
    consulta.Close;
    consulta.sql.text := 'update tit set titparcelas=' + vpqtdparcelasoriginal.ToString + ' where titcodigo =' + titcodigo.Field.AsString;
    consulta.ExecSQL;

    // if (vpRfiValorAnterior <> titvalorparcela.Field.AsCurrency) and (vpqtdparcelasoriginal = 1) then // (titparcelas.Field.AsInteger = 1) then
    // begin

    vlValor := buscatroca(buscatroca(CurrToStr(vpRfiValorAnterior), '.', ''), ',', '.');

    if titcodigo.Field.AsString <> '' then
    begin
      consulta.Close;
      consulta.sql.text := 'update rfi set rfivalor=' + vlValor + ',rfivalorparcela=' + vlValor + ' where titcodigo=' + titcodigo.Field.AsString;
      consulta.ExecSQL;

      consulta.Close;
      consulta.sql.text := 'update tit set titvalor=' + vlValor + ',titvalorparcela=' + vlValor + ',titvctoinicial=' +
        QuotedStr(ajustadata(datetostr(vptitdatainical))) + 'where titcodigo=' + titcodigo.Field.AsString;
      consulta.ExecSQL;

    end;

  end;
  // end;

  if psituacao.caption = 'Incluindo' then
  begin
    if titcodigo.Field.AsString <> '' then
    begin
      // remover mgc, rfi
      consulta.Close;
      consulta.sql.text := 'delete from mcg where mcgtabela=' + QuotedStr('rfi') + ' and mcgchaveorigem=' + titcodigo.Field.AsString;
      consulta.ExecSQL;

      consulta.Close;
      consulta.sql.text := 'delete from rfi where  titcodigo=' + titcodigo.Field.AsString;
      consulta.ExecSQL;

      consulta.Close;
      consulta.sql.text := 'delete from v_rfi where titcodigo=' + titcodigo.Field.AsString;
      consulta.ExecSQL;

    end;
  end;

  inherited;

end;

procedure Tfcpamlt.bconfirmaClick(Sender: TObject);
var
  vlPodeFechar: Boolean;
  fra: Tfrabase;
  vlRfiTotal: Double;
  vlValor: string;
  vlRfichaveIni: integer;
  vlmcgvalor: Currency;
  vlccgcodigo: integer;
  vlValorStr: String;
  vlparcelas: string;
  vlparcela: string;

  vlItemparcela: TstringList;
  vlVctoparcela: string;
  vlvalorparcela: string;
  vlnumeroparcela: string;

  p: integer;

begin

  vlPodeFechar := True;

  if hpcr <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('frapcr'));

    if IsPublishedProp(fra, 'VlrTotal') then
    begin
      SetPropValue(fra, 'VlrTotal', titvalorparcela.Field.AsCurrency);
    end;

    if fra <> nil then
      vlPodeFechar := fra.podefechar;
  end;

  if (psituacao.caption = 'Alterando') then
  begin
    rfi.Close;
    rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
    rfi.Open;

    if rfi.IsEmpty then
    begin
      if self.titparcelas.Field.AsInteger = 1 then
      begin
        RegistraRFI;
        rfi.Close;
        rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
        rfi.Open;
      end;

    end;

    if (titparcelas.Field.AsInteger = 1) then
    begin

      vlValor := buscatroca(buscatroca(CurrToStr(vpRfiValor), '.', ''), ',', '.');

      consulta.Close;
      consulta.sql.text := 'update rfi set rfivencimento=' + QuotedStr(ajustadata(titvctoinicial.Field.AsString)) + ',rfivalor=' + vlValor +
        ',rfivalorparcela=' + vlValor + ' where titcodigo=' + titcodigo.Field.AsString;
      consulta.ExecSQL;

      if cfgcfgctbusaccg.AsInteger = 1 then
      begin
        consulta.Close;
        consulta.sql.text := 'update mcg set mcgdata=' + QuotedStr(ajustadata(titvctoinicial.Field.AsString)) + ' where  mcgchaveorigem=' +
          titcodigo.Field.AsString + ' and mcgtabela=' + QuotedStr('rfi') + ' and rfichave=' + rfirfichave.AsString;
        consulta.ExecSQL;
      end;

      consulta.Close;
      consulta.sql.text := 'update mfi set mfivalor=' + vlValor + ' where tmfcodigo=1 and rfichave=' + rfirfichave.AsString;
      consulta.ExecSQL;

      consulta.Close;
      consulta.sql.text := 'update mfi set mfisituacao=0 where rfichave=' + rfirfichave.AsString;
      consulta.ExecSQL;

      v_rfi.Close;
      v_rfi.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
      v_rfi.Open;

      v_rfi.Edit;
      v_rfirfihistorico.AsString := tithistorico.Field.AsString;
      v_rfirfinumero.AsString := titnumero.Field.AsString;
      v_rfirfivencimento.AsFloat := titvctoinicial.Field.AsFloat;
      v_rfi.Post;

      rfi.Edit;
      rfirfihistorico.AsString := tithistorico.Field.AsString;
      rfirfinumero.AsString := titnumero.Field.AsString;
      rfirfivencimento.AsFloat := titvctoinicial.Field.AsFloat;
      rfi.Post;

      ajustarfi.Close;
      ajustarfi.sql.text := 'select rfichave from rfi where titcodigo=' + registrotitcodigo.AsString;
      ajustarfi.Open;
      while not ajustarfi.Eof do
      begin

        consulta.sql.text := 'select CalcMovimentoFinanceiro(' + ajustarfi.FieldByName('rfichave').AsString + ')';
        consulta.ExecSQL;
        consulta.sql.text := 'select CalcRegistroFinanceiro(' + ajustarfi.FieldByName('rfichave').AsString + ')';
        consulta.ExecSQL;

        ajustarfi.Next;
      end;

    end;
  end;

  if vlPodeFechar then
  begin

    if registro.State = dsbrowse then
      registro.Edit;

    inherited;

    if vChaveMestre <> '' then
    begin
      if pos('#', vChaveMestre) > 0 then
      begin
        vlparcelas := copy(vChaveMestre, pos('#', vChaveMestre) + 1, length(vChaveMestre));

        if pos('&', vlparcelas) > 0 then
        begin
          vlItemparcela := TstringList.Create;

          vlparcela := copy(vlparcelas, 1, pos('&', vlparcelas) - 1);

          while vlparcela <> '' do
          begin
            vlItemparcela.Add(vlparcela);
            vlparcelas := copy(vlparcelas, pos('&', vlparcelas) + 1, length(vlparcelas));
            vlparcela := copy(vlparcelas, 1, pos('&', vlparcelas) - 1);
          end;

        end;

        vChaveMestre := copy(vChaveMestre, 1, pos('#', vChaveMestre) - 1);
      end;

    end;

    if vChaveMestre <> '' then
    begin

      consulta.Close;
      consulta.sql.text := 'select meschave from mes where meschave=' + vChaveMestre;
      consulta.Open;

      if not consulta.IsEmpty then
      begin
        vpMesChaveCPA := vChaveMestre;
      end
      else
      begin
        vpMesChaveCPA := '0';
      end;

    end;

    if vpMesChaveCPA <> '0' then
    begin

      rfi.Close;
      rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
      rfi.Open;

      rfm.Open;
      p := 0;
      rfi.First;
      while not rfi.Eof do
      begin

        if vlItemparcela <> nil then
        begin

          if vlItemparcela.Count > 0 then
          begin

            vlparcela := vlItemparcela[p];

            vlVctoparcela := copy(vlparcela, 1, pos('_', vlparcela) - 1);
            vlparcela := copy(vlparcela, pos('_', vlparcela) + 1, length(vlparcela));

            vlnumeroparcela := copy(vlparcela, 1, pos('$', vlparcela) - 1);
            vlparcela := copy(vlparcela, pos('$', vlparcela) + 1, length(vlparcela));

            vlvalorparcela := vlparcela;

          end
          else
          begin
            vlparcela := self.titvalorparcela.Field.AsString;
            vlVctoparcela := titvctoinicial.Field.AsString;
            vlnumeroparcela := titnumero.Field.AsString;
          end;
        end;

        if vpMesChaveCPA <> '' then
        begin
          consulta.Close;
          consulta.sql.text := 'select rfmchave from rfm where meschave=' + vpMesChaveCPA + ' and rfichave=' + rfirfichave.AsString;
          consulta.Open;
          if consulta.IsEmpty then
          begin

            rfm.Append;
            rfmrfichave.AsInteger := rfirfichave.AsInteger;
            rfmmeschave.AsString := vpMesChaveCPA;
            rfmflacodigo.AsInteger := acesso.Filial;
            rfm.Post;
          end;
        end;

        rfi.Next;
      end;
    end;

    if (vpMesChaveCPA <> '') and (psituacao.caption = 'Incluindo') then
    begin

      rfi.Close;
      rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
      rfi.Open;

      rfm.Open;
      rfi.First;
      while not rfi.Eof do
      begin

        rfm.Append;
        rfmrfichave.AsInteger := rfirfichave.AsInteger;
        rfmmeschave.AsString := vpMesChaveCPA;
        rfmflacodigo.AsInteger := acesso.Filial;
        rfm.Post;

        consulta.Close;
        consulta.sql.text := 'SELECT mcg.mcgchave,mcg.ccgcodigo FROM mcg WHERE  mcgchaveorigem=' + rfirfichave.AsString + '  and mcgtabela=' +
          QuotedStr('rfi');
        consulta.Open;

        if not consulta.IsEmpty then
        begin
          mcgaju.Close;
          mcgaju.ParamByName('mcgchaveorigem').AsInteger := rfititcodigo.AsInteger;
          mcgaju.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
          mcgaju.Open;

          if mcgaju.IsEmpty then
            mcgaju.Append
          else
            mcgaju.Edit;

          mcgajuccgcodigo.AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;
          mcgajumcgvalor.AsCurrency := rfirfivalor.AsCurrency;
          mcgajumcgdata.AsDateTime := rfirfivencimento.AsDateTime;
          mcgajumcgtabela.AsString := 'rfi';
          mcgajumcgchaveorigem.AsInteger := rfititcodigo.AsInteger;
          mcgajumcgsituacao.AsInteger := 0;
          mcgajuclbcodigo.AsInteger := acesso.Usuario;
          mcgajumcgregistro.AsString := agora(Application, ZCone);
          mcgajurfichave.AsInteger := rfirfichave.AsInteger;
          mcgaju.Post;
        end;

        consulta.Close;
        consulta.sql.text := 'update mfi set mfisituacao=0 where rfichave=' + rfirfichave.AsString;
        consulta.ExecSQL;

        rfi.Next;
      end;

    end
    else
    begin

      { if psituacao.Caption = 'Incluindo' then
        begin }

      rfi.Close;
      rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
      rfi.Open;
      rfm.Open;
      rfi.First;
      while not rfi.Eof do
      begin
        consulta.Close;
        consulta.sql.text := 'SELECT titvalor  FROM tit WHERE titcodigo=' + titcodigo.Field.AsString;
        consulta.Open;

        vlRfiTotal := consulta.FieldByName('titvalor').AsCurrency;

        consulta.Close;
        consulta.sql.text := 'SELECT mcg.mcgchave,mcg.ccgcodigo, sum(mcgvalor) mcgvalor  FROM mcg WHERE  rfichave=' + rfirfichave.AsString +
          ' and mcgchaveorigem=' + titcodigo.Field.AsString + '  and mcgtabela=' + QuotedStr('rfi') + ' group by mcg.ccgcodigo';
        consulta.Open;

        if not consulta.IsEmpty then
        begin

          while not consulta.Eof do
          begin

            vlccgcodigo := consulta.FieldByName('ccgcodigo').AsInteger;

            mcgaju.Close;
            mcgaju.ParamByName('mcgchaveorigem').AsInteger := rfititcodigo.AsInteger;
            mcgaju.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
            mcgaju.ParamByName('ccgcodigo').AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;
            mcgaju.Open;

            if mcgaju.IsEmpty then
              mcgaju.Append
            else
              mcgaju.Edit;

            mcgajuccgcodigo.AsInteger := consulta.FieldByName('ccgcodigo').AsInteger;
            mcgajumcgvalor.AsCurrency := consulta.FieldByName('mcgvalor').AsCurrency;
            mcgajumcgdata.AsDateTime := rfirfivencimento.AsDateTime;
            mcgajumcgtabela.AsString := 'rfi';
            mcgajumcgchaveorigem.AsInteger := rfititcodigo.AsInteger;
            mcgajumcgsituacao.AsInteger := 0;
            mcgajuclbcodigo.AsInteger := acesso.Usuario;
            mcgajumcgregistro.AsString := agora(Application, ZCone);
            mcgajurfichave.AsInteger := rfirfichave.AsInteger;
            mcgaju.Post;
            consulta.Next;
          end;
        end
        else
        begin

          if rfi.RecNo = 1 then
          begin

            mcgver.Close;
            mcgver.sql.text := 'SELECT mcg.mcgchave,mcg.ccgcodigo, mcgvalor mcgvalor , rfichave FROM mcg WHERE rfichave<>0 and  mcgchaveorigem=' +
              titcodigo.Field.AsString + '  and mcgtabela=' + QuotedStr('rfi') + ' order by ccgcodigo, rfichave  ';
            mcgver.Open;
            mcgver.First;

            vlRfichaveIni := mcgver.FieldByName('rfichave').AsInteger;

            if not mcgver.IsEmpty then
            begin

              while not mcgver.Eof do
              begin
                if mcgver.FieldByName('rfichave').AsInteger = vlRfichaveIni then
                begin

                  vlmcgvalor := mcgver.FieldByName('mcgvalor').AsCurrency;
                  vlccgcodigo := mcgver.FieldByName('ccgcodigo').AsInteger;
                end
                else
                begin

                  mcgalt.Close;

                  vlValorStr := CurrToStr(vlmcgvalor);
                  vlValorStr := buscatroca(vlValorStr, '.', '');
                  vlValorStr := buscatroca(vlValorStr, ',', '.');

                  mcgalt.sql.text := 'UPDATE mcg set mcgvalor=' + vlValorStr + ' WHERE mcgchaveorigem=' + titcodigo.Field.AsString + ' AND mcgtabela='
                    + QuotedStr('rfi') + ' AND ccgcodigo=' + InttoStr(vlccgcodigo);
                  mcgalt.ExecSQL;

                end;
                mcgver.Next;
              end;
            end;

          end
          else
          begin
            consulta.Close;
            consulta.sql.text := 'SELECT mcg.mcgchave,mcg.ccgcodigo FROM mcg WHERE  mcgchaveorigem=' + rfirfichave.AsString + '  and mcgtabela=' +
              QuotedStr('rfi');
            consulta.Open;

            if consulta.IsEmpty then
            begin
              mcgaju.Close;
              mcgaju.ParamByName('mcgchaveorigem').AsInteger := rfititcodigo.AsInteger;
              mcgaju.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
              mcgaju.Open;

              if mcgaju.IsEmpty then
                mcgaju.Append
              else
                mcgaju.Edit;

              mcgajuccgcodigo.AsInteger := vlccgcodigo;
              mcgajumcgvalor.AsCurrency := rfirfivalor.AsCurrency;
              mcgajumcgdata.AsDateTime := rfirfivencimento.AsDateTime;
              mcgajumcgtabela.AsString := 'rfi';
              mcgajumcgchaveorigem.AsInteger := rfititcodigo.AsInteger;
              mcgajumcgsituacao.AsInteger := 0;
              mcgajuclbcodigo.AsInteger := acesso.Usuario;
              mcgajumcgregistro.AsString := agora(Application, ZCone);
              mcgajurfichave.AsInteger := rfirfichave.AsInteger;
              mcgaju.Post;
            end

          end;

        end;

        rfi.Next;
        { end; }
      end;

    end;

  end
  else
  begin
    ShowMessage('Contabilização incompleta, favor verificar !');
    exit;
  end;

  if tngcodigo.Field.AsString <> '' then
  begin
    consulta.Close;
    consulta.sql.text := 'update v_rfi set tngcodigo=' + tngcodigo.Field.AsString + ' where titcodigo=' + registrotitcodigo.AsString;
    consulta.ExecSQL;

  end;

  if psituacao.caption = 'Incluindo' then
  begin
    consulta.Close;
    consulta.sql.text := 'update tit set titvalorparcela=' + buscatroca(buscatroca(titvalorparcela.Field.AsString, '.', ''), ',', '.') +
      ' where titcodigo=' + registrotitcodigo.AsString;
    consulta.ExecSQL;

    if registrotitparcelas.AsInteger = 1 then
    begin
      rfi.Close;
      rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
      rfi.Open;

      consulta.Close;
      consulta.sql.text := 'update mcg set rfichave=' + rfi.FieldByName('rfichave').AsString + ' where mcgchaveorigem=' + registrotitcodigo.AsString;
      consulta.ExecSQL;
    end;
  end;

  rfi.Close;
  rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
  rfi.Open;

  while not rfi.Eof do
  begin

    consulta.Close;
    consulta.sql.text := 'update mfi set mfisituacao=0 where rfichave=' + rfi.FieldByName('rfichave').AsString;
    consulta.ExecSQL;

    if (psituacao.caption = 'Incluindo') or (rfirfiinclusao.AsString = '') then
    begin
      rfi.Edit;
      rfirfiinclusao.AsString := agora(Application, ZCone);
      rfi.Post;

      consulta.Close;
      consulta.sql.text := 'select rfichave, rfiinclusao from v_rfi where rfichave=' + rfirfichave.AsString;
      consulta.Open;

      if not consulta.IsEmpty then
      begin

        consulta.Edit;
        consulta.FieldByName('rfiinclusao').AsString := agora(Application, ZCone);
        consulta.Post;
      end
      else
      begin
        consulta.Close;
        consulta.sql.text := 'select CalcMovimentoFinanceiro(:rfichave)';
        consulta.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
        consulta.ExecSQL;

        consulta.Close;
        consulta.sql.text := 'select CalcRegistroFinanceiro(:rfichave)';
        consulta.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
        consulta.ExecSQL;

      end;

    end;

    if rfirfihistorico.AsString = '' then
    begin
      rfi.Edit;
      rfirfihistorico.AsString := tittithistorico.AsString;
      rfietdcodigo.AsInteger := etdcodigo.Field.AsInteger;
      rfi.Post;

    end;

    rfi.Edit;
    rfietdcodigo.AsInteger := etdcodigo.Field.AsInteger;
    rfi.Post;

    consulta.Close;
    consulta.sql.text := 'select CalcRegistroFinanceiro(:rfichave)';
    consulta.ParamByName('rfichave').AsInteger := rfirfichave.AsInteger;
    consulta.ExecSQL;

    rfi.Next;
  end;

end;

procedure Tfcpamlt.MostraRateioMCG;
var
  fra: Tfrabase;
  i: integer;
begin

  if hmcg = 0 then
  begin

    if (psituacao.caption = 'Alterando') and (registrotitparcelas.AsInteger = 1) then
    begin
      rfi.Close;
      rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
      rfi.Open;

    end;

    hmcg := CarregaFrame('mmcg', plContab, 'execute', 'mcgtabela=' + QuotedStr('rfi') + '#' + rfirfichave.AsString);

    fra := nil;
    fra := Tfrabase(Application.FindComponent('framcg'));
    if fra <> nil then
    begin
      if IsPublishedProp(fra, 'VlrTotal') then
      begin
        SetPropValue(fra, 'VlrTotal', titvalorparcela.Field.AsCurrency);
      end;

      if IsPublishedProp(fra, 'PcbChave') then
      begin
        SetPropValue(fra, 'PcbChave', titcodigo.Field.AsInteger);
      end;

      if IsPublishedProp(fra, 'RfiChave') then
      begin
        SetPropValue(fra, 'RfiChave', rfirfichave.AsString);
      end;

      if self.psituacao.caption = 'Incluindo' then
      begin
        if fra <> nil then
          if fra.vretorno = '0' then
          begin
            self.psituacao.caption := 'Cancelando';
          end;
      end;

    end;
  end
  else
  begin
    fra := nil;

    fra := Tfrabase(Application.FindComponent('framcg'));
    fra.vChaveMestre := self.rfirfichave.AsString;
    self.atualizadetalhe;

  end;

  if fra <> nil then
  begin
    if fra.podefechar then
      bconfirma.Enabled := True
    else
      bconfirma.Enabled := False;
  end
  else
    bconfirma.Enabled := False;

end;

procedure Tfcpamlt.MostraRateioCTB;
var
  fra: Tfrabase;
  i: integer;
begin

  If (self.registro.State = dsedit) Then
    self.registro.Post
  Else If (self.registro.State = dsInsert) Then
    self.registro.Post;

  bconfirma.Enabled := True;
  if hpcr = 0 then
  begin

    hpcr := CarregaFrame('mpcr', plContab, 'execute');

    fra := nil;
    fra := Tfrabase(Application.FindComponent('frapcr'));

    if self.psituacao.caption = 'Incluindo' then
    begin
      if fra <> nil then
        if fra.vretorno = '0' then
        begin
          self.psituacao.caption := 'Cancelando';
        end;
    end;

  end;
end;

procedure Tfcpamlt.BGerarRepeticoesClick(Sender: TObject);
var
  vlRfiValor: Double;
  vlparcelas: string;
  vlItemparcela: TstringList;
  vlparcela: string;

var
  vTotParcelas: Double;
  sTotParcelas: string;
begin
  vlparcelas := '';

  vpDadosParcelas := vChaveMestre;

  if self.vChaveMestre <> '' then
  begin

    if pos('#', vChaveMestre) > 0 then
    begin
      vlparcelas := copy(vChaveMestre, pos('#', vChaveMestre) + 1, length(vChaveMestre));
      vlparcelas := titvctoinicial.Field.AsString + copy(vlparcelas, 11, length(vlparcelas));
      titvalorparcela.Enabled := False;
      titvalorparcela.TabStop := False;

      { if pos('&', vlparcelas) > 0 then
        begin
        vlItemparcela := TstringList.Create;

        vlparcela := copy(vlparcelas, 1, pos('&', vlparcelas) - 1);

        while vlparcela <> '' do
        begin
        vlItemparcela.Add(vlparcela);
        vlparcelas:=copy(vlparcelas,  pos('&', vlparcelas) + 1,length(vlparcelas) );
        vlparcela := copy(vlparcelas, 1, pos('&', vlparcelas) - 1);
        end;

        end; }

      vChaveMestre := copy(vChaveMestre, 1, pos('#', vChaveMestre) - 1);
      consulta.Close;
      consulta.sql.text := 'select mestotal from mes where meschave=' + vChaveMestre;
      consulta.Open;

      if not consulta.IsEmpty then
      begin
        titvalor.Field.AsString := consulta.FieldByName('mestotal').AsString;
      end;

    end;

    vpMesChaveCPA := vChaveMestre;
    vpMesChave := vpMesChaveCPA;
  end
  else
  begin
    titvalorparcela.Enabled := True;
    titvalorparcela.TabStop := True;

  end;

  // inherited;

  /// ///////////////
  ///
  ///
  ///
  /// ///////////////

  if self.registro.State <> dsbrowse then
    registro.Post;

  if titnumero.Field.AsString = '' then
  begin
    registro.Edit;
    titnumero.Field.AsString := formatfloat('000000', titcodigo.Field.AsFloat);
    registro.Post;
  end;

  if tithistorico.Field.AsString = '' then
  begin
    registro.Edit;
    tithistorico.Field.AsString := formatfloat('000000', titcodigo.Field.AsFloat) + '/' + titparcelas.Field.AsString;
    registro.Post;
  end;

  vTotParcelas := self.registrotitvalor.AsFloat;

  sTotParcelas := format('%12.2f', [vTotParcelas]);

  sTotParcelas := buscatroca(sTotParcelas, '.', '');
  sTotParcelas := buscatroca(sTotParcelas, '.', '');
  sTotParcelas := buscatroca(sTotParcelas, '.', '');
  sTotParcelas := trim(buscatroca(sTotParcelas, '.', ''));
  sTotParcelas := trim(buscatroca(sTotParcelas, ',', '.'));

  if self.registraparcelas(self.registrotitcodigo.AsString, sTotParcelas, self.registrotitparcelas.AsString, vlparcelas) = '999' then
  begin
    BGerarRepeticoes.Enabled := False;
    self.jaajustou := True;
    bconfirma.Enabled := True;
    self.bconfirma.SetFocus;
    // bconfirma.Click;
  end;

  self.ValidaSaida(Sender);

  if (registro.State = dsedit) or (registro.State = dsInsert) then
  begin
    registro.Post;
    registro.Edit;
  end;

  if (registro.State = dsbrowse) then
    registro.Edit;

  vlRfiValor := 0;

  consulta.Close;
  consulta.sql.text := 'select rfivalor from rfi where titcodigo=' + titcodigo.Field.AsString + ' order by rfichave limit 1';
  consulta.Open;

  vlRfiValor := consulta.FieldByName('rfivalor').AsCurrency;

  if vlRfiValor > 0 then
  begin
    titvalorparcela.Field.AsCurrency := vlRfiValor;
  end;

  if cfgcfgusactb.AsInteger in [1, 9] then
  begin

    if (registro.State = dsedit) or (registro.State = dsInsert) then
    begin
      registro.Post;
      registro.Edit;
    end;

    if (registro.State = dsbrowse) then
      registro.Edit;

    if self.cfgcfgusactb.AsInteger in [1, 9] then
    begin
      if psituacao.caption = 'Incluindo' then
      begin
        MostraRateioCTB;
      end
      else if psituacao.caption = 'Alterando' then
      begin
        atualizadetalhe;
      end;
    end;

  end
  else if (self.cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
  begin

    if (registro.State = dsedit) or (registro.State = dsInsert) then
    begin
      registro.Post;
      registro.Edit;
    end;

    if (registro.State = dsbrowse) then
      registro.Edit;

    if (self.cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
    begin
      if psituacao.caption = 'Incluindo' then
      begin
        MostraRateioMCG;
      end
      else if psituacao.caption = 'Alterando' then
      begin
        atualizadetalhe;
      end;
    end;

  end;
  if vpDadosParcelas <> '' then
  begin
    vChaveMestre := vpDadosParcelas;
  end;

end;

procedure Tfcpamlt.atualizadetalhe;
var
  fra: Tfrabase;
  vlValor: string;
begin

  if hpcr <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('frapcr'));

    if fra <> nil then
      fra.ActAtualizar.Execute;
  end
  else if hmcg <> 0 then
  begin
    fra := nil;
    fra := Tfrabase(Application.FindComponent('framcg'));
    if IsPublishedProp(fra, 'VlrTotal') then
    begin
      SetPropValue(fra, 'VlrTotal', titvalorparcela.Field.AsCurrency);

    end;
    if IsPublishedProp(fra, 'PcbChave') then
    begin
      SetPropValue(fra, 'PcbChave', titcodigo.Field.AsInteger);
    end;

    if IsPublishedProp(fra, 'RfiChave') then
    begin
      if not rfi.Active then
      begin
        rfi.ParamByName('titcodigo').AsString := registrotitcodigo.AsString;
        rfi.Open;
      end;

      SetPropValue(fra, 'RfiChave', rfirfichave.AsString);
    end;

    if fra <> nil then
    begin
      fra.ActAtualizar.Execute;
    end;
  end;

  if (vpRfiValor <> titvalorparcela.Field.AsCurrency) and (titparcelas.Field.AsInteger = 1) then
  begin
    if not rfi.Active then
    begin
      rfi.ParamByName('titcodigo').AsInteger := titcodigo.Field.AsInteger;
      rfi.Open;
    end;

    vpRfiValor := titvalorparcela.Field.AsCurrency;

    vlValor := buscatroca(buscatroca(CurrToStr(vpRfiValor), '.', ''), ',', '.');

    consulta.Close;
    consulta.sql.text := 'update rfi set rfivalor=' + vlValor + ',rfivalorparcela=' + vlValor + ' where titcodigo=' + titcodigo.Field.AsString;
    consulta.ExecSQL;

    consulta.Close;
    consulta.sql.text := 'update mfi set mfivalor=' + vlValor + ' where tmfcodigo=1 and rfichave=' + rfirfichave.AsString;
    consulta.ExecSQL;

  end;

end;

procedure Tfcpamlt.FormShow(Sender: TObject);
var
  vlparcelas: string;
begin
  IdModulo := vPlIdMd;

  consulta.Close;
  consulta.sql.text := 'select fla.flacodigo, flaidentificacao from fla,fcb WHERE fla.flacodigo=fcb.flacodigo and fcb.clbcodigo=' +
    InttoStr(acesso.Usuario);
  consulta.Open;

  inherited;

  if psituacao.caption = 'Alterando' then
  begin
    vpRfiValor := titvalorparcela.Field.AsCurrency;
    vpRfiValorAnterior := titvalorparcela.Field.AsCurrency;
    vpqtdparcelasoriginal := titparcelas.Field.AsInteger;
    vptitdatainical := titvctoinicial.Field.AsFloat;
  end;

  if pos('#', self.vChaveMestre) > 0 then
  begin
    vpMesChaveCPA := copy(vChaveMestre, 1, pos('#', self.vChaveMestre) - 1);
  end;

  {
    if psituacao.caption = 'Alterando' then
    begin

    if vpMesChaveCPA <> '' then
    begin

    registro.Cancel;

    rfmtit.Close;
    rfmtit.ParamByName('meschave').AsString := vpMesChaveCPA;
    rfmtit.Open;

    registro.Close;
    registro.ParamByName('titcodigo').AsString := rfmtit.FieldByName('titcodigo').AsString;
    registro.Open;

    if registrotitparcelas.AsInteger > 1 then
    begin
    BGerarRepeticoes.Visible := True;
    BGerarRepeticoes.Enabled := True;
    BGerarRepeticoes.caption := 'Mostrar Parcelas';
    psituacao.caption := 'Alterando';
    end;
    registro.Edit;

    end;

    end;
  }
  if vpMesChaveCPA <> '' then
  begin

    if self.vChaveMestre <> '' then
    begin

      if pos('#', vChaveMestre) > 0 then
      begin
        vlparcelas := copy(vChaveMestre, pos('#', vChaveMestre) + 1, length(vChaveMestre));
        vlparcelas := copy(vlparcelas, 1, 10);
        registrotitvctoinicial.AsString := vlparcelas;

      end;

    end;
  end;

  if self.cfgcfgctbusanucleosgeren.AsInteger = 1 then
  begin
    tngcodigo.Visible := True;
    lptngcodigo.Visible := True;
    registrotngcodigo.Required := True;
    tngcodigo.Color := PEG_COR_VALORREQUERIDO;
  end
  else
  begin
    tngcodigo.Visible := False;
    lptngcodigo.Visible := False;
    registrotngcodigo.Required := False;
    if self.FindComponent('spdbtngcodigo') <> nil then
    begin
      (self.FindComponent('spdbtngcodigo') as TBitBtn).Visible := False;
    end;
  end;

  if self.cfgcfgusactb.AsInteger in [1, 9] then
  begin
    self.Height := 655;
    plContab.Height := 174;
    plContab.Visible := True;
    if psituacao.caption = 'Alterando' then
      MostraRateioCTB;
  end
  else
  begin
    if (self.cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
    begin
      self.Height := 655;
      plContab.Height := 174;
      plContab.Visible := True;
      if psituacao.caption = 'Alterando' then
        MostraRateioMCG;
    end
    else
    begin

      plContab.Visible := False;
      plContab.Height := 0;
      self.Height := 483;
    end;
  end;

end;

procedure Tfcpamlt.registroAfterInsert(DataSet: TDataSet);
var
  vlparcelas: string;
begin
  self.registrocarcodigo.AsInteger := 1;
  registrotfdcodigo.AsInteger := tfdPagar;
  registroflacodigo.AsInteger := acesso.Filial;
  inherited;

  if vpMesChaveCPA <> '' then
  begin
    titmes.Close;
    titmes.sql.text := 'select etdcodigo, mesregistro, mesemissao, mestotal, mesnumero from mes where meschave=' + vpMesChaveCPA;
    titmes.Open;

    registroetdcodigo.AsString := titmes.FieldByName('etdcodigo').AsString;
    registrotitnumero.AsString := titmes.FieldByName('mesnumero').AsString;
    registrotitvalor.AsFloat := titmes.FieldByName('mestotal').AsFloat;
    registrotitemissao.AsFloat := titmes.FieldByName('mesemissao').AsFloat;
    registrotitvalorparcela.AsFloat := titmes.FieldByName('mestotal').AsFloat;

    if self.vChaveMestre <> '' then
    begin

      if pos('#', vChaveMestre) > 0 then
      begin
        vlparcelas := copy(vChaveMestre, pos('#', vChaveMestre) + 1, length(vChaveMestre));
        vlparcelas := copy(vlparcelas, 1, 10);
        registrotitvctoinicial.AsString := vlparcelas;

      end
      else
      begin
        registrotitvctoinicial.AsDateTime := IncDay(titmes.FieldByName('mesemissao').AsDateTime, 30);

      end;
    end;

  end;

end;

procedure Tfcpamlt.titparcelasEnter(Sender: TObject);
var
  vlEtdCodigo: integer;
  vltitemissao: TDate;
  vltitvctoinicial: TDate;
  vltficodigo: integer;
  vltitnumero: String;
  vlbcocodigo: String;

begin
  inherited;

  vlEtdCodigo := etdcodigo.Field.AsInteger;
  vltitemissao := titemissao.Field.AsFloat;
  vltitvctoinicial := titvctoinicial.Field.AsFloat;
  vltficodigo := tficodigo.Field.AsInteger;
  vltitnumero := titnumero.Field.AsString;
  vlbcocodigo := bcocodigo.Field.AsString;

  if (titcodigo.Field.AsString <> '') and (psituacao.caption = 'Incluindo') then
  begin

    consulta.Close;
    consulta.sql.text := 'delete from rfi where titcodigo=' + titcodigo.Field.AsString;
    consulta.ExecSQL;

    registro.Cancel;

    if titcodigo.Field.AsString <> '' then
    begin
      consulta.Close;
      consulta.sql.text := 'delete from tit where titcodigo=' + titcodigo.Field.AsString;
      consulta.ExecSQL;
    end;

    registro.Append;
    etdcodigo.Field.AsInteger := vlEtdCodigo;
    titemissao.Field.AsFloat := vltitemissao;
    titvctoinicial.Field.AsFloat := vltitvctoinicial;
    tficodigo.Field.AsInteger := vltficodigo;
    titnumero.Field.AsString := vltitnumero;
    bcocodigo.Field.AsString := vlbcocodigo;
    titvalor.Field.AsFloat := 0;
    titvalorparcela.Field.AsFloat := 0;
    registro.Post;

    rfi.Close;
    rfi.ParamByName('titcodigo').AsInteger := self.titcodigo.Field.AsInteger;
    rfi.Open;
    rfm.Open;

    rfi.First;
    while not rfi.Eof do
    begin
      rfi.Edit;
      rfi.FieldByName('titcodigo').AsInteger := titcodigo.Field.AsInteger;
      rfi.Post;
      rfi.Next;
    end;

    atualizadetalhe;

    registro.Edit;
  end;

end;

procedure Tfcpamlt.titvalorExit(Sender: TObject);
begin
  inherited;
  self.ValidaSaida(Sender);

  if self.ActiveControl = bcancela then
    exit;

  if titvalor.Field.AsString = '' then
    titvalor.SetFocus;

  if self.titvalor.Field.AsFloat <= 0 then
  begin
    ShowMessage('Valor inválido. Necessita valor maior que 0,00!');
    titvalor.SetFocus;
  end;

  if titparcelas.Field.AsInteger = 1 then
  begin
    if (registro.State = dsedit) or (registro.State = dsInsert) then
    begin
      registro.Post;
      registro.Edit;
    end;

    RegistraRFI;
  end;

end;

procedure Tfcpamlt.titvalorparcelaExit(Sender: TObject);
begin
  inherited;
  if self.ActiveControl = bcancela then
    exit;

  if titvalorparcela.Field.AsString = '' then
  begin
    titvalorparcela.SetFocus;
    exit;
  end;

  if self.titvalorparcela.Field.AsFloat <= 0 then
  begin
    ShowMessage('Valor inválido. Necessita valor maior que 0,00!');
    titvalorparcela.SetFocus;
    exit;
  end;

  if titparcelas.Field.AsInteger = 1 then
  begin
    if (registro.State = dsedit) or (registro.State = dsInsert) then
    begin
      registro.Post;
      registro.Edit;
    end;

    RegistraRFI;

    if cfgcfgusactb.AsInteger in [1, 9] then
    begin

      if (registro.State = dsedit) or (registro.State = dsInsert) then
      begin
        registro.Post;
        registro.Edit;
      end;

      if (registro.State = dsbrowse) then
        registro.Edit;

      if self.cfgcfgusactb.AsInteger in [1, 9] then
      begin
        if psituacao.caption = 'Incluindo' then
        begin
          MostraRateioCTB;
        end
        else if psituacao.caption = 'Alterando' then
        begin
          atualizadetalhe;
        end;
      end;

    end
    else if (self.cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
    begin

      if (registro.State = dsedit) or (registro.State = dsInsert) then
      begin
        registro.Post;
        registro.Edit;
      end;

      if (registro.State = dsbrowse) then
        registro.Edit;

      if (self.cfgcfgusactb.AsInteger = 0) and (cfgcfgctbusaccg.AsInteger = 1) then
      begin
        if psituacao.caption = 'Incluindo' then
        begin
          MostraRateioMCG;
        end
        else if psituacao.caption = 'Alterando' then
        begin
          atualizadetalhe;
        end;
      end;

    end;

  end;

end;

procedure Tfcpamlt.titvctoinicialEnter(Sender: TObject);
begin
  inherited;
  if self.psituacao.caption = 'Incluindo' then
  begin
    titvctoinicial.Field.AsFloat := self.titemissao.Field.AsFloat + 30;
  end;
end;

end.
