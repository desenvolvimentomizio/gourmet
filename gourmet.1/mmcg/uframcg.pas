unit uframcg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase, System.Math, ufuncoes, Vcl.ComCtrls,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tframcg = class(Tfrabase)
    uqtabelamcgchave: TIntegerField;
    uqtabelaccgcodigo: TIntegerField;
    uqtabelaccgidentificacao: TStringField;
    uqtabelamcgvalor: TFloatField;
    uqtabelamcgdata: TDateField;
    GroupBox2: TGroupBox;
    PlARegistrar: TPanel;
    GroupBox3: TGroupBox;
    PlRegistrado: TPanel;
    GroupBox7: TGroupBox;
    PlDiferenca: TPanel;
    uqtabelamcgcompetencia: TStringField;
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActSairExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    FRfiChave: String;
    FPcbChave: String;
    FVlrTotal: Double;
    FVlrRegistrado: Double;
    FVlrSaldo: Double;
    procedure CalculaTotal;
    { Private declarations }
    procedure SetVlrTotal(const Value: String);
    procedure SetVlrRegistrado(const Value: Double);
    procedure SetPcbChave(const Value: String);
    procedure SetRfiChave(const Value: String);
    procedure SetVlrSaldo(const Value: Double);
  published
    property RfiChave: String read FRfiChave write SetRfiChave;

    property PcbChave: String read FPcbChave write SetPcbChave;
    property VlrTotal: String write SetVlrTotal;
    property VlrRegistrado: Double read FVlrRegistrado write SetVlrRegistrado;
    property VlrSaldo: Double read FVlrSaldo write SetVlrSaldo;

  public
    { Public declarations }
    vpRfiChave: String;
    procedure Carregar; override;
  end;

var
  framcg: Tframcg;

  // Início ID do Módulo fraprg
const
  vPlIdMd = '0.0.0.00-01';
  vPlTitMdl = 'Classificação Financeira';

  // Fim ID do Módulo fraprg

implementation

uses
  ufmcg;

{$R *.dfm}

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Modulo := pCargaFrame.Modulo;

  pCargaFrame.Titulo := vPlTitMdl;

  framcg := Tframcg.Create(pCargaFrame);

  framcg.Aplicacao := pCargaFrame.Modulo;

  Result := framcg;
end;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framcg := Tframcg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  framcg := Tframcg.Create(pCargaFrame);
  try
    framcg.CriaAcoesDeAcesso;
  finally
    framcg.Free;
  end;
end;

exports defineacesso, formuFrame, execute;

procedure Tframcg.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  if (vpRfiChave <> '') and (pos('#', TxtFiltro) = 0) then
    TxtFiltro := TxtFiltro + '#' + vpRfiChave;

  vChaveMestre := FPcbChave;
  CriaFormulario(Tfmcg, uqtabelamcgchave.AsString, vChaveMestre, TxtFiltro);
end;

procedure Tframcg.ActAtualizarExecute(Sender: TObject);
var
  vlnome: string;
begin

  uqtabela.FilterSQL := TxtFiltro;
  uqtabela.Params[0].AsString := FPcbChave;

  if pos('cco', TxtFiltro) > 0 then
  begin
    consulta.Connection := zcone;
    consulta.SQL.Text := 'select ccovalor from cco where ccochave=' + FPcbChave;
    consulta.Open;

    PlARegistrar.Caption := FormatFloat('#,##0.00', consulta.FieldByName('ccovalor').AsCurrency);
    SetVlrTotal(consulta.FieldByName('ccovalor').AsString);

    uqtabela.SQL.Text := 'SELECT mcg.mcgchave, mcg.ccgcodigo, ccg.ccgidentificacao, mcg.mcgvalor,  mcg.mcgdata, mcgcompetencia ';
    uqtabela.SQL.Add(' FROM mcg, ccg WHERE mcg.ccgcodigo=ccg.ccgcodigo and mcgchaveorigem=:mcgchaveorigem  ');
    uqtabela.SQL.Add(' -- filtros ');
    uqtabela.SQL.Add(' group by mcg.ccgcodigo ');

    uqtabela.ParamByName('mcgchaveorigem').AsString := FPcbChave;

    uqtabela.Open;

  end
  else if pos('rfi', TxtFiltro) > 0 then
  begin
    if vpRfiChave <> '' then
    begin
      uqtabela.SQL.Text := 'SELECT mcg.mcgchave, mcg.ccgcodigo, ccg.ccgidentificacao, mcg.mcgvalor,  mcg.mcgdata, mcgcompetencia ';
      uqtabela.SQL.Add(' FROM mcg, ccg WHERE mcg.ccgcodigo=ccg.ccgcodigo and mcgchaveorigem=:mcgchaveorigem and rfichave=:rfichave ');
      uqtabela.SQL.Add(' -- filtros ');

      uqtabela.ParamByName('mcgchaveorigem').AsString := FPcbChave;

      uqtabela.Params[1].AsString := vpRfiChave;
      uqtabela.Open;
    end
    else
    begin
      uqtabela.SQL.Text := 'SELECT mcg.mcgchave, mcg.ccgcodigo, ccg.ccgidentificacao, mcg.mcgvalor,  mcg.mcgdata, mcgcompetencia ';
      uqtabela.SQL.Add(' FROM mcg, ccg WHERE mcg.ccgcodigo=ccg.ccgcodigo and mcgchaveorigem=:mcgchaveorigem  ');
      uqtabela.SQL.Add(' -- filtros ');
      uqtabela.SQL.Add(' group by mcg.ccgcodigo ');

      uqtabela.ParamByName('mcgchaveorigem').AsString := FPcbChave;
      uqtabela.Open;

    end;

  end;

  // VlrTotal := consulta.Fields[0].AsString;

  { if pos('cco', TxtFiltro) > 0 then
    begin
    inherited;
    end; }

  if uqtabela.Active then
    CalculaTotal;

  if (FVlrSaldo <> 0) then
  begin
    Self.PodeFechar := False
  end
  else
  begin
    Self.PodeFechar := True;
  end;

  if (Self.Parent is TPanel) then
  begin
    vlnome := (Self.Parent as TPanel).Name;

    if ((((Self.Parent as TPanel).Parent as TTabSheet).Parent as TPageControl).Parent as tform).FindComponent('bconfirma') is TBitBtn then
    begin
      (((((Self.Parent as TPanel).Parent as TTabSheet).Parent as TPageControl).Parent as tform).FindComponent('bconfirma') as TBitBtn).Enabled := Self.PodeFechar;
    end;
  end;

