unit uffiltrocoluna;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Vcl.Grids, Vcl.DBGrids, DBAccess, Uni, uFuncoes, MemDS;

type
  Tffiltrocoluna = class(TForm)
    plrodape: TPanel;
    btCancela: TButton;
    btConfirma: TButton;
    Panel1: TPanel;
    plCentroPesquisa: TPanel;
    plbuscaFiltro: TPanel;
    DBGLista: TDBGrid;
    Dtmp: TUniDataSource;
    tmp: TUniQuery;
    edPesquisar: TEdit;
    Label1: TLabel;
    plmarcartodos: TPanel;
    cbMarcar: TCheckBox;
    plregistros: TPanel;
    filtro: TUniQuery;
    consulta: TUniQuery;
    procedure btCancelaClick(Sender: TObject);
    procedure btConfirmaClick(Sender: TObject);
    procedure DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGListaCellClick(Column: TColumn);
    procedure DBGListaDblClick(Sender: TObject);
    procedure DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormMouseLeave(Sender: TObject);
    procedure cbMarcarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure PreparaSql(vMarcacao: String);
    procedure CarregaSqlFiltro;
    { Private declarations }
  public
    { Public declarations }
    vpSqlBase: string;
    vpNomeColuna: string;
    vpNomeformulario: string;
    vpclbcodigo: string;

    vpSqlfiltrRetorno: string;

  end;

var
  ffiltrocoluna: Tffiltrocoluna;

type
  { expor propriedades e metodso privadas e protegindos do dbgrid }
  TFriendly = class(TCustomDBGrid);

implementation

{$R *.dfm}

procedure Tffiltrocoluna.btCancelaClick(Sender: TObject);
begin
  modalresult := mrcancel;
end;

procedure Tffiltrocoluna.btConfirmaClick(Sender: TObject);
begin
  tmp.DisableControls;

  tmp.First;
  vpSqlfiltrRetorno := '';

  consulta.Close;
  consulta.SQL.Text := ' update tfiltrocoluna' + vpNomeformulario + vpNomeColuna + vpclbcodigo + ' f set tmpselecionar=(SELECT tmpselecionar FROM tfiltrocoluna e where e.' +
    vpNomeColuna + '=f.' + vpNomeColuna + ' group by ' + vpNomeColuna + ') ';
  consulta.ExecSQL;

  while not tmp.Eof do
  begin
    if tmp.FieldByName('tmpselecionar').AsInteger = 0 then
    begin
      vpSqlfiltrRetorno := vpSqlfiltrRetorno + vpNomeColuna + '<>' + QuotedStr(tmp.FieldByName(vpNomeColuna).AsString) + ' and ';
    end;

    { if filtro.Locate(vpNomeColuna, tmp.FieldByName(vpNomeColuna).AsString, [locaseinsensitive]) then
      begin
      if filtro.FieldByName('tmpselecionar').AsInteger <> tmp.FieldByName('tmpselecionar').AsInteger then
      begin
      try
      consulta.Close;
      consulta.SQL.Text:='update tfiltrocoluna' + vpNomeformulario + vpNomeColuna + vpclbcodigo+' set tmpselecionar='+tmp.FieldByName('tmpselecionar').AsString+' where '+vpNomeColuna+'='+QuotedStr(tmp.FieldByName(vpNomeColuna).AsString);
      consulta.ExecSQL;

      // filtro.Edit;
      //  filtro.FieldByName('tmpselecionar').AsInteger := tmp.FieldByName('tmpselecionar').AsInteger;
      //  filtro.Post;
      except
      // filtro.Cancel;
      end;
      end;
      end; }

    tmp.Next;
  end;
  if vpSqlfiltrRetorno <> '' then
    vpSqlfiltrRetorno := copy(vpSqlfiltrRetorno, 1, length(vpSqlfiltrRetorno) - 4);

  tmp.EnableControls;

  modalresult := mrok;
end;

