unit ufralic;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfralic = class(Tfrabase)
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    lic: TUniQuery;
    liclicchave: TIntegerField;
    licetdcodigo: TIntegerField;
    licetdidentificacao: TStringField;
    licmdpcodigo: TIntegerField;
    licmdpidentificacao: TStringField;
    licgrmcodigo: TIntegerField;
    licgrmidentificacao: TStringField;
    licbtmcodigo: TIntegerField;
    licbtmidentificacao: TStringField;
    liclicusuarios: TIntegerField;
    liclicdatainicial: TDateField;
    liclicdatafinal: TDateField;
    DBGridLic: TDBGrid;
    Dlic: TDataSource;
    procedure ActIncluirExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DBGridLicDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fralic: Tfralic;

  // Início ID do Módulo fralic
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Licenciamentos';

  // Fim ID do Módulo fralic

implementation

uses
  uflic;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fralic := Tfralic.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fralic := Tfralic.Create(pCargaFrame);
  try
    fralic.CriaAcoesDeAcesso;
  finally
    fralic.Free;
  end;
end;

exports defineacesso, formuFrame;

procedure Tfralic.ActAlterarExecute(Sender: TObject);
begin
  inherited;
 CriaFormulario(Tflic, Self.uqtabelaetdcodigo.AsString, '');
end;

procedure Tfralic.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tflic, '', '');

end;

procedure Tfralic.DBGridLicDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect,  DataCol, Column, State);
end;

procedure Tfralic.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if uqtabelaetdcodigo.AsString <> '' then
    begin
      lic.Close;
      lic.ParamByName('etdcodigo').AsString := uqtabelaetdcodigo.AsString;
      lic.Open;
    end;
end;

end.
