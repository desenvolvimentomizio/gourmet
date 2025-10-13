unit ufraadr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase;

type
  Tfraadr = class(Tfrabase)
    uqtabelaadrchave: TIntegerField;
    uqtabelaadrdatainicial: TDateField;
    uqtabelaadrdatafinal: TDateField;
    pcr: TUniQuery;
    phg: TUniQuery;
    phgphgcodigo: TIntegerField;
    phgphgidentificacao: TStringField;
    pcg: TUniQuery;
    pcgpcgcodigo: TIntegerField;
    pcgpcgidentificacao: TStringField;
    pcrpcrchave: TIntegerField;
    pcrtitcodigo: TIntegerField;
    pcrpcgcodigo: TIntegerField;
    pcrpcgidentificacao: TStringField;
    pcrpcrvalor: TFloatField;
    pcrphgcodigo: TIntegerField;
    pcrphgidentificacao: TStringField;
    pcrpcrcomplhist: TStringField;
    Dpcr: TDataSource;
    DBGrid1: TDBGrid;
    pcrrfichave: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraadr: Tfraadr;

  // Início ID do Módulo fratgr
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Apurações para geração DRE';

  // Fim ID do Módulo fratgr

implementation

uses
  ufadr;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraadr := Tfraadr.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraadr := Tfraadr.Create(pCargaFrame);
  try
    fraadr.CriaAcoesDeAcesso;
  finally
    fraadr.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraadr.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfadr, self.uqtabelaadrchave.AsString, '');
end;

procedure Tfraadr.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfadr, '', '');
end;

procedure Tfraadr.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if uqtabelaadrchave.AsString <> '' then
    begin
      pcr.Close;
      pcr.ParamByName('adrchave').AsInteger := uqtabelaadrchave.AsInteger;
      pcr.ParamByName('datainicial').AsDate :=uqtabelaadrdatainicial.AsFloat;
      pcr.ParamByName('datafinal').AsDate :=uqtabelaadrdatafinal.AsFloat;

      pcr.Open;
    end
    else
      pcr.Close;

end;

end.
