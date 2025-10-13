unit uframre;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics,
  Vcl.Dialogs, Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc, 
  System.ImageList, Vcl.ImgList;

type
  Tframre = class(Tfrabase)
    uqtabelamrechave: TIntegerField;
    uqtabelarelcodigo: TStringField;
    uqtabelabplcodigo: TIntegerField;
    uqtabelabplidentificacao: TStringField;
    crm: TUniQuery;
    crmcrmchave: TIntegerField;
    crmbplcodigo: TIntegerField;
    crmcrmnome: TStringField;
    crmcrmidentificacao: TStringField;
    crmtcacodigo: TIntegerField;
    Dcrm: TDataSource;
    DBGListaCRM: TDBGrid;
    plTituloCamposModulos: TPanel;
    plCamposModulos: TPanel;
    crmtcaidentificacao: TStringField;
    plParametros: TPanel;
    plTituloParametros: TPanel;
    crl: TUniQuery;
    crlcrmnome: TStringField;
    crltcacodigo: TIntegerField;
    crltcaidentificacao: TStringField;
    crlrelcodigo: TStringField;
    Dcrl: TDataSource;
    DBGListaParemetros: TDBGrid;
    crlcrmidentificacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure DSTabelaDataChange(Sender: TObject; Field: TField);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure DBGListaCRMDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaParemetrosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ActExcluirExecute(Sender: TObject);
  private
    procedure AtualizaParametros(vRelCodigo: String);
    { Private declarations }
  public
    { Public declarations }

    procedure Carregar; override;

    procedure descarregar; OVERLOAD;
  end;

var
  framre: Tframre;

  // Início ID do Módulo frammea
const
  vPlIdMd = '03.06.80.009-01';
  vPlTitMdl = 'Ligação Módulo - Relatórios';

  // Fim ID do Módulo frammea

implementation

{$R *.dfm}

uses ufmre;

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  framre := Tframre.Create(pCargaFrame);
  Result := framre;
end;

exports execute;

procedure Tframre.descarregar;
begin

  SalvarColunas(DBGListaCRM);
  SalvarColunas(DBGListaParemetros);
  salvacolunas;

  If cls.IsEmpty Then
  Begin
    cls.Append;
    clsusrcodigo.AsInteger := Acesso.Usuario;
    clsclsnomeform.AsString := Self.Name;
  End
  Else
  Begin
    cls.Edit;
  End;

  if (Parent is TForm) then
    If (Parent as TForm).BorderStyle <> bsNone Then
    Begin
      Self.clsclsposiesquerda.AsInteger := Parent.Left;
      Self.clsclspositopo.AsInteger := Parent.Top;
      Self.clsclsaltura.AsInteger := Parent.Height;
      Self.clsclslargura.AsInteger := Parent.Width;
    end;

  Self.clsclsrodape.AsInteger := Self.PlRodaPe.Height;
  Self.clsclsbotoes.AsInteger := Self.PlBotoes.Height;
  Self.clsclsselecao.AsInteger := Self.PlSelecao.Height;

  if (Parent is TForm) then
  begin
    If (Parent as TForm).WindowState = wsNormal Then
      Self.clsclsmodo.AsInteger := 1
    Else
      Self.clsclsmodo.AsInteger := 2;
  end
  else
  begin
    Self.clsclsmodo.AsInteger := 1;
  end;

  clsclsultimo.AsString := Self.vchave;
  cls.Post;

  inherited descarregar;
end;

procedure Tframre.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  if CriaFormulario(Tfmre, Self.uqtabelamrechave.AsString, vChaveMestre) then
  begin
    AtualizaParametros(uqtabelarelcodigo.AsString);

    crm.Close;
    crm.Params[0].AsInteger := Self.uqtabelabplcodigo.AsInteger;
    crm.Open;
  end;
end;

procedure Tframre.ActAtualizarExecute(Sender: TObject);
begin
  inherited;

  if vChaveMestre <> '' then
  begin
    crl.Close;
    crl.Params[0].AsString := vChaveMestre;
    crl.Open;

    consulta.Close;
    consulta.sql.Text := 'CALL ParametrosRelatorio(''' + Self.uqtabelarelcodigo.AsString + ''')';
    consulta.ExecSQL;

  end;

end;

procedure Tframre.ActExcluirExecute(Sender: TObject);
begin
  inherited;

  AtualizaParametros(uqtabelarelcodigo.AsString);

  crm.Close;
  crm.Params[0].AsInteger := Self.uqtabelabplcodigo.AsInteger;
  crm.Open;
end;

procedure Tframre.ActIncluirExecute(Sender: TObject);
begin
  inherited;

  if CriaFormulario(Tfmre, '', vChaveMestre) then
  begin

    AtualizaParametros(uqtabelarelcodigo.AsString);

    crm.Close;
    crm.Params[0].AsInteger := Self.uqtabelabplcodigo.AsInteger;
    crm.Open;
  end;
end;

procedure Tframre.DBGListaCRMDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  Self.gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tframre.DBGListaParemetrosDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  Self.gridzebrado(Sender, Rect, DataCol, Column, State);
end;

procedure Tframre.DSTabelaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if uqtabela.Active then
    if uqtabelabplcodigo.AsString <> '' then
    begin
      crm.Close;
      crm.Params[0].AsString := uqtabelabplcodigo.AsString;
      crm.Open;
    end;
end;

procedure Tframre.AtualizaParametros(vRelCodigo: String);
begin
  consulta.Close;
  consulta.sql.Text := 'CALL ParametrosRelatorio(''' + vRelCodigo + ''')';
  consulta.ExecSQL;

  crl.Close;
  crl.Params[0].AsString := uqtabelarelcodigo.AsString;
  crl.Open;
end;

procedure Tframre.Carregar;
begin
  uqtabela.Filter := 'relcodigo = ' + QuotedStr(vChaveMestre);
  uqtabela.Filtered := True;

  inherited;

  CarregarColunas(DBGListaCRM);
  CarregarColunas(DBGListaParemetros);

  if not(uqtabela.IsEmpty) then
    AtualizaParametros(vChaveMestre);
end;

end.
