unit ufracta;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, Vcl.ActnMan, uPegaBase,
  System.ImageList, Vcl.ImgList, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;


type
  Tfracta = class(Tfrabase)
    uqtabelactacodigo: TIntegerField;
    uqtabelactaidentificacao: TStringField;
    uqtabelabcocodigo: TStringField;
    uqtabelabconome: TStringField;
    uqtabelatctcodigo: TIntegerField;
    uqtabelatctidentificacao: TStringField;
    ActMovimentacao: TAction;
    procedure ActMovimentacaoExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DBGListaDblClick(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
  public
    procedure Carregar; override;
    { Public declarations }
  end;

var
  fracta: Tfracta;

  // Início ID do Módulo fracta
const
  vPlIdMd = '01.02.07.002-01';
  vPlTitMdl = 'Contas Correntes';

  // Fim ID do Módulo fracta

implementation

{$R *.dfm}

uses midaslib,ufcta;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fracta := Tfracta.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fracta := Tfracta.Create(pCargaFrame);
  try
    fracta.CriaAcoesDeAcesso;
  finally
    fracta.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfracta.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfcta, Self.uqtabelactacodigo.AsString, '');
end;

procedure Tfracta.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.Params[0].AsInteger := Acesso.Usuario;

  inherited;

end;

procedure Tfracta.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfcta, '', '');
end;

procedure Tfracta.ActMovimentacaoExecute(Sender: TObject);
begin
  inherited;

  if Self.uqtabelactacodigo.AsString = '' then
  begin
    ShowMessage('Não há conta selecionada!');
    Exit;
  end;

  if Application.FindComponent('fprincigourmet') <> nil then
    if TForm(Application.FindComponent('fprincigourmet')).FindComponent('acoes') <> nil then
      if TActionManager(TForm(Application.FindComponent('fprincigourmet')).FindComponent('acoes')).FindComponent('act2mcco') <> nil then
      begin
        TAction(TActionManager(TForm(Application.FindComponent('fprincigourmet')).FindComponent('acoes')).FindComponent('act2mcco')).Tag :=
          Self.uqtabelactacodigo.AsInteger;
        TAction(TActionManager(TForm(Application.FindComponent('fprincigourmet')).FindComponent('acoes')).FindComponent('act2mcco')).Execute;
      end;
end;

procedure Tfracta.Carregar;
begin
  (* Parâmetro para validação da conta terminal quando for pesquisa *)
  if ModoFrame = modoPesquisa then
  begin
    uqtabela.Params[1].AsBoolean := True;

    if TxtFiltro <> '' then
    begin
      uqtabela.Filter := TxtFiltro;
      uqtabela.Filtered := True;
    end;

  end;

  inherited;

end;

procedure Tfracta.DBGListaDblClick(Sender: TObject);
begin
  if edbusca.Tag = 1 then
    ActSair.Execute
  else
    ActMovimentacao.Execute;
end;

end.
