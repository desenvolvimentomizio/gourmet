unit ufrapmo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrabase, Data.DB, 
  System.ImageList, Vcl.ImgList, Vcl.ExtCtrls, VirtualTable, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Actions, Vcl.ActnList, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.Mask, Vcl.DBCtrls,
  Vcl.Imaging.pngimage, uPegaBase, ufuncoes, Xml.xmldom, Xml.XMLIntf,
 Xml.XMLDoc;

type
  Tfrapmo = class(Tfrabase)
    uqtabelapmocodigo: TIntegerField;
    uqtabelapmoidentificacao: TStringField;
    uqtabelapmopercentualavista: TFloatField;
    uqtabelapmopercentualaprazo: TFloatField;
    uqtabelapmodatainicial: TDateField;
    uqtabelapmodatafinal: TDateField;
    ActIncluirNaPromocao: TAction;
    ActRemoverDaPromocao: TAction;
    pmp: TUniQuery;
    Dpmp: TDataSource;
    pmppronome: TStringField;
    pmppmpchave: TIntegerField;
    pmppmpregistro: TDateTimeField;
    pmppmpexclusao: TDateTimeField;
    Panel1: TPanel;
    DBGridpmp: TDBGrid;
    pmpprocodigo: TIntegerField;
    ActRemoverTodos: TAction;
    ActIncluirTodos: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActIncluirNaPromocaoExecute(Sender: TObject);
    procedure ActRemoverDaPromocaoExecute(Sender: TObject);
    procedure DBGridpmpDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure DBGridpmpTitleClick(Column: TColumn);
    procedure ActRemoverTodosExecute(Sender: TObject);
    procedure ActIncluirTodosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frapmo: Tfrapmo;

  // Início ID do Módulo fraprg
const
  vPlIdMd = '0.0.0.00-01';
  vPlTitMdl = 'Promoções';

  // Fim ID do Módulo fraprg

implementation

uses
  ufpmo, ufpmp;

{$R *.dfm}

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frapmo := Tfrapmo.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frapmo := Tfrapmo.Create(pCargaFrame);
  try
    frapmo.CriaAcoesDeAcesso;
  finally
    frapmo.Free;
  end;
end;

exports defineacesso, formuFrame;

procedure Tfrapmo.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpmo, self.uqtabelapmocodigo.AsString, '');
end;

procedure Tfrapmo.ActIncluirExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpmo, '', '');
end;

procedure Tfrapmo.ActIncluirNaPromocaoExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpmp, '', uqtabelapmocodigo.AsString);

end;

procedure Tfrapmo.ActIncluirTodosExecute(Sender: TObject);
begin
  inherited;
  If Application.MessageBox(PChar('Confirma a INCLUSÃO de TODOS os produtos na promoção selecionada?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
  begin
    consulta.Close;
    consulta.SQL.Text := 'insert into pmp ( SELECT  @pmpchave, ' + uqtabelapmocodigo.AsString + ',  procodigo,  now(), ' + acesso.usuario.ToString + ', null,null FROM pro)';
    consulta.ExecSQL;

  end;

end;

procedure Tfrapmo.ActRemoverDaPromocaoExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfpmp, pmppmpchave.AsString, uqtabelapmocodigo.AsString);

end;

procedure Tfrapmo.ActRemoverTodosExecute(Sender: TObject);
begin
  inherited;
  If Application.MessageBox(PChar('Confirma a REMOÇÃO de TODOS os produtos das promoções?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
  begin

    consulta.Close;
    consulta.SQL.Text := 'update pmo set  pmodatafinal=now() where pmodatafinal is null';
    consulta.ExecSQL;

    consulta.Close;
    consulta.SQL.Text := 'update pmp set  pmpexclusao=now(),clbexclusao=' + acesso.usuario.ToString+' where pmpexclusao is null' ;
    consulta.ExecSQL;
  end;

end;

procedure Tfrapmo.DBGridpmpDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  GridZebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tfrapmo.DBGridpmpTitleClick(Column: TColumn);
begin
  inherited;
  pmp.IndexFieldNames := Column.FieldName;
end;

procedure Tfrapmo.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabelapmocodigo.AsString <> '' then
  begin
    pmp.Close;
    pmp.ParamByName('pmocodigo').AsInteger := uqtabelapmocodigo.AsInteger;
    pmp.Open;
  end;
end;

end.
