unit ufraltp;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfraltp = class(Tfrabase)
    uqtabelaltpcodigo: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapronome: TStringField;
    uqtabelaltplote: TStringField;
    uqtabelaltpvencimento: TDateField;
    uqtabelasltnome: TStringField;
    ActMarcarEmAberto: TAction;
    ActDesmarcarEmAberto: TAction;
    slt: TUniQuery;
    sltsltcodigo: TIntegerField;
    sltsltnome: TStringField;
    uqtabelasltcodigo: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActMarcarEmAbertoExecute(Sender: TObject);
    procedure ActDesmarcarEmAbertoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraltp: Tfraltp;

  // Início ID do Módulo fraltp
const
  vPlIdMd = '02.04.05.001-01';
  vPlTitMdl = 'Lotes dos Produtos';

  // Fim ID do Módulo framit

implementation

{$R *.dfm}

uses ufltp;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraltp := Tfraltp.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraltp := Tfraltp.Create(pCargaFrame);
  try
    fraltp.CriaAcoesDeAcesso;
  finally
    fraltp.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraltp.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfltp, self.uqtabelaltpcodigo.AsString, '');
end;

procedure Tfraltp.ActDesmarcarEmAbertoExecute(Sender: TObject);
begin
  inherited;

  consulta.Close;
  consulta.SQL.Text := 'update ltp set sltcodigo = 1 where ltpcodigo = ' + self.uqtabelaltpcodigo.AsString;
  consulta.ExecSQL;
  self.ActAtualizar.Execute;
end;

procedure Tfraltp.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfltp, '', '');
end;

procedure Tfraltp.ActMarcarEmAbertoExecute(Sender: TObject);
begin
  inherited;
  consulta.Close;
  consulta.SQL.Text := 'update ltp set sltcodigo = 0 where ltpcodigo = ' + self.uqtabelaltpcodigo.AsString;
  consulta.ExecSQL;
  self.ActAtualizar.Execute;

end;

procedure Tfraltp.Carregar;
begin
  inherited;

  if (PlBotaoFiltroEsp.FindComponent('bActEmAberto') is TCheckBox) then
    if (PlBotaoFiltroEsp.FindComponent('bActEmAberto') as TCheckBox).Checked = False then
      (PlBotaoFiltroEsp.FindComponent('bActEmAberto') as TCheckBox).Checked := True;

  PlBotaoFiltroEsp.Visible := True;
end;

end.
