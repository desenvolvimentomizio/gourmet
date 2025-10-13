unit ufrahit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
  uPegaBase, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, 
  System.ImageList, Vcl.ImgList;

type
  Tfrahit = class(Tfrabase)
    uqtabelameschave: TIntegerField;
    uqtabelamesemissao: TDateField;
    uqtabelapronome: TStringField;
    uqtabelaunisimbolo: TStringField;
    uqtabelaitmquantidade: TFloatField;
    uqtabelaitmvalor: TFloatField;
    uqtabelaitmdesconto: TFloatField;
    uqtabelaitmtotal: TFloatField;
    uqtabelaitmdesccomple: TStringField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaitmcontendo: TFloatField;
    uqtabelaunisimbolobase: TStringField;
    uqtabelaitmquantidadeindividual: TFloatField;
    uqtabelaitmvalorindividual: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frahit: Tfrahit;


  // Início ID do Módulo frahit
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Histórico de Movimentações';

  // Fim ID do Módulo frahit

implementation

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frahit := Tfrahit.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frahit := Tfrahit.Create(pCargaFrame);
  try
    frahit.CriaAcoesDeAcesso;
  finally
    frahit.Free;
  end;
end;

exports formuFrame, defineacesso;

end.