end;

procedure Tframcg.ActIncluirExecute(Sender: TObject);
begin
  if (vpRfiChave <> '') and (pos('#', TxtFiltro) = 0) then
    TxtFiltro := TxtFiltro + '#' + vpRfiChave;

  vChaveMestre := FPcbChave;

  CriaFormulario(Tfmcg, '', vChaveMestre, TxtFiltro);
end;

procedure Tframcg.ActSairExecute(Sender: TObject);
begin

  if (FVlrSaldo <> 0) then
  begin
    Application.MessageBox(PChar('O valor registrado não pode ser diferente do que o valor a registrar!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    Self.PodeFechar := False;
    Exit;
  end
  else
  begin
    if FVlrSaldo < 0 then
    begin
      Application.MessageBox(PChar('O valor rateio esta maior que o valor principal!!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Self.PodeFechar := False;
      Exit;
    end
    else
    begin

      Self.PodeFechar := True;
      inherited;

    end;
  end;

end;

procedure Tframcg.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotal: Double;
begin

  PcbChave := vChaveMestre;

  if pos('cco', TxtFiltro) > 0 then
  begin
    consulta.Connection := zcone;
    consulta.SQL.Text := 'select ccovalor from cco where ccochave=' + FPcbChave;
    consulta.Open;

    SetVlrTotal(consulta.FieldByName('ccovalor').AsString);

  end;

  vlTotal := 0;
  vlRegistro := uqtabelamcgchave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotal := vlTotal + uqtabelamcgvalor.AsCurrency;
    uqtabela.Next;
  end;

  uqtabela.Locate('mcgchave', vlRegistro, []);
  uqtabela.EnableControls;

  VlrRegistrado := vlTotal;

end;

procedure Tframcg.Carregar;
begin
  PcbChave := vChaveMestre;

  if pos('cco', TxtFiltro) > 0 then
  begin
    consulta.Connection := zcone;
    consulta.SQL.Text := 'select ccovalor from cco where ccochave=' + FPcbChave;
    consulta.Open;
  end
  else if pos('rfi', TxtFiltro) > 0 then
  begin
    if pos('#', TxtFiltro) > 0 then
    begin
      vpRfiChave := trim(copy(TxtFiltro, pos('#', TxtFiltro) + 1, 10));
      TxtFiltro := copy(TxtFiltro, 1, pos('#', TxtFiltro) - 1);

    end;
    if vpRfiChave <> '' then
    begin

      consulta.Connection := zcone;
      consulta.SQL.Text := 'select rfivalor titvalor from tit,rfi where rfi.titcodigo=tit.titcodigo and rfi.srfcodigo<>9 and tit.titcodigo=' + FPcbChave + ' and rfi.rfichave=' +
        vpRfiChave;
      consulta.Open;

      if consulta.IsEmpty then
      begin
        consulta.Connection := zcone;
        consulta.Close;
        consulta.SQL.Text := 'select titvalor from tit where tit.titcodigo=' + FPcbChave;
        consulta.Open;
      end;

    end
    else
    begin
      consulta.Connection := zcone;
      consulta.Close;
      consulta.SQL.Text := 'select titvalor from tit where tit.titcodigo=' + FPcbChave;
      consulta.Open;

    end;
  end;

  if consulta.Active then
    VlrTotal := consulta.Fields[0].AsString;

  uqtabela.FilterSQL := TxtFiltro;
  inherited;

end;

procedure Tframcg.SetPcbChave(const Value: String);
begin
  FPcbChave := Value;
  vChave := FPcbChave;
end;

procedure Tframcg.SetRfiChave(const Value: String);
begin
  FRfiChave := Value;
  vpRfiChave := FRfiChave;
end;

procedure Tframcg.SetVlrRegistrado(const Value: Double);
begin
  FVlrRegistrado := Value;
  PlRegistrado.Caption := FormatFloat('#,##0.00', FVlrRegistrado);
  VlrSaldo := SimpleRoundTo(FVlrTotal - FVlrRegistrado, -2);
end;

procedure Tframcg.SetVlrSaldo(const Value: Double);
begin
  FVlrSaldo := Value;

  PlDiferenca.Caption := FormatFloat('#,##0.00', FVlrSaldo);

  if FVlrSaldo < 0 then
  begin
    PlDiferenca.Color := clWhite;
    PlDiferenca.Font.Color := clRed;
  end
  else
  begin
    PlDiferenca.Color := $00C08000;
    PlDiferenca.Font.Color := clWhite;
  end;
end;

procedure Tframcg.SetVlrTotal(const Value: String);
begin
  if Value <> '' then
  begin
    FVlrTotal := StrToFloat(BuscaTroca(Value, '.', ','));
    PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);
  end
  else
  begin
    FVlrTotal := 0;
    PlARegistrar.Caption := FormatFloat('#,##0.00', FVlrTotal);

  end;
end;

end.
