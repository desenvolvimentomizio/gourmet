unit ufravhf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, System.ImageList,
  Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess, Uni, Vcl.Menus, uPegaBase,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls, Vcl.Imaging.pngimage,
   ufuncoes;

type
  Tfravhf = class(Tfrabase)
    uqtabelavhfcodigo: TIntegerField;
    uqtabelavhfidentificacao: TStringField;
    uqtabelafclcodigo: TIntegerField;
    uqtabelafclidentificacao: TStringField;
    uqtabelavhfvalor: TFloatField;
    uqtabelavhfdatainicial: TDateField;
    uqtabelavhfdatafinal: TDateField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaanfcodigo: TIntegerField;
    uqtabelaanfidentificacao: TStringField;
    uqtabelaffhidentificacao: TStringField;
    ActAlterarValor: TAction;
    gbavh: TGroupBox;
    DBGridavh: TDBGrid;
    avh: TUniQuery;
    avhavhchave: TIntegerField;
    avhvhfcodigo: TIntegerField;
    avhfclcodigo: TIntegerField;
    avhavhdatainicial: TDateField;
    avhavhvalor: TFloatField;
    avhclbcodigo: TIntegerField;
    avhavhregistro: TDateTimeField;
    Davh: TDataSource;
    avhavhdatafinal: TDateField;
    uqtabelatthcodigo: TIntegerField;
    uqtabelatthidentificacao: TStringField;
    uqtabeladtrdataadmissao: TDateField;
    uqtabelatloidentificacao: TStringField;
    ravh: TUniQuery;
    ravhavhchave: TIntegerField;
    ravhvhfcodigo: TIntegerField;
    ravhfclcodigo: TIntegerField;
    ravhavhdatainicial: TDateField;
    ravhavhdatafinal: TDateField;
    ravhavhvalor: TFloatField;
    ravhclbcodigo: TIntegerField;
    ravhavhregistro: TDateTimeField;
    uqtabelavhfvalorinicial: TFloatField;
    ActFuncoes: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActAlterarValorExecute(Sender: TObject);
    procedure DBGridavhDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActFuncoesExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fravhf: Tfravhf;

  // Início ID do Módulo fravhf
const
  vPlIdMd = '00.00.00.000-01';
  vPlTitMdl = 'Valor da Hora por Função';

  // Fim ID do Módulo fravhf

implementation

uses
  ufvhf, ufavh;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fravhf := Tfravhf.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fravhf := Tfravhf.Create(pCargaFrame);
  try
    fravhf.CriaAcoesDeAcesso;
  finally
    fravhf.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfravhf.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfvhf, uqtabelavhfcodigo.AsString, '');
end;

procedure Tfravhf.ActAlterarValorExecute(Sender: TObject);
begin
  inherited;

  if uqtabelatthcodigo.AsInteger = 15 then
  begin
    CriaFormulario(Tfavh, '', uqtabelavhfcodigo.AsString);
    self.ActAtualizar.Execute;
  end
  else
  begin
    Showmessage('Função é baseada em valor hora!' + #13 + #13 + 'Por favor altere o valor na lsita de Alocação de Função.');
  end;

end;

procedure Tfravhf.ActAtualizarExecute(Sender: TObject);
begin
  inherited;
  try
    // uqtabela.DisableControls;
    while not uqtabela.Eof do
    begin
      avh.Close;
      avh.ParamByName('vhfcodigo').AsInteger := uqtabelavhfcodigo.AsInteger;
      avh.Open;

      if avh.IsEmpty then
      begin
        ravh.Close;
        ravh.ParamByName('vhfcodigo').AsInteger := uqtabelavhfcodigo.AsInteger;
        ravh.Open;
        ravh.Append;

        ravhvhfcodigo.AsInteger := uqtabelavhfcodigo.AsInteger;
        ravhfclcodigo.AsInteger := uqtabelafclcodigo.AsInteger;
        ravhavhdatainicial.AsFloat := uqtabelavhfdatainicial.AsFloat;
        ravhavhdatafinal.AsString := '31/12/9999';
        ravhavhvalor.AsFloat := uqtabelavhfvalor.AsFloat;
        ravhclbcodigo.AsInteger := acesso.Usuario;
        ravhavhregistro.AsString := agora(application, ZCone);

        ravh.Post;

      end
      else
      begin
        ravh.Close;
        ravh.ParamByName('vhfcodigo').AsInteger := uqtabelavhfcodigo.AsInteger;
        ravh.Open;

        if ravhavhvalor.AsFloat = 0 then
        begin
          ravh.edit;
          ravhavhvalor.AsFloat := uqtabelavhfvalor.AsFloat;
          ravh.Post;
        end;

      end;
      uqtabela.Next;
    end;
  finally
    uqtabela.First;
    // uqtabela.EnableControls;
  end;

end;

procedure Tfravhf.ActFuncoesExecute(Sender: TObject);
begin
  inherited;
  mostralista('mfcl', '', '');
end;

procedure Tfravhf.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfvhf, '', '');
end;

procedure Tfravhf.DBGridavhDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfravhf.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if uqtabelavhfcodigo.AsString <> '' then
    begin
      avh.Close;
      avh.ParamByName('vhfcodigo').AsInteger := uqtabelavhfcodigo.AsInteger;
      avh.Open;

      ravh.Close;
      ravh.ParamByName('vhfcodigo').AsInteger := uqtabelavhfcodigo.AsInteger;
      ravh.Open;

      if ravh.IsEmpty then
      begin
        ravh.Append;
        ravhvhfcodigo.AsInteger := uqtabelavhfcodigo.AsInteger;
        ravhfclcodigo.AsInteger := uqtabelafclcodigo.AsInteger;
        ravhavhdatainicial.AsFloat := uqtabelavhfdatainicial.AsFloat;
        ravhavhdatafinal.AsString := '31/12/9999';
        ravhavhvalor.AsFloat := uqtabelavhfvalor.AsFloat;
        ravhclbcodigo.AsInteger := acesso.Usuario;
        ravhavhregistro.AsString := agora(application, ZCone);

        ravh.Post;

      end;

      if ravhavhvalor.AsFloat = 0 then
      begin
        ravh.edit;
        ravhavhvalor.AsFloat := uqtabelavhfvalor.AsFloat;
        ravh.Post;

        avh.Close;
        avh.ParamByName('vhfcodigo').AsInteger := uqtabelavhfcodigo.AsInteger;
        avh.Open;
      end;

    end;

end;

end.
