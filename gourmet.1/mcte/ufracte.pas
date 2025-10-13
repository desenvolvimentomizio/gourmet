unit ufracte;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Data.DB, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase;

type
  Tfracte = class(Tfrabase)
    uqtabelactechave: TIntegerField;
    uqtabelacteoperacao: TStringField;
    uqtabelacteemissor: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelactenumero: TStringField;
    uqtabelacteemissao: TDateField;
    uqtabelactevalor: TFloatField;
    uqtabelactedesconto: TFloatField;
    uqtabelactevalordoc: TFloatField;
    uqtabelactebicm: TFloatField;
    uqtabelacteicm: TFloatField;
    uqtabelactedtaquis: TDateField;
    uqtabelatcfcodigo: TStringField;
    uqtabelarefcodigo2: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  fracte: Tfracte;

  // Início ID do Módulo fracte
const
  vPlIdMd = '03.08.17.001-01';
  vPlTitMdl = 'Conhecimentos de Transporte';

  // Fim ID do Módulo fracte

implementation

{$R *.dfm}

uses ufcte;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracte := Tfracte.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracte := Tfracte.Create(pCargaFrame);
  try
    fracte.CriaAcoesDeAcesso;
  finally
    fracte.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracte.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfcte, self.uqtabelactechave.AsString, '');
end;

procedure Tfracte.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(tfcte, '', '');
end;

procedure Tfracte.Carregar;
begin
  inherited Carregar;

  if (PlBotaoFiltroEsp.FindComponent('bActNormal') is TCheckBox) then
    if (PlBotaoFiltroEsp.FindComponent('bActNormal') as TCheckBox).Checked = False then
      (PlBotaoFiltroEsp.FindComponent('bActNormal') as TCheckBox).Checked := True;
end;

end.
