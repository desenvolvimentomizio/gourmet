unit ufbusca;

interface

uses
  Vcl.Forms, Vcl.ExtCtrls, Vcl.StdCtrls, Uni, Data.DB, DBAccess, Vcl.Grids,
  Vcl.DBGrids, System.Classes, Vcl.Controls, Winapi.Windows, System.SysUtils,
  Vcl.Graphics, ufuncoes;

type
  Tfbusca = class(TForm)
    ptopo: TPanel;
    edbusca: TEdit;
    pordem: TPanel;
    Panel1: TPanel;
    bmais: TButton;
    bmenos: TButton;
    Dconsulta: tunidatasource;
    listabusca: TDBGrid;
    procedure listabuscaDblClick(Sender: TObject);
    procedure listabuscaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure listabuscaKeyPress(Sender: TObject; var Key: Char);
    procedure listabuscaTitleClick(Column: TColumn);
    procedure bmaisClick(Sender: TObject);
    procedure bmenosClick(Sender: TObject);
    procedure edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edbuscaKeyPress(Sender: TObject; var Key: Char);
  private
    procedure ajustaordem(Key: Integer);
    procedure atualizaconsulta;
    { Private declarations }
  public
    clivnd: boolean;
    provnd: boolean;
    vcampo: String;
    vvalor: String;
    vordem: String;
    xordem: Integer; { Public declarations }
  end;

var
  fbusca: Tfbusca;

implementation

{$R *.dfm}

procedure Tfbusca.bmaisClick(Sender: TObject);
begin
  ajustaordem(187);
end;

procedure Tfbusca.bmenosClick(Sender: TObject);
begin
  ajustaordem(189);
end;

procedure Tfbusca.edbuscaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  Begin
    Key := #0;
    modalresult := mrok;
  End;

end;

procedure Tfbusca.edbuscaKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
Var
  tecla: Word;
Begin
  tecla := Key;

  If (Key = 187) Or (Key = 107) Then
  Begin
    ajustaordem(Key);
  End;

  If (Key = 189) Or (Key = 109) Then
  Begin
    ajustaordem(Key);
  End;

  If edbusca.Text = '' Then
  Begin
    atualizaconsulta;
    If tecla = 40 Then
    Begin
      listabusca.SetFocus;
    End;
  End
  Else
  Begin
    If tecla = 40 Then
    Begin
      listabusca.SetFocus;
    End
    Else
    Begin
      If Dconsulta.DataSet.Locate(Dconsulta.DataSet.Fields[xordem].FieldName, edbusca.Text, [lopartialkey, loCaseInsensitive]) = false Then
      Begin
        atualizaconsulta;
      End;
    End;
  End;
end;

Procedure Tfbusca.atualizaconsulta;
Var
  query: String;
  part1: String;
  part2: String;
  titc1: String;
  titc2: String;
  titc3: String;
  titc4: String;
  titc5: String;
  titc6: String;
  lg: tstringlist;
