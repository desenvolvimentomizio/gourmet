unit ufraexi;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, upegabase;

type
  Tfraexi = class(Tfrabase)
    uqtabelaexicodigo: TIntegerField;
    uqtabelaexbcodigo: TIntegerField;
    uqtabelaimscodigo: TIntegerField;
    uqtabelaexiregistro: TDateField;
    uqtabelaexhcodigo: TIntegerField;
    uqtabelaexiinicio: TDateField;
    uqtabelaexifinal: TDateField;
    uqtabelaexifra: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraexi: Tfraexi;

const
  vPlIdMd = 'Cronograma de Evento';
  vPlTitMdl = 'Cronograma de Evento';

implementation

uses
  ufexi;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraexi := Tfraexi.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraexi := Tfraexi.Create(pCargaFrame);
  try
    fraexi.CriaAcoesDeAcesso;
  finally
    fraexi.Free;
  end;
end;

exports formuFrame, defineacesso;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraexi := Tfraexi.Create(pCargaFrame);
  Result := fraexi;
end;

exports formuFrame, defineacesso, execute;

procedure Tfraexi.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Tfexi, uqtabelaexicodigo.AsString, '');
end;

procedure Tfraexi.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  criaformulario(Tfexi, '', '');
end;

end.
