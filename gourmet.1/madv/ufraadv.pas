unit ufraadv;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase;

type
  Tfraadv = class(Tfrabase)
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetdidentificacao: TStringField;
    uqtabelaetdapelido: TStringField;
    uqtabelatsecodigo: TIntegerField;
    uqtabelaetddoc1: TStringField;
    uqtabelaedrinscest: TStringField;
    uqtabelatpeidentificacao: TStringField;
    uqtabelatpecodigo: TIntegerField;
    ActContaCorrente: TAction;
    enc: TUniQuery;
    encencchave: TIntegerField;
    encetdcodigo: TIntegerField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActContaCorrenteExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fraadv: Tfraadv;

  const
  vPlIdMd = '';
  vPlTitMdl = 'Advogados';

implementation

uses
  ufadv;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  fraadv := Tfraadv.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  fraadv := Tfraadv.Create(pCargaFrame);
  try
    fraadv.CriaAcoesDeAcesso;
  finally
    fraadv.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfraadv.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfadv, uqtabelaetdcodigo.AsString,'');
end;

procedure Tfraadv.ActContaCorrenteExecute(Sender: TObject);
begin
  inherited;
//  CriaFormulario(Tfenc, encencchave.asstring,uqtabelaetdcodigo.AsString);
end;

procedure Tfraadv.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfadv, '','');
end;

procedure Tfraadv.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
  if uqtabelaetdcodigo.AsString<>'' then
  begin
    enc.Close;
    enc.ParamByName('etdcodigo').AsString:=uqtabelaetdcodigo.AsString;
    enc.Open;

  end;
end;

end.
