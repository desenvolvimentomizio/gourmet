unit ufbolreb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList,
  PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, uFuncoes, Vcl.Grids,
  Vcl.DBGrids, ACBrBase, ACBrBoleto;

type
  Tfbolreb = class(Tfrmbase)
    erros: TMemo;
    Label1: TLabel;
    car: TUniQuery;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    carbcocodigo: TStringField;
    carcarlayout: TIntegerField;
    rfi: TUniQuery;
    cbl: TUniQuery;
    omo: TUniQuery;
    obl: TUniQuery;
    oto: TUniQuery;
    obloblchave: TIntegerField;
    oblbolchave: TIntegerField;
    obltobcodigo: TIntegerField;
    oblobldata: TDateField;
    obloblvalor: TFloatField;
    otooblchave: TIntegerField;
    ototobcodigo: TIntegerField;
    omoomochave: TIntegerField;
    omooblchave: TIntegerField;
    omomobcodigo: TIntegerField;
    mfi: TUniQuery;
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimoecodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    mfimfivalorori: TFloatField;
    mfiflacodigo: TIntegerField;
    mfimfisituacao: TIntegerField;
    mfimfiparcela: TIntegerField;
    cco: TUniQuery;
    dtl: TUniQuery;
    dtldtlchave: TIntegerField;
    dtlltechave: TIntegerField;
    dtlcedcodigo: TIntegerField;
    dtldtlvalor: TFloatField;
    dtlmdacodigo: TIntegerField;
    dtldtlvalorinfo: TFloatField;
    lte: TUniQuery;
    lteltechave: TIntegerField;
    ltetfdcodigo: TIntegerField;
    lteltedata: TDateField;
    ltelteprincipal: TFloatField;
    lteltejuros: TFloatField;
    lteltedesconto: TFloatField;
    lteltetotal: TFloatField;
    ltelteextenso: TStringField;
    lteltehistorico: TStringField;
    lteltemulta: TFloatField;
    lteltesituacao: TIntegerField;
    lteflacodigo: TIntegerField;
    lteclbcodigo: TIntegerField;
    ltectacodigo: TIntegerField;
    ltelteregistro: TDateTimeField;
    lteltetroco: TFloatField;
    clt: TUniQuery;
    cltcltchave: TIntegerField;
    cltccochave: TIntegerField;
    cltltechave: TIntegerField;
    mlt: TUniQuery;
    mltmltchave: TIntegerField;
    mltmfichave: TIntegerField;
    mltltechave: TIntegerField;
    mltflacodigo: TIntegerField;
    rfirfichave: TIntegerField;
    rfirfidtultbaixa: TDateField;
    carctacodigo: TIntegerField;
    ccoccochave: TIntegerField;
    ccoctacodigo: TIntegerField;
    ccoccoemissao: TDateField;
    ccoccovencimento: TDateField;
    ccotoccodigo: TIntegerField;
    ccocedcodigo: TIntegerField;
    ccoclbcodigo: TIntegerField;
    ccotficodigo: TIntegerField;
    ccomoecodigo: TIntegerField;
    ccocconumero: TStringField;
    ccoccohistorico: TStringField;
    ccoccovalor: TFloatField;
    ccoccochaveorig: TIntegerField;
    ccoccochavedest: TIntegerField;
    ccoccoconciliado: TIntegerField;
    ccoccoextenso: TStringField;
    ccoetdcodigo: TIntegerField;
    ccoccodatamov: TDateField;
    ccoccodataregistro: TDateField;
    ccoccohoraregistro: TTimeField;
    ccoccofavorecido: TStringField;
    ccophgcodigo: TIntegerField;
    ccoflacodigo: TIntegerField;
    rfietdcodigo: TIntegerField;
    cblcblchave: TIntegerField;
    cbloblchave: TIntegerField;
    cblccochave: TIntegerField;
    registrorrbchave: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrorrbregistro: TDateTimeField;
    Dcar: TDataSource;
    DBGridcar: TDBGrid;
    rfibol: TUniQuery;
    obloblnumret: TStringField;
    obloblnossonume: TStringField;
    rfisrfcodigo: TIntegerField;
    cfgcfgcodigo: TIntegerField;
    cfgphgbaixa: TIntegerField;
    rmg: TUniQuery;
    mlg: TUniQuery;
    mlgmlgchave: TIntegerField;
    mlgclbcodigo: TIntegerField;
    mlgmlgsituacao: TIntegerField;
    mlgflacodigo: TIntegerField;
    mlgmlgdata: TDateField;
    mlgltechave: TIntegerField;
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
    otootochave: TIntegerField;
    ACBrBoleto: TACBrBoleto;
    bol: TUniQuery;
    bolbolchave: TIntegerField;
    bolboldatahoraretorno: TDateTimeField;
    bolbolarquivodebaixa: TStringField;
    tob: TUniQuery;
    oblobldatabaixamanual: TDateField;
    rfirfibaixamanual: TIntegerField;
    procedure bconfirmaClick(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
  private
    procedure processa240(arq: tstringlist; narq: String);
    function buscatob(cod, vcar: String): String;
    function buscamob(cod, vcar, vtip: String): String;
    procedure processa400(arq: tstringlist; narq: String);
    procedure processabaixa;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbolreb: Tfbolreb;

implementation

{$R *.dfm}

procedure Tfbolreb.bconfirmaClick(Sender: TObject);
Var
  vbco: String;
  dire: String;
  vRec: TSearchRec;
  narq: String;
  darq: String;
  arq: tstringlist;
  vLiquidacao: boolean;
  i: integer;
Begin
  vbco := self.carbcocodigo.AsString;
  dire := extractfilepath(application.exename);
  dire := dire + 'retorno\' + vbco;

  If Not directoryexists(dire) Then
  Begin
    createdir(dire);
  End;

  dire := dire + '\processados';
  If Not directoryexists(dire) Then
  Begin
    createdir(dire);
  End;

  dire := extractfilepath(application.exename);
  dire := dire + 'retorno\' + vbco;

  ACBrBoleto.DirArqRetorno := dire;

  arq := tstringlist.create;
  If FindFirst(dire + '\' + '*.*', faAnyFile - faDirectory, vRec) = 0 Then
    Try
      Repeat
        narq := dire + '\' + vRec.Name;

        ACBrBoleto.NomeArqRetorno := vRec.Name;
        ACBrBoleto.LerRetorno();
        processabaixa;

        darq := dire + '\processados\' + vRec.Name;
        If fileexists(darq) Then
        Begin
          deletefile(darq);
        End;
        If copyfile(pchar(narq), pchar(darq), true) Then
        Begin
          deletefile(narq);
        End;

        { arq.LoadFromFile(narq);

          If carcarlayout.AsString = '240' Then
          Begin
          processa240(arq, narq);
          End
          Else If carcarlayout.AsString = '400' Then
          Begin
          processa400(arq, narq);

          End
          Else If carcarlayout.AsString = '724' Then
          Begin

          End
          else
          Begin
          processa400(arq, narq);
          End;

          ; }

      Until FindNext(vRec) <> 0;
    Finally
      FindClose(vRec);
    End;
  showmessage('Retornos processados com sucesso!');
  { if not directoryexists(extractfilepath(application.exename) +
    '\retorno\mensagens\errosbaixas') then
    ForceDirectories(extractfilepath(application.exename) +
    '\retorno\mensagens\errosbaixas');

    erros.lines.SaveToFile(extractfilepath(application.exename) +
    '\retorno\mensagens\errosbaixas ' + FormatDateTime('yyyymmddhhMMss', Now())
    + ' .txt');
    showmessage('Retornos processados com sucesso!');
  }
end;

Procedure Tfbolreb.processa240(arq: tstringlist; narq: String);
Var
  i: integer;
  vnossonume: String;
  vbco: String;
  vcar: String;
  vtipoliq: String;
  vdatabx: String;
  vdataar: String;

  vvalorbx: String;
  vdatacc: String;
  linha: String;
  linha1: String;

  vmodoliq1: String;
  vmodoliq2: String;
  vmodoliq3: String;
  vmodoliq4: String;
  vmodoliq5: String;

  vobldespcob: String;
  vobloutrasdesp: String;
  voblvalorabat: String;
  voblvalordesc: String;
  voblvalorjuros: String;
  voblnumret: String;
  voblmulta: String;
  voblprotesto: String;
  vobldespcartorio: String;
  pode: boolean;
  vrfichave, bolchave, chaveobl: String;

Begin

  { 48 a 56 - Identificação do nosso número - com digito.
    109 a 110 - Código 06 (Liquidação normal) - Existem outras ocorrências.
    111 a 116 - Data da ocorrência
    254 a 266 - Valor efetivamente pago
    329 a 336 - Data prevista para lçto na CC }

  lte.open;
  dtl.open;
  mfi.open;
  mlt.open;
  cco.open;
  cbl.open;
  clt.open;

  For i := 0 To arq.Count - 1 Do
  Begin
    linha := arq[i];
    If i = 0 Then
    Begin
      vbco := copy(linha, 1, 3);

      voblnumret := copy(linha, 158, 6);

      vdataar := copy(linha, 144, 8);
      vdataar := copy(vdataar, 1, 2) + '/' + copy(vdataar, 3, 2) + '/' + copy(vdataar, 5, 4);

    End;

    If copy(linha, 14, 1) = 'T' Then
    Begin

      vnossonume := copy(linha, 45, 10);
      vtipoliq := copy(linha, 16, 2);

      linha1 := arq[i + 1];

      vdatabx := copy(linha1, 138, 8);
      vdatabx := copy(vdatabx, 1, 2) + '/' + copy(vdatabx, 3, 2) + '/' + copy(vdatabx, 5, 4);

      vvalorbx := copy(linha1, 78, 15);
      vvalorbx := trim(floattostr(strtofloat(vvalorbx) / 100));

      vmodoliq1 := '00';
      vmodoliq2 := '00';
      vmodoliq3 := '00';
      vmodoliq4 := '00';
      vmodoliq5 := '00';

      vmodoliq1 := copy(linha, 214, 2);
      vmodoliq2 := copy(linha, 216, 2);
      vmodoliq3 := copy(linha, 218, 2);
      vmodoliq4 := copy(linha, 220, 2);
      vmodoliq5 := copy(linha, 222, 2);

      voblprotesto := '';

      // verificar posição dos campos

      vobldespcartorio := trim(copy(linha1, 108, 15));
      If vobldespcartorio <> '' Then
      Begin
        vobldespcartorio := trim(floattostr(strtofloat(vobldespcartorio) / 100));
      End
      Else
      Begin
        vobldespcartorio := '0';
      End;

      vobldespcob := trim(copy(linha1, 166, 15));
      If vobldespcob <> '' Then
      Begin
        vobldespcob := trim(floattostr(strtofloat(vobldespcob) / 100));
      End
      Else
      Begin
        vobldespcob := '0';
      End;

      vobloutrasdesp := trim(copy(linha, 199, 15));
      If vobloutrasdesp <> '' Then
      Begin
        vobloutrasdesp := trim(floattostr(strtofloat(vobloutrasdesp) / 100));
      End
      Else
      Begin
        vobloutrasdesp := '0';
      End;

      voblvalorabat := trim(copy(linha1, 48, 15));
      If voblvalorabat <> '' Then
      Begin
        voblvalorabat := trim(floattostr(strtofloat(voblvalorabat) / 100));
      End
      Else
      Begin
        voblvalorabat := '0';
      End;

      voblvalordesc := trim(copy(linha1, 33, 15));
      If voblvalordesc <> '' Then
      Begin
        voblvalordesc := trim(floattostr(strtofloat(voblvalordesc) / 100));
      End;

      voblvalorjuros := trim(copy(linha1, 18, 15));
      If voblvalorjuros <> '' Then
      Begin
        voblvalorjuros := trim(floattostr(strtofloat(voblvalorjuros) / 100));
      End;

      voblmulta := '0';

      rfi.close;
      rfi.SQL.clear;
      rfi.SQL.add('select * from rfi where bol.bolnossonumero=' + chr(39) + vnossonume + chr(39));
      rfi.open;

      rfi.close;
      rfi.SQL.clear;
      rfi.SQL.add('SELECT bol.rfichave, bol.bolchave, bol.gebcodigo,  v_rfi.etdcodigo, v_rfi.etdidentificacao, ');
      rfi.SQL.add('bol.bolnossonumero, v_rfi.rfinumero, v_rfi.rfivencimento, v_rfi.rfivalor, bol.sblcodigo, sbl.sblidentificacao,');
      rfi.SQL.add('v_rfi.carcodigo, car.caridentificacao, v_rfi.rfisaldocapital,  v_rfi.rfisaldogeral ');
      rfi.SQL.add('FROM bol, v_rfi, sbl,  car ');
      rfi.SQL.add(' WHERE bol.rfichave = v_rfi.rfichave AND bol.sblcodigo = sbl.sblcodigo AND v_rfi.carcodigo = car.carcodigo ');
      rfi.SQL.add('AND v_rfi.srfcodigo = 0 AND bol.sblcodigo <> 9 AND v_rfi.flacodigo = ' + acesso.Filial.ToString + ' ');
      rfi.SQL.add('bol.bolnossonumero=' + chr(39) + vnossonume + chr(39));
      rfi.open;

      vrfichave := rfi.Fieldbyname('rfichave').AsString;
      bolchave := rfi.Fieldbyname('rfichave').AsString;

      if rfi.IsEmpty then
      begin
        vrfichave := '0';
        erros.lines.add('Registro não localizado: ' + vnossonume + ' Arquivo: ' + narq + ' - ' + voblnumret)
      end;

      If (vtipoliq = '06') Or (vtipoliq = '15') Or (vtipoliq = '17') Then
      Begin

        If rfisrfcodigo.AsInteger = srfEmAberto Then
        Begin

          rfi.close;
          rfi.ParamByName('rfichave').AsString := vrfichave;
          rfi.open;
          if vrfichave <> '0' then
          begin

            rfi.edit;
            rfisrfcodigo.AsInteger := srfQuitado;
            rfirfidtultbaixa.AsFloat := strtodate(vdatabx);
            rfi.post;

            lte.Append;
            lteltedata.AsString := vdatabx;
            ltelteprincipal.AsString := vvalorbx;
            lteltejuros.AsString := voblvalorjuros;
            lteltedesconto.AsString := voblvalordesc;
            lteltetotal.AsCurrency := ltelteprincipal.AsCurrency + lteltejuros.AsCurrency - lteltedesconto.AsCurrency;
            ltelteextenso.AsString := '';
            lteltehistorico.AsString := 'Recebimento via retorno cobrança';
            lteltemulta.AsFloat := 0;
            lteltesituacao.AsInteger := 0;
            lteflacodigo.AsInteger := acesso.Filial;
            lteclbcodigo.AsInteger := acesso.Usuario;
            ltectacodigo.AsString := carctacodigo.AsString;
            ltelteregistro.AsString := agora(application, ZCone);
            lteltetroco.AsFloat := 0;
            lte.post;

            dtl.Append;
            dtlltechave.AsInteger := lteltechave.AsInteger;
            dtlcedcodigo.AsInteger := 1;
            dtldtlvalor.AsCurrency := lteltetotal.AsCurrency;
            dtlmdacodigo.AsInteger := mdaDinheiro;
            dtldtlvalorinfo.AsCurrency := lteltetotal.AsCurrency;
            dtl.post;

            // valor principal
            mfi.Append;
            mfirfichave.AsString := vrfichave;
            mfitmfcodigo.AsInteger := tmfRecebimento;
            mfimoecodigo.AsInteger := 1;
            mfimfivalor.AsString := vvalorbx;
            mfimfidata.AsString := vdatabx;
            mfimfihistorico.AsString := 'Recebimento Valor principal';
            mfimfivalorori.AsString := vvalorbx;
            mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
            mfiflacodigo.AsInteger := acesso.Filial;
            mfimfisituacao.AsInteger := 0;
            mfi.post;

            mlt.Append;
            mltmfichave.AsInteger := mfimfichave.AsInteger;
            mltltechave.AsInteger := lteltechave.AsInteger;
            mltflacodigo.AsInteger := acesso.Filial;
            mlt.post;

            // desconto concedido
            if voblvalorjuros <> '' then
            begin
              mfi.Append;
              mfirfichave.AsString := vrfichave;
              mfitmfcodigo.AsInteger := tmfRecebimentoJuros;
              mfimoecodigo.AsInteger := 1;
              mfimfivalor.AsString := voblvalorjuros;
              mfimfidata.AsString := vdatabx;
              mfimfihistorico.AsString := 'Desconto Concedido';
              mfimfivalorori.AsString := voblvalorjuros;
              mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
              mfiflacodigo.AsInteger := acesso.Filial;
              mfimfisituacao.AsInteger := 0;
              mfi.post;

              mlt.Append;
              mltmfichave.AsInteger := mfimfichave.AsInteger;
              mltltechave.AsInteger := lteltechave.AsInteger;
              mltflacodigo.AsInteger := acesso.Filial;
              mlt.post;
            end;

            // desconto concedido
            if voblvalordesc <> '' then
            begin
              mfi.Append;
              mfirfichave.AsString := vrfichave;
              mfitmfcodigo.AsInteger := tmfDescontoaDebito;
              mfimoecodigo.AsInteger := 1;
              mfimfivalor.AsString := voblvalordesc;
              mfimfidata.AsString := vdatabx;
              mfimfihistorico.AsString := 'Desconto Concedido';
              mfimfivalorori.AsString := voblvalordesc;
              mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
              mfiflacodigo.AsInteger := acesso.Filial;
              mfimfisituacao.AsInteger := 0;
              mfi.post;

              mlt.Append;
              mltmfichave.AsInteger := mfimfichave.AsInteger;
              mltltechave.AsInteger := lteltechave.AsInteger;
              mltflacodigo.AsInteger := acesso.Filial;
              mlt.post;

            end;

            cco.Append;
            ccoctacodigo.AsString := carctacodigo.AsString;
            ccoccoemissao.AsString := vdatabx;
            ccoccovencimento.AsString := vdatabx;
            ccotoccodigo.AsInteger := tocNormal;
            ccocedcodigo.AsInteger := cedcredito;
            ccoclbcodigo.AsInteger := acesso.Usuario;
            ccotficodigo.AsInteger := tfiOutros;
            ccomoecodigo.AsInteger := 1;
            ccocconumero.AsString := '';
            ccoccohistorico.AsString := 'Recebimento via retorno cobrança';
            ccoccovalor.AsCurrency := lteltetotal.AsCurrency;
            ccoccochaveorig.AsInteger := 0;
            ccoccochavedest.AsInteger := 0;
            ccoccoconciliado.AsInteger := 1;
            ccoccoextenso.AsString := '';
            ccoetdcodigo.AsInteger := rfietdcodigo.AsInteger;
            ccoccodatamov.AsString := hoje(application, ZCone);
            ccoccodataregistro.AsString := hoje(application, ZCone);
            ccoccohoraregistro.AsDateTime := Now;
            if rfietdcodigo.AsString <> '' then
            begin
              consulta.close;
              consulta.SQL.Text := 'select etdidentificacao from etd where etdcodigo=' + rfietdcodigo.AsString;
              consulta.open;
              if not consulta.IsEmpty then
              begin
                ccoccofavorecido.AsString := consulta.Fieldbyname('etdidentificacao').AsString;
              end
              else
              begin
                ccoccofavorecido.AsString := '';
              end;
            end
            else
            begin
              ccoccofavorecido.AsString := '';
            end;
            ccophgcodigo.AsInteger := 0;
            ccoflacodigo.AsInteger := acesso.Filial;
            cco.post;

            cbl.Append;
            cbloblchave.AsInteger := obloblchave.AsInteger;
            cblccochave.AsInteger := ccoccochave.AsInteger;
            cbl.post;

            clt.Append;
            cltccochave.AsInteger := ccoccochave.AsInteger;
            cltltechave.AsInteger := lteltechave.AsInteger;
            clt.post;

          end;
        End;

      End;

      If Not obl.Active Then
      Begin
        obl.open;
      End;

      If Not oto.Active Then
      Begin
        oto.open;
      End;

      If Not omo.Active Then
      Begin
        omo.open;
      End;

      pode := true;

      consulta.close;
      consulta.SQL.Text := 'select oblchave from obl,bol where obl.bolchave=bol.bolchave and ' + 'bol.rfichave=' + vrfichave + ' and obldata=' + chr(39) +
        FormatDateTime('yyyy-mm-dd', strtodate(vdatabx)) + chr(39) + ' and oblvalor=' + BuscaTroca(vvalorbx, ',', '.') + ' and oblnumret=' + chr(39) + voblnumret + chr(39) +
        ' and oblnossonume=' + chr(39) + vnossonume + chr(39);
      consulta.open;

      consulta.First;
      while not consulta.Eof do
      begin

        chaveobl := consulta.Fields[0].AsString;

        if oto.Locate('oblchave;tobcodigo', VarArrayOf([chaveobl, buscatob(vtipoliq, vbco)]), []) then
        begin

          pode := false;

          If (vmodoliq1 <> '00') And (trim(vmodoliq1) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([chaveobl, buscamob(vmodoliq1, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

          If (vmodoliq2 <> '00') And (trim(vmodoliq2) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([chaveobl, buscamob(vmodoliq2, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

          If (vmodoliq3 <> '00') And (trim(vmodoliq3) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([chaveobl, buscamob(vmodoliq3, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

          If (vmodoliq4 <> '00') And (trim(vmodoliq4) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([chaveobl, buscamob(vmodoliq4, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

          If (vmodoliq5 <> '00') And (trim(vmodoliq5) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([chaveobl, buscamob(vmodoliq5, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

        end;

        consulta.Next;

      end;

      if pode then
      begin
        If Not obl.Active Then
        Begin
          obl.open;
        End;

        Try
          obl.Append;
          oblobldata.AsFloat := strtodate(vdatabx);
          obloblvalor.AsFloat := strtofloat(vvalorbx);
          obltobcodigo.AsString := buscatob(vtipoliq, vbco);
          oblbolchave.AsString := bolchave;
          obl.post;

          { oblcarnumarqrem.AsString := narq;
            oblobldespcartorio.AsFloat := strtofloat(vobldespcartorio);
            oblobldespcob.AsFloat := strtofloat(vobldespcob);
            oblobloutrasdesp.AsFloat := strtofloat(vobloutrasdesp);
            obloblvalorabat.AsFloat := strtofloat(voblvalorabat);
            obloblvalordesc.AsFloat := strtofloat(voblvalordesc);
            obloblvalorjuros.AsFloat := strtofloat(voblvalorjuros);
            obloblmulta.AsFloat := strtofloat(voblmulta);
            obloblnumret.AsString := voblnumret;
            oblobldataarq.AsFloat := strtodate(vdataar);
            obloblnossonume.AsString := vnossonume;
            obloblprotesto.AsString := voblprotesto; }

          If Not oto.Active Then
          Begin
            oto.open;
          End;
          Try
            oto.Append;
            otooblchave.AsInteger := obloblchave.AsInteger;
            ototobcodigo.AsString := buscatob(vtipoliq, vbco);
            oto.post;
          Except
            erros.lines.add('Registro com nosso numero: ' + vnossonume + ' não foi localizado! Liq:' + vtipoliq + ' Bco: ' + vbco);
          End;

          If Not omo.Active Then
          Begin
            omo.open;
          End;

          If (vmodoliq1 <> '00') And (trim(vmodoliq1) <> '') Then
          Begin
            omo.Append;
            omooblchave.AsInteger := obloblchave.AsInteger;
            omomobcodigo.AsString := buscamob(vmodoliq1, vbco, vtipoliq);
            omo.post;
          End;

          If (vmodoliq2 <> '00') And (trim(vmodoliq2) <> '') Then
          Begin
            omo.Append;
            omooblchave.AsInteger := obloblchave.AsInteger;
            omomobcodigo.AsString := buscamob(vmodoliq2, vbco, vtipoliq);
            omo.post;
          End;

          If (vmodoliq3 <> '00') And (trim(vmodoliq3) <> '') Then
          Begin
            omo.Append;
            omooblchave.AsInteger := obloblchave.AsInteger;
            omomobcodigo.AsString := buscamob(vmodoliq3, vbco, vtipoliq);
            omo.post;
          End;

          If (vmodoliq4 <> '00') And (trim(vmodoliq4) <> '') Then
          Begin
            omo.Append;
            omooblchave.AsInteger := obloblchave.AsInteger;
            omomobcodigo.AsString := buscamob(vmodoliq4, vbco, vtipoliq);
            omo.post;
          End;

          If (vmodoliq5 <> '00') And (trim(vmodoliq5) <> '') Then
          Begin
            omo.Append;
            omooblchave.AsInteger := obloblchave.AsInteger;
            omomobcodigo.AsString := buscamob(vmodoliq5, vbco, vtipoliq);
            omo.post;
          End;

        Except
          If rfi.State <> dsbrowse Then
          Begin
            rfi.Cancel;
          End;

          If obl.State <> dsbrowse Then
          Begin
            obl.Cancel;
          End;

          If oto.State <> dsbrowse Then
          Begin
            oto.Cancel;
          End;

          If omo.State <> dsbrowse Then
          Begin
            omo.Cancel;
          End;

          erros.lines.add('Registro não localizado: ' + vnossonume + ' Arquivo: ' + narq + ' - ' + voblnumret)

        End;
      end;

      omo.close;
      oto.close;
      obl.close;
    End;
  End;
End;

Procedure Tfbolreb.processabaixa;
Var
  i: integer;
  { vnossonume: String;

    vtipoliq: String;
    vbco: String;

    vmodoliq1: String;
    vmodoliq2: String;
    vmodoliq3: String;
    vmodoliq4: String;
    vmodoliq5: String;

    vobldespcob: String;
    vobloutrasdesp: String;
    voblvalorabat: String;
    voblvalordesc: String;
    voblvalorjuros: String;
    voblnumret: String;
    vcNumeroTitulo: string;
    voValorTitulo:string;

    voblmulta: String;
    voblprotesto: String;

    vdatabx: String;
    vvalorbx: String;
    vdataar: String;

    vdatacc: String;
    linha: String;

    pode: Boolean;
    vrfichave, bolchave: String;
  }

  vLiquidacao: boolean;
  vlNumeroDocumento: string;
  vlSeuDocumento: string;
  vlNossonumero: string;
  vlDescricaoOcorrencia: string;
  vlValorDocumento: string;
  vlValorPago: string;

  vlbaixa: string;

  vlobldespcob: string;
  vlobloutrasdesp: string;
  vloblvalorabat: string;
  vloblvalordesc: string;
  vloblvalorjuros: string;
  vloblnumret: string;

  vlnossonume: string;

  vlvalorjuros: string;
  vlvalorMulta: string;
  vlvalorDesconto: string;
  vldespcob: string;
  vldataar: string;
  vldatabx: string;

  vlNumeroTitulo: string;

  vlrfichave: string;
  vlnumret: string;
  vlnossonumemascarado: string;

  vLtipoliq: string;
  vlbco: string;
  vlOblCodigo: string;

Begin
  cfg.close;
  cfg.ParamByName('cfgcodigo').AsInteger := acesso.Filial;
  cfg.open;

  lte.open;
  dtl.open;
  mfi.open;
  mlt.open;
  cco.open;
  cbl.open;
  clt.open;

  { 48 a 56 - Identificação do nosso número - com digito.
    109 a 110 - Código 06 (Liquidação normal) - Existem outras ocorrências.
    111 a 116 - Data da ocorrência
    254 a 266 - Valor efetivamente pago
    329 a 336 - Data prevista para lçto na CC }

  vlobldespcob := '0';
  vlobloutrasdesp := '0';
  vloblvalorabat := '0';
  vloblvalordesc := '0';
  vloblvalorjuros := '0';
  vloblnumret := '';

  // ----------------------------------------------------------------------------
  for i := 0 to ACBrBoleto.ListadeBoletos.Count - 1 do
  begin
    vlbaixa := '0,00';
    // --------------------------------------------------------------------------
    // Conforme os códigos de ocorrencia você analisa o tipo de ocorrencia : Entrada, baixa, liquidação,,etc..
    //
    vLiquidacao := false;
    vlOblCodigo := copy(ACBrBoleto.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao, 1, 2);

    tob.close;
    tob.ParamByName('bcocodigo').AsString := self.carbcocodigo.AsString;
    tob.ParamByName('tobreferencia').AsString := vlOblCodigo;
    tob.open;

    vlOblCodigo := tob.Fieldbyname('tobreferencia').AsString;

    if ((vlOblCodigo = '06') or (vlOblCodigo = '15') ) and ((self.carbcocodigo.AsString = '748') or (self.carbcocodigo.AsString = '001') or (self.carbcocodigo.AsString = '341')) then
    begin
      vLiquidacao := true;
      vlOblCodigo := tob.Fieldbyname('tobcodigo').AsString;
    end
    else
    begin
      vLiquidacao := false;
      vlOblCodigo := tob.Fieldbyname('tobcodigo').AsString;
    end;

    if vLiquidacao then
    begin

      vlbaixa := trim(FormatFloat('0.,00', ACBrBoleto.ListadeBoletos.Objects[i].ValorRecebido));
      vlNumeroDocumento := trim(ACBrBoleto.ListadeBoletos.Objects[i].NumeroDocumento);
      vlSeuDocumento := trim(ACBrBoleto.ListadeBoletos.Objects[i].SeuNumero);

      vlnossonume := SoNumeros(trim(ACBrBoleto.ListadeBoletos.Objects[i].NossoNumero));
      vlDescricaoOcorrencia := trim(ACBrBoleto.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao);

      vlValorDocumento := FormatFloat('0.,00', ACBrBoleto.ListadeBoletos.Objects[i].ValorDocumento);
      vlvalorjuros := FormatFloat('0.,00', ACBrBoleto.ListadeBoletos.Objects[i].ValorMoraJuros);
      vlvalorMulta := '0';
      vlvalorDesconto := FormatFloat('0.,00', ACBrBoleto.ListadeBoletos.Objects[i].ValorDesconto);

      vlValorPago := FormatFloat('0.,00', ACBrBoleto.ListadeBoletos.Objects[i].ValorPago);

      vldespcob := FormatFloat('0.,00', ACBrBoleto.ListadeBoletos.Objects[i].ValorDespesaCobranca);
      vldataar := datetostr(ACBrBoleto.ListadeBoletos.Objects[i].DataOcorrencia);
      vldatabx := datetostr(ACBrBoleto.ListadeBoletos.Objects[i].DataOcorrencia);

      vlnossonumemascarado := copy(vlnossonume, 1, 2) + '/' + copy(vlnossonume, 3, 6) + '-' + copy(vlnossonume, 9, 1);

      vLtipoliq := copy(ACBrBoleto.ListadeBoletos.Objects[i].OcorrenciaOriginal.Descricao, 1, 2);

      vlbco := ACBrBoleto.ListadeBoletos.Objects[i].OcorrenciaOriginal.CodigoBanco;

      vlbaixa := StringReplace(vlbaixa, '.', '', [rfReplaceAll, rfIgnoreCase]);

      vlvalorjuros := StringReplace(vlvalorjuros, '.', '', [rfReplaceAll, rfIgnoreCase]);
      vlvalorDesconto := StringReplace(vlvalorDesconto, '.', '', [rfReplaceAll, rfIgnoreCase]);

      vlNumeroTitulo := vlSeuDocumento;

    end
    else
    begin
      vldataar := datetostr(ACBrBoleto.ListadeBoletos.Objects[i].DataOcorrencia);
      vldatabx := datetostr(ACBrBoleto.ListadeBoletos.Objects[i].DataOcorrencia);
    end;

    if vLiquidacao then
    begin
      rfibol.close;
      rfibol.SQL.clear;
      rfibol.SQL.Text := 'select * from rfi,bol WHERE bol.rfichave=rfi.rfichave and  bol.bolnossonumero like (' + QuotedStr(vlnossonumemascarado + '%') + ')';
      rfibol.open;

      if rfibol.IsEmpty then
      begin
        rfibol.close;
        rfibol.SQL.clear;
        rfibol.SQL.Text := 'select * from rfi,bol WHERE bol.rfichave=rfi.rfichave and  ' + ' (rfi.rfinumero=' + QuotedStr(vlNumeroTitulo) + ') ';
        rfibol.open;

      end;

      vlrfichave := rfibol.Fieldbyname('rfichave').AsString;

      if rfibol.IsEmpty then
      begin
        vlrfichave := '0';
        erros.lines.add('Registro não localizado: ' + vlnossonume + ' Arquivo: ' + vlnumret);
      end
      else
      begin
        rfi.close;
        rfi.ParamByName('rfichave').AsString := vlrfichave;
        rfi.open;
        erros.lines.add('Registro localizado: ' + vlNumeroTitulo + ' Chave: ' + vlrfichave);

      end;

      If rfisrfcodigo.AsInteger = srfEmAberto Then
      Begin
        rfi.close;
        rfi.ParamByName('rfichave').AsString := vlrfichave;
        rfi.open;

        if (vlrfichave <> '0') and (vlbaixa <> '0,00') then
        begin

          erros.lines.add('Registro baixado: ' + vlNumeroTitulo + ' Chave: ' + vlrfichave);

          rfi.edit;
          rfisrfcodigo.AsInteger := srfQuitado;
          rfirfidtultbaixa.AsFloat := strtodate(vldatabx);
          rfirfibaixamanual.AsInteger := 0;
          rfi.post;

          bol.close;
          bol.ParamByName('bolchave').AsString := rfibol.Fieldbyname('bolchave').AsString;
          bol.open;

          if not bol.IsEmpty then
          begin
            bol.edit;
            bolbolarquivodebaixa.AsString := ACBrBoleto.NomeArqRetorno;
            bolboldatahoraretorno.AsString := agora(application, ZCone);
            bol.post;
          end;

          lte.Append;
          lteltedata.AsString := vldatabx;
          ltelteprincipal.AsCurrency := strtofloat(vlbaixa) - (strtofloat(vlvalorjuros) + strtofloat(vlvalorMulta));
          lteltejuros.AsCurrency := strtofloat(vlvalorjuros) + strtofloat(vlvalorMulta);
          lteltedesconto.AsString := vlvalorDesconto;
          lteltetotal.AsCurrency := ltelteprincipal.AsCurrency + lteltejuros.AsCurrency - lteltedesconto.AsCurrency;
          ltelteextenso.AsString := '';
          lteltehistorico.AsString := 'Recebimento via retorno cobrança';
          lteltemulta.AsFloat := 0;
          lteltesituacao.AsInteger := 0;
          lteflacodigo.AsInteger := acesso.Filial;
          lteclbcodigo.AsInteger := acesso.Usuario;
          ltectacodigo.AsString := carctacodigo.AsString;
          ltelteregistro.AsString := agora(application, ZCone);
          lteltetroco.AsFloat := 0;
          lte.post;

          dtl.Append;
          dtlltechave.AsInteger := lteltechave.AsInteger;
          dtlcedcodigo.AsInteger := 1;
          dtldtlvalor.AsCurrency := lteltetotal.AsCurrency;
          dtlmdacodigo.AsInteger := mdaDinheiro;
          dtldtlvalorinfo.AsCurrency := lteltetotal.AsCurrency;
          dtl.post;

          // valor principal
          mfi.Append;
          mfirfichave.AsString := vlrfichave;
          mfitmfcodigo.AsInteger := tmfRecebimento;
          mfimoecodigo.AsInteger := 1;
          mfimfivalor.AsCurrency := strtofloat(vlbaixa) - (strtofloat(vlvalorjuros) + strtofloat(vlvalorMulta));
          mfimfidata.AsString := vldatabx;
          mfimfihistorico.AsString := 'Recebimento Valor principal';
          mfimfivalorori.AsCurrency := strtofloat(vlbaixa) - (strtofloat(vlvalorjuros) + strtofloat(vlvalorMulta));
          mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
          mfiflacodigo.AsInteger := acesso.Filial;
          mfimfisituacao.AsInteger := 0;
          mfi.post;

          mlt.Append;
          mltmfichave.AsInteger := mfimfichave.AsInteger;
          mltltechave.AsInteger := lteltechave.AsInteger;
          mltflacodigo.AsInteger := acesso.Filial;
          mlt.post;

          // desconto concedido
          if (vlvalorjuros <> '') and (vlvalorjuros <> '0') then
          begin
            mfi.Append;
            mfirfichave.AsString := vlrfichave;
            mfitmfcodigo.AsInteger := tmfRecebimentoJuros;
            mfimoecodigo.AsInteger := 1;
            mfimfivalor.AsCurrency := strtofloat(vlvalorjuros) + strtofloat(vlvalorMulta);
            mfimfidata.AsString := vldatabx;
            mfimfihistorico.AsString := 'Rcto Juros Concedido';
            mfimfivalorori.AsString := vlvalorjuros;
            mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
            mfiflacodigo.AsInteger := acesso.Filial;
            mfimfisituacao.AsInteger := 0;
            mfi.post;

            mlt.Append;
            mltmfichave.AsInteger := mfimfichave.AsInteger;
            mltltechave.AsInteger := lteltechave.AsInteger;
            mltflacodigo.AsInteger := acesso.Filial;
            mlt.post;
          end;

          // desconto concedido
          if (vlvalorDesconto <> '') and (vlvalorDesconto <> '0') then
          begin
            mfi.Append;
            mfirfichave.AsString := vlrfichave;
            mfitmfcodigo.AsInteger := tmfDescontoaDebito;
            mfimoecodigo.AsInteger := 1;
            mfimfivalor.AsString := vlvalorDesconto;
            mfimfidata.AsString := vldatabx;
            mfimfihistorico.AsString := 'Desconto Concedido';
            mfimfivalorori.AsString := vlvalorDesconto;
            mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
            mfiflacodigo.AsInteger := acesso.Filial;
            mfimfisituacao.AsInteger := 0;
            mfi.post;

            mlt.Append;
            mltmfichave.AsInteger := mfimfichave.AsInteger;
            mltltechave.AsInteger := lteltechave.AsInteger;
            mltflacodigo.AsInteger := acesso.Filial;
            mlt.post;

          end;

          cco.Append;
          ccoctacodigo.AsString := carctacodigo.AsString;
          ccoccoemissao.AsString := vldatabx;
          ccoccovencimento.AsString := vldatabx;
          ccotoccodigo.AsInteger := tocNormal;
          ccocedcodigo.AsInteger := cedcredito;
          ccoclbcodigo.AsInteger := acesso.Usuario;
          ccotficodigo.AsInteger := tfiOutros;
          ccomoecodigo.AsInteger := 1;
          ccocconumero.AsString := '';
          ccoccohistorico.AsString := 'Recto Título Nº: ' + vlNumeroTitulo;
          ccoccovalor.AsCurrency := lteltetotal.AsCurrency;
          ccoccochaveorig.AsInteger := 0;
          ccoccochavedest.AsInteger := 0;
          ccoccoconciliado.AsInteger := 1;
          ccoccoextenso.AsString := '';
          ccoetdcodigo.AsInteger := rfietdcodigo.AsInteger;
          ccoccodatamov.AsString := hoje(application, ZCone);
          ccoccodataregistro.AsString := hoje(application, ZCone);
          ccoccohoraregistro.AsDateTime := Now;
          if rfietdcodigo.AsString <> '' then
          begin
            consulta.close;
            consulta.SQL.Text := 'select etdidentificacao from etd where etdcodigo=' + rfietdcodigo.AsString;
            consulta.open;
            if not consulta.IsEmpty then
            begin
              ccoccofavorecido.AsString := consulta.Fieldbyname('etdidentificacao').AsString;
            end
            else
            begin
              ccoccofavorecido.AsString := '';
            end;
          end
          else
          begin
            ccoccofavorecido.AsString := '';
          end;

          ccophgcodigo.AsInteger := cfgphgbaixa.AsInteger;
          ccoflacodigo.AsInteger := acesso.Filial;
          cco.post;

          obl.close;
          obl.ParamByName('bolchave').AsString := rfibol.Fieldbyname('bolchave').AsString;
          obl.open;

          if obl.Locate('bolchave;tobcodigo', VarArrayOf([rfibol.Fieldbyname('bolchave').AsString, vlOblCodigo]), []) then
            obl.edit
          else
            obl.Append;

          oblobldata.AsFloat := strtodate(vldatabx);
          obloblvalor.AsFloat := strtofloat(vlbaixa);
          obltobcodigo.AsString := vlOblCodigo; // buscatob(vLtipoliq, vlbco);
          oblbolchave.AsString := rfibol.Fieldbyname('bolchave').AsString;
          obloblnumret.AsString := ACBrBoleto.NomeArqRetorno;
          obl.post;

          { cbl.Append;
            cbloblchave.AsInteger := obloblchave.AsInteger;
            cblccochave.AsInteger := ccoccochave.AsInteger;
            cbl.post; }

          clt.Append;
          cltccochave.AsInteger := ccoccochave.AsInteger;
          cltltechave.AsInteger := lteltechave.AsInteger;
          clt.post;

        end;
      End
      else
      begin

        if rfibol.Fieldbyname('bolchave').AsString <> '' then
        begin

          obl.close;
          obl.ParamByName('bolchave').AsString := rfibol.Fieldbyname('bolchave').AsString;
          obl.open;

          { if vlOblCodigo = '84' then
            begin

            rfi.close;
            rfi.ParamByName('rfichave').AsString := rfibol.Fieldbyname('rfichave').AsString;
            rfi.open;

            rfi.edit;
            rfirfibaixamanual.AsInteger := 2;
            rfi.post;

            consulta.close;
            consulta.SQL.Text := 'select rfidtultbaixa from v_rfi where rfichave=' + rfibol.Fieldbyname('rfichave').AsString;
            consulta.open;

            if obl.Locate('bolchave;tobcodigo', VarArrayOf([rfibol.Fieldbyname('bolchave').AsString, '85']), []) then
            obl.edit
            else
            obl.Append;

            oblobldata.AsFloat := strtodate(vldatabx);
            obloblvalor.AsFloat := strtofloat(vlbaixa);
            obltobcodigo.AsString := '85'; // buscatob(vLtipoliq, vlbco);
            oblbolchave.AsString := rfibol.Fieldbyname('bolchave').AsString;
            obloblnumret.AsString := ACBrBoleto.NomeArqRetorno;
            oblobldatabaixamanual.AsString := consulta.Fieldbyname('rfidtultbaixa').AsString;
            obl.post;

            end
            else
            begin }

          consulta.close;
          consulta.SQL.Text := 'select rfidtultbaixa from v_rfi where rfichave=' + rfibol.Fieldbyname('rfichave').AsString;
          consulta.open;

          rfi.close;
          rfi.ParamByName('rfichave').AsString := rfibol.Fieldbyname('rfichave').AsString;
          rfi.open;

          rfi.edit;
          rfirfibaixamanual.AsInteger := 2;
          rfi.post;

          obl.close;
          obl.ParamByName('bolchave').AsString := rfibol.Fieldbyname('bolchave').AsString;
          obl.open;

          if obl.Locate('bolchave;tobcodigo', VarArrayOf([rfibol.Fieldbyname('bolchave').AsString, vlOblCodigo]), []) then
            obl.edit
          else
            obl.Append;

          oblobldata.AsFloat := strtodate(vldatabx);
          obloblvalor.AsFloat := strtofloat(vlbaixa);
          obltobcodigo.AsString := vlOblCodigo; // buscatob(vLtipoliq, vlbco);
          oblbolchave.AsString := rfibol.Fieldbyname('bolchave').AsString;
          obloblnumret.AsString := ACBrBoleto.NomeArqRetorno;
          if consulta.Fieldbyname('rfidtultbaixa').AsString <> '' then
          begin
            oblobldatabaixamanual.AsString := consulta.Fieldbyname('rfidtultbaixa').AsString;
          end;
          obl.post;

          { end; }
        end;

      end;

    end
    else
    begin

      rfibol.close;
      rfibol.SQL.clear;
      rfibol.SQL.Text := 'select * from rfi,bol WHERE bol.rfichave=rfi.rfichave and  bol.bolnossonumero like (' + QuotedStr(vlnossonumemascarado + '%') + ')';
      rfibol.open;

      if rfibol.IsEmpty then
      begin
        rfibol.close;
        rfibol.SQL.clear;
        rfibol.SQL.Text := 'select * from rfi,bol WHERE bol.rfichave=rfi.rfichave and  ' + ' (rfi.rfinumero=' + QuotedStr(vlNumeroTitulo) + ') ';
        rfibol.open;

      end;

      vlrfichave := rfibol.Fieldbyname('rfichave').AsString;

      if rfibol.Fieldbyname('bolchave').AsString <> '' then
      begin
        obl.close;
        obl.ParamByName('bolchave').AsString := rfibol.Fieldbyname('bolchave').AsString;
        obl.open;

        if obl.Locate('bolchave;tobcodigo', VarArrayOf([rfibol.Fieldbyname('bolchave').AsString, vlOblCodigo]), []) then
          obl.edit
        else
          obl.Append;

        oblobldata.AsFloat := strtodate(vldatabx);
        obloblvalor.AsFloat := strtofloat(vlbaixa);
        obltobcodigo.AsString := vlOblCodigo; // buscatob(vLtipoliq, vlbco);
        oblbolchave.AsString := rfibol.Fieldbyname('bolchave').AsString;
        obloblnumret.AsString := ACBrBoleto.NomeArqRetorno;
        obl.post;
      end;
    end;
  end;

End;

Procedure Tfbolreb.processa400(arq: tstringlist; narq: String);
Var
  i: integer;
  vnossonume: String;

  vtipoliq: String;
  vbco: String;

  vmodoliq1: String;
  vmodoliq2: String;
  vmodoliq3: String;
  vmodoliq4: String;
  vmodoliq5: String;

  vobldespcob: String;
  vobloutrasdesp: String;
  voblvalorabat: String;
  voblvalordesc: String;
  voblvalorjuros: String;
  voblnumret: String;
  vcNumeroTitulo: string;
  voValorTitulo: string;

  voblmulta: String;
  voblprotesto: String;

  vdatabx: String;
  vvalorbx: String;
  vdataar: String;

  vdatacc: String;
  linha: String;

  pode: boolean;
  vrfichave, bolchave: String;
  vvlbaixa: Double;
  vLiquidacao: boolean;

Begin
  cfg.close;
  cfg.ParamByName('cfgcodigo').AsInteger := acesso.Filial;
  cfg.open;
  lte.open;
  dtl.open;
  mfi.open;
  mlt.open;
  cco.open;
  cbl.open;
  clt.open;

  { 48 a 56 - Identificação do nosso número - com digito.
    109 a 110 - Código 06 (Liquidação normal) - Existem outras ocorrências.
    111 a 116 - Data da ocorrência
    254 a 266 - Valor efetivamente pago
    329 a 336 - Data prevista para lçto na CC }

  vobldespcob := '0';
  vobloutrasdesp := '0';
  voblvalorabat := '0';
  voblvalordesc := '0';
  voblvalorjuros := '0';
  voblnumret := '';

  For i := 0 To arq.Count - 1 Do
  Begin
    linha := arq[i];

    If i = 0 Then
    Begin
      vbco := copy(linha, 77, 3);

      If vbco = '748' Then // bco sicredi
      Begin
        voblnumret := copy(linha, 111, 7);
        vdataar := copy(linha, 95, 8);
        vdataar := copy(vdataar, 7, 2) + '/' + copy(vdataar, 5, 2) + '/' + copy(vdataar, 1, 4);

      End
      Else If vbco = '237' Then // bco sicredi
      Begin
        voblnumret := copy(linha, 109, 5);
        vdataar := copy(linha, 95, 6);
        vdataar := copy(vdataar, 1, 2) + '/' + copy(vdataar, 3, 2) + '/20' + copy(vdataar, 5, 2);
      End;
    End;

    If (copy(linha, 1, 1) <> '0') And (copy(linha, 1, 1) <> '9') Then
    Begin

      If vbco = '748' Then // bco sicredi  17/200112-3
      Begin

        vnossonume := copy(linha, 48, 8);
        vnossonume := copy(vnossonume, 1, 2) + '/' + copy(vnossonume, 3, 6);
        voValorTitulo := copy(linha, 154, 12);
      End
      Else If vbco = '237' Then // bco sicredi
      Begin
        vnossonume := copy(linha, 71, 11); // sem digito verificador
        voValorTitulo := copy(linha, 154, 12);
      End;

      vcNumeroTitulo := trim(copy(linha, 117, 10));

      rfibol.close;
      rfibol.SQL.clear;
      rfibol.SQL.Text := 'select * from rfi,bol WHERE bol.rfichave=rfi.rfichave and  bol.bolnossonumero like (' + QuotedStr(vnossonume + '%') + ')';
      rfibol.open;

      if rfibol.IsEmpty then
      begin
        rfibol.close;
        rfibol.SQL.clear;
        rfibol.SQL.Text := 'select * from rfi,bol WHERE bol.rfichave=rfi.rfichave and  ' + ' (rfi.rfinumero=' + QuotedStr(vcNumeroTitulo) + ') ';
        rfibol.open;

      end;

      vrfichave := rfibol.Fieldbyname('rfichave').AsString;

      if rfibol.IsEmpty then
      begin
        vrfichave := '0';
        erros.lines.add('Registro não localizado: ' + vnossonume + ' Arquivo: ' + narq + ' - ' + voblnumret);
      end
      else
      begin
        rfi.close;
        rfi.ParamByName('rfichave').AsString := vrfichave;
        rfi.open;
        erros.lines.add('Registro localizado: ' + vcNumeroTitulo + ' Chave: ' + vrfichave);
      end;

      vtipoliq := copy(linha, 109, 2);

      vmodoliq1 := '00';
      vmodoliq2 := '00';
      vmodoliq3 := '00';
      vmodoliq4 := '00';
      vmodoliq5 := '00';

      vmodoliq1 := copy(linha, 319, 2);
      vmodoliq2 := copy(linha, 321, 2);
      vmodoliq3 := copy(linha, 323, 2);
      vmodoliq4 := copy(linha, 325, 2);
      vmodoliq5 := copy(linha, 327, 2);

      voblprotesto := copy(linha, 295, 1);

      vdatabx := copy(linha, 111, 6);
      vdatabx := copy(vdatabx, 1, 2) + '/' + copy(vdatabx, 3, 2) + '/20' + copy(vdatabx, 5, 2);

      vvalorbx := trim(copy(linha, 254, 13));

      If vvalorbx <> '' Then
      Begin
        vvalorbx := trim(floattostr(strtofloat(vvalorbx) / 100));
      End
      Else
      Begin
        vvalorbx := '0';
      End;

      vdatacc := copy(linha, 111, 6);

      vobldespcob := trim(copy(linha, 176, 13));
      If vobldespcob <> '' Then
      Begin
        vobldespcob := trim(floattostr(strtofloat(vobldespcob) / 100));
      End
      Else
      Begin
        vobldespcob := '0';
      End;

      vobloutrasdesp := trim(copy(linha, 189, 13));
      If vobloutrasdesp <> '' Then
      Begin
        vobloutrasdesp := trim(floattostr(strtofloat(vobloutrasdesp) / 100));
      End
      Else
      Begin
        vobloutrasdesp := '0';
      End;

      voblvalorabat := trim(copy(linha, 228, 13));
      If voblvalorabat <> '' Then
      Begin
        voblvalorabat := trim(floattostr(strtofloat(voblvalorabat) / 100));
      End
      Else
      Begin
        voblvalorabat := '0';
      End;

      voblvalordesc := trim(copy(linha, 241, 13));
      If voblvalordesc <> '' Then
      Begin
        voblvalordesc := trim(floattostr(strtofloat(voblvalordesc) / 100));
      End;

      voblvalorjuros := trim(copy(linha, 267, 13));
      If voblvalorjuros <> '' Then
      Begin
        voblvalorjuros := trim(floattostr(strtofloat(voblvalorjuros) / 100));
      End;

      voblmulta := trim(copy(linha, 280, 13));
      If voblmulta <> '' Then
      Begin
        voblmulta := trim(floattostr(strtofloat(voblmulta) / 100));
      End;

      if vbco = '748' then
      begin

        If (vtipoliq = '06') Or (vtipoliq = '17') Or (vtipoliq = '15') Then
        Begin

          If rfisrfcodigo.AsInteger = srfEmAberto Then
          Begin
            rfi.close;
            rfi.ParamByName('rfichave').AsString := vrfichave;
            rfi.open;

            if vrfichave <> '0' then
            begin
              rfi.edit;
              rfisrfcodigo.AsInteger := srfQuitado;
              rfirfidtultbaixa.AsFloat := strtodate(vdatabx);
              rfi.post;

              lte.Append;
              lteltedata.AsString := vdatabx;
              ltelteprincipal.AsCurrency := strtofloat(vvalorbx) - (strtofloat(voblvalorjuros) + strtofloat(voblmulta));
              lteltejuros.AsCurrency := strtofloat(voblvalorjuros) + strtofloat(voblmulta);
              lteltedesconto.AsString := voblvalordesc;
              lteltetotal.AsCurrency := ltelteprincipal.AsCurrency + lteltejuros.AsCurrency - lteltedesconto.AsCurrency;
              ltelteextenso.AsString := '';
              lteltehistorico.AsString := 'Recebimento via retorno cobrança';
              lteltemulta.AsFloat := 0;
              lteltesituacao.AsInteger := 0;
              lteflacodigo.AsInteger := acesso.Filial;
              lteclbcodigo.AsInteger := acesso.Usuario;
              ltectacodigo.AsString := carctacodigo.AsString;
              ltelteregistro.AsString := agora(application, ZCone);
              lteltetroco.AsFloat := 0;
              lte.post;

              dtl.Append;
              dtlltechave.AsInteger := lteltechave.AsInteger;
              dtlcedcodigo.AsInteger := 1;
              dtldtlvalor.AsCurrency := lteltetotal.AsCurrency;
              dtlmdacodigo.AsInteger := mdaDinheiro;
              dtldtlvalorinfo.AsCurrency := lteltetotal.AsCurrency;
              dtl.post;

              // valor principal
              mfi.Append;
              mfirfichave.AsString := vrfichave;
              mfitmfcodigo.AsInteger := tmfRecebimento;
              mfimoecodigo.AsInteger := 1;
              mfimfivalor.AsCurrency := strtofloat(vvalorbx) - (strtofloat(voblvalorjuros) + strtofloat(voblmulta));
              mfimfidata.AsString := vdatabx;
              mfimfihistorico.AsString := 'Recebimento Valor principal';
              mfimfivalorori.AsCurrency := strtofloat(vvalorbx) - (strtofloat(voblvalorjuros) + strtofloat(voblmulta));
              mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
              mfiflacodigo.AsInteger := acesso.Filial;
              mfimfisituacao.AsInteger := 0;
              mfi.post;

              mlt.Append;
              mltmfichave.AsInteger := mfimfichave.AsInteger;
              mltltechave.AsInteger := lteltechave.AsInteger;
              mltflacodigo.AsInteger := acesso.Filial;
              mlt.post;

              // desconto concedido
              if (voblvalorjuros <> '') and (voblvalorjuros <> '0') then
              begin
                mfi.Append;
                mfirfichave.AsString := vrfichave;
                mfitmfcodigo.AsInteger := tmfRecebimentoJuros;
                mfimoecodigo.AsInteger := 1;
                mfimfivalor.AsCurrency := strtofloat(voblvalorjuros) + strtofloat(voblmulta);
                mfimfidata.AsString := vdatabx;
                mfimfihistorico.AsString := 'Rcto Juros Concedido';
                mfimfivalorori.AsString := voblvalorjuros;
                mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
                mfiflacodigo.AsInteger := acesso.Filial;
                mfimfisituacao.AsInteger := 0;
                mfi.post;

                mlt.Append;
                mltmfichave.AsInteger := mfimfichave.AsInteger;
                mltltechave.AsInteger := lteltechave.AsInteger;
                mltflacodigo.AsInteger := acesso.Filial;
                mlt.post;
              end;

              // desconto concedido
              if (voblvalordesc <> '') and (voblvalordesc <> '0') then
              begin
                mfi.Append;
                mfirfichave.AsString := vrfichave;
                mfitmfcodigo.AsInteger := tmfDescontoaDebito;
                mfimoecodigo.AsInteger := 1;
                mfimfivalor.AsString := voblvalordesc;
                mfimfidata.AsString := vdatabx;
                mfimfihistorico.AsString := 'Desconto Concedido';
                mfimfivalorori.AsString := voblvalordesc;
                mfimfiparcela.AsInteger := 1; // rfirfiparcela.AsInteger;
                mfiflacodigo.AsInteger := acesso.Filial;
                mfimfisituacao.AsInteger := 0;
                mfi.post;

                mlt.Append;
                mltmfichave.AsInteger := mfimfichave.AsInteger;
                mltltechave.AsInteger := lteltechave.AsInteger;
                mltflacodigo.AsInteger := acesso.Filial;
                mlt.post;

              end;

              cco.Append;
              ccoctacodigo.AsString := carctacodigo.AsString;
              ccoccoemissao.AsString := vdatabx;
              ccoccovencimento.AsString := vdatabx;
              ccotoccodigo.AsInteger := tocNormal;
              ccocedcodigo.AsInteger := cedcredito;
              ccoclbcodigo.AsInteger := acesso.Usuario;
              ccotficodigo.AsInteger := tfiOutros;
              ccomoecodigo.AsInteger := 1;
              ccocconumero.AsString := '';
              ccoccohistorico.AsString := 'Recto Título Nº: ' + vcNumeroTitulo;
              ccoccovalor.AsCurrency := lteltetotal.AsCurrency;
              ccoccochaveorig.AsInteger := 0;
              ccoccochavedest.AsInteger := 0;
              ccoccoconciliado.AsInteger := 1;
              ccoccoextenso.AsString := '';
              ccoetdcodigo.AsInteger := rfietdcodigo.AsInteger;
              ccoccodatamov.AsString := hoje(application, ZCone);
              ccoccodataregistro.AsString := hoje(application, ZCone);
              ccoccohoraregistro.AsDateTime := Now;
              if rfietdcodigo.AsString <> '' then
              begin
                consulta.close;
                consulta.SQL.Text := 'select etdidentificacao from etd where etdcodigo=' + rfietdcodigo.AsString;
                consulta.open;
                if not consulta.IsEmpty then
                begin
                  ccoccofavorecido.AsString := consulta.Fieldbyname('etdidentificacao').AsString;
                end
                else
                begin
                  ccoccofavorecido.AsString := '';
                end;
              end
              else
              begin
                ccoccofavorecido.AsString := '';
              end;

              ccophgcodigo.AsInteger := cfgphgbaixa.AsInteger;
              ccoflacodigo.AsInteger := acesso.Filial;
              cco.post;

              { cbl.Append;
                cbloblchave.AsInteger := obloblchave.AsInteger;
                cblccochave.AsInteger := ccoccochave.AsInteger;
                cbl.post; }

              clt.Append;
              cltccochave.AsInteger := ccoccochave.AsInteger;
              cltltechave.AsInteger := lteltechave.AsInteger;
              clt.post;

            end;
          End;

        End;
      end;

      if vbco = '237' then
      begin

        If (vtipoliq = '06') Or (vtipoliq = '17') Or (vtipoliq = '15') Or (vtipoliq = '16') Then
        Begin

          { If lowercase(crecresituacao.AsString) = 'em aberto' Then
            Begin

            cre.edit;
            self.crecresituacao.AsString := 'Baixa Total';
            self.crecredtbaixa.AsFloat := strtodate(vdatabx);
            If (self.crecrevalor.AsFloat < strtofloat(vvalorbx)) Then
            Begin
            self.crecrevlbaixa.AsFloat := self.crecrevalor.AsFloat;
            self.crecrejurdesc.AsFloat := strtofloat(vvalorbx) - self.crecrevalor.AsFloat;
            End
            Else
            Begin
            self.crecrevlbaixa.AsFloat := self.crecrevalor.AsFloat;
            self.crecrejurdesc.AsFloat := 0;
            End;
            self.crecresituremcob.asinteger := 13;
            self.crecredtprosret.AsFloat := date;

            cre.post;
            End; }
        End;
      end;

      If Not obl.Active Then
      Begin
        obl.open;
      End;

      If Not oto.Active Then
      Begin
        oto.open;
      End;

      If Not omo.Active Then
      Begin
        omo.open;
      End;

      pode := true;
      bolchave := '';
      consulta.close;
      consulta.SQL.Text := 'SELECT oblchave, bol.bolchave FROM bol ';
      consulta.SQL.add(' INNER JOIN rfi ON rfi.rfichave=bol.rfichave AND  rfi.rfichave = ' + vrfichave);
      consulta.SQL.add(' AND rfi.rfivalor = ' + BuscaTroca(vvalorbx, ',', '.') + ' LEFT JOIN obl ON  obl.bolchave = bol.bolchave ');
      consulta.SQL.add(' AND obldata = ' + QuotedStr(FormatDateTime('yyyy-mm-dd', strtodate(vdatabx))) + ' AND oblnumret = ' + QuotedStr(voblnumret) + ' AND oblnossonume = ' +
        QuotedStr(vnossonume));

      consulta.open;

      consulta.First;
      while not consulta.Eof do
      begin

        bolchave := consulta.Fields[1].AsString;

        if oto.Locate('oblchave;tobcodigo', VarArrayOf([bolchave, buscatob(vtipoliq, vbco)]), []) then
        begin

          pode := false;

          If (vmodoliq1 <> '00') And (trim(vmodoliq1) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([bolchave, buscamob(vmodoliq1, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

          If (vmodoliq2 <> '00') And (trim(vmodoliq2) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([bolchave, buscamob(vmodoliq2, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

          If (vmodoliq3 <> '00') And (trim(vmodoliq3) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([bolchave, buscamob(vmodoliq3, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

          If (vmodoliq4 <> '00') And (trim(vmodoliq4) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([bolchave, buscamob(vmodoliq4, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

          If (vmodoliq5 <> '00') And (trim(vmodoliq5) <> '') Then
          Begin
            if omo.Locate('oblchave;mobcodigo', VarArrayOf([bolchave, buscamob(vmodoliq5, vbco, vtipoliq)]), []) then
            begin
              pode := false;
              break;
            end
            else
            begin
              pode := true;
            end;
          End;

        end;

        consulta.Next;

      end;

      if (pode) and (bolchave <> '') then
      begin
        // IGUAL PARA BRADESCO SICREDI E BRASIL
        If Not obl.Active Then
        Begin
          obl.open;
        End;

        { Try }
        obl.Append;
        oblobldata.AsFloat := strtodate(vdatabx);
        obltobcodigo.AsString := buscatob(vtipoliq, vbco);
        if vtipoliq = '28' then
        begin
          if strtofloat(voValorTitulo) < strtofloat(vvalorbx) then
          BEGIN
            obloblvalor.AsFloat := (strtofloat(voValorTitulo) / 100);
          END
          ELSE
          BEGIN
            obloblvalor.AsFloat := strtofloat(vvalorbx);
          END;
        end
        else
        begin
          obloblvalor.AsFloat := strtofloat(vvalorbx);
        end;

        oblbolchave.AsString := bolchave;
        obloblnumret.AsString := voblnumret;
        obloblnossonume.AsString := vnossonume;
        obl.post;

        If Not oto.Active Then
        Begin
          oto.open;
        End;

        Try
          oto.Append;
          otooblchave.AsInteger := obloblchave.AsInteger;
          ototobcodigo.AsString := buscatob(vtipoliq, vbco);
          oto.post;
        Except
          erros.lines.add('Registro com nosso numero: ' + vnossonume + ' não foi localizado! Liq:' + vtipoliq + ' Bco: ' + vbco);

        End;

        If Not omo.Active Then
        Begin
          omo.open;
        End;

        If (vmodoliq1 <> '00') And (trim(vmodoliq1) <> '') Then
        Begin
          omo.close;
          omo.FilterSQL := 'oblchave=' + obloblchave.AsString + ' and mobcodigo=' + QuotedStr(buscamob(vmodoliq1, vbco, vtipoliq));
          omo.open;

          if omo.IsEmpty then
            omo.Append
          else
            omo.edit;

          omooblchave.AsInteger := obloblchave.AsInteger;
          omomobcodigo.AsString := buscamob(vmodoliq1, vbco, vtipoliq);
          omo.post;
        End;

        If (vmodoliq2 <> '00') And (trim(vmodoliq2) <> '') Then
        Begin

          omo.close;
          omo.FilterSQL := 'oblchave=' + obloblchave.AsString + ' and mobcodigo=' + QuotedStr(buscamob(vmodoliq2, vbco, vtipoliq));
          omo.open;

          if omo.IsEmpty then
            omo.Append
          else
            omo.edit;

          omooblchave.AsInteger := obloblchave.AsInteger;
          omomobcodigo.AsString := buscamob(vmodoliq2, vbco, vtipoliq);
          omo.post;
        End;

        If (vmodoliq3 <> '00') And (trim(vmodoliq3) <> '') Then
        Begin
          omo.close;
          omo.FilterSQL := 'oblchave=' + obloblchave.AsString + ' and mobcodigo=' + QuotedStr(buscamob(vmodoliq3, vbco, vtipoliq));
          omo.open;

          if omo.IsEmpty then
            omo.Append
          else
            omo.edit;

          omooblchave.AsInteger := obloblchave.AsInteger;
          omomobcodigo.AsString := buscamob(vmodoliq3, vbco, vtipoliq);
          omo.post;
        End;

        If (vmodoliq4 <> '00') And (trim(vmodoliq4) <> '') Then
        Begin
          omo.close;
          omo.FilterSQL := 'oblchave=' + obloblchave.AsString + ' and mobcodigo=' + QuotedStr(buscamob(vmodoliq4, vbco, vtipoliq));
          omo.open;

          if omo.IsEmpty then
            omo.Append
          else
            omo.edit;

          omooblchave.AsInteger := obloblchave.AsInteger;
          omomobcodigo.AsString := buscamob(vmodoliq4, vbco, vtipoliq);
          omo.post;
        End;

        If (vmodoliq5 <> '00') And (trim(vmodoliq5) <> '') Then
        Begin
          omo.close;
          omo.FilterSQL := 'oblchave=' + obloblchave.AsString + ' and mobcodigo=' + QuotedStr(buscamob(vmodoliq5, vbco, vtipoliq));
          omo.open;

          if omo.IsEmpty then
            omo.Append
          else
            omo.edit;

          omooblchave.AsInteger := obloblchave.AsInteger;
          omomobcodigo.AsString := buscamob(vmodoliq5, vbco, vtipoliq);
          omo.post;
        End;
        {
          Except
          If rfi.State <> dsbrowse Then
          Begin
          rfi.Cancel;
          End;

          If obl.State <> dsbrowse Then
          Begin
          obl.Cancel;
          End;

          If oto.State <> dsbrowse Then
          Begin
          oto.Cancel;
          End;

          If omo.State <> dsbrowse Then
          Begin
          omo.Cancel;
          End;

          erros.lines.add('Registro não localizado: ' + vnossonume + ' Arquivo: ' + narq);
          End;
        }

      end;

      omo.close;
      oto.close;
      obl.close;

    End;
  End;
End;

procedure Tfbolreb.registroAfterInsert(DataSet: TDataSet);
var
  vagora: string;
begin
  inherited;
  registroclbcodigo.AsInteger := acesso.Usuario;
  vagora := agora(application, ZCone);
  registrorrbregistro.AsString := vagora;

end;

procedure Tfbolreb.bfecharClick(Sender: TObject);
begin
  { inherited; }
  close;

end;

Function Tfbolreb.buscamob(cod, vcar, vtip: String): String;
Var
  vbcocodigo: String;
Begin

  vbcocodigo := vcar;

  If vbcocodigo = '001' Then
  Begin

    If (vtip = '02') Or (vtip = '03') Or (vtip = '26') Or (vtip = '30') Then
    Begin
      consulta.close;
      consulta.SQL.Text := 'select mobcodigo from mob where mobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo + chr(39);
      // chr(39) + ' and mobtiporetorno=' + chr(39) + 'A' + chr(39);
      consulta.open;
    End;
    If (vtip = '06')  Or (vtip = '15') Or (vtip = '09') Or (vtip = '17') Then
    Begin
      consulta.close;
      consulta.SQL.Text := 'select mobcodigo from mob where mobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo + chr(39);
      // chr(39) + ' and mobtiporetorno=' + chr(39) + 'C' + chr(39);
      consulta.open;
    End;
    If vtip = '28' Then
    Begin
      consulta.close;
      consulta.SQL.Text := 'select mobcodigo from mob where mobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo + chr(39);
      // + ' and mobtiporetorno=' + chr(39) + 'B' + chr(39);
      consulta.open;
    End;

  End;

  If vbcocodigo = '748' Then
  Begin
    If vtip = '28' Then
    Begin
      consulta.close;
      consulta.SQL.Text := 'select mobcodigo from mob where mobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo + chr(39);
      // chr(39) + ' and mobtiporetorno=' + chr(39) + 'B' + chr(39);
      consulta.open;
    End
    Else
    Begin
      consulta.close;
      consulta.SQL.Text := 'select mobcodigo from mob where mobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo + chr(39);
      consulta.open;
    End;
  End;

  If vbcocodigo = '237' Then
  Begin

    If (vtip = '09') Or (vtip = '10') Or (vtip = '27') Or (vtip = '32') Then
    Begin
      consulta.close;
      consulta.SQL.Text := 'select mobcodigo from mob where mobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo + chr(39);
      // chr(39) + ' and mobtiporetorno=' + chr(39) + vtip + chr(39);
      consulta.open;
    End
    Else If (vtip = '06') Or (vtip = '15') Or (vtip = '17') Then
    Begin
      consulta.close;
      consulta.SQL.Text := 'select mobcodigo from mob where mobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo;
      // chr(39) + ' and mobtiporetorno=' + chr(39) + 'C' + chr(39);
      consulta.open;
    End
    Else If vtip = '28' Then
    Begin
      consulta.close;
      consulta.SQL.Text := 'select mobcodigo from mob where mobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo + chr(39);
      // chr(39) + ' and mobtiporetorno=' + chr(39) + 'B' + chr(39);
      consulta.open;
    End
    Else
    Begin
      consulta.close;
      consulta.SQL.Text := 'select mobcodigo from mob where mobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo + chr(39);
      // chr(39) + ' and mobtiporetorno=' + chr(39) + 'A' + chr(39);
      consulta.open;
    End;
  End;
  result := consulta.Fields[0].AsString;
End;

Function Tfbolreb.buscatob(cod, vcar: String): String;
Var
  vbcocodigo: String;
Begin

  vbcocodigo := vcar;

  consulta.close;
  consulta.SQL.Text := 'select tobcodigo from tob where tobreferencia=' + chr(39) + cod + chr(39) + ' and bcocodigo=' + chr(39) + vbcocodigo + chr(39);
  consulta.open;

  result := consulta.Fields[0].AsString;

End;

procedure Tfbolreb.FormShow(Sender: TObject);
begin
  inherited;
  car.open;
end;

end.
