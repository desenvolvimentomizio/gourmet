unit ufbolgeb;

interface

uses
  Winapi.Windows, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Uni, Vcl.ComCtrls,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ImgList, PngImageList, System.Actions,
  Vcl.ActnList, MemDS, DBAccess, ufrmbase, ufuncoes, System.ImageList, uPegaBase;

type
  Tfbolgeb = class(Tfrmbase)
    registrogebcodigo: TIntegerField;
    registrocarcodigo: TIntegerField;
    registroclbcodigo: TIntegerField;
    registrotrmcodigo: TIntegerField;
    Label1: TLabel;
    gebcodigo: TDBEdit;
    Label2: TLabel;
    carcodigo: TDBEdit;
    Label3: TLabel;
    clbcodigo: TDBEdit;
    clb: TUniQuery;
    car: TUniQuery;
    clbclbcodigo: TIntegerField;
    clbclbidentificacao: TStringField;
    carcarcodigo: TIntegerField;
    carcaridentificacao: TStringField;
    registrocaridentificacao: TStringField;
    registroclbidentificacao: TStringField;
    bBuscaParcelas: TBitBtn;
    rfi: TUniQuery;
    DSrfi: TUniDataSource;
    gbr: TUniQuery;
    gbrgbrcodigo: TIntegerField;
    gbrgebcodigo: TIntegerField;
    gbrrfichave: TIntegerField;
    cfgcfgcarteirapadrao: TIntegerField;
    rfirfichave: TIntegerField;
    rfititcodigo: TIntegerField;
    rfietdcodigo: TIntegerField;
    rfietdidentificacao: TStringField;
    rfibcocodigo: TStringField;
    rfibconome: TStringField;
    rficarcodigo: TIntegerField;
    rfirfiemissao: TDateField;
    rfirfivencimento: TDateField;
    rfirfidias: TIntegerField;
    rfirfinumero: TStringField;
    rfisrfidentificacao: TStringField;
    rfirfivalor: TFloatField;
    rfirfijuros: TFloatField;
    rfirfimulta: TFloatField;
    rfirfidesconto: TFloatField;
    rfirfisaldogeral: TFloatField;
    rfirfihistorico: TStringField;
    PlParcelas: TPanel;
    GBTotalParcelas: TGroupBox;
    PlTotalParcelasSel: TPanel;
    GBParcelas: TGroupBox;
    PlQtdeSel: TPanel;
    DBGParcelas: TDBGrid;
    rfirfisaldocapital: TFloatField;
    tteb: TUniQuery;
    ttebtitcodigo: TIntegerField;
    ttebetdcodigo: TIntegerField;
    uqtabela: TUniQuery;
    etd: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure bBuscaParcelasClick(Sender: TObject);
    procedure DBGParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure bconfirmaClick(Sender: TObject);
    procedure carcodigoEnter(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure registroBeforePost(DataSet: TDataSet);
  private
    FConexao: TUniConnection;
    FCarteira: Integer;
    FTitulo: Integer;
    FQtdParcelas: Integer;
    FValorParcelas: Double;
    procedure AtualizaTotais;
    procedure BuscaParcelas(modulo: string);
    procedure ModuloBoleto(vRotina: TRotinasBoletos; vGebCodigo: Integer = 0; vBolChave: Integer = 0);
    procedure SetConexao(const Value: TUniConnection);
    procedure SetTitulo(const Value: Integer);
    procedure ProcessaBoletoVenda;
    procedure ProcessaParcelasVenda;
    function GetCarteira: Integer;
    procedure SetQtdParcelas(const Value: Integer);
    procedure SetValorParcelas(const Value: Double);
    procedure enviaemails;
    procedure ModuloBoletoEmail;
    { Private declarations }

  published
    property Conexao: TUniConnection read FConexao write SetConexao;
    property Carteira: Integer read GetCarteira;
    property Titulo: Integer read FTitulo write SetTitulo;

    (* Totais das Parcelas *)
    property QtdParcelas: Integer read FQtdParcelas write SetQtdParcelas;
    property ValorParcelas: Double read FValorParcelas write SetValorParcelas;
  public
    { Public declarations }
  end;

var
  fbolgeb: Tfbolgeb;

implementation

{$R *.dfm}

function GeraBoletoVenda(AOwner: TComponent; Conexao: TUniConnection; Acesso: TAcesso; vUsrCodigo, vTrmCodigo: Integer; vTitCodigo: Integer): Integer;
begin
  fbolgeb := Tfbolgeb.Create(AOwner);
  try
    fbolgeb.Conexao := Conexao;

    fbolgeb.Acesso.Usuario := vUsrCodigo;
    fbolgeb.Acesso.Terminal := vTrmCodigo;

    fbolgeb.Titulo := vTitCodigo;
    fbolgeb.Acesso := Acesso;

    fbolgeb.ProcessaBoletoVenda;
  finally
    Result := fbolgeb.registrogebcodigo.AsInteger;
    fbolgeb.Free;
  end;
end;

exports GeraBoletoVenda;

procedure Tfbolgeb.AtualizaTotais;
var
  vlValorParcelas: Double;
begin
  rfi.DisableControls;
  try
    vlValorParcelas := 0;

    rfi.First;
    while not rfi.Eof do
    begin
      vlValorParcelas := vlValorParcelas + rfirfisaldogeral.AsFloat;
      rfi.Next;
    end;

    ValorParcelas := vlValorParcelas;
    QtdParcelas := rfi.RecordCount;
  finally
    rfi.EnableControls;
  end;
end;

procedure Tfbolgeb.bBuscaParcelasClick(Sender: TObject);
begin
  inherited;
  if (registro.State in [dsEdit, dsInsert]) then
    registro.Post;
  registro.Edit;

  BuscaParcelas('mbol');

  rfi.Params[0].AsInteger := registrogebcodigo.AsInteger;
  rfi.Params[1].AsInteger := Acesso.Filial;
  if not rfi.Active then
    rfi.Open
  else
    rfi.Refresh;

  AtualizaTotais;
end;

procedure Tfbolgeb.FormShow(Sender: TObject);
begin
  inherited;

  registroclbcodigo.AsInteger := Acesso.Usuario;
  clbcodigo.Enabled := False;
  clbcodigo.Color := PEG_COR_VALORPADRAO;
end;

function Tfbolgeb.GetCarteira: Integer;
begin
  if Self.Visible then
    Exit(0);

  if not cfg.Active then
    cfg.Open;

  Result := cfgcfgcarteirapadrao.AsInteger;
end;

procedure Tfbolgeb.ModuloBoleto(vRotina: TRotinasBoletos; vGebCodigo, vBolChave: Integer);
type
  TModuloBoleto = function(AOwner: TComponent; Conexao: TUniConnection; vRotina: TRotinasBoletos; Acesso: TAcesso; vGebCodigo: Integer = 0; vBolChave: Integer = 0;
    vRmbCodigo: Integer = 0): Boolean;
var
  Exec: TModuloBoleto;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('ModuloBoleto'));

      if not Assigned(Exec) then
        Exit;

      if Exec(Application, zcone, vRotina, Acesso, vGebCodigo, vBolChave) then
      begin
        enviaemails;
      end;
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
end;

