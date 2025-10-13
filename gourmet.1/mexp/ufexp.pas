unit ufexp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.ImgList, Vcl.Controls,
  PngImageList, System.Classes, System.Actions, Vcl.ActnList, MemDS, DBAccess,
  Uni, Vcl.Buttons, Vcl.ComCtrls, Vcl.Graphics, System.SysUtils, uFuncoes,
  uPegaBase, System.ImageList, VirtualTable, ufcpc;

type
  Tfexp = class(Tfrmbase)
    registroexpchave: TIntegerField;
    registroprocodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registroexpdtinicial: TDateField;
    registroexpdtfinal: TDateField;
    Label1: TLabel;
    expchave: TDBEdit;
    Label2: TLabel;
    procodigo: TDBEdit;
    Label3: TLabel;
    expdtinicial: TDBEdit;
    Label4: TLabel;
    expdtfinal: TDBEdit;
    pro: tuniquery;
    proprocodigo: TIntegerField;
    propronome: TStringField;
    registropronome: TStringField;
    listaDisp: TDBGrid;
    expdisp: tuniquery;
    Dtprd: tunidatasource;
    tprd: tuniquery;
    tprdeprcodigo: TIntegerField;
    tprdprocodigo: TIntegerField;
    tprdetdcodigo: TIntegerField;
    tprdeprorigem: TStringField;
    tprdeprchavedoc: TIntegerField;
    tprdeprnumero: TStringField;
    tprdunicodigo: TIntegerField;
    tprdeprquanti: TFloatField;
    tprdepracumulado: TFloatField;
    tprdeprmultiplicador: TFloatField;
    tprdtmecodigo: TIntegerField;
    tprdttecodigo: TIntegerField;
    tprdeprcustofinal: TFloatField;
    tprdeprmediacusto: TFloatField;
    tprdeprcustototal: TFloatField;
    etd: tuniquery;
    tprdetdidentificacao: TStringField;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    tprdunisimbolo: TStringField;
    tprg: tuniquery;
    Dtprg: tunidatasource;
    exp: tuniquery;
    lista: TDBGrid;
    PlResu: TPanel;
    tprgeprcodigo: TIntegerField;
    tprgprocodigo: TIntegerField;
    tprgetdcodigo: TIntegerField;
    tprgetdidentificacao: TStringField;
    tprgeprchavedoc: TIntegerField;
    tprgeprorigem: TStringField;
    tprgeprnumero: TStringField;
    tprgunicodigo: TIntegerField;
    tprgunisimbolo: TStringField;
    tprgeprquanti: TFloatField;
    tprgepracumulado: TFloatField;
    tprgeprmultiplicador: TFloatField;
    tprgtmecodigo: TIntegerField;
    tprgttecodigo: TIntegerField;
    tprgeprcustototal: TFloatField;
    tprgeprmediacusto: TFloatField;
    tprgeprcustofinal: TFloatField;
    Pldisp: TPanel;
    PlTitDisp: TPanel;
    Panel1: TPanel;
    tprgeprcontendo: TFloatField;
    tprdeprcontendo: TFloatField;
    tprgunisimbolobase: TStringField;
    tprdunisimbolobase: TStringField;
    tprgeprquantiitm: TFloatField;
    tprdeprquantiitm: TFloatField;
    tprgtdfidentificacao: TStringField;
    tprdtdfidentificacao: TStringField;
    tprgsdeidentificacao: TStringField;
    tprdsdeidentificacao: TStringField;
    tprdsdecodigo: TStringField;
    tprgsdecodigo: TStringField;
    tprdmesinclusao: TDateTimeField;
    tprgmesinclusao: TDateTimeField;
    vtprg: TVirtualTable;
    vtprgeprcodigo: TIntegerField;
    vtprgprocodigo: TIntegerField;
    vtprgetdcodigo: TIntegerField;
    vtprgetdidentificacao: TStringField;
    vtprgeprchavedoc: TIntegerField;
    vtprgeprorigem: TStringField;
    vtprgeprnumero: TStringField;
    vtprgunicodigo: TIntegerField;
    vtprgunisimbolo: TStringField;
    vtprgtdfidentificacao: TStringField;
    vtprgeprquantiitm: TFloatField;
    vtprgeprquanti: TFloatField;
    vtprgeprcontendo: TFloatField;
    vtprgunisimbolobase: TStringField;
    vtprgepracumulado: TFloatField;
    vtprgeprmultiplicador: TFloatField;
    vtprgtmecodigo: TIntegerField;
    vtprgttecodigo: TIntegerField;
    vtprgeprcustototal: TFloatField;
    vtprgeprmediacusto: TFloatField;
    vtprgeprcustofinal: TFloatField;
    vtprgsdeidentificacao: TStringField;
    vtprgsdecodigo: TStringField;
    vtprgmesinclusao: TDateTimeField;
    ivt: tuniquery;
    ivtivtchave: TIntegerField;
    ivtprocodigo: TIntegerField;
    ivtivtquantidade: TFloatField;
    ivtivtdescricao: TStringField;
    ivtspddatabalanco: TDateField;
    ivtunisimbolo: TStringField;
    ivd: tuniquery;
    vtprd: TVirtualTable;
    vtprdeprcodigo: TIntegerField;
    vtprdprocodigo: TIntegerField;
    vtprdetdcodigo: TIntegerField;
    vtprdetdidentificacao: TStringField;
    vtprdeprchavedoc: TIntegerField;
    vtprdeprorigem: TStringField;
    vtprdeprnumero: TStringField;
    vtprdunicodigo: TIntegerField;
    vtprdunisimbolo: TStringField;
    vtprdtdfidentificacao: TStringField;
    vtprdeprquantiitm: TFloatField;
    vtprdeprquanti: TFloatField;
    vtprdeprcontendo: TFloatField;
    vtprdunisimbolobase: TStringField;
    vtprdepracumulado: TFloatField;
    vtprdeprmultiplicador: TFloatField;
    vtprdtmecodigo: TIntegerField;
    vtprdttecodigo: TIntegerField;
    vtprdeprcustototal: TFloatField;
    vtprdeprmediacusto: TFloatField;
    vtprdeprcustofinal: TFloatField;
    vtprdsdeidentificacao: TStringField;
    vtprdsdecodigo: TStringField;
    vtprdmesinclusao: TDateTimeField;
    ivdivdchave: TIntegerField;
    ivdprocodigo: TIntegerField;
    ivdivdquantidade: TFloatField;
    ivdivddescricao: TStringField;
    ivdspddatabalanco: TDateField;
    ivdunisimbolo: TStringField;
    registroexptipo: TIntegerField;
    vtprditmchave: TIntegerField;
    vtprditmvalor: TFloatField;
    vtprditmdesconto: TFloatField;
    vtprditmtotal: TFloatField;

    Label5: TLabel;
    btsaldo: TSpeedButton;
    btsaldoambos: TSpeedButton;
    btsaldodisponivel: TSpeedButton;
    tprgitmdesconto: TFloatField;
    tprditmdesconto: TFloatField;
    vtprgitmdesconto: TFloatField;
    tprgitmvalor: TFloatField;
    vtprgitmvalor: TFloatField;
    tprditmvalor: TFloatField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    BDiminuiLetra: TBitBtn;
    BAumentaLetra: TBitBtn;
    cls: tuniquery;
    clsclscodigo: TIntegerField;
    clsclsnomeform: TStringField;
    clsclslargura: TIntegerField;
    clsclsaltura: TIntegerField;
    clsusrcodigo: TIntegerField;
    clsclsmodo: TIntegerField;
    clsclsrodape: TIntegerField;
    clsclsfiltro: TIntegerField;
    clsclstopo: TIntegerField;
    clsclsesquerda: TIntegerField;
    clsclspositopo: TIntegerField;
    clsclsposiesquerda: TIntegerField;
    clsclsbotoes: TIntegerField;
    clsclsselecao: TIntegerField;
    clsclsultimo: TStringField;
    clsclsordem: TIntegerField;
    clsclsletra: TIntegerField;
    ivtivtregistro: TDateTimeField;
    ivdivdregistro: TDateTimeField;
    vtprdmesemissao: TDateField;
    vtprgmesregistro: TDateField;
    tprdmesemissao: TDateField;
    tprgmesregistro: TDateField;
    Bevel1: TBevel;
    vtprgtemidentificacao: TStringField;
    vtprdtemidentificacao: TStringField;
    tprgtemidentificacao: TStringField;
    tprdtemidentificacao: TStringField;
    vtprgeprdata: TDateTimeField;
    tprgeprdata: TDateTimeField;
    tprdeprdata: TDateTimeField;
    vtprdeprdata: TDateTimeField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bvisualizarClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure gridzebradoLocal(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bcancelaClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure btsaldodisponivelClick(Sender: TObject);
    procedure btsaldoClick(Sender: TObject);
    procedure btsaldoambosClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure BDiminuiLetraClick(Sender: TObject);
    procedure BAumentaLetraClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);

  private
    procedure MostraExtratosClick(Sender: TObject);
    procedure SalvarLarguraEPosicao(vlista: TDBGrid);
    procedure AjustaColunas(vlista: TDBGrid);
    procedure CarregarColunas(grid: TDBGrid);
    procedure SalvarColunas(grid: TDBGrid);
    procedure AjustaLetraGrids(vQuantiMudar: Integer; vTipoMudar: string);
    procedure AjustaPaines;
  public
    { Public declarations }
    vlSaldos: Boolean;
    vlSaldosDisp: Boolean;
    vlAmbos: Boolean;

  end;

