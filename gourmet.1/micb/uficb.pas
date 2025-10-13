unit uficb;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Uni, uPegaBase, Data.DB, MemDS, DBAccess, ufuncoes, Vcl.Mask,
  Vcl.DBCtrls;

type
  Tficb = class(TForm)
    paginas: TPageControl;
    pbotoes: TPanel;
    psituacao: TPanel;
    bconfirma: TBitBtn;
    bcancela: TBitBtn;
    bfechar: TBitBtn;
    revestflex: TTabSheet;
    Panel1: TPanel;
    btProcessarRevestFlex: TBitBtn;
    mmrevestflex: TMemo;
    pro: TUniQuery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    propronomereduzido: TStringField;
    promarcodigo: TIntegerField;
    progrpcodigo: TIntegerField;
    protrbcodigo: TIntegerField;
    proicmcodigo: TStringField;
    prounicodigo: TIntegerField;
    protpocodigo: TIntegerField;
    proprominimo: TFloatField;
    proproproprio: TStringField;
    propronumserie: TStringField;
    proproncm: TStringField;
    proprocomposto: TStringField;
    proprobalanca: TStringField;
    proprotecla: TStringField;
    proprovalidade: TIntegerField;
    proproestoque: TStringField;
    proproobs: TStringField;
    proproreferencia: TStringField;
    proprounitrib: TIntegerField;
    proproqtdtrib: TFloatField;
    prosipcodigo: TIntegerField;
    proproanpcodigo: TIntegerField;
    proenpcodigo: TIntegerField;
    propropedecomple: TIntegerField;
    propropededescrserv: TIntegerField;
    propropedetecnicoserv: TIntegerField;
    progracodigo: TIntegerField;
    prodprcodigo: TIntegerField;
    proprousagrade: TIntegerField;
    procstcodigo: TStringField;
    pun: TUniQuery;
    punprocodigo: TIntegerField;
    punpunquantidade: TFloatField;
    pununicodigo: TIntegerField;
    punpunmultiplicador: TFloatField;
    punpunidentificacao: TStringField;
    pundgrcodigo: TIntegerField;
    punpuncusto: TFloatField;
    punpunmargem: TFloatField;
    punpunprecoav: TFloatField;
    punpunprecoap: TFloatField;
    pununicodigobase: TIntegerField;
    punpunbarra: TStringField;
    puntuncodigo: TIntegerField;
    punpununitrib: TIntegerField;
    punpunqtdtrib: TFloatField;
    punpunbarrasistema: TIntegerField;
    punpunmargemap: TFloatField;
    punpunpercacresavap: TFloatField;
    grp: TUniQuery;
    grpgrpcodigo: TIntegerField;
    grpgrpidentificacao: TStringField;
    grptgrcodigo: TIntegerField;
    tgr: TUniQuery;
    tgrtgrcodigo: TIntegerField;
    tgrtgridentificacao: TStringField;
    Uni: TUniQuery;
    uniunicodigo: TIntegerField;
    uniunisimbolo: TStringField;
    uniuninome: TStringField;
    unituncodigo: TIntegerField;
    mar: TUniQuery;
    marmarcodigo: TIntegerField;
    marmaridentificacao: TStringField;
    cpb: TUniQuery;
    cpbcpbcodigo: TIntegerField;
    cpbprocodigo: TIntegerField;
    cpbcpbcodbalanca: TIntegerField;
    mostra: TProgressBar;
    erros: TMemo;
    Panel2: TPanel;
    edGrupo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    edMarca: TEdit;
    consulta: TUniQuery;
    Label3: TLabel;
    edDivisao: TEdit;
    dpr: TUniQuery;
    dprdprcodigo: TIntegerField;
    dprdpridentificacao: TStringField;
    procedure bfecharClick(Sender: TObject);
    procedure btProcessarRevestFlexClick(Sender: TObject);
  private
    procedure SetZCone(const Value: TUniConnection);
    procedure processartexto(texto: TMemo);
    { Private declarations }
  public
    { Public declarations }
    vretorno: string;
    Fzcone: TUniConnection;
    Acesso: TAcesso;

  published
    property zcone: TUniConnection read Fzcone write Fzcone;

    { Public declarations }
  end;

var
  ficb: Tficb;

const
  vplidmd = '00.00.00.000-01';

implementation

{$R *.dfm}

function StrIsInteger(const S: string): boolean;
begin
  try
    StrToInt(S);
    Result := true;
  except
    Result := false;
  end;
end;

function importador001(AOwner: TComponent; conexao: TUniConnection; Acesso: TAcesso): string;
begin

  try
    try
      ficb := Tficb.Create(AOwner);
      ficb.zcone := conexao;
      ficb.SetZCone(ficb.zcone);
      ficb.zcone.StartTransaction;
      ficb.Acesso := Acesso;

      ficb.ShowModal;
      Result := ficb.vretorno;

      ficb.zcone.Commit;
      showmessage('Processado com sucesso!');

      ficb.mmrevestflex.lines.clear;
      ficb.mostra.Position := 0;

    except

      ficb.zcone.Rollback;
    end;

  finally

  end;
