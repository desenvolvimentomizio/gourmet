unit ufradmc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, Vcl.StdCtrls, Vcl.DBCtrls, VirtualTable,
  Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Vcl.Dialogs,
  Vcl.Mask, Vcl.Graphics, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, 
  System.ImageList, Vcl.ImgList;

type
  Tfradmc = class(Tfrabase)
    uqtabeladmccodigo: TIntegerField;
    uqtabeladmcidentificacao: TStringField;
    plGrupodeContas: TPanel;
    plTitGruposContas: TPanel;
    DBGListaGre: TDBGrid;
    gre: TUniQuery;
    Dgre: TDataSource;
    gregrecodigo: TIntegerField;
    gregreidentificacao: TStringField;
    gredmccodigo: TIntegerField;
    plEventos: TPanel;
    plTitEventos: TPanel;
    DBGListaEva: TDBGrid;
    lbgreidentificacao: TDBText;
    dre: TUniQuery;
    dredrechave: TIntegerField;
    dregrecodigo: TIntegerField;
    dreccgcodigo: TIntegerField;
    dreccgidentificacao: TStringField;
    Ddre: TDataSource;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DgreDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fradmc: Tfradmc;

  // Início ID do Módulo fradmc
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Demonstrações Gerenciais';

  // Fim ID do Módulo fradmc

implementation

uses
  ufdmc;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fradmc := Tfradmc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fradmc := Tfradmc.Create(pCargaFrame);
  try
    fradmc.CriaAcoesDeAcesso;
  finally
    fradmc.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfradmc.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfdmc, uqtabeladmccodigo.AsString, '');
end;

procedure Tfradmc.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfdmc, '', '');
end;

procedure Tfradmc.Carregar;
begin
  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
    begin
      uqtabela.Filter := TxtFiltro;
      uqtabela.Filtered := True;
    end;

  inherited;

end;

procedure Tfradmc.DgreDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if not gre.Active then
    exit;

  if self.gregrecodigo.AsString = '' then
    exit;

  dre.Close;
  dre.Params[0].AsInteger := self.gregrecodigo.AsInteger;
  dre.Open;

end;

procedure Tfradmc.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;

  if not uqtabela.Active then
    exit;

  if self.uqtabeladmccodigo.AsString = '' then
    exit;

  gre.Close;
  gre.Params[0].AsInteger := self.uqtabeladmccodigo.AsInteger;
  gre.Open;

end;

end.
