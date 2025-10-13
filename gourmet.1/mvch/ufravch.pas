unit ufravch;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, Xml.xmldom,
  Xml.XMLIntf, Xml.XMLDoc,  System.ImageList, Vcl.ImgList,
  Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids, Vcl.DBGrids,
  Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, upegabase;

type
  Tfravch = class(Tfrabase)
    uqtabelavchchave: TIntegerField;
    uqtabelavchdataemissao: TDateField;
    uqtabelavchvoucher: TStringField;
    uqtabelavchdatavalidade: TDateField;
    uqtabelavchvalor: TFloatField;
    uqtabelavchpercentual: TFloatField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelavchdatauso: TDateField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelapuncodigo: TIntegerField;
    uqtabelavchsituacao: TStringField;
    uqtabelavchtipo: TStringField;
    uqtabelavchmodouso: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelapronome: TStringField;
    uqtabelapunidentificacao: TStringField;
    uqtabelasenidentificacao: TStringField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fravch: Tfravch;

  // Início ID do Módulo fratoe
const
  vPlIdMd = '00.00.00.001-01';
  vPlTitMdl = 'Código de desconto ou Voucher';

  // Fim ID do Módulo fratoe

implementation

uses
  ufvch;

{$R *.dfm}


function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fravch := Tfravch.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fravch := Tfravch.Create(pCargaFrame);
  try
    fravch.CriaAcoesDeAcesso;
  finally
    fravch.Free;
  end;
end;

exports formuFrame, defineacesso;


procedure Tfravch.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfvch, uqtabelavchchave.AsString, '');
end;

procedure Tfravch.ActIncluirExecute(Sender: TObject);
begin
  inherited;
CriaFormulario(Tfvch, '', '');
end;

end.
