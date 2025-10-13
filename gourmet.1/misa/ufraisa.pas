unit ufraisa;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, System.SysUtils, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,  System.ImageList,
  Vcl.ImgList;

type
  Tfraisa = class(Tfrabase)
    uqtabelaisachave: TIntegerField;
    uqtabelasbrcodigo: TIntegerField;
    uqtabelaprocodigo: TIntegerField;
    uqtabelasbridentificacao: TStringField;
    uqtabelapronome: TStringField;
    uqtabelaisaquantidade: TFloatField;
    uqtabelaunisimbolo: TStringField;
    uqtabelasenidentificacao: TStringField;
    uqtabelaisaprincipal: TIntegerField;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;
  end;

var
  fraisa: Tfraisa;

  // Início ID do Módulo fraisa
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Ingredientes do Sabor';

  // Fim ID do Módulo fraisa

implementation

uses
  ufisa;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraisa := Tfraisa.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraisa := Tfraisa.Create(pCargaFrame);
  try
    fraisa.CriaAcoesDeAcesso;
  finally
    fraisa.Free;
  end;
end;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraisa := Tfraisa.Create(pCargaFrame);
  Result := fraisa;
end;

exports formuFrame, defineacesso, execute;

procedure Tfraisa.ActAlterarExecute(Sender: TObject);
begin


  CriaFormulario(Tfisa, uqtabelaisachave.AsString, vChaveMestre);
end;

procedure Tfraisa.ActExcluirExecute(Sender: TObject);
begin
//
  inherited;

end;

procedure Tfraisa.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfisa, '', vChaveMestre);
end;

procedure Tfraisa.Carregar;
begin

  uqtabela.Filter := 'sbrcodigo = ' + vChaveMestre;
  uqtabela.Filtered := True;

  inherited;

end;

end.
