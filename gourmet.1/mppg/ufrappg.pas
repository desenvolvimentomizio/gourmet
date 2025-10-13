unit ufrappg;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfrappg = class(Tfrabase)
    uqtabelappgchave: TIntegerField;
    uqtabelappgemissao: TDateField;
    uqtabelappgvencimento: TDateField;
    uqtabelappgidentificacao: TStringField;
    uqtabelappgobservacao: TStringField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelaflacodigo: TIntegerField;
    ipg: TUniQuery;
    ipgipgchave: TIntegerField;
    ipgppgchave: TIntegerField;
    ipgrfichave: TIntegerField;
    ipgtficodigo: TIntegerField;
    ipgtfiidentificacao: TStringField;
    ipgrfivalor: TFloatField;
    ipgipgnumerocheque: TStringField;
    ipgclbcodigo: TIntegerField;
    ipgclbidentificacao: TStringField;
    ipgetdcodigo: TIntegerField;
    ipgrfiemissao: TDateField;
    ipgrfivencimento: TDateField;
    ipgrfinumero: TStringField;
    ipgrfihistorico: TStringField;
    ipgetdidentificacao: TStringField;
    ipgrfidias: TIntegerField;
    ipgrfijuros: TFloatField;
    ipgrfisaldogeral: TFloatField;
    Dipg: TDataSource;
    DBGrid1: TDBGrid;
    ActAjustarCheque: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActAjustarChequeExecute(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frappg: Tfrappg;

  // Início ID do Módulo frappg
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Programação de Pagamentos';

  // Fim ID do Módulo frappg

implementation

{$R *.dfm}

uses ufppg, ufppgche;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frappg := Tfrappg.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frappg := Tfrappg.Create(pCargaFrame);
  try
    frappg.CriaAcoesDeAcesso;
  finally
    frappg.Free;
  end;
end;

exports defineacesso, formuFrame;

procedure Tfrappg.ActAjustarChequeExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfppgche ,ipgipgchave.AsString ,'');

end;

procedure Tfrappg.ActAlterarExecute(Sender: TObject);
begin
  inherited;
    CriaFormulario(Tfppg ,uqtabelappgchave.AsString ,'');
end;

procedure Tfrappg.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfppg ,'' ,'');
end;

procedure Tfrappg.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect,  DataCol,Column, State);
end;

procedure Tfrappg.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabelappgchave.AsString<>'' then
  begin
    ipg.Close;
    ipg.ParamByName('ppgchave').asstring:= uqtabelappgchave.AsString;
    ipg.Open;
  end;
end;

end.