procedure Tffiltrocoluna.cbMarcarClick(Sender: TObject);
begin
  tmp.DisableControls;
  if cbMarcar.Checked then
  begin
    PreparaSql('1');
  end
  else
  begin
    PreparaSql('0');
  end;
  tmp.EnableControls;
end;

procedure Tffiltrocoluna.DBGListaCellClick(Column: TColumn);
var
  i: Integer;
begin
  if Column.FieldName = 'tmpselecionar' then
  begin
    try
      (* Tratativa para somente permitir essa chamada se o foco estiver no Grid *)
      if not(self.ActiveControl = DBGLista) then
        Exit;

      (* Pode fazer assim - Gabriel - 2014-02-06 1323 *)
      tmp.Edit;
      if tmp.FieldByName('tmpselecionar').AsString = '1' then
      begin
        tmp.FieldByName('tmpselecionar').AsString := '0';
      end
      else
      begin
        tmp.FieldByName('tmpselecionar').AsString := '1';
      end;
      tmp.Post;
    except

    end;
  end
  else
  begin
    inherited;
  end;

end;

procedure Tffiltrocoluna.DBGListaDblClick(Sender: TObject);
begin
  if self.tmp.FieldByName('tmpselecionar').AsString = '0' then
  begin
    self.tmp.Edit;
    self.tmp.FieldByName('tmpselecionar').AsString := '1';
    self.tmp.Post;
  end
  else
  begin
    self.tmp.Edit;
    self.tmp.FieldByName('tmpselecionar').AsString := '0';
    self.tmp.Post;
  end;
end;

procedure Tffiltrocoluna.DBGListaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  fixRect: TRect;
  tmpck: Integer;
  R: TRect;
  i: Integer;
begin

  fixRect := Rect;

  If odd(Dtmp.DataSet.RecNo) Then
    DBGLista.Canvas.Brush.Color := PEG_COR_BASE
  Else
    DBGLista.Canvas.Brush.Color := CLWHITE;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := clSilver; // $004080FF;
      FillRect(fixRect);
      Font.Color := CLWHITE;
    End;

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
        Brush.Color := clSilver; // $004080FF;
        { now redraw the cell, but highlighted }
        DefaultDrawColumnCell(fixRect, DataCol, Column, State);
      end;
    end;
  end;

  TDBGrid(Sender).DefaultDrawDataCell(fixRect, TDBGrid(Sender).Columns[DataCol].Field, State);

  if Column.FieldName = 'tmpselecionar' then
  begin

    // Desenha um tmpckbox no dbgrid

    DBGLista.Canvas.FillRect(Rect);

    tmpck := 0;
    if self.tmp.FieldByName('tmpselecionar').AsString = '1' then
      tmpck := DFCS_CHECKED
    else
      tmpck := 0;

    R := Rect;
    InflateRect(R, -2, -2); { Diminui o tamanho do tmpckBox }
    DrawFrameControl(DBGLista.Canvas.Handle, R, DFC_BUTTON, DFCS_BUTTONCHECK or tmpck);
  end;

end;

procedure Tffiltrocoluna.DBGListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  If (((Shift = [ssCtrl]) And (Key = 46))) or ((ssCtrl in Shift) and (Key = VK_DELETE)) Then
    Abort;
end;

procedure Tffiltrocoluna.FormMouseLeave(Sender: TObject);
begin
  self.Close;
end;

procedure Tffiltrocoluna.FormShow(Sender: TObject);
begin
  CarregaSqlFiltro;

  plregistros.Caption := Inttostr(tmp.RecordCount);

end;

procedure Tffiltrocoluna.PreparaSql(vMarcacao: String);
var
  vlSqlBase: string;