var
  fexp: Tfexp;

  // Início ID do Módulo fraexp
const
  vPlIdMd = '01.01.05.008-01';
  vPlTitMdl = 'Extrato do Produto';

  // Fim ID do Módulo fraexp

implementation

{$R *.dfm}

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fexp := Tfexp.Create(pCargaFrame);
  fexp.ShowModal;
  fexp.Free;
end;

exports formulario;

procedure Tfexp.BAumentaLetraClick(Sender: TObject);
begin
  inherited;
  AjustaLetraGrids(1, 'A');

end;

procedure Tfexp.bcancelaClick(Sender: TObject);
begin
  bfechar.Click;
end;

procedure Tfexp.bconfirmaClick(Sender: TObject);
begin

  if Pldisp.Visible then
    SalvarLarguraEPosicao(listaDisp);

  if PlResu.Visible then
    SalvarLarguraEPosicao(lista);

  inherited;

end;

procedure Tfexp.BDiminuiLetraClick(Sender: TObject);
begin
  inherited;
  AjustaLetraGrids(1, 'D');
end;

procedure Tfexp.bfecharClick(Sender: TObject);
begin
  inherited;
  if not(ModalResult = mrCancel) then
    Exit;

  expdisp.Close;
  exp.Close;
end;

procedure Tfexp.AjustaLetraGrids(vQuantiMudar: Integer; vTipoMudar: string);
var
  i, c: Integer;
  vlTamanhoAtual: Integer;
