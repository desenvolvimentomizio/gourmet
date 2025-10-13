unit ufrarpu;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase,
  System.ImageList, Vcl.ImgList;

type
  Tfrarpu = class(Tfrabase)
    uqtabelapuncodigo: TIntegerField;
    uqtabelaclbcodigo: TIntegerField;
    uqtabelapunprecoav: TFloatField;
    uqtabelapunprecoap: TFloatField;
    uqtabelapuncusto: TFloatField;
    uqtabelarpuregistro: TDateTimeField;
    uqtabelaclbidentificacao: TStringField;
    uqtabelapunidentificacao: TStringField;
    uqtabelaunisimbolo: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frarpu: Tfrarpu;


  // Início ID do Módulo frarpu
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Registro de Alterações de Preços';

  // Fim ID do Módulo frarpu




implementation

{$R *.dfm}



function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarpu := Tfrarpu.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarpu := Tfrarpu.Create(pCargaFrame);
  try
    frarpu.CriaAcoesDeAcesso;
  finally
    frarpu.Free;
  end;
end;

exports formuFrame, defineacesso;

end.
