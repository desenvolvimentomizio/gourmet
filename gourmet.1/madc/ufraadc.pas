unit ufraadc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, uPegaBase, Ufuncoes, Dialogs, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  System.ImageList, Vcl.ImgList,  Xml.xmldom, Xml.XMLIntf,
  Xml.XMLDoc;

type
  Tfraadc = class(Tfrabase)
    uqtabelaadccodigo: TIntegerField;
    uqtabelaadcidentificacao: TStringField;
    ActRealizaLiquidacoes: TAction;
    rfi: TUniQuery;
    rfirfichave: TIntegerField;
    rfirfivencimento: TDateField;
    rfirfivalor: TFloatField;
    mfi: TUniQuery;
    mfimfichave: TIntegerField;
    mfirfichave: TIntegerField;
    mfitmfcodigo: TIntegerField;
    mfimoecodigo: TIntegerField;
    mfimfivalor: TFloatField;
    mfimfidata: TDateField;
    mfimfihistorico: TStringField;
    mfimfivalorori: TFloatField;
    mfimfiparcela: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    rfisrfcodigo: TIntegerField;
    uqtabelaadcliquidaautomatico: TIntegerField;
    uqtabelactaidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActRealizaLiquidacoesExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraadc: Tfraadc;

  // Início ID do Módulo fraadc
const
  vPlIdMd = '03.02.81.001-01';
  vPlTitMdl = 'Administradoras de Cartões';

  // Fim ID do Módulo fraadc

implementation

{$R *.dfm}

uses midaslib,ufadc;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraadc := Tfraadc.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraadc := Tfraadc.Create(pCargaFrame);
  try
    fraadc.CriaAcoesDeAcesso;
  finally
    fraadc.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraadc.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfadc, uqtabelaadccodigo.AsString, '');
end;

procedure Tfraadc.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfadc, '', '');
end;

procedure Tfraadc.ActRealizaLiquidacoesExecute(Sender: TObject);
begin
  inherited;
  if uqtabelaadcliquidaautomatico.AsInteger = 1 then
  begin

    rfi.Close;
    rfi.Params[0].AsInteger := uqtabelaetdcodigo.AsInteger;
    rfi.Open;

    while not rfi.Eof do
    begin
      mfi.Close;
      mfi.Params[0].AsInteger := rfirfichave.AsInteger;
      mfi.Params[1].AsInteger := tmfRecebimento;
      mfi.Open;

      if mfi.IsEmpty then
        mfi.Append
      else
        mfi.Edit;

      mfirfichave.AsInteger := rfirfichave.AsInteger;
      mfitmfcodigo.AsInteger := tmfRecebimento;
      mfimoecodigo.AsInteger := 1;
      mfimfivalor.AsCurrency := rfirfivalor.AsCurrency;
      mfimfidata.AsFloat := rfirfivencimento.AsFloat;
      mfimfihistorico.AsString := 'Liquidação Automática';
      mfimfivalorori.AsCurrency := rfirfivalor.AsCurrency;
      mfimfiparcela.AsInteger := 1;

      mfi.Post;

      rfi.Edit;
      rfisrfcodigo.AsInteger := srfQuitado;
      rfi.Post;
      rfi.Next;
    end;

    ShowMessage('Liquidação realizada com sucesso!');
    { realizar liquidações de titulos em aberto }
  end
  else
    ShowMessage('Esta administradora não esta configurada para liquidação automática!');

end;

end.