begin
  cls.Close;
  cls.SQL.Clear;
  cls.SQL.Text := 'select * from cls where usrcodigo=' + Acesso.Usuario.ToString + ' and clsnomeform=' + Chr(39) + Self.Name + Chr(39);
  cls.Open;

  if cls.IsEmpty then
  begin
    cls.Append;
    clsusrcodigo.AsInteger := Acesso.Usuario;
    clsclsnomeform.AsString := Self.Name;
    vlTamanhoAtual := 12;
  end
  else
  begin
    cls.Edit;
    vlTamanhoAtual := clsclsletra.AsInteger;
  end;

  if vTipoMudar = 'D' then
    vlTamanhoAtual := vlTamanhoAtual - vQuantiMudar;

  if vTipoMudar = 'A' then
    vlTamanhoAtual := vlTamanhoAtual + vQuantiMudar;

  cls.Edit;
  clsclsletra.AsInteger := vlTamanhoAtual;
  cls.Post;

  for i := 0 to Self.ComponentCount - 1 do
    if (Self.Components[i] is TDBGrid) then
    begin
      (Self.Components[i] as TDBGrid).TitleFont.size := vlTamanhoAtual;
      (Self.Components[i] as TDBGrid).Font.size := vlTamanhoAtual;

      for c := 0 to (Self.Components[i] as TDBGrid).Columns.Count - 1 do
        (Self.Components[i] as TDBGrid).Columns[c].Title.Font.size := vlTamanhoAtual;
    end;