procedure Tfbolgeb.ProcessaBoletoVenda;
var
  vlGebCodigo: Integer;
  vlcarCodigo: Integer;
begin
  fbolgeb.consulta.Close;
  fbolgeb.consulta.SQL.Text := 'SELECT rfi.rfichave, gbr.gebcodigo,carcodigo FROM rfi, gbr WHERE rfi.rfichave=gbr.rfichave and rfi.titcodigo = :titcodigo and flacodigo=:flacodigo';
  fbolgeb.consulta.Params[0].AsInteger := Titulo;
  fbolgeb.consulta.Params[1].AsInteger := Acesso.Filial;

  fbolgeb.consulta.Open;

  if fbolgeb.consulta.IsEmpty then
  begin
    fbolgeb.registro.Close;
    fbolgeb.registro.Params[0].AsInteger := 0;
    fbolgeb.registro.Open;
    fbolgeb.registro.Append;
    fbolgeb.registro.Post;
  end
  else
  begin
    vlGebCodigo := consulta.Fields[1].AsInteger;
    vlcarCodigo := consulta.Fields[2].AsInteger;

    consulta.Close;
    consulta.SQL.Text := 'update geb set carcodigo=' + Inttostr(vlcarCodigo) + ' where gebcodigo=' + Inttostr(vlGebCodigo);
    consulta.ExecSQL;

    fbolgeb.registro.Close;
    fbolgeb.registro.Params[0].AsInteger := vlGebCodigo;
    fbolgeb.registro.Open;

  end;
  ProcessaParcelasVenda;
