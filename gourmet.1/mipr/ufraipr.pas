unit ufraipr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase,
  VirtualTable, Data.DB, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.Imaging.pngimage;

type
  Tfraipr = class(Tfrabase)
    uqtabelaiprcodigo: TIntegerField;
    uqtabelaflacodigo: TIntegerField;
    uqtabelaiprimpostovenda: TFloatField;
    uqtabelaiprcomissaovenda: TFloatField;
    uqtabelaiprcustooperacional: TFloatField;
    uqtabelaiprfretevendas: TFloatField;
    uqtabelaiprtaxajuros: TFloatField;
    uqtabelaiprinadimplenciaclientes: TFloatField;
    ipr: TUniQuery;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    FFilial: String;
    { Private declarations }

  published
    property Filial: String read FFilial write FFilial;
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraipr: Tfraipr;

  // Início ID do Módulo fravfe
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Índices para Precificação';

  // Fim ID do Módulo fravfe

implementation

{$R *.dfm}

uses ufipr;

procedure Tfraipr.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfipr, uqtabelaiprcodigo.AsString, Filial);
end;

procedure Tfraipr.ActIncluirExecute(Sender: TObject);
begin
  if not ipr.Active then
    ipr.Open;

  if not ipr.IsEmpty then
    Application.MessageBox(PChar('É permitido a definição de apenas um índice por Filial.'), 'Atenção', MB_ICONWARNING + MB_OK)
  else
    CriaFormulario(Tfipr, '', Filial);
end;

procedure Tfraipr.Carregar;
begin
  Filial := vChaveMestre;
  uqtabela.Params[0].AsString := Filial;
  ipr.Params[0].AsString := Filial;

  inherited;

end;

end.