end;

procedure Tfexp.SalvarLarguraEPosicao(vlista: TDBGrid);
var
  nomecol: string;
  Cols: Integer;
begin
  { * ao mover colunas de lugar ele salva a posicao para carregar a tela
    de ajusta de colunas visíveis * }
  cpg.Close;
  cpg.Params[0].AsInteger := Acesso.Usuario;
  cpg.Params[1].AsString := Self.Name + '-' + vlista.Name;
  cpg.Open;
  cpc.Close;
  cpc.Params[0].AsInteger := Self.cpgcpgchave.AsInteger;
  cpc.Open;
  for Cols := 0 to vlista.Columns.Count - 1 do
  begin
    nomecol := vlista.Columns[Cols].FieldName;
    if Self.cpc.Locate('cpccampo', nomecol, [loCaseInsensitive]) then
    begin
      Self.cpc.Edit;
      Self.cpccpcordem.AsInteger := Cols;
      Self.cpccpclargura.AsInteger := vlista.Columns[Cols].Width;
      Self.cpc.Post;
    end;
  end;

end;

procedure Tfexp.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  AjustaColunas(listaDisp);
end;

procedure Tfexp.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  AjustaColunas(lista);
end;

procedure Tfexp.SalvarColunas(grid: TDBGrid);
var
  vColuna: Integer;
begin

  cpg.Connection := ZCone;

  cpg.Close;
  cpg.Params[0].AsInteger := Acesso.Usuario;
  cpg.Params[1].AsString := Self.Name + '-' + grid.Name;
  cpg.Open;

  if cpg.IsEmpty then
    cpg.Append
  else
    cpg.Edit;

  cpgcpgnomegrid.AsString := Self.Name + '-' + grid.Name;
  cpgclbcodigo.AsInteger := Acesso.Usuario;
  cpg.Post;

  cpc.Close;
  cpc.Params[0].AsInteger := Self.cpgcpgchave.AsInteger;
  cpc.Open;

  for vColuna := 0 to grid.Columns.Count - 1 do
  begin
    if cpc.Locate('cpccampo', grid.Columns[vColuna].FieldName, [loCaseInsensitive]) then
      cpc.Edit
    else
      cpc.Append;

    cpccpccampo.AsString := grid.Columns[vColuna].FieldName;
    cpccpgchave.AsInteger := Self.cpgcpgchave.AsInteger;
    cpccpcordem.AsInteger := grid.Columns[vColuna].Index;
    if grid.Columns[vColuna].Width > 0 then
      cpccpclargura.AsInteger := grid.Columns[vColuna].Width;
    cpccpctitulo.AsString := grid.Columns[vColuna].Title.Caption;
    cpccpcvisivel.AsInteger := Ord(grid.Columns[vColuna].Visible);
    cpc.Post;
  end;
end;

procedure Tfexp.CarregarColunas(grid: TDBGrid);
var
  vColuna: Integer;
