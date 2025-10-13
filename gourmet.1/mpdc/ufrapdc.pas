unit ufrapdc;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase,
  System.ImageList, Vcl.ImgList;

type
  Tfrapdc = class(Tfrabase)
    uqtabelapdcchave: TIntegerField;
    uqtabelapdcemissao: TDateField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelapdcregistro: TDateTimeField;
    uqtabelapdcrecebimento: TDateField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelapdcobs: TStringField;
    uqtabelatspcodigo: TIntegerField;
    uqtabelattrcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelatspidentificacao: TStringField;
    uqtabelattridentificacao: TStringField;
    uqtabelaetftelefone: TStringField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelapdcnumerofornecedor: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapdc: Tfrapdc;
  // Início ID do Módulo frapdc
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Pedidos de Compras';

  // Fim ID do Módulo frapdc


implementation

uses
  ufpdc;

{$R *.dfm}





function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapdc := Tfrapdc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapdc := Tfrapdc.Create(pCargaFrame);
  try
    frapdc.CriaAcoesDeAcesso;
  finally
    frapdc.Free;
  end;
end;

exports formuFrame, defineacesso;
procedure Tfrapdc.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpdc, uqtabelapdcchave.AsString, '');
end;

procedure Tfrapdc.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpdc, '', '');
end;

end.