begin

  tmp.Close;
  tmp.SQL.Clear;
  tmp.SQL.add('DROP  TABLE IF EXISTS tfiltrocoluna;');
  tmp.SQL.add('CREATE  TABLE if not exists tfiltrocoluna ( ');
  tmp.SQL.add(' tmpselecionar int(11) NOT NULL default 1, ');
  tmp.SQL.add(vpNomeColuna + ' varchar(50) DEFAULT NULL ) ');
  tmp.SQL.add('ENGINE = INNODB; ');

  if cbMarcar.Checked then
  begin
    vlSqlBase := StringReplace(vpSqlBase, 'select 0 as tmpselecionar,', 'select 1 as tmpselecionar,', [rfReplaceAll, rfIgnoreCase]);
  end
  else
  begin
    vlSqlBase := StringReplace(vpSqlBase, 'select 1 as tmpselecionar,', 'select 0 as tmpselecionar,', [rfReplaceAll, rfIgnoreCase]);
  end;
  tmp.SQL.add('insert into  tfiltrocoluna  (' + vlSqlBase + ');');
  tmp.SQL.add('select tmpselecionar , ' + vpNomeColuna + ' from tfiltrocoluna;');
  tmp.open;

  DBGLista.Columns[0].Width := 64;
  DBGLista.Columns[1].Width := 150;

end;

procedure Tffiltrocoluna.CarregaSqlFiltro;
var
  vlSqlBase: string;
begin
  filtro.Close;
  filtro.SQL.Clear;
  filtro.SQL.add('CREATE TABLE if not exists tfiltrocoluna' + vpNomeformulario + vpNomeColuna + vpclbcodigo + ' ( ');
  filtro.SQL.add(' tmpselecionar int(11) NOT NULL default 1, ');
  filtro.SQL.add(vpNomeColuna + ' varchar(50) DEFAULT NULL ) ');
  filtro.SQL.add('ENGINE = INNODB; ');
  filtro.SQL.add('select tmpselecionar , ' + vpNomeColuna + ' from tfiltrocoluna' + vpNomeformulario + vpNomeColuna + vpclbcodigo);
  filtro.open;
  if filtro.IsEmpty then
  begin
    vlSqlBase := StringReplace(vpSqlBase, 'select 0 as tmpselecionar,', 'select 1 as tmpselecionar,', [rfReplaceAll, rfIgnoreCase]);
    filtro.SQL.Clear;
    filtro.SQL.add('insert into tfiltrocoluna' + vpNomeformulario + vpNomeColuna + vpclbcodigo + ' (' + vlSqlBase + ');');
    filtro.SQL.add('select tmpselecionar , ' + vpNomeColuna + ' from tfiltrocoluna' + vpNomeformulario + vpNomeColuna + vpclbcodigo);
    filtro.open;
  end;
  tmp.Close;
  tmp.SQL.Clear;
  tmp.SQL.add('DROP  TABLE IF EXISTS tfiltrocoluna;');
  tmp.SQL.add('CREATE  TABLE if not exists tfiltrocoluna ( ');
  tmp.SQL.add(' tmpselecionar int(11) NOT NULL default 1, ');
  tmp.SQL.add(vpNomeColuna + ' varchar(50) DEFAULT NULL ) ');
  tmp.SQL.add('ENGINE = INNODB; ');
  tmp.SQL.add('insert into tfiltrocoluna (select tmpselecionar , ' + vpNomeColuna + ' from tfiltrocoluna' + vpNomeformulario + vpNomeColuna + vpclbcodigo + ');');
  tmp.SQL.add('select tmpselecionar , ' + vpNomeColuna + ' from tfiltrocoluna;');
  tmp.open;

  tmp.DisableControls;
  filtro.First;
  while not filtro.Eof do
  begin

    { tmp.Append;
      tmp.Fields[0].AsString :=  filtro.Fields[0].AsString;
      tmp.Fields[1].AsString := filtro.Fields[1].AsString;
      tmp.Post; }

    filtro.Next;
  end;
  tmp.First;
  tmp.EnableControls;

  DBGLista.Columns[0].Width := 64;
  DBGLista.Columns[1].Width := 150;

end;

end.