begin

  cpg.Connection := Self.ZCone;
  cpg.Close;
  cpg.Params[0].AsInteger := Acesso.Usuario;
  cpg.Params[1].AsString := Self.Name + '-' + grid.Name;
  cpg.Open;

  if cpg.IsEmpty then
    Exit;

  cpc.Close;
  cpc.Params[0].AsInteger := Self.cpgcpgchave.AsInteger;
  cpc.Open;

  if not cpc.IsEmpty then
  begin
    (*
      ** Atualiza o CPC - Controle de Posição das Colunas com possíveis novas colunas **
    *)
    for vColuna := 0 to grid.Columns.Count - 1 do
      if not cpc.Locate('cpccampo', grid.Columns[vColuna].FieldName, [loCaseInsensitive]) then
      begin
        cpc.Append;
        cpccpccampo.AsString := grid.Columns[vColuna].FieldName;
        cpccpgchave.AsInteger := Self.cpgcpgchave.AsInteger;
        cpccpcordem.AsInteger := vColuna;
        if grid.Columns[vColuna].Width > 0 then
          cpccpclargura.AsInteger := grid.Columns[vColuna].Width;
        cpccpctitulo.AsString := grid.Columns[vColuna].Title.Caption;
        cpccpcvisivel.AsInteger := Ord(grid.Columns[vColuna].Visible);
        cpc.Post;
      end;

    (*
      ** DELETA da CPC colunas que foram removidas do GRID **
    *)
    cpc.first;
    if grid.Columns.Count <> cpc.RecordCount then
      while not cpc.Eof do
        if ColumnByFieldName(grid, cpccpccampo.AsString) = nil then // Declarada no uFuncoes.
          cpc.Delete
        else
          cpc.Next;

    (*
      ** Limpa e Remonta GRID **
    *)
    grid.Columns.Clear;
    cpc.first;
    vColuna := 0;
    while not cpc.Eof do
    begin
      grid.Columns.Add;
      grid.Columns[vColuna].FieldName := cpccpccampo.AsString;
      grid.Columns[vColuna].Width := cpccpclargura.AsInteger;
      grid.Columns[vColuna].Visible := cpccpcvisivel.AsInteger = 1;
      cpc.Next;
      vColuna := vColuna + 1;
    end;
  end
  else
  begin
    (*
      ** Se não existe definição de CPC, elas são criadas. **
    *)
    for vColuna := 0 to grid.Columns.Count - 1 do
    begin
      cpc.Append;
      cpccpccampo.AsString := grid.Columns[vColuna].FieldName;
      cpccpgchave.AsInteger := Self.cpgcpgchave.AsInteger;
      cpccpcordem.AsInteger := vColuna;
      if grid.Columns[vColuna].Width > 0 then
        cpccpclargura.AsInteger := grid.Columns[vColuna].Width;
      cpccpctitulo.AsString := grid.Columns[vColuna].Title.Caption;
      cpccpcvisivel.AsInteger := Ord(grid.Columns[vColuna].Visible);
      cpc.Post;
    end;
  end;
end;

procedure Tfexp.AjustaColunas(vlista: TDBGrid);

var
  Cols: Integer;
begin

  { * identifica a coluna selecioanda como ordem atual da lista * }
  for Cols := 0 to vlista.Columns.Count - 1 do
  begin
    if vlista.Columns[Cols].Title.Font.Color = clRed then
      break
  end;

  (* Persite ajustes que o usuário possa ter feito nessa execução *)
  SalvarColunas(vlista);

  { * chama formulario para ajustar os campos que serao visiveis para a lista atual * }
  fcpc := Tfcpc.Create(Self);
  try
    cpg.Close;
    cpg.Params[0].AsInteger := Acesso.Usuario;
    cpg.Params[1].AsString := Self.Name + '-' + vlista.Name;
    cpg.Open;

    cpc.Close;
    cpc.Params[0].AsInteger := Self.cpgcpgchave.AsInteger;
    cpc.Open;

    fcpc.DScpc.DataSet := cpc;
    fcpc.DBGLista.Columns[0].Field := cpc.FieldByName('cpcvisivel');
    fcpc.DBGLista.Columns[1].Field := cpc.FieldByName('cpctitulo');

    fcpc.ShowModal;

    CarregarColunas(vlista);
    { * seleciona novamente a coluna previamente salva para a ordem da lista * }

  finally
    fcpc.Free;
  end;
end;

procedure Tfexp.btsaldoambosClick(Sender: TObject);
var
  i: Integer;
  vlSaldo: Double;

begin
  inherited;
  Pldisp.Visible := false;
  PlResu.Visible := false;

  vlSaldos := false;
  vlSaldosDisp := false;

  vlAmbos := true;

  MostraExtratosClick(Sender);

  Pldisp.Visible := true;
  PlResu.Visible := true;
  Pldisp.Height := Round(Self.Height * 0.40);
  PlResu.Height := Round(Self.Height * 0.40);

  Self.Height := Self.Height - 1;
  Self.Height := Self.Height + 1;
  Self.Repaint;