Begin
  lg := tstringlist.create;

  { For I := 0 To nc - 1 Do
    Begin

    ilg := self.listabusca.DataSource.DataSet.Fields[i].DisplayWidth * (listabusca.Font.Size + 1);
    lg.Add(inttostr(ilg));
    End; }

  If Dconsulta.DataSet Is tuniquery Then
  Begin

    titc1 := (Dconsulta.DataSet As tuniquery).Fields[0].DisplayLabel;
    titc2 := (Dconsulta.DataSet As tuniquery).Fields[1].DisplayLabel;
    Try
      titc3 := (Dconsulta.DataSet As tuniquery).Fields[2].DisplayLabel;
    Except
      titc3 := '';
    End;
    Try
      titc4 := (Dconsulta.DataSet As tuniquery).Fields[3].DisplayLabel;
    Except
      titc4 := '';
    End;
    Try
      titc5 := (Dconsulta.DataSet As tuniquery).Fields[4].DisplayLabel;
    Except
      titc5 := '';
    End;
    Try
      titc6 := (Dconsulta.DataSet As tuniquery).Fields[5].DisplayLabel;
    Except
    End;

    query := (Dconsulta.DataSet As tuniquery).SQL.Text;

    part1 := copy(query, 1, pos('%', query) - 1);
    part2 := copy(query, pos('%', query) + 2, 300);

    If pos('%', part2) > 0 Then
    Begin
      part2 := copy(part2, pos('%', part2) + 1, 300);
    End;

    query := part1 + '%' + edbusca.Text + '%' + part2;

    (Dconsulta.DataSet As tuniquery).Close;
    (Dconsulta.DataSet As tuniquery).SQL.Clear;
    (Dconsulta.DataSet As tuniquery).SQL.Add(query);

    If (vcampo <> '') And (vvalor <> '') Then
    Begin
      (Dconsulta.DataSet As tuniquery).ParamByName(vcampo).AsString := vvalor;
    End;
    (Dconsulta.DataSet As tuniquery).Open;

  End;

  Dconsulta.DataSet.Locate(Dconsulta.DataSet.Fields[1].FieldName, edbusca.Text, [lopartialkey, loCaseInsensitive]);

  listabusca.Columns[0].Title.caption := titc1;
  listabusca.Columns[1].Title.caption := titc2;

  If titc3 <> '' Then
  Begin
    Try
      listabusca.Columns[2].Title.caption := titc3;
    Except
    End;
  End;

  If titc4 <> '' Then
  Begin
    Try
      listabusca.Columns[3].Title.caption := titc4;
    Except
    End;
  End;

  If titc5 <> '' Then
  Begin
    Try
      listabusca.Columns[4].Title.caption := titc5;
    Except
    End;

  End;

  If titc6 <> '' Then
  Begin
    Try
      listabusca.Columns[5].Title.caption := titc6;
    Except
    End;

  End;

  clivnd := false;
  provnd := false;

  { For I := 0 To self.listabusca.Columns.Count - 1 Do
    Begin
    self.listabusca.Columns[i].Width := strtoint(lg.Strings[i]);
    End; }
  freeandnil(lg);

End;

procedure Tfbusca.listabuscaDblClick(Sender: TObject);
begin
  modalresult := mrok;

end;

procedure Tfbusca.listabuscaDrawColumnCell(Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin

  If odd(Dconsulta.DataSet.RecNo) Then
    listabusca.Canvas.Brush.Color := PEG_COR_BASE
  Else
    listabusca.Canvas.Brush.Color := CLWHITE;

  TDBGrid(Sender).Canvas.Font.Color := clblack;

  If gdSelected In State Then
    With (Sender As TDBGrid).Canvas Do
    Begin
      Brush.Color := PEG_COR_SELCGRID;
      FillRect(Rect);
      Font.Style := [fsbold]
    End;

  TDBGrid(Sender).DefaultDrawDataCell(Rect, TDBGrid(Sender).Columns[DataCol].Field, State);

end;

Procedure Tfbusca.ajustaordem(Key: Integer);
Var
  I: Integer;
Begin
  If (Key = 187) Or (Key = 107) Then
  Begin
    edbusca.Text := '';
    Key := 0;
    For I := 0 To Dconsulta.DataSet.FieldCount - 1 Do
    Begin
      Try
        If self.Dconsulta.DataSet.Fields[I].FieldName = vordem Then
        Begin
          vordem := self.Dconsulta.DataSet.Fields[I + 1].FieldName;
          xordem := xordem + 1;
          pordem.caption := 'Pesquisar por: ' + self.Dconsulta.DataSet.Fields[I + 1].DisplayLabel;
          break;
        End;
      Except
      End;
    End;
  End;

  If (Key = 189) Or (Key = 109) Then
  Begin
    edbusca.Text := '';
    For I := 0 To Dconsulta.DataSet.FieldCount - 1 Do
    Begin
      Try
        If self.Dconsulta.DataSet.Fields[I].FieldName = vordem Then
        Begin
          vordem := self.Dconsulta.DataSet.Fields[I - 1].FieldName;
          pordem.caption := 'Pesquisar por: ' + self.Dconsulta.DataSet.Fields[I - 1].DisplayLabel;
          xordem := xordem - 1;
        End;
      Except
      End;
    End;
  End;

End;

procedure Tfbusca.listabuscaKeyPress(Sender: TObject; var Key: Char);
begin
  If Key = #13 Then
  Begin
    Key := #0;
    modalresult := mrok;
  End;

end;

procedure Tfbusca.listabuscaTitleClick(Column: TColumn);
Var
  ordem: String;
Begin
  ordem := Column.Field.FieldName;
  Inherited;

  If Dconsulta.DataSet Is tuniquery Then
  Begin
    (Dconsulta.DataSet As tuniquery).IndexFieldNames := ordem;
  End;
end;

end.
