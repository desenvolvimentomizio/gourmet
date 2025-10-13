unit ufrapfh;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage, uPegaBase,
  ufuncoes;

type
  Tfrapfh = class(Tfrabase)
    uqtabelapfhchave: TIntegerField;
    uqtabelaflhchave: TIntegerField;
    uqtabelatlocodigo: TIntegerField;
    uqtabelavhfcodigo: TIntegerField;
    uqtabelapfhhoras: TIntegerField;
    uqtabelatloidentificacao: TStringField;
    uqtabelafclidentificacao: TStringField;
    uqtabelavhfidentificacao: TStringField;
    uqtabelaetdidentificacao: TStringField;
    uqtabeladtrdataadmissao: TDateField;
    uqtabelaflhidentificacao: TStringField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaanfcodigo: TIntegerField;
    uqtabelaanfidentificacao: TStringField;
    uqtabelaffhidentificacao: TStringField;
    ActEnviar: TAction;
    pfh: TUniQuery;
    pfhpfhchave: TIntegerField;
    pfhflhchave: TIntegerField;
    pfhtlocodigo: TIntegerField;
    pfhvhfcodigo: TIntegerField;
    pfhclbcodigo: TIntegerField;
    pfhpfhregistro: TDateTimeField;
    pfhpfhhoras: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActEnviarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapfh: Tfrapfh;

  // Início ID do Módulo frapfh
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Programação de Folha';

  // Fim ID do Módulo frapfh

implementation

uses
  ufpfh, ufenviar;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapfh := Tfrapfh.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapfh := Tfrapfh.Create(pCargaFrame);
  try
    frapfh.CriaAcoesDeAcesso;
  finally
    frapfh.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrapfh.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpfh, uqtabelapfhchave.AsString, '');
end;

procedure Tfrapfh.ActEnviarExecute(Sender: TObject);
var
  vlFlhChaveDestino: string;
begin
  inherited;
  application.CreateForm(tfenviar, fenviar);
  fenviar.flh.Connection := ZCone;
  fenviar.flh.ParamByName('flhchave').AsInteger := uqtabelaflhchave.AsInteger;
  fenviar.flh.Open;

  vlFlhChaveDestino := '0';
  if fenviar.ShowModal = mrok then
  begin

    vlFlhChaveDestino := fenviar.vpFlhChaveDestino;
    uqtabela.First;
    while not uqtabela.Eof do
    begin

      pfh.Close;
      pfh.ParamByName('vhfcodigo').AsInteger := uqtabelavhfcodigo.AsInteger;
      pfh.ParamByName('flhchave').AsString := vlFlhChaveDestino;
      pfh.Open;

      if pfh.IsEmpty then
        pfh.Append
      else
        pfh.Edit;

      pfhflhchave.AsString := vlFlhChaveDestino;
      pfhtlocodigo.AsInteger := uqtabelatlocodigo.AsInteger;
      pfhvhfcodigo.AsInteger := uqtabelavhfcodigo.AsInteger;
      pfhpfhhoras.AsFloat := uqtabelapfhhoras.AsFloat;
      pfhclbcodigo.AsInteger := acesso.Usuario;
      pfhpfhregistro.AsString := agora(application, ZCone);

      pfh.Post;

      uqtabela.Next;
    end;

    Showmessage('Programação enviada com sucesso!');
    ActAtualizar.Execute;

  end;
end;

procedure Tfrapfh.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpfh, '', '');
end;

end.