end;

exports importador001;

procedure Tficb.btProcessarRevestFlexClick(Sender: TObject);
begin
  processartexto(mmrevestflex);
  bconfirma.Click;
end;

procedure Tficb.processartexto(texto: TMemo);
var
  vlLinha: String;
  vlLinha1: String;

  vlGrpCodigo: Integer;
  vlGrpIdentificacao: string;
  vlTgrCodigo: string;
  vlTgrIdentificacao: string;
  vlValor: String;
  i: Integer;
  vlNome: String;
  vlTamanho: String;
  vlProcodigo: String;
  vlccfabri: string;
  vlUnidade: String;
  vlReferencia: String;
  vlSerie: String;
  vlPreco: String;

  vlNomeCompleto: string;
  vlTamanhoLinha: Integer;
  c: Integer;

begin

  if not mar.Active then
    mar.Open;

  if not dpr.Active then
    dpr.Open;

  if not pro.Active then
    pro.Open;

  if not cpb.Active then
    cpb.Open;

  if not pun.Active then
    pun.Open;

  if not grp.Active then
    grp.Open;

  if not tgr.Active then
    tgr.Open;

  if not Uni.Active then
    Uni.Open;

  mostra.max := texto.lines.Count;
  mostra.Position := 0;
  application.ProcessMessages;

  vlGrpCodigo := 0;

  try
    consulta.Close;
    consulta.SQL.Text := 'select max(grpcodigo)+1 as grpcodigo from grp';
    consulta.Open;

    vlGrpCodigo := consulta.Fields[0].AsInteger;

    vlGrpIdentificacao := edGrupo.Text;

    if grp.Locate('grpidentificacao', vlGrpIdentificacao, [locaseinsensitive]) then
      grp.Edit
    else
      grp.Append;

    grpgrpcodigo.AsInteger := vlGrpCodigo;

    grpgrpidentificacao.AsString := vlGrpIdentificacao;
    grptgrcodigo.AsString := vlTgrCodigo;

    grp.Post;
  except
    if grp.State <> dsbrowse then
      grp.Cancel;

    vlGrpCodigo := 1;
    erros.lines.Add(texto.lines[i]);
  end;
  vlGrpCodigo := grpgrpcodigo.AsInteger;

  i := 0;
  while true do
  begin

    mostra.Position := mostra.Position + 1;
    application.ProcessMessages;

    vlLinha := texto.lines[i];

    if (pos('Medida rolo', vlLinha) > 0) then
    begin
      vlNome := copy(vlLinha, 1, pos(#9, vlLinha) - 1);
      vlLinha := texto.lines[i + 1];
      vlTamanho := trim(vlLinha);
      i := i + 1;
    end;

    if (pos('Rolo', vlLinha) > 0) and (pos('Medida rolo', vlLinha) = 0) then
    begin
      c := 0;
      vlLinha1 := vlLinha;
      vlccfabri := copy(vlLinha1, 1, pos(#9, vlLinha1) - 1);
      vlLinha1 := trim(copy(vlLinha1, pos(#9, vlLinha1) + 1, 300));
      c := 1;
      vlUnidade := trim(copy(vlLinha1, 1, pos(#9, vlLinha1) - 1));
      vlLinha1 := trim(copy(vlLinha1, pos(#9, vlLinha1) + 1, 300));

      if pos(#9, vlLinha1) > 0 then
      begin
        c := c + 1;
        vlReferencia := trim(copy(vlLinha1, 1, pos(#9, vlLinha1) - 1));
      end
      else
      begin
        vlReferencia := trim(vlLinha1);
      end;

      vlLinha1 := trim(copy(vlLinha1, pos(#9, vlLinha1) + 1, 300));
      if pos(#9, vlLinha1) > 0 then
      begin
        c := c + 1;
        vlSerie := trim(copy(vlLinha1, 1, pos(#9, vlLinha1) - 1));
        vlLinha1 := trim(copy(vlLinha1, pos(#9, vlLinha1) + 1, 300));

        if pos(#9, vlLinha1) = 0 then
        begin
          c := c + 1;
          vlPreco := trim(copy(vlLinha1, 1, 300));
        end;

      end
      else
      begin
        vlSerie := trim(vlLinha1);

        if (trim(vlLinha1) <> '') and (c = 2) then
          vlPreco := trim(vlLinha1);
      end;

      if (vlPreco <> '') then
      begin
        try
          vlPreco := Floattostr(strtofloat(vlPreco));
          vlValor := vlPreco;
        except
        end;
      end;

      vlNomeCompleto := trim(uppercase(vlNome + ' ' + vlTamanho + ' ' + vlccfabri));
      vlPreco := '';
    end;

    if (copy(vlLinha, 1, 1) <> ' ') and (pos('-', copy(vlLinha, 1, 7)) > 0) then
    begin
      // try

      if pro.Locate('pronome', vlNomeCompleto, []) then
      begin
        pro.Edit;
        vlProcodigo := proprocodigo.AsString;
      end
      else
      begin

        consulta.Close;
        consulta.SQL.Text := 'select max(procodigo)+1 as procodigo from pro';
        consulta.Open;

        vlProcodigo := consulta.Fields[0].AsString;

        pro.Append;
        proprocodigo.AsString := vlProcodigo;

      end;

      propronome.AsString := vlNomeCompleto;

      propronomereduzido.AsString := vlNomeCompleto;

      if mar.Locate('maridentificacao', uppercase(edMarca.Text), [locaseinsensitive]) then
      begin
        promarcodigo.AsInteger := marmarcodigo.AsInteger;
      end
      else
      begin
        mar.Append;
        marmaridentificacao.AsString := uppercase(edMarca.Text);
        mar.Post;
        promarcodigo.AsInteger := marmarcodigo.AsInteger;

      end;

      if grp.Locate('grpcodigo', vlGrpCodigo, []) then
        progrpcodigo.AsInteger := vlGrpCodigo
      else
        progrpcodigo.AsInteger := 1;

      protrbcodigo.AsInteger := 1;
      proicmcodigo.AsString := '00';

      if Uni.Locate('uninome', uppercase(vlUnidade), [locaseinsensitive]) then
      begin
        prounicodigo.AsInteger := uniunicodigo.AsInteger;
      end
      else
      begin
        Uni.Append;
        uniunisimbolo.AsString := uppercase(copy(vlUnidade, 1, 2));
        uniuninome.AsString := uppercase(vlUnidade);
        Uni.Post;
      end;
      proprobalanca.AsString := '0';
      proprotecla.AsString := '';

      prounicodigo.AsInteger := uniunicodigo.AsInteger;
      protpocodigo.AsInteger := 0;
      proprominimo.AsFloat := 0;
      proproproprio.AsString := '';
      propronumserie.AsString := '0';
      proproncm.AsString := '';
      proprocomposto.AsString := '0';

      proprovalidade.AsInteger := 0;
      proproestoque.AsString := '0';
      proproobs.AsString := '';
      proproreferencia.AsString := uppercase(trim(vlReferencia));
      proprounitrib.AsInteger := prounicodigo.AsInteger;
      proproqtdtrib.AsFloat := 1;
      prosipcodigo.AsInteger := 1;
      proproanpcodigo.AsInteger := 0;
      proenpcodigo.AsInteger := 0;
      propropedecomple.AsInteger := 0;
      propropededescrserv.AsInteger := 0;
      propropedetecnicoserv.AsInteger := 0;

      if dpr.Locate('dpridentificacao', uppercase(edDivisao.Text), [locaseinsensitive]) then
      begin
        prodprcodigo.AsInteger := dprdprcodigo.AsInteger;
      end
      else
      begin
        dpr.Append;
        dprdpridentificacao.AsString := uppercase(edDivisao.Text);
        dpr.Post;
        prodprcodigo.AsInteger := dprdprcodigo.AsInteger;

      end;

      proprousagrade.AsInteger := 0;
      procstcodigo.AsString := '000';

      pro.Post;

      if not pun.Locate('procodigo', proprocodigo.AsInteger, []) then
        pun.Append
      else
        pun.Edit;

      punprocodigo.AsInteger := proprocodigo.AsInteger;
      pununicodigo.AsInteger := prounicodigo.AsInteger;
      punpunmultiplicador.AsFloat := 1;
      punpunquantidade.AsFloat := 1;
      punpunidentificacao.AsString := '1x' + uniunisimbolo.AsString;
      pundgrcodigo.AsInteger := 1;
      punpuncusto.AsFloat := 0;
      punpunmargem.AsFloat := 0;
      punpunprecoav.AsString := vlValor;
      punpunprecoap.AsString := vlValor;
      pununicodigobase.AsInteger := prounicodigo.AsInteger;
      punpunbarra.AsString := '0000000';
      puntuncodigo.AsInteger := 9;
      punpununitrib.AsInteger := prounicodigo.AsInteger;
      punpunqtdtrib.AsFloat := 1;
      punpunbarrasistema.AsInteger := 0;
      punpunmargemap.AsFloat := 0;
      punpunpercacresavap.AsFloat := 0;

      pun.Post;

    end;
    i := i + 1;

    if i = texto.lines.Count - 1 then
      break;

  end;
end;

procedure Tficb.SetZCone(const Value: TUniConnection);
var
  i: Integer;
begin
  Fzcone := Value;

  for i := 0 to Self.ComponentCount - 1 do
  begin
    if Self.Components[i] is TUniQuery then
      (Self.Components[i] as TUniQuery).Connection := Self.zcone;
  end;
end;

procedure Tficb.bfecharClick(Sender: TObject);
begin
  Close;
end;

end.
