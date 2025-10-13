unit ufragfl;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls,
  VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase, System.ImageList, Vcl.ImgList,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart;
   // TODO
type
  Tfragfl = class(Tfrabase)
    uqtabelagflchave: TIntegerField;
    uqtabelagfldatainicial: TDateField;
    uqtabelagfldatafinal: TDateField;
    uqtabelagflagrupamento: TIntegerField;
    flf: TUniQuery;
    flfflfchave: TIntegerField;
    flfgflchave: TIntegerField;
    flfflfdia: TDateField;
    flfflfvalorcpa: TFloatField;
    flfflfvalorcre: TFloatField;
    flfflfvalorccodeb: TFloatField;
    flfflfvalorccocre: TFloatField;
    flfflfvalorrh: TFloatField;
    flfflfsaldo: TFloatField;
    Dflf: TDataSource;
    DBflf: TDBGrid;
    DBChartflf: TDBChart;
    Series1: TLineSeries;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DBflfDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fragfl: Tfragfl;

  // Início ID do Módulo fragfl
const
  vPlIdMd = '00.00.0.000-01';
  vPlTitMdl = 'Gerações de Fluxos Financeiros';

  // Fim ID do Módulo fragfl

implementation

uses
  ufgfl;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fragfl := Tfragfl.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fragfl := Tfragfl.Create(pCargaFrame);
  try
    fragfl.CriaAcoesDeAcesso;
  finally
    fragfl.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfragfl.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgfl, uqtabelagflchave.AsString, '');
end;

procedure Tfragfl.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfgfl, '', '');
end;

procedure Tfragfl.DBflfDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfragfl.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if uqtabelagflchave.AsString <> '' then
      flf.Close;
  flf.ParamByName('gflchave').AsInteger := uqtabelagflchave.AsInteger;
  flf.Open;
end;

end.
