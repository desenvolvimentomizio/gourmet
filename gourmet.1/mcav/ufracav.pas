unit ufracav;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, DAScript, UniScript,
   System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfracav = class(Tfrabase)
    uqtabelacavchave: TIntegerField;
    uqtabelaacosigla: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaetdapelido: TStringField;
    uqtabelacavpasta: TStringField;
    uqtabelacavdiavcto: TIntegerField;
    ActParticipacoes: TAction;
    ActFaturamento: TAction;
    rap: TUniQuery;
    rapetdidentificacao: TStringField;
    rapcavpasta: TStringField;
    raprappercentual: TFloatField;
    Drap: TDataSource;
    plParticipaoes: TPanel;
    Panel2: TPanel;
    DBGRap: TDBGrid;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActParticipacoesExecute(Sender: TObject);
    procedure DBGRapDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActFaturamentoExecute(Sender: TObject);

  private
    function Faturar(vfuncao: string; Acesso: TAcesso; pCavChave: string): String;
    { Private declarations }
  public
    { Public declarations }
  end;

  TProcessaFaturamento = function(AOwner: TComponent; Conexao: TUniConnection; pCavChave: string; pAcesso: TAcesso; pParcelas: Integer = 1): string;

var
  fracav: Tfracav;

const
  vPlIdMd = '';
  vPlTitMdl = 'Contratos';

implementation

uses
  ufcav;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracav := Tfracav.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracav := Tfracav.Create(pCargaFrame);
  try
    fracav.CriaAcoesDeAcesso;
  finally
    fracav.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracav.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcav, Self.uqtabelacavchave.AsString, '');
end;

function Tfracav.Faturar(vfuncao: string; Acesso: TAcesso; pCavChave: string): String;
// TProcessaFaturamento = function(AOwner: TComponent; Conexao: TUniConnection; pCavChave: string; pAcesso: TAcesso; pParcelas: Integer = 1): string;
var
  ProcessaFaturamento: TProcessaFaturamento;
  vlPackFCA: Cardinal;
  vlRetorno: String;
begin
  Result := '';
  vlPackFCA := 0;
  vlPackFCA := LoadPackage('modulos\mfca.bpl');
  if vlPackFCA <> 0 then
    @ProcessaFaturamento := GetProcAddress(vlPackFCA, PChar(vfuncao));

  if Assigned(ProcessaFaturamento) then
  begin
    vlRetorno := ProcessaFaturamento(Application, ZCone, pCavChave, Acesso);
    Result := vlRetorno;

  end;
  UnLoadPackage(vlPackFCA);
End;

procedure Tfracav.ActFaturamentoExecute(Sender: TObject);
begin
  inherited;
   Faturar('ProcessaFaturamento',acesso,'');
end;

procedure Tfracav.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfcav, '', '');
end;

procedure Tfracav.ActParticipacoesExecute(Sender: TObject);
begin
  inherited;
  MostraLista('mrap', '', uqtabelacavchave.AsString);
end;

procedure Tfracav.DBGRapDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

end.