end;

procedure Tfbolgeb.ProcessaParcelasVenda;
begin
  consulta.Close;
  consulta.SQL.Text := 'SELECT rfi.rfichave, gbr.gbrcodigo FROM rfi, gbr WHERE gbr.rfichave=rfi.rfichave and titcodigo = :titcodigo and rfi.flacodigo=:flacodigo';
  consulta.Params[0].AsInteger := Titulo;
  consulta.Params[1].AsInteger := Acesso.Filial;
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    gbr.Close;
    gbr.Params[0].AsInteger := consulta.Fields[1].AsInteger;
    gbr.Open;

    while not consulta.Eof do
    begin
      if not gbr.Locate('rfichave', consulta.Fields[0].AsInteger, []) then
      begin
        gbr.Append;
        gbrgebcodigo.AsInteger := registrogebcodigo.AsInteger;
        gbrrfichave.AsInteger := consulta.Fields[0].AsInteger;
        gbr.Post;
      end;
      consulta.Next;
    end;
  end
  else
  begin

    gbr.Close;
    gbr.Params[0].AsInteger := 0;
    gbr.Open;

    consulta.Close;
    consulta.SQL.Text := 'SELECT rfi.rfichave FROM rfi WHERE titcodigo = :titcodigo and flacodigo=:flacodigo';
    consulta.Params[0].AsInteger := Titulo;
    consulta.Params[1].AsInteger := Acesso.Filial;
    consulta.Open;

    while not consulta.Eof do
    begin
      gbr.Append;
      gbrgebcodigo.AsInteger := registrogebcodigo.AsInteger;
      gbrrfichave.AsInteger := consulta.Fields[0].AsInteger;
      gbr.Post;
      consulta.Next;
    end;

  end;



end;

procedure Tfbolgeb.ModuloBoletoEmail;
type
  TModuloBoletoEmail = function(AOwner: TComponent; pConexao: TUniConnection; Acesso: TAcesso; pGebCodigo, pUsuario: Integer): Boolean;
var
  Exec: TModuloBoletoEmail;
