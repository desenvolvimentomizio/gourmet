unit ufraiat;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, System.ImageList, Vcl.ImgList,
  Vcl.Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics;

type
  Tfraiat = class(Tfrabase)
    uqtabelaiatcodigo: TIntegerField;
    uqtabelaatrcodigo: TIntegerField;
    uqtabelaiatidentificacao: TStringField;
    uqtabelaatridentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Carregar; override;
  end;

var
  fraiat: Tfraiat;

  // Início ID do Módulo fraiat
const
  vPlIdMd = '01.04.05.002-01';
  vPlTitMdl = 'Itens do Atributo';

  // Fim ID do Módulo fraiat

implementation

{$R *.dfm}

uses
  ufiat;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraiat := Tfraiat.Create(pCargaFrame);
  Result := fraiat;
end;

exports execute;

procedure Tfraiat.ActAlterarExecute(Sender: TObject);
var
  vlAtrCodigo: String;
begin
  inherited;

  if not uqtabela.IsEmpty then
  begin
    consulta.Close;
    consulta.SQL.Text := 'SELECT via.viacodigo FROM via WHERE via.iatcodigo = ' + uqtabelaiatcodigo.AsString;
    consulta.Open;

    if not consulta.IsEmpty then
    begin
      Application.MessageBox(PChar('Este atributo já foi utilizado, não pode ser alterado!!'), 'Atenção', MB_ICONWARNING + MB_OK);
      Exit;
    end;

    vlAtrCodigo := self.uqtabelaatrcodigo.AsString;
  end
  else
    vlAtrCodigo := vChaveMestre;

  CriaFormulario(Tfiat, self.uqtabelaiatcodigo.AsString, vlAtrCodigo);
end;

procedure Tfraiat.ActExcluirExecute(Sender: TObject);
begin
  inherited;

  {}
end;

procedure Tfraiat.ActIncluirExecute(Sender: TObject);
var
  vlAtrCodigo: String;
begin
  inherited;

  if not uqtabela.IsEmpty then
    vlAtrCodigo := self.uqtabelaatrcodigo.AsString
  else
    vlAtrCodigo := vChaveMestre;

  CriaFormulario(Tfiat, '', vlAtrCodigo);
end;

procedure Tfraiat.Carregar;
begin
  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
      vChaveMestre := TxtFiltro;

  inherited;

end;

end.
