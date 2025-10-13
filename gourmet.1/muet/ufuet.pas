unit ufuet;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.DBCtrls,
  Vcl.DBCGrids, Vcl.ComCtrls, DBAccess, Uni, MemDS, uPegaBase;

type
  Tfuet = class(TForm)
    consulta: tuniquery;
    Dconsulta: tunidatasource;
    lista: TDBGrid;
    pllista: TPanel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bfechar: TBitBtn;
    lbcodigojanela: TPanel;
    etd: tuniquery;
    etdetdcodigo: TIntegerField;
    etdetddoc1: TStringField;
    etdetdidentificacao: TStringField;
    Detd: tunidatasource;
    listaetd: TDBGrid;
    etdetdapelido: TStringField;
    etdedrrua: TStringField;
    etdedrinscest: TStringField;
    etdcddnome: TStringField;
    plduplicados: TPanel;
    etdtpecodigo: TIntegerField;
    etdtpeidentificacao: TStringField;
    Label1: TLabel;
    Etdcodigo1: TEdit;
    Label2: TLabel;
    Etdcodigo2: TEdit;
    bconfirma: TButton;
    quadro: TBevel;
    ltituloquadro: TLabel;
    plEtdcodigo1: TPanel;
    plEtdcodigo2: TPanel;
    blimpar: TButton;
    mostratabelas: TProgressBar;
    lmostratabelas: TLabel;
    pltpeidentificacao1: TPanel;
    pltpeidentificacao2: TPanel;
    edr: tuniquery;
    etdd: TIntegerField;
    consultaetddoc1: TStringField;
    consultaetdidentificacao: TStringField;
    ajuste: tuniquery;
    edretf: tuniquery;
    procedure DconsultaDataChange(Sender: TObject; Field: TField);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Etdcodigo1Exit(Sender: TObject);
    procedure Etdcodigo2Exit(Sender: TObject);
    procedure blimparClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
    Fzcone: TUniConnection;
    procedure AjustaTabela(tabela: string);
    procedure AjustaTabelaEdrEtf(vEtdcodigo, vtabela: string);
  public
    { Public declarations }

  published
    property zcone: TUniConnection read Fzcone write Fzcone;

  end;

var
  fuet: Tfuet;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  try
    fuet := Tfuet.Create(pCargaFrame.AOwner);
    fuet.zcone := pCargaFrame.Conexao;
    fuet.ShowModal;
  finally
    FreeAndNil(fuet);
  end;
end;

exports formu;

procedure Tfuet.bconfirmaClick(Sender: TObject);
var
  smsg: string;
  lTabelas: TStringList;
  vNomeTabela: string;
  i: Integer;
  reg: tuniquery;
