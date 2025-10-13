unit ufracch;

interface

uses
  Winapi.Windows, System.SysUtils, Vcl.Forms, ufrabase, Data.DB, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, uFuncoes, uPegaBase,
  System.ImageList, Vcl.ImgList, Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Graphics;

type
  Tfracch = class(Tfrabase)
    uqtabelachechave: TIntegerField;
    uqtabelacheemissao: TDateField;
    uqtabelachevencimento: TDateField;
    uqtabelachenumero: TStringField;
    uqtabelacheconta: TStringField;
    uqtabelacheagencia: TStringField;
    uqtabelabcocodigo: TStringField;
    uqtabelachenome: TStringField;
    uqtabelachedocumento: TStringField;
    uqtabelachetelefone: TStringField;
    uqtabelachevalor: TFloatField;
    uqtabelaschidentificacao: TStringField;
    uqtabelaschcodigo: TIntegerField;
    uqtabelaltcchave: TIntegerField;
    uqtabelactacodigo: TIntegerField;
    uqtabelactaidentificacao: TStringField;
    uqtabelaccochave: TIntegerField;
    GroupBox3: TGroupBox;
    PlRegistrado: TPanel;
    GroupBox1: TGroupBox;
    PlPendentes: TPanel;
    ActLiquidar: TAction;
    procedure ActAtualizarExecute(Sender: TObject);
    procedure ActLiquidarExecute(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;

    procedure CalculaTotal;
  end;

var
  fracch: Tfracch;

  // Início ID do Módulo fracch
const
  vPlIdMd = '02.02.14.002-01';
  vPlTitMdl = 'Controle de Cheques';

  // Fim ID do Módulo fracch

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracch := Tfracch.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracch := Tfracch.Create(pCargaFrame);
  try
    fracch.CriaAcoesDeAcesso;
  finally
    fracch.Free;
  end;
end;

exports defineacesso, formuFrame;

procedure Tfracch.ActAtualizarExecute(Sender: TObject);
begin
  inherited;
  CalculaTotal;
end;

procedure Tfracch.ActLiquidarExecute(Sender: TObject);
begin
  inherited;
  if Application.MessageBox(Pchar('Confirma a liquidação do cheque selecionado?'), Pchar('Liquidar'), MB_TASKMODAL + MB_ICONQUESTION + MB_YESNO + MB_DEFBUTTON2)
    = idYes then
  begin
    consulta.Close;
    consulta.SQL.Text := 'update ltc set schcodigo=5 where ltcchave=' + uqtabelaltcchave.AsString;
    consulta.ExecSQL;
    self.ActAtualizar.Execute;
  end;

end;

procedure Tfracch.CalculaTotal;
var
  vlRegistro: Integer;
  vlTotal: double;
  vlPendentes: double;

begin
  vlTotal := 0;
  vlPendentes := 0;

  vlRegistro := uqtabelachechave.AsInteger;
  uqtabela.DisableControls;

  uqtabela.First;
  while not uqtabela.Eof do
  begin
    vlTotal := vlTotal + uqtabelachevalor.AsFloat;

    if uqtabelaschcodigo.AsInteger = schPendente then
      vlPendentes := vlPendentes + uqtabelachevalor.AsFloat;

    uqtabela.Next;
  end;

  uqtabela.Locate('chechave', vlRegistro, []);
  uqtabela.EnableControls;

  PlRegistrado.Caption := FormatFloat('#,##0.00', vlTotal);
  PlPendentes.Caption := FormatFloat('#,##0.00', vlPendentes);
end;

procedure Tfracch.Carregar;
begin
  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
    begin
      uqtabela.Filter := TxtFiltro;
      uqtabela.Filtered := True;
    end;

  inherited;
end;

end.