begin
  Pack := LoadPackage('modulos\mbol.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('ModuloBoletoEmail'));

      if not Assigned(Exec) then
        Exit;

      uqtabela.Close;
      uqtabela.ParamByName('flacodigo').AsInteger := Acesso.Filial;
      uqtabela.ParamByName('titcodigo').AsInteger := Titulo;
      uqtabela.Open;

      while not uqtabela.Eof do
      begin
        Exec(Application, zcone, Acesso, uqtabela.FieldByName('gebcodigo').AsInteger, Acesso.Usuario);
        uqtabela.Next;
      end;

    finally
      // DoUnLoadPackage(Pack);
    end;
end;

procedure Tfbolgeb.enviaemails;
begin

  consulta.Close;
  consulta.SQL.Text := 'DROP TEMPORARY TABLE IF EXISTS tt_titulos_email_boleto;';
  consulta.ExecSQL;

  tteb.Open;

  uqtabela.Close;
  uqtabela.ParamByName('flacodigo').AsInteger := Acesso.Filial;
  uqtabela.ParamByName('titcodigo').AsInteger := Titulo;
  uqtabela.Open;

  etd.Close;
  etd.ParamByName('titcodigo').AsInteger := Titulo;
  etd.Open;

  try
    tteb.Append;
    ttebtitcodigo.AsInteger := Titulo;
    ttebetdcodigo.AsInteger := etd.FieldByName('etdcodigo').AsInteger;
    tteb.Post;

    tteb.ApplyUpdates;
    ModuloBoletoEmail;
  finally
    tteb.Close;
  end;

end;

procedure Tfbolgeb.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrotrmcodigo.AsInteger := Acesso.Terminal;
  registroclbcodigo.AsInteger := Acesso.Usuario;

end;

procedure Tfbolgeb.registroBeforePost(DataSet: TDataSet);
begin
  inherited;

  if (Carteira <> 0) and (Carteira <> 1) then
    registrocarcodigo.AsInteger := Carteira
  else
  begin
    if Titulo <> 0 then
    begin
      fbolgeb.consulta.Close;
      fbolgeb.consulta.SQL.Text := 'select rfi.carcodigo from rfi, tit where rfi.titcodigo=tit.titcodigo and tit.titcodigo=' + Inttostr(Titulo) + ' and rfi.flacodigo=' +
        Acesso.Filial.ToString;
      fbolgeb.consulta.Open;
      registrocarcodigo.AsInteger := consulta.Fields[0].AsInteger;
    end;
  end;

end;

procedure Tfbolgeb.SetTitulo(const Value: Integer);
begin
  FTitulo := Value;
end;

procedure Tfbolgeb.SetValorParcelas(const Value: Double);
begin
  FValorParcelas := Value;

  PlTotalParcelasSel.Caption := FormatFloat('#,###,##0.00', FValorParcelas);
end;

procedure Tfbolgeb.SetConexao(const Value: TUniConnection);
var
  i: Integer;
begin
  FConexao := Value;
  zcone := FConexao;

  for i := 0 to fbolgeb.ComponentCount - 1 do
    if fbolgeb.Components[i] is TUniQuery then
      (fbolgeb.Components[i] as TUniQuery).Connection := fbolgeb.FConexao;
end;

procedure Tfbolgeb.SetQtdParcelas(const Value: Integer);
begin
  FQtdParcelas := Value;

  PlQtdeSel.Caption := Inttostr(FQtdParcelas);
end;

procedure Tfbolgeb.bconfirmaClick(Sender: TObject);
begin
  (* Trata mais de um click do usuário *)
  if (ModalResult = mrOk) then
    Exit;

  if rfi.IsEmpty then
  begin
    Application.MessageBox(PChar('Nenhuma parcela selecionada para geração de boleto!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Exit;
  end;

  inherited;

  if not(ModalResult = mrOk) then
    Exit;

  ModuloBoleto(rblGeracao, registrogebcodigo.AsInteger);
end;

Procedure Tfbolgeb.BuscaParcelas(modulo: string);
type
  TBuscaParcelas = function(AOwner: TComponent; Conexao: TUniConnection; vUsuario: string; Acesso: TAcesso; vGebCodigo: Integer; Finalidade: TRotinasBoletos): String;
var
  Exec: TBuscaParcelas;
begin

  Pack := LoadPackage('modulos\' + modulo + '.bpl');
  if Pack <> 0 then
    try
      @Exec := GetProcAddress(Pack, PChar('BuscaParcelas'));

      if not Assigned(Exec) then
        Exit;

      Exec(Application, zcone, Acesso.Usuario.ToString, Acesso, registrogebcodigo.AsInteger, rblGeracao);
    finally
      // DoUnLoadPackage(Application, Pack);
    end;
End;

procedure Tfbolgeb.carcodigoEnter(Sender: TObject);
begin
  txtFiltro := 'tctcodigo = ' + QuotedStr(Inttostr(tctContaBancaria));
end;

procedure Tfbolgeb.DBGParcelasDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

end.