begin

  try
    smsg := 'Confirma a unificação dos cadastros relacionados abaixo:' + #13 + #13 + #13 + 'Entidade que vai permanecer:'#13 + 'Código: ' + Self.Etdcodigo1.Text + ' - ' +
      Self.plEtdcodigo1.Caption + #13 + #13 + 'Entidade que será excluida:'#13 + 'Código: ' + Self.Etdcodigo2.Text + ' - ' + Self.plEtdcodigo2.Caption;

    If Application.MessageBox(PChar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
    Begin
      lTabelas := TStringList.Create;

      lmostratabelas.Visible := True;
      mostratabelas.Visible := True;

      Self.zcone.GetTableNames(lTabelas);

      mostratabelas.Max := lTabelas.Count;

      for i := 0 to lTabelas.Count - 1 do
      begin
        mostratabelas.Position := mostratabelas.Position + 1;
        Application.ProcessMessages;
        vNomeTabela := lTabelas[i];

        if (vNomeTabela <> 'etd') and (pos('view', vNomeTabela) = 0) and (pos('v_rfi', vNomeTabela) = 0) and (pos('v_chd', vNomeTabela) = 0)  then
          AjustaTabela(vNomeTabela);

        if (vNomeTabela = 'edr') and (vNomeTabela = 'etf') then
        begin
          AjustaTabelaEdrEtf(Etdcodigo1.Text, vNomeTabela);

        end;
      end;

      ShowMessage('Unificação realizada com sucesso!');

      reg := tuniquery.Create(Self);
      reg.Connection := Self.zcone;

      reg.SQL.Text := 'DELETE FROM etd WHERE etdcodigo = ' + Self.Etdcodigo2.Text;
      reg.ExecSQL;

      Self.blimpar.Click;
    end
    else
    begin
      Self.blimpar.Click;
    end;
  finally
    FreeAndNil(reg);
    FreeAndNil(lTabelas);
  end;

  Self.bconfirma.Enabled := False;
  mostratabelas.Position := 0;
end;

procedure Tfuet.AjustaTabelaEdrEtf(vEtdcodigo: String; vtabela: string);
begin
  if vtabela = 'etf' then
  begin
    edretf.close;
    edretf.SQL.Text := 'select * from etf where etdcodigo=' + vEtdcodigo + ' order by etfcodigo';
    edretf.OPEN;
    edretf.First;
    while not edretf.Eof do
    begin
      edretf.Edit;
      edretf.FieldByName('ttfcodigo').AsInteger := 2;
      edretf.Post;

      edretf.Next;
    end;
    edretf.First;
    edretf.Edit;
    edretf.FieldByName('ttfcodigo').AsInteger := 1;
    edretf.Post;

  end;


  if vtabela = 'edr' then
  begin
    edretf.close;
    edretf.SQL.Text := 'select * from edr where etdcodigo=' + vEtdcodigo + ' order by edrcodigo';
    edretf.OPEN;
    edretf.First;
    while not edretf.Eof do
    begin
      edretf.Edit;
      edretf.FieldByName('tedcodigo').AsInteger := 2;
      edretf.Post;

      edretf.Next;
    end;
    edretf.First;
    edretf.Edit;
    edretf.FieldByName('tedcodigo').AsInteger := 1;
    edretf.Post;

  end;



end;

procedure Tfuet.AjustaTabela(tabela: string);
var
  reg: tuniquery;
  f: Integer;
  tem: Boolean;
begin
  try
    tem := False;
    reg := tuniquery.Create(Self);
    reg.Connection := Self.zcone;

    reg.SQL.Text := 'SELECT * FROM ' + tabela;
    reg.OPEN;

    for f := 0 to reg.FieldCount - 1 do
    begin
      if reg.Fields[f].FieldName = 'etdcodigo' then
      begin
        tem := True;
        Break;
      end;
    end;

    if tem then
    begin

      if tabela = 'edr' then
      begin
        edr.Connection := Self.zcone;

        edr.close;
        edr.SQL.Text := 'SELECT edrcodigo, tpecodigo, tedcodigo, edrinscest, etd.etdcodigo FROM etd, edr ';
        edr.SQL.Add('WHERE etd.etdcodigo = edr.etdcodigo ');
        edr.SQL.Add('AND etd.etdcodigo = ' + Self.Etdcodigo1.Text);
        edr.OPEN;

        while not edr.Eof do
        begin
          if (edr.Fields[1].AsInteger = 1) or (edr.Fields[1].AsInteger = 3) then
          begin
            if (Trim(uppercase(edr.Fields[3].AsString)) <> 'ISENTO') and (edr.Fields[3].AsString <> '00000000000') then
            begin
              reg.close;
              reg.SQL.Text := 'UPDATE ' + tabela + ' SET ';
              reg.SQL.Add('etdcodigo = ' + Self.Etdcodigo1.Text + ', ');
              reg.SQL.Add('tedcodigo = 4 ');
              reg.SQL.Add('WHERE edr.edrcodigo IN (' + edr.Fields[0].AsString + ', ' + Self.Etdcodigo2.Text + ')');
              reg.ExecSQL;
            end
            else
            begin
              reg.close;
              reg.SQL.Text := 'UPDATE ' + tabela + ' SET ';
              reg.SQL.Add('etdcodigo = ' + Self.Etdcodigo1.Text + ' ');
              reg.SQL.Add('WHERE edr.edrcodigo IN (' + consulta.Fields[0].AsString + ', ' + Self.Etdcodigo2.Text + ')');
              reg.ExecSQL;
            end;
          end
          else
          begin
            reg.close;
            reg.SQL.Text := 'update ' + tabela + ' set etdcodigo=' + Self.Etdcodigo1.Text + ' where (edr.edrcodigo=' + consulta.Fields[0].AsString + ' and etdcodigo=' +
              Self.Etdcodigo2.Text + ')';
            reg.ExecSQL;
          end;

          edr.Next;
        end;

        edr.close;
        edr.SQL.Text := 'SELECT edrcodigo, tpecodigo, tedcodigo, edrinscest, etd.etdcodigo FROM etd, edr ';
        edr.SQL.Add('WHERE etd.etdcodigo = edr.etdcodigo ');
        edr.SQL.Add('AND etd.etdcodigo = ' + Self.Etdcodigo2.Text);
        edr.OPEN;

        while not edr.Eof do
        begin
          if (edr.Fields[1].AsInteger = 1) or (edr.Fields[1].AsInteger = 3) then
          begin
            if (Trim(uppercase(edr.Fields[3].AsString)) <> 'ISENTO') and (edr.Fields[3].AsString <> '00000000000') then
            begin
              reg.close;
              reg.SQL.Text := 'update ' + tabela + ' set etdcodigo=' + Self.Etdcodigo1.Text + ',tedcodigo=4 where (edr.edrcodigo=' + edr.Fields[0].AsString + ' or etdcodigo=' +
                Self.Etdcodigo2.Text + ')';
              reg.ExecSQL;
            end
            else
            begin
              reg.close;
              reg.SQL.Text := 'update ' + tabela + ' set etdcodigo=' + Self.Etdcodigo1.Text + ' where (edr.edrcodigo=' + consulta.Fields[0].AsString + ' or etdcodigo=' +
                Self.Etdcodigo2.Text + ')';
              reg.ExecSQL;
            end;
          end
          else
          begin
            reg.close;
            reg.SQL.Text := 'update ' + tabela + ' set etdcodigo=' + Self.Etdcodigo1.Text + ' where (edr.edrcodigo=' + consulta.Fields[0].AsString + ' or etdcodigo=' +
              Self.Etdcodigo2.Text + ')';
            reg.ExecSQL;
          end;

          edr.Next;
        end;

        ajuste.Connection := Self.zcone;

        edr.close;
        edr.SQL.Text := 'SELECT edrcodigo, tpecodigo, tedcodigo, edrinscest, etd.etdcodigo FROM etd, edr ';
        edr.SQL.Add('WHERE etd.etdcodigo = edr.etdcodigo ');
        edr.SQL.Add('AND etd.etdcodigo = ' + Self.Etdcodigo1.Text + ' ');
        edr.SQL.Add('ORDER BY tedcodigo');
        edr.OPEN;

        edr.First;
        edr.Next;

        while not edr.Eof do
        begin
          if Self.edr.Fields[2].AsInteger = 1 then
          begin
            ajuste.close;
            ajuste.SQL.Text := 'update edr set tedcodigo=2 where edrcodigo=' + Self.edr.Fields[0].AsString;
            ajuste.ExecSQL;
          end;
          edr.Next;
        end;
      end
      else
      begin

        reg.close;
        reg.SQL.Text := 'update ' + tabela + ' set etdcodigo=' + Self.Etdcodigo1.Text + ' where etdcodigo=' + Self.Etdcodigo2.Text;
        reg.ExecSQL;

      end;

    end;

  finally
    FreeAndNil(reg);
  end;

  { }
end;

procedure Tfuet.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfuet.blimparClick(Sender: TObject);
begin
  try
    consulta.close;
    consulta.OPEN;
    Etdcodigo1.Text := '';
    plEtdcodigo1.Caption := '';
    pltpeidentificacao1.Caption := '';
    Etdcodigo2.Text := '';
    plEtdcodigo2.Caption := '';
    bconfirma.Enabled := False;
    pltpeidentificacao2.Caption := '';

  finally

  end;
end;

procedure Tfuet.DconsultaDataChange(Sender: TObject; Field: TField);
begin
  if consulta.Active then
  begin
    if Self.consulta.FieldByName('etddoc1').AsString <> '' then
    begin
      etd.Connection := Self.zcone;

      etd.close;
      etd.Params[0].AsString := Self.consulta.FieldByName('etddoc1').AsString;
      etd.OPEN;
    end;
  end;
end;

procedure Tfuet.Etdcodigo1Exit(Sender: TObject);
begin
  if Etdcodigo1.Text <> '' then
  begin
    if etd.Locate('etdcodigo', strtoint(Etdcodigo1.Text), []) then
    begin
      plEtdcodigo1.Caption := Trim(Self.etdetdidentificacao.AsString) + '-' + Trim(Self.etdedrrua.AsString);
      pltpeidentificacao1.Caption := Trim(Self.etdtpeidentificacao.AsString);
    end
    else
    begin
      ShowMessage('Registro não localizado nos duplicados!');
      Etdcodigo1.Text := '';
      plEtdcodigo1.Caption := '';
      bconfirma.Enabled := False;
    end;
  end;

end;

procedure Tfuet.Etdcodigo2Exit(Sender: TObject);
begin
  if Etdcodigo2.Text <> '' then
  begin

    if etd.Locate('etdcodigo', strtoint(Etdcodigo2.Text), []) then
    begin
      plEtdcodigo2.Caption := Trim(Self.etdetdidentificacao.AsString) + '-' + Trim(Self.etdedrrua.AsString);
      pltpeidentificacao2.Caption := Trim(Self.etdtpeidentificacao.AsString);

      { if pltpeidentificacao1.Caption <> pltpeidentificacao2.Caption then
        begin
        showmessage('O Tipo de pessoa é diferente nos dois cadastros!');
        self.blimpar.Click;
        end; }

      if Self.Etdcodigo1.Text = Self.Etdcodigo2.Text then
      begin
        ShowMessage('Não podem ser código de origem e destino iguais!');
        Etdcodigo2.Text := '';
        plEtdcodigo2.Caption := '';
        bconfirma.Enabled := False;
      end;

    end
    else
    begin

      ShowMessage('Registro não localizado nos duplicados!');
      Etdcodigo2.Text := '';
      plEtdcodigo2.Caption := '';
      bconfirma.Enabled := False;
    end;

    if (plEtdcodigo1.Caption <> '') and (plEtdcodigo2.Caption <> '') and (Self.Etdcodigo1.Text <> Self.Etdcodigo2.Text) { and
      (self.pltpeidentificacao1.Caption = self.pltpeidentificacao2.Caption) } then
    begin
      bconfirma.Enabled := True;
      bconfirma.SetFocus;
    end
    else
    begin
      bconfirma.Enabled := False;
      Self.blimpar.SetFocus;
    end;
  end;

end;

procedure Tfuet.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if (Sender is tdbedit) then
  begin
    if (Sender as tdbedit).Field.DataType = ftfloat then
    begin
      If Key = '.' Then
      Begin
        Key := #0;
      End;
    end;
  end;

  If Key = ';' Then
  Begin
    Key := #0;
  End;

  If Key = '\' Then
  Begin
    Key := #0;
  End;

  If Key = #13 Then
  Begin
    If (Sender Is TDBGrid) Then
    Begin
      Key := #0;
      (Sender As TDBGrid).SelectedIndex := (Sender As TDBGrid).SelectedIndex + 1;
      If (Sender As TDBGrid).SelectedIndex = ((Sender As TDBGrid).Columns.Count) Then
      Begin
        (Sender As TDBGrid).SelectedIndex := 1;
        (Sender As TDBGrid).DataSource.DataSet.Next;
        If (Sender As TDBGrid).DataSource.DataSet.Eof Then
        Begin
          Perform(WM_NEXTDLGCTL, 0, 0);
        End;
      End;
    End
    Else
    Begin
      Key := #0;
      Perform(WM_NEXTDLGCTL, 0, 0);
    End;

  End
  Else If Key = #27 Then
  Begin
    Key := #0;
    bfechar.Click;
  End;

end;

procedure Tfuet.FormShow(Sender: TObject);
begin
  consulta.Connection := Self.zcone;
  consulta.OPEN;

end;

end.
