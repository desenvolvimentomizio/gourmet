unit ufraedr;

interface

uses
  Winapi.Windows, Winapi.Messages, Vcl.Forms, ufrabase, VirtualTable, Data.DB,
  MemDS, DBAccess, Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.Controls, System.SysUtils, uPegaBase, Vcl.Mask,
  Vcl.DBCtrls, Vcl.Graphics, Vcl.dialogs, System.ImageList, Vcl.ImgList,
   Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc,ufuncoes;

type
  Tfraedr = class(Tfrabase)
    UQTabelatedidentificacao: TStringField;
    UQTabelaedrendereco: TStringField;
    UQTabelaedrbairro: TStringField;
    UQTabelacddnome: TStringField;
    UQTabelaufssigla: TStringField;
    UQTabelaetdcodigo: TIntegerField;
    UQTabelaedrinscest: TStringField;
    UQTabelaedrcodigo: TIntegerField;
    UQTabelatedcodigo: TIntegerField;
    uqtabelaedritem: TIntegerField;
    uqtabelaedrcomple: TStringField;
    uqtabelaedrnomefazenda: TStringField;
    ActDesativar: TAction;
    ActReativar: TAction;
    ActMostrarTodos: TAction;
    uqtabelaedrativo: TIntegerField;
    uqtabelaedrsituacao: TStringField;
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActExcluirExecute(Sender: TObject);
    procedure ActDesativarExecute(Sender: TObject);
    procedure ActReativarExecute(Sender: TObject);
    procedure ActMostrarTodosExecute(Sender: TObject);
    procedure ActAtualizarExecute(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private

    { Private declarations }
  published
  public
    procedure Carregar; override;
    { Public declarations }
  end;

var
  fraedr: Tfraedr;

  // Início ID do Módulo fraedr
const
  vPlIdMd = '01.01.80.001-01';
  vPlTitMdl = 'Endereços';

  // Fim ID do Módulo fraedr
implementation

{$R *.dfm}

uses ufedr, ufedrsimples;

type
  TFriendly = class(TCustomDBGrid);

function execute(pCargaFrame: TCargaFrame): TFrame;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Modulo := pCargaFrame.Modulo;

  pCargaFrame.Titulo := vPlTitMdl;

  fraedr := Tfraedr.Create(pCargaFrame);

  fraedr.Aplicacao := pCargaFrame.Modulo;

  Result := fraedr;
end;

exports execute;

procedure Tfraedr.ActAlterarExecute(Sender: TObject);
begin
  inherited;
  if self.Parent is tpanel then
    if tpanel(self.Parent as tpanel).Name = 'edrCle' then
      Aplicacao := 'Delivery';

  if (Aplicacao = 'Delivery') then
  begin
    if CriaFormulario(Tfedrsimples, self.UQTabelaedrcodigo.AsString, self.vChaveMestre) = False then
      self.vretorno := '0'
    else
      self.vretorno := self.vchave;
  end
  else
  begin
    if CriaFormulario(Tfedr, self.UQTabelaedrcodigo.AsString, self.vChaveMestre) = False then
      self.vretorno := ''
    else
      self.vretorno := self.vchave;
  end;
end;

procedure Tfraedr.ActAtualizarExecute(Sender: TObject);
begin
  uqtabela.FilterSQL := 'edrativo in (1)';

  inherited;

end;

procedure Tfraedr.ActDesativarExecute(Sender: TObject);
var
  rg: Integer;
begin
  inherited;
  if uqtabelaedrativo.AsString = '1' then
  BEGIN
    If application.MessageBox(PChar('DESATIVAR o endereço selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
    Begin

      rg := self.UQTabelaedrcodigo.AsInteger;

      consulta.close;
      consulta.sql.Text := 'update edr set edrativo=0  where edrcodigo = ' + self.UQTabelaedrcodigo.AsString;
      consulta.Execsql;

      ActMostrarTodos.execute;

      self.uqtabela.Locate('edrcodigo', rg, []);

    End;
  END
  else
  begin
    ShowMessage('Endereço ja esta INATIVO!');
  end;
end;

procedure Tfraedr.ActExcluirExecute(Sender: TObject);
begin

  consulta.close;
  consulta.sql.Text := 'SELECT edrcodigo FROM mes,edr WHERE mes.etdcodigo=edr.etdcodigo AND mes.edritem=edr.edritem and edr.edrcodigo=' + self.UQTabelaedrcodigo.AsString;
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
    consulta.sql.Text := 'delete from edr where edrcodigo=' + UQTabelaedrcodigo.AsString;
    consulta.Execsql;
    self.actatualizar.execute;
    inherited;

  End;

end;

procedure Tfraedr.ActIncluirExecute(Sender: TObject);
var
  plNome: string;
begin
  inherited;
  if self.Parent is tpanel then
  begin
    plNome := tpanel(self.Parent as tpanel).Name;
    if plNome = 'PledrCle' then
      Aplicacao := 'Delivery';
  end;

  if Aplicacao = 'Delivery' then
  begin
    if CriaFormulario(Tfedrsimples, '', self.vChaveMestre) = False then
      self.vretorno := '0'
    else
      self.vretorno := self.vchave;
  end
  else
  begin
    if CriaFormulario(Tfedr, '', self.vChaveMestre) = False then
      self.vretorno := '0'
    else
      self.vretorno := self.vchave;
  end;
end;

procedure Tfraedr.ActMostrarTodosExecute(Sender: TObject);
begin
  inherited;

  uqtabela.FilterSQL := 'edrativo in (0,1)';

end;

procedure Tfraedr.ActReativarExecute(Sender: TObject);
var
  rg: Integer;
begin
  inherited;
  if uqtabelaedrativo.AsString <> '1' then
  BEGIN
    If application.MessageBox(PChar('REATIVAR o endereço selecionado?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = idyes Then
    Begin

      rg := self.UQTabelaedrcodigo.AsInteger;

      consulta.close;
      consulta.sql.Text := 'update edr set edrativo=1  where edrcodigo = ' + self.UQTabelaedrcodigo.AsString;
      consulta.Execsql;

      self.actatualizar.execute;

      self.uqtabela.Locate('edrcodigo', rg, []);

    End;
  END
  else
  begin
    ShowMessage('Endereço ja esta ATIVO!');
  end;

end;

procedure Tfraedr.Carregar;
var
  plNome: string;
begin
  (* Filtro utilizado no carregamento na lista de Busca (lfrmbase) *)
  if vChaveMestre = '' then
    vChaveMestre := Trim(Copy(TxtFiltro, Pos('=', TxtFiltro) + 1, 10));

  inherited Carregar;

  if self.Parent is tpanel then
  begin
    plNome := tpanel(self.Parent as tpanel).Name;
    if plNome = 'PledrCle' then
    begin
      if self.FindComponent('ActIncluir') <> nil then
      begin
        consulta.close;
        consulta.sql.Text := 'select edrcodigo from edr where etdcodigo=' + vChaveMestre;
        consulta.Open;

        if consulta.IsEmpty then
        begin
          TAction(self.FindComponent('ActIncluir')).execute;
        end;

      end;

    end;

  end;

end;

procedure Tfraedr.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  I: Integer;
begin

  // If DBGLista.Focused Then
  // begin

  fixRect := Rect;

  If odd(DStabela.DataSet.RecNo) Then
  begin

    DBGLista.Canvas.Brush.Color := PEG_COR_BASE;
  end
  Else
  begin

    DBGLista.Canvas.Brush.Color := clwhite;
  end;

    if Self.uqtabelaedrativo.AsString = '1' then
    begin
      DBGLista.Canvas.Font.Color := clBlack;
    end
    else
    begin
      DBGLista.Canvas.Font.Color := clgray;
    end;


  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clsilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := clwhite;
    End;


  { cast DBGrid to a unit friendly class thus exposing all it private bits! }
  with TFriendly(DBGLista) do
  begin
    { Get active record within grids TDataLink. The active record will be
      the current record in the dataset. tmpck against Row that we are
      trying to Draw, -1 to offset the column headings within grid. }

    if TDataLink(DataLink).ActiveRecord = Row - 1 then
    begin
      with Canvas do
      begin
        { set grids canvas to win highlight colour }
        Brush.Color := clsilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(Rect, DataCol, Column, State);
      end;
    end;
  end;

  // end;


end;

end.