end;

procedure Tfexp.btsaldoClick(Sender: TObject);
var
  i: Integer;
  vlSaldo: Double;

begin
  inherited;
  Pldisp.Visible := false;
  PlResu.Visible := false;
  vlSaldos := true;
  vlSaldosDisp := false;
  vlAmbos := false;
  MostraExtratosClick(Sender);
  PlResu.Align := alClient;
  PlResu.Visible := true;
  PlResu.Height := Round(Self.Height * 0.85);

  Self.Height := Self.Height - 1;
  Self.Height := Self.Height + 1;
  Self.Repaint;

end;

procedure Tfexp.btsaldodisponivelClick(Sender: TObject);
var
  i: Integer;
  vlSaldo: Double;
begin
  inherited;
  Pldisp.Visible := false;
  PlResu.Visible := false;

  vlSaldos := false;
  vlSaldosDisp := true;
  vlAmbos := false;
  MostraExtratosClick(Sender);
  Pldisp.Align := alClient;
  Pldisp.Visible := true;
  Pldisp.Top := 113;

  Pldisp.Height := Round(Self.Height * 0.85);

  Self.Height := Self.Height - 1;
  Self.Height := Self.Height + 1;
  Self.Repaint;

end;

procedure Tfexp.AjustaPaines;
var
  vlTotal: Integer;
begin
  vlTotal := Self.Height;

  if Pldisp.Visible then

end;

procedure Tfexp.bvisualizarClick(Sender: TObject);
var
  i: Integer;
  vlSaldo: Double;

begin
  inherited;
  vlSaldos := false;
  vlSaldosDisp := false;
  vlAmbos := false;

  MostraExtratosClick(Sender);

end;

procedure Tfexp.MostraExtratosClick(Sender: TObject);
var
  i, c: Integer;
  vlSaldo: Double;

