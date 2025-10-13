unit ufraetf;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, ufuncoes, uPegaBase,
  Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, dialogs, System.ImageList, Vcl.ImgList,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfraetf = class(Tfrabase)
    uqtabelaetfcodigo: TIntegerField;
    uqtabelaetdcodigo: TIntegerField;
    uqtabelaetfcontato: TStringField;
    uqtabelaetfdepartamento: TStringField;
    uqtabelaetftelefone: TStringField;
    uqtabelattfidentificacao: TStringField;
    uqtabelaetfativo: TIntegerField;
    uqtabelaetfsituacao: TStringField;
    ActDesativar: TAction;
    ActReativar: TAction;
    ActMostrarTodos: TAction;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActDesativarExecute(Sender: TObject);
    procedure ActReativarExecute(Sender: TObject);
    procedure ActMostrarTodosExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    vpEtfNumero: string;

    procedure Carregar; override;
  end;

var
  fraetf: Tfraetf;

  // Início ID do Módulo fraetf
const
  vPlIdMd = '01.01.80.002-01';
  vPlTitMdl = 'Telefone';

  // Fim ID do Módulo fraetf

implementation

{$R *.dfm}

uses ufetf;

function execute(pCargaFrame: TCargaFrame): TFrame;

begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  pCargaFrame.Filtro := pCargaFrame.Filtro;
  pCargaFrame.Modulo := pCargaFrame.Modulo;

  fraetf := Tfraetf.Create(pCargaFrame);
  fraetf.vpEtfNumero := pCargaFrame.Filtro;

  if lowercase(pCargaFrame.Modulo) = 'delivery' then
  begin
    if fraetf.vpEtfNumero <> '' then
    begin
      fraetf.actalterar.enabled := false;
      fraetf.ActIncluir.execute;
    end;
  end;

  Result := fraetf;
end;

exports execute;

procedure Tfraetf.Carregar;
begin

  inherited Carregar;
  if TxtFiltro <> '' then
  begin
    uqtabela.Locate('etftelefone', TxtFiltro, []);
  end;

end;

procedure Tfraetf.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  CriaFormulario(Tfetf, self.uqtabelaetfcodigo.AsString, self.vChaveMestre);
end;

procedure Tfraetf.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.FilterSQL := 'etfativo in (1)';

  inherited;

end;

procedure Tfraetf.ActDesativarExecute(Sender: TObject);

var
  rg: Integer;
begin
  inherited;
  if uqtabelaetfativo.AsString = '1' then
  BEGIN
    If application.MessageBox(PChar('DESATIVAR o telefone selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
    Begin

      rg := self.uqtabelaetfcodigo.AsInteger;

      consulta.close;
      consulta.sql.Text := 'update etf set etfativo=0  where etfcodigo = ' + self.uqtabelaetfcodigo.AsString;
      consulta.Execsql;

      ActMostrarTodos.execute;

      self.uqtabela.Locate('etfcodigo', rg, []);

    End;
  END
  else
  begin
    ShowMessage('Telefone ja esta INATIVO!');
  end;

end;

procedure Tfraetf.ActExcluirExecute(Sender: TObject);
begin
  inherited;

  consulta.close;
  consulta.sql.Text := 'SELECT mestelefone FROM mes WHERE  mes.mestelefone=' + self.uqtabelaetftelefone.AsString;
  consulta.Open;

  if not consulta.IsEmpty then
  begin
    ShowMessage('Este endereço já foi utilizado em uma venda, não pode ser excluido!');
    exit;
  end;

  if consulta.RecordCount = 1 then
  begin
    ShowMessage('Este endereço é o único endereço, cadastre o novo e depois exclua este!');
    exit;
  end;

  If application.MessageBox(PChar('Confirma a exclusão do registro?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
  Begin
    consulta.close;
    consulta.sql.Text := 'delete from etf where etfcodigo=' + uqtabelaetfcodigo.AsString;
    consulta.Execsql;
    self.ActAtualizar.execute;
    inherited;

  End;

end;

procedure Tfraetf.ActIncluirExecute(Sender: TObject);
var
  vletdCodigo: string;
begin
  inherited;
  vpEtfNumero := self.TxtFiltro;
  if vpEtfNumero <> '' then
  begin
    vletdCodigo := self.vChaveMestre;
    self.vChaveMestre := self.vChaveMestre + '#' + vpEtfNumero;
  end;

  if (vpEtfNumero = '') then
  begin
    CriaFormulario(Tfetf, '', self.vChaveMestre);
  end
  else
  begin
    consulta.close;
    consulta.sql.Text := 'select etfcodigo from etf where etdcodigo=' + vletdCodigo + ' and etftelefone=' + QuotedStr(vpEtfNumero);
    consulta.Open;

    if consulta.IsEmpty then
    begin

      consulta.close;
      consulta.sql.Text := 'INSERT INTO etf (etdcodigo ,ttfcodigo ,etftelefone, etfativo ) ';
      consulta.sql.add(' VALUES ');
      consulta.sql.add('(' + vletdCodigo + ', 1,' + QuotedStr(vpEtfNumero) + ',1)');
      consulta.Execsql;
    end;
    ActAtualizar.execute;
  end;

end;

procedure Tfraetf.ActMostrarTodosExecute(Sender: TObject);
begin
  inherited;
  uqtabela.FilterSQL := 'etfativo in (0,1)';

end;

procedure Tfraetf.ActReativarExecute(Sender: TObject);
var
  rg: Integer;
begin
  inherited;
  if uqtabelaetfativo.AsString <> '1' then
  BEGIN
    If application.MessageBox(PChar('REATIVAR o telefone selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
    Begin

      rg := self.uqtabelaetfcodigo.AsInteger;

      consulta.close;
      consulta.sql.Text := 'update etf set etfativo=1  where etfcodigo = ' + self.uqtabelaetfcodigo.AsString;
      consulta.Execsql;

      self.ActAtualizar.execute;

      self.uqtabela.Locate('etfcodigo', rg, []);

    End;
  END
  else
  begin
    ShowMessage('Telefone ja esta ATIVO!');
  end;

end;

end.
