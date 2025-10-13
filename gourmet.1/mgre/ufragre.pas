unit ufragre;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, uPegaBase, Vcl.Dialogs,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,
   System.ImageList, Vcl.ImgList;

type
  Tfragre = class(Tfrabase)
    uqtabelagrecodigo: TIntegerField;
    uqtabelagreidentificacao: TStringField;
    dre: TUniQuery;
    dredrechave: TIntegerField;
    dregrecodigo: TIntegerField;
    dreccgcodigo: TIntegerField;
    dreccgidentificacao: TStringField;
    Ddre: TDataSource;
    DBGridDRE: TDBGrid;
    uqtabeladmccodigo: TIntegerField;
    uqtabelagreposicao: TIntegerField;
    procedure DBDREDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DBGridDREDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fragre: Tfragre;

  // Início ID do Módulo fradre
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Grupo de Contas Gerenciais para Demonstrativos';

  // Fim ID do Módulo fradre

implementation

uses
  ufgre;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragre := Tfragre.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fragre := Tfragre.Create(pCargaFrame);
  try
    fragre.CriaAcoesDeAcesso;
  finally
    fragre.Free;
  end;
end;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragre := Tfragre.Create(pCargaFrame);
  Result := fragre;
end;

exports formuFrame, defineacesso, execute;

procedure Tfragre.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfgre, uqtabelagrecodigo.AsString, vChaveMestre);
end;

procedure Tfragre.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfgre, '', vChaveMestre);
end;

procedure Tfragre.Carregar;
begin
  if FormaFrame = ffDocado then
    if vChaveMestre <> '' then
    begin
      uqtabela.Filter := 'dmccodigo = ' + vChaveMestre;
      uqtabela.Filtered := True;
    end;

  if FormaFrame = ffFormu then
    if TxtFiltro <> '' then
    begin
      uqtabela.Filter := Trim(TxtFiltro);
      uqtabela.Filtered := True;
    end;

  inherited;

end;

procedure Tfragre.DBDREDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfragre.DBGridDREDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfragre.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if not uqtabela.IsEmpty then
      if uqtabelagrecodigo.AsString <> '' then
      begin
        dre.close;
        dre.Params[0].AsString := uqtabelagrecodigo.AsString;
        dre.Open;
      end;

end;

end.