begin
  inherited;

  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  cfg.Open;

  if btsaldodisponivel.Down then
  begin
    vlSaldosDisp := true;
  end
  else if btsaldo.Down then
  begin
    vlSaldos := true;

  end
  else if btsaldoambos.Down then
  begin
    vlSaldos := true;
    vlSaldosDisp := true;

    Pldisp.Visible := true;
    Pldisp.Align := alBottom;
    Pldisp.Height := 280;
    Pldisp.Repaint;

    PlResu.Visible := true;
    PlResu.Repaint;
  end;

  ivt.DisableControls;
  ivd.DisableControls;

  vtprd.DisableControls;
  vtprg.DisableControls;

  if registro.State = dsBrowse then
    registro.Edit;

  expdtinicial.Field.AsString := '01/01/2000';

  if registro.State <> dsBrowse then
    registro.Post;

  try

    if vlSaldosDisp or vlAmbos then
    begin

      expdisp.Close;

      if cfg.FieldByName('atvcodigo').AsInteger = atvrestaurante then
      begin
        expdisp.SQL.Text := 'CALL extratoProdutoDisp(:produto, :dtInicial, :dtFinal)';
        expdisp.Params[0].AsInteger := Self.registroprocodigo.AsInteger;
        expdisp.Params[1].AsDatetime := Strtodatetime(Self.registroexpdtinicial.AsString + ' 00:00:01');
        expdisp.Params[2].AsDatetime := Strtodatetime(Self.registroexpdtfinal.AsString + ' 23:59:59');
        expdisp.ExecSQL;

      end
      else
      begin
        expdisp.SQL.Text := 'CALL extratoProdutoDisp(:produto, :dtInicial, :dtFinal)';
        expdisp.Params[0].AsInteger := Self.registroprocodigo.AsInteger;
        expdisp.Params[1].AsDate := Self.registroexpdtinicial.AsFloat;
        expdisp.Params[2].AsDate := Self.registroexpdtfinal.AsFloat;
        expdisp.ExecSQL;
      end;

      ivd.Close;
      ivd.Params[0].AsInteger := Self.registroprocodigo.AsInteger;
      ivd.Params[1].AsDate := Self.registroexpdtinicial.AsFloat;
      ivd.Params[2].AsDate := Self.registroexpdtfinal.AsFloat;
      ivd.ExecSQL;

      tprd.Close;
      tprd.Open;
      tprd.first;

      vtprd.Close;
      vtprd.Clear;
      vtprd.Open;

      while not tprd.Eof do
      begin
        vtprd.Append;
        for i := 0 to tprd.FieldCount - 1 do
        begin
          vtprd.Fields[i].AsString := tprd.Fields[i].AsString;
        end;


        vtprd.Post;
        tprd.Next;
      end;

      ivd.first;
      while not ivd.Eof do
      begin

        vtprd.Append;
        vtprdeprdata.AsString := ivdivdregistro.AsString;
        vtprdeprquanti.AsString := ivdivdquantidade.AsString;
        vtprdepracumulado.AsString := ivdivdquantidade.AsString;
        vtprdetdidentificacao.AsString := 'Inventário realizado nesta data';
        vtprdunisimbolo.AsString := ivdunisimbolo.AsString;
        vtprdmesinclusao.AsString := ivdivdregistro.AsString;
        vtprdmesemissao.AsString := ivdspddatabalanco.AsString;

        vtprd.Post;

        ivd.Next;
      end;

      cfg.Close;
      cfg.ParamByName('flacodigo').AsInteger := Acesso.Filial;
      cfg.Open;

      if (cfg.FieldByName('atvcodigo').AsInteger = atvrestaurante) or ((cfg.FieldByName('atvcodigo').AsInteger = atvmercado)) then
      begin
        vtprd.IndexFieldNames := 'mesinclusao';
        for c := 0 to listaDisp.Columns.Count - 1 do
        begin
          if listaDisp.Columns[c].FieldName = 'mesemissao' then
            listaDisp.Columns[c].Visible := false;
        end;

      end
      else
      begin
        vtprd.IndexFieldNames := 'eprdata';
      end;

      vtprd.first;
      vlSaldo := vtprdepracumulado.AsFloat;
      while not vtprd.Eof do
      begin
        vtprd.Edit;

        if vtprdetdidentificacao.AsString <> 'Inventário realizado nesta data' then
        begin
          if (vtprdtmecodigo.AsInteger = 0) and (vtprdsdecodigo.AsString <> '02') then
          begin

            if vtprdttecodigo.AsInteger = tteEntrada then
              vlSaldo := vlSaldo + vtprdeprquanti.AsFloat
            else
              vlSaldo := vlSaldo - vtprdeprquanti.AsFloat;

          end;

        end
        else
        begin
          vlSaldo := vtprdepracumulado.AsFloat;
        end;
        vtprdepracumulado.AsFloat := vlSaldo;
        vtprd.Post;
        vlSaldo := vtprdepracumulado.AsFloat;
        vtprd.Next;
      end;

    end;

    if vlSaldos or vlAmbos then
    begin

      exp.Close;
      exp.Params[0].AsInteger := Self.registroprocodigo.AsInteger;
      exp.Params[1].AsDate := Self.registroexpdtinicial.AsFloat;
      exp.Params[2].AsDate := Self.registroexpdtfinal.AsFloat;
      exp.ExecSQL;

      ivt.Close;
      ivt.Params[0].AsInteger := Self.registroprocodigo.AsInteger;
      ivt.Params[1].AsDate := Self.registroexpdtinicial.AsFloat;
      ivt.Params[2].AsDate := Self.registroexpdtfinal.AsFloat;
      ivt.ExecSQL;

      tprg.Close;
      tprg.Open;
      tprg.first;

      vtprg.Close;
      vtprg.Clear;
      vtprg.Open;

      while not tprg.Eof do
      begin
        vtprg.Append;
        for i := 0 to tprg.FieldCount - 1 do
        begin
          vtprg.Fields[i].AsString := tprg.Fields[i].AsString;
        end;



        vtprg.Post;
        tprg.Next;
      end;

      ivt.first;
      while not ivt.Eof do
      begin

        vtprg.Append;
        vtprgeprdata.AsString := ivtivtregistro.AsString;
        vtprgmesregistro.AsString := ivtspddatabalanco.AsString;
        vtprgmesinclusao.AsString := ivtspddatabalanco.AsString;

        vtprgeprquanti.AsString := ivtivtquantidade.AsString;
        vtprgepracumulado.AsString := ivtivtquantidade.AsString;
        vtprgetdidentificacao.AsString := 'Inventário realizado nesta data';
        vtprgunisimbolo.AsString := ivtunisimbolo.AsString;
        vtprgmesinclusao.AsString := datetimetostr(Strtodatetime(ivtspddatabalanco.AsString + ' 23:59:00'));
        vtprg.Post;

        ivt.Next;
      end;

      vtprg.IndexFieldNames := 'eprdata,mesinclusao';
      vtprg.first;
      vlSaldo := vtprgepracumulado.AsFloat;
      while not vtprg.Eof do
      begin
        vtprg.Edit;

        if vtprgetdidentificacao.AsString <> 'Inventário realizado nesta data' then
        begin
          if (vtprgtmecodigo.AsInteger = 0) and (vtprgsdecodigo.AsString <> '02') and (vtprgsdecodigo.AsString <> '04') then
          begin
            if vtprgttecodigo.AsInteger = tteEntrada then
              vlSaldo := vlSaldo + vtprgeprquanti.AsFloat
            else
              vlSaldo := vlSaldo - vtprgeprquanti.AsFloat;

          end;

        end
        else
        begin
          vlSaldo := vtprgepracumulado.AsFloat;
        end;
        vtprgepracumulado.AsFloat := vlSaldo;
        vtprg.Post;
        vlSaldo := vtprgepracumulado.AsFloat;
        vtprg.Next;
      end;

    end;

  finally

    ivd.EnableControls;
    ivt.EnableControls;

    vtprg.EnableControls;
    vtprd.EnableControls;
  end;
