unit ufranpp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase;

type
  Tfranpp = class(Tfrabase)
    uqtabelanppchave: TIntegerField;
    uqtabelappscodigo: TStringField;
    uqtabelanppncm: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    procedure atualizacolunas;
    procedure Carregar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  franpp: Tfranpp;

  // Início ID do Módulo frapun
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'NCM de Produtos para Substituição';

  // Fim ID do Módulo frapun

implementation

uses
  ufnpp;

{$R *.dfm}

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  franpp := Tfranpp.Create(pCargaFrame);
//  franpp.uqtabela.Filter := 'ppscodigo=' + QuotedStr(franpp.vChaveMestre);
//  franpp.uqtabela.Filtered := True;

  // franpp.Carregar;
  Result := franpp;
end;

exports execute;

procedure Tfranpp.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfnpp, Self.uqtabelanppchave.AsString, vChaveMestre);
end;

procedure Tfranpp.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfnpp, '', vChaveMestre);
end;

procedure Tfranpp.atualizacolunas;
begin

end;

procedure Tfranpp.Carregar;
begin
  if FormaFrame = ffDocado then
  begin
    uqtabela.Filter := 'ppscodigo=' + QuotedStr(vChaveMestre);
    uqtabela.Filtered := True;
  end;

  inherited;

end;

end.
