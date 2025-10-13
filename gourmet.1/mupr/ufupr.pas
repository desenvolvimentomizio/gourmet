unit ufupr;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Buttons,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, uPegaBase, uni, Vcl.ComCtrls, DBAccess,
  MemDS, Vcl.Mask, Vcl.DBCtrls;

type
  Tfupr = class(TForm)
    pllista: TPanel;
    lbcodigojanela: TPanel;
    lista: TDBGrid;
    plduplicados: TPanel;
    listaetd: TDBGrid;
    ltituloquadro: TLabel;
    quadro: TBevel;
    pbotoes: TPanel;
    psituacao: TPanel;
    bfechar: TBitBtn;
    consulta: TUniQuery;
    Dconsulta: TUniDataSource;
    pro: TUniQuery;
    dPro: TUniDataSource;
    Label1: TLabel;
    procodigo1: TEdit;
    Label2: TLabel;
    procodigo2: TEdit;
    lmostratabelas: TLabel;
    mostratabelas: TProgressBar;
    bconfirma: TButton;
    blimpar: TButton;
    pltpeidentificacao1: TPanel;
    plEtdcodigo1: TPanel;
    pltpeidentificacao2: TPanel;
    plEtdcodigo2: TPanel;
    proprocodigo: TIntegerField;
    proproncm: TStringField;
    propronome: TStringField;
    proprosaldo: TFloatField;
    proprosaldodisp: TFloatField;
    progrpcodigo: TIntegerField;
    progrpidentificacao: TStringField;
    promaridentificacao: TStringField;
    proicmaliquotas: TStringField;
    proproreferencia: TStringField;
    proproobs: TStringField;
    prounisimbolo: TStringField;
    propunprecoav: TFloatField;
    propunprecoap: TFloatField;
    prosipcodigo: TIntegerField;
    protpocodigo: TIntegerField;
    protpoidentificacao: TStringField;
    proenpcodigo: TIntegerField;
    proenpendereco: TStringField;
    procpbcodbalanca: TIntegerField;
    progracodigo: TIntegerField;
    prodpridentificacao: TStringField;
    proproconsolidado: TIntegerField;
    propunpercav: TFloatField;
    propunpercap: TFloatField;
    propuncusto: TFloatField;
    consultaprocodigo: TIntegerField;
    consultapronome: TStringField;
    erros: TMemo;
    qconsulta: TUniQuery;
    procedure FormShow(Sender: TObject);
    procedure AjustaTabela(tabela: string);
    procedure bfecharClick(Sender: TObject);
    procedure blimparClick(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure procodigo1Exit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure procodigo2Exit(Sender: TObject);
    procedure DconsultaDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    { Private declarations }
    Fzcone: TUniConnection;

  public
    { Public declarations }
  published
    property zcone: TUniConnection read Fzcone write Fzcone;
  end;

var
  fupr: Tfupr;

implementation

{$R *.dfm}

function formu(pCargaFrame: TCargaFrame): string;
begin
  try
    fupr := Tfupr.Create(pCargaFrame.AOwner);
    fupr.zcone := pCargaFrame.Conexao;
    fupr.ShowModal;
  finally
    FreeAndNil(fupr);
  end;
end;

exports formu;

procedure Tfupr.bconfirmaClick(Sender: TObject);
var
  smsg: string;
  lTabelas: TStringList;
  vNomeTabela: string;
  i: Integer;
  reg: TUniQuery;
  vlPunCodigo: String;
begin

  try
    smsg := 'Confirma a unificação dos cadastros relacionados abaixo:' + #13 + #13 + #13 + 'Entidade que vai permanecer:'#13 + 'Código: ' + Self.procodigo1.Text
      + ' - ' + Self.plEtdcodigo1.Caption + #13 + #13 + 'Entidade que será excluida:'#13 + 'Código: ' + Self.procodigo2.Text + ' - ' +
      Self.plEtdcodigo2.Caption;

    If Application.MessageBox(PChar(smsg), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
    Begin
      qconsulta.Close;
      qconsulta.Connection := zcone;
      qconsulta.SQL.Text := 'select puncodigo from pun where procodigo=' + procodigo2.Text;
      qconsulta.Open;

      vlPunCodigo := qconsulta.FieldByName('puncodigo').AsString;

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

        if (vNomeTabela <> 'v_vrp') and (vNomeTabela <> 'pun') and (vNomeTabela <> 'pro') and (pos('view', vNomeTabela) = 0) and (pos('v_rfi', vNomeTabela) = 0)
        then
          AjustaTabela(vNomeTabela);

      end;

      ShowMessage('Unificação realizada com sucesso!');

      reg := TUniQuery.Create(Self);
      reg.Connection := Self.zcone;
      reg.SQL.Text := 'DELETE FROM pro WHERE procodigo = ' + Self.procodigo2.Text;
      reg.ExecSQL;

      reg.SQL.Text := 'DELETE FROM pun WHERE puncodigo = ' + vlPunCodigo;
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

procedure Tfupr.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfupr.blimparClick(Sender: TObject);
begin
  try
    consulta.Close;
    consulta.Open;
    procodigo1.Text := '';
    plEtdcodigo1.Caption := '';
    pltpeidentificacao1.Caption := '';
    procodigo2.Text := '';
    plEtdcodigo2.Caption := '';
    bconfirma.Enabled := False;
    pltpeidentificacao2.Caption := '';

  finally

  end;

end;

procedure Tfupr.DconsultaDataChange(Sender: TObject; Field: TField);
begin
  if consulta.Active then
  begin
    if Self.consulta.FieldByName('pronome').AsString <> '' then
    begin
      pro.Connection := Self.zcone;

      pro.Close;
      pro.Params[0].AsString := Self.consulta.FieldByName('pronome').AsString;
      pro.Open;
    end;
  end;

end;

procedure Tfupr.FormKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfupr.FormShow(Sender: TObject);
begin
  consulta.Connection := Self.zcone;
  consulta.Open;

end;

procedure Tfupr.procodigo1Exit(Sender: TObject);
begin
  if procodigo1.Text <> '' then
  begin
    if pro.Locate('procodigo', strtoint(procodigo1.Text), []) then
    begin
      plEtdcodigo1.Caption := Trim(Self.proprocodigo.AsString);
      pltpeidentificacao1.Caption := Trim(Self.propronome.AsString);
    end
    else
    begin
      ShowMessage('Registro não localizado nos duplicados!');
      procodigo1.Text := '';
      plEtdcodigo1.Caption := '';
      bconfirma.Enabled := False;
    end;
  end;

end;

procedure Tfupr.procodigo2Exit(Sender: TObject);
begin
  if procodigo2.Text <> '' then
  begin

    if pro.Locate('procodigo', strtoint(procodigo2.Text), []) then
    begin
      plEtdcodigo2.Caption := Trim(Self.proprocodigo.AsString);
      pltpeidentificacao2.Caption := Trim(Self.propronome.AsString);

      { if pltpeidentificacao1.Caption <> pltpeidentificacao2.Caption then
        begin
        showmessage('O Tipo de pessoa é diferente nos dois cadastros!');
        self.blimpar.Click;
        end; }

      if Self.procodigo1.Text = Self.procodigo2.Text then
      begin
        ShowMessage('Não podem ser código de origem e destino iguais!');
        procodigo2.Text := '';
        plEtdcodigo2.Caption := '';
        bconfirma.Enabled := False;
      end;

    end
    else
    begin

      ShowMessage('Registro não localizado nos duplicados!');
      procodigo2.Text := '';
      plEtdcodigo2.Caption := '';
      bconfirma.Enabled := False;
    end;

    if (plEtdcodigo1.Caption <> '') and (plEtdcodigo2.Caption <> '') and (Self.procodigo1.Text <> Self.procodigo2.Text) { and
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

procedure Tfupr.AjustaTabela(tabela: string);
var
  reg: TUniQuery;
  f: Integer;
  tem: Boolean;
begin
  try
    tem := False;
    reg := TUniQuery.Create(Self);
    reg.Connection := Self.zcone;

    reg.SQL.Text := 'SELECT * FROM ' + tabela;
    reg.Open;

    for f := 0 to reg.FieldCount - 1 do
    begin
      if reg.Fields[f].FieldName = 'procodigo' then
      begin
        tem := True;
        Break;
      end;
    end;

    if tem then
    begin
      try

        reg.Close;
        reg.SQL.Text := 'update ' + tabela + ' set procodigo=' + Self.procodigo1.Text + ' where procodigo=' + Self.procodigo2.Text;
        reg.ExecSQL;
      except
        erros.Lines.Add(reg.SQL.Text);
      end;

    end;

  finally
    FreeAndNil(reg);
  end;

  { }
end;

end.