end;

procedure Tfexp.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;

  salvacolunas(lista);
  salvacolunas(listaDisp);

end;

procedure Tfexp.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;
  // carregacolunas(lista);
  // carregacolunas(listaDisp);

  Pldisp.Visible := false;
  Pldisp.Visible := false;

  expdtfinal.Field.AsString := hoje(application, ZCone);
  CarregaColunas(listaDisp);
  CarregaColunas(lista);

end;

procedure Tfexp.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  Self.registroclbcodigo.AsInteger := Acesso.Usuario;
  Self.registroexpdtinicial.AsFloat := Date - 30;
  Self.registroexpdtfinal.AsFloat := Date;
  Self.registroprocodigo.AsString := Self.vChaveMestre;
end;

procedure Tfexp.gridzebradoLocal(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
begin
  fixRect := Rect;

  If odd((Sender as TDBGrid).DataSource.DataSet.RecNo) Then
  begin
    (Sender as TDBGrid).Canvas.Brush.Color := PEG_COR_BASE;
    (Sender as TDBGrid).Canvas.Font.Color := CLWHITE;
  end
  Else
    (Sender as TDBGrid).Canvas.Brush.Color := CLWHITE;

  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('ttecodigo').AsInteger = 1 then
    (Sender as TDBGrid).Canvas.Font.Color := clBlack
  else
    (Sender as TDBGrid).Canvas.Font.Color := clNavy;

  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('sdecodigo').AsString = '02' then
    (Sender as TDBGrid).Canvas.Font.Color := clRed;

  if (Sender as TDBGrid).DataSource.DataSet.FieldByName('etdidentificacao').AsString = 'Inventário realizado nesta data' then
    (Sender as TDBGrid).Canvas.Brush.Color := $00D7FFFF;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID; // $004080FF;
      FillRect(fixRect);
    End;

  if Column.FieldName = 'epracumulado' then
  begin

    with (Sender as TDBGrid).Canvas do
    begin
      FillRect(fixRect);
      Font.Color := clNavy;
      Font.Style := [fsbold];
    end;

  end
  else
  begin

    with (Sender as TDBGrid).Canvas do
    begin
      FillRect(fixRect);
      // Font.Color := clNavy;
      Font.Style := [];
    end;

  end;

  with TFriendly((Sender as TDBGrid)) do
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. Check against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := PEG_COR_SELCGRID;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);
end;

end.
