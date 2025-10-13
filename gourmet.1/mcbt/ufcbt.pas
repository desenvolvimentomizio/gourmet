unit ufcbt;

interface

uses
  Winapi.Windows, Vcl.Forms, Vcl.ExtCtrls, Data.DB, DBAccess, Uni, MemDS,
  VirtualTable, Vcl.Controls, Vcl.ComCtrls, System.Classes, Vcl.StdCtrls,
  Vcl.Dialogs, System.SysUtils;

type
  Tfcbt = class(TForm)
    proToledo: TVirtualTable;
    tclToledo: TVirtualTable;
    consulta: TUniQuery;
    proToledodepartamento: TStringField;
    proToledoetiqueta: TStringField;
    proToledotipo: TStringField;
    proToledocodigo: TStringField;
    proToledopreco: TStringField;
    proToledovalidade: TStringField;
    proToledodescricao: TStringField;
    tclToledoteccodigo: TStringField;
    tclToledotecnumero: TStringField;
    tclToledotectecla: TStringField;
    tclToledotecproduto: TStringField;
    tclToledotecnome: TStringField;
    mcarregadados: TProgressBar;
    Label1: TLabel;
    Label2: TLabel;
    mgeraarquivopro: TProgressBar;
    Label3: TLabel;
    mgeraarquivotcl: TProgressBar;
    proFilizola: TVirtualTable;
    proFilizolacodigo: TStringField;
    proFilizolatipo: TStringField;
    proFilizoladescricao: TStringField;
    proFilizolapreco: TStringField;
    proFilizolavalidade: TStringField;
    proFilizolabarra: TStringField;
    proSetorFilizola: TVirtualTable;
    proSetorFilizolasetor: TStringField;
    proSetorFilizolacodigo: TStringField;
    proSetorFilizolaindice: TStringField;
    proSetorFilizolatecla: TStringField;
    executa: TTimer;
    procedure executaTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fzcone: tuniconnection;
    procedure CarregaDadosToledo(vSql: string);
    procedure GerarCargaToledo;
    procedure CarregaDadosFilizola(vSql: string);
    Procedure GerarCargaFilizola;
    { Private declarations }
  public
    { Public declarations }
    vpSql: string;
    vpArqPro: string;
    vpArqTcl: string;
    vpArqSet: string;
    vpNomeSetor: string;
  published
    property zcone: tuniconnection read Fzcone write Fzcone;

  end;

var
  fcbt: Tfcbt;

implementation

{$R *.dfm}

function CargaFilizola(AOwner: TComponent; conexao: tuniconnection; vSql: string; vArqPro: string; vArqSet: string; vNomeSetor: string): string;
begin
  Try
    fcbt := Tfcbt.Create(AOwner);
    fcbt.vpSql := vSql;
    fcbt.vpArqPro := vArqPro;
    fcbt.vpArqSet := vArqSet;
    fcbt.vpNomeSetor := vNomeSetor;
    fcbt.zcone := conexao;
    fcbt.consulta.Connection := fcbt.zcone;
    fcbt.showmodal;

    Result := '';
  Finally
    FreeAndNil(fcbt);
  End;
end;

function CargaToledo(AOwner: TComponent; conexao: tuniconnection; vSql: string; vArqPro: string; vArqTcl: string): string;
begin
  Try
    fcbt := Tfcbt.Create(AOwner);
    fcbt.vpSql := vSql;
    fcbt.vpArqPro := vArqPro;
    fcbt.vpArqTcl := vArqTcl;
    fcbt.zcone := conexao;
    fcbt.consulta.Connection := fcbt.zcone;
    fcbt.showmodal;

    Result := '';
  Finally
    FreeAndNil(fcbt);
  End;
end;

exports CargaToledo, CargaFilizola;

Procedure Tfcbt.GerarCargaToledo;
Var
  F: TextFile;
Begin

  { escreve arquivo de produtos }
  proToledo.first;
  If FileExists(vpArqPro) Then
    DeleteFile(vpArqPro);

  AssignFile(F, vpArqPro);
  Rewrite(F);
  mgeraarquivopro.Position := 0;
  mgeraarquivopro.Max := proToledo.RecordCount;

  While Not proToledo.eof Do
  Begin
    mgeraarquivopro.Position := mgeraarquivopro.Position + 1;
    Application.ProcessMessages;

    Writeln(F, proToledo.fields[0].asstring + proToledo.fields[1].asstring + proToledo.fields[2].asstring + proToledo.fields[3].asstring +
      proToledo.fields[4].asstring + proToledo.fields[5].asstring + proToledo.fields[6].asstring);
    proToledo.next;
  End;
  CloseFile(F);

  { escreve arquivo de teclas }

  tclToledo.first;
  If FileExists(vpArqTcl) Then
    DeleteFile(vpArqTcl);

  AssignFile(F, vpArqTcl);
  Rewrite(F);
  mgeraarquivotcl.Position := 0;
  mgeraarquivotcl.Max := tclToledo.RecordCount;

  While Not tclToledo.eof Do
  Begin
    mgeraarquivotcl.Position := mgeraarquivotcl.Position + 1;
    Application.ProcessMessages;

    If tclToledo.fields[2].asstring <> '00' Then
    Begin
      Writeln(F, tclToledo.fields[0].asstring + tclToledo.fields[1].asstring + tclToledo.fields[2].asstring + tclToledo.fields[3].asstring + '0' +
        tclToledo.fields[4].asstring + tclToledo.fields[4].asstring + tclToledo.fields[4].asstring);
    End;
    tclToledo.next;
  End;
  CloseFile(F);

End;

Procedure Tfcbt.CarregaDadosToledo(vSql: string);
Var
  ENCHE, QUERY: String;
  I, x: INTEGER;
Begin
  Inherited;

  // 0 vai para balanca, 1 simbolo unidade, 2 nome produto, 3 preco de venda, 4 validade, 5 codigo produto, 6 tecla de atalho

  ENCHE := '                       ';
  tclToledo.Open;

  proToledo.Open;

  consulta.close;
  consulta.SQL.Clear;
  consulta.SQL.Add(vSql);
  consulta.Open;
  x := 1;
  mcarregadados.Position := 0;
  mcarregadados.Max := consulta.RecordCount;

  While Not consulta.eof Do
  Begin

    mcarregadados.Position := mcarregadados.Position + 1;
    Application.ProcessMessages;

    If (consulta.fields[0].asstring = '1') or (lowercase(consulta.fields[0].asstring) = 'sim') Then
    Begin

      If (lowercase(consulta.fields[1].asstring) = 'kg') or (lowercase(consulta.fields[1].asstring) = 'un') Then
      Begin

        proToledo.append;
        proToledo.FieldByName('DEPARTAMENTO').asstring := '01';
        proToledo.FieldByName('ETIQUETA').asstring := '01';
        proToledo.FieldByName('codigo').asstring := FORMATFLOAT('000000', consulta.fields[5].Asfloat);

        If uppercase(consulta.fields[1].asstring) = 'UN' Then
        Begin
          proToledo.FieldByName('tipo').asstring := '1';
        End
        else If uppercase(consulta.fields[1].asstring) = 'KG' Then
        Begin
          proToledo.FieldByName('tipo').asstring := '0';
        End;

        proToledo.FieldByName('DESCRICAO').asstring := format('%-25s', [COPY(consulta.fields[2].asstring, 1, 25) + ENCHE]);
        proToledo.FieldByName('PRECO').asstring := FORMATFLOAT('0000000', consulta.fields[3].Asfloat * 1000);
        Try
          proToledo.FieldByName('VALIDADE').asstring := FORMATFLOAT('000', consulta.fields[4].Asfloat);
        Except
          proToledo.FieldByName('VALIDADE').asstring := '000';
        End;
        proToledo.post;

      End;

      tclToledo.append;
      tclToledoteccodigo.asstring := FORMATFLOAT('00', 1);
      tclToledotecnumero.asstring := '1';
      if consulta.FieldByName('protecla').asstring <> '' then
      begin
        tclToledotectecla.asstring := FORMATFLOAT('00', consulta.fields[6].Asfloat);
      end
      else
      begin
        tclToledotectecla.asstring := '00';
      end;

      tclToledotecproduto.asstring := FORMATFLOAT('000000', consulta.fields[5].Asfloat);
      tclToledotecnome.asstring := COPY(self.consulta.fields[2].asstring, 1, 8);
      tclToledo.post;
      x := x + 1;

    End;
    consulta.next;
  End;
  proToledo.first;
End;

procedure Tfcbt.executaTimer(Sender: TObject);
begin
  executa.Enabled := false;
  if vpArqTcl <> '' then
  begin
    CarregaDadosToledo(vpSql);
    GerarCargaToledo;

    ShowMessage('Carga de Balança TOLEDO geradas com sucesso !');
  end;

  if vpNomeSetor <> '' then
  begin
    CarregaDadosFilizola(vpSql);
    GerarCargaFilizola;

    ShowMessage('Carga de Balança FILIZOLA/RAMUZA com sucesso !');
  end;

  close;
end;

procedure Tfcbt.FormShow(Sender: TObject);
begin
  executa.Enabled := true;
end;

Procedure Tfcbt.CarregaDadosFilizola(vSql: string);
Var
  ENCHE: String;
  I: INTEGER;

Begin
  Inherited;

  ENCHE := '                       ';

  Inherited;
  proFilizola.Open;
  proSetorFilizola.Open;

  consulta.close;
  consulta.SQL.Clear;
  consulta.SQL.Add(vSql);
  consulta.Open;

  mcarregadados.Position := 0;
  mcarregadados.Max := consulta.RecordCount;

  While Not consulta.eof Do
  Begin

    mcarregadados.Position := mcarregadados.Position + 1;
    Application.ProcessMessages;

    If (consulta.fields[0].asstring = '1') or (lowercase(consulta.fields[0].asstring) = 'sim') Then
    Begin
      If (lowercase(consulta.fields[1].asstring) = 'kg') or (lowercase(consulta.fields[1].asstring) = 'un') Then
      Begin

        proFilizola.append;
        proFilizola.FieldByName('codigo').asstring := FORMATFLOAT('000000', consulta.FieldByName('procodigo').Asfloat);

        If uppercase(consulta.fields[1].asstring) = 'UN' Then
        Begin
          proFilizola.FieldByName('tipo').asstring := 'U';
        End;

        If uppercase(consulta.FieldByName('unisimbolo').asstring) = 'KG' Then
        Begin
          proFilizola.FieldByName('tipo').asstring := 'P';
        End;

        proFilizola.FieldByName('DESCRICAO').asstring := format('%-22s', [COPY(consulta.fields[2].asstring, 1, 22) + ENCHE]);

        proFilizola.FieldByName('PRECO').asstring := FORMATFLOAT('0000000', consulta.fields[3].Asfloat * 100);
        Try
          proFilizola.FieldByName('VALIDADE').asstring := FORMATFLOAT('000', consulta.fields[4].Asfloat);
        Except
          proFilizola.FieldByName('VALIDADE').asstring := '000';
        End;
        proFilizola.post;
      End;
    End;
    consulta.next;
  End;

  I := 0;

  consulta.first;
  mgeraarquivotcl.Position := 0;

  mgeraarquivotcl.Max := consulta.RecordCount;
  While Not consulta.eof Do
  Begin
    mgeraarquivotcl.Position := mgeraarquivotcl.Position + 1;
    Application.ProcessMessages;

    If (consulta.fields[0].asstring = '1') or (lowercase(consulta.fields[0].asstring) = 'sim') Then
    Begin
      I := I + 1;
      proSetorFilizola.append;
      proSetorFilizola.FieldByName('setor').asstring := format('%-12s', [COPY(vpNomeSetor, 1, 12) + ENCHE]);
      Try
        proSetorFilizola.FieldByName('codigo').asstring := FORMATFLOAT('000000', consulta.fields[5].Asfloat);
      Except
        proSetorFilizola.FieldByName('codigo').asstring := '000000';
      End;
      proSetorFilizola.FieldByName('indice').asstring := FORMATFLOAT('0000', strtofloat((inttostr(I))));
      Try
        proSetorFilizola.FieldByName('tecla').asstring := FORMATFLOAT('000', consulta.fields[6].Asfloat);
      Except
        proSetorFilizola.FieldByName('tecla').asstring := '000';
      End;
      proSetorFilizola.post;
    End;
    consulta.next;
  End;

End;

Procedure Tfcbt.GerarCargaFilizola;
Var
  F, f1: TextFile;
  arqinfnutri: String;
  arqrece: String;
Begin

  arqinfnutri := ExtractFilePath(vpArqPro) + 'nutri.txt';
  arqrece := ExtractFilePath(vpArqPro) + 'rec_ass.txt';
  // proFilizola
  proFilizola.first;
  If FileExists(vpArqPro) Then
    DeleteFile(vpArqPro);

  AssignFile(F, vpArqPro);
  mgeraarquivopro.Position := 0;
  mgeraarquivopro.Max := proFilizola.RecordCount;
  Rewrite(F);
  While Not proFilizola.eof Do
  Begin
    mgeraarquivopro.Position := mgeraarquivopro.Position + 1;
    Application.ProcessMessages;
    Writeln(F, proFilizola.fields[0].asstring + proFilizola.fields[1].asstring + proFilizola.fields[2].asstring + proFilizola.fields[3].asstring +
      proFilizola.fields[4].asstring);
    proFilizola.next;
  End;
  CloseFile(F);

  { // Tabela Nutricional
    tabnutri.Open;
    tabnutri.first; // vai para o primeiro registro

    If FileExists(arqinfnutri) Then // se existe o arquivo
    DeleteFile(arqinfnutri); // deleta o arquivo

    AssignFile(F, arqinfnutri); // atribui o arquivo para variável F.
    Rewrite(F); // abre para escrita
    While Not tabnutri.eof Do // enquanto não for fim do arquivo, salva linhas
    Begin
    Writeln(F,
    // soma os campos da tabela tabnutri
    ajustavalornutri(tabnutri.fields[1].asfloat, 6) +
    completa(tabnutri.fields[2].asstring, 35, '*') +
    ajustavalornutri(tabnutri.fields[3].asfloat, 5) + '0000' +
    ajustavalornutri(tabnutri.fields[4].asfloat, 5) + '0000' +
    ajustavalornutri(tabnutri.fields[5].asfloat, 5) + '0000' +
    ajustavalornutri(tabnutri.fields[6].asfloat, 5) + '0000' +
    ajustavalornutri(tabnutri.fields[7].asfloat, 5) + '0000' +
    ajustavalornutri(tabnutri.fields[8].asfloat, 5) + '0000' +
    ajustavalornutri(tabnutri.fields[9].asfloat, 5) + '0000' +
    ajustavalornutri(tabnutri.fields[10].asfloat, 5) + '0000' +
    ajustavalornutri(tabnutri.fields[11].asfloat, 5) + '0000' +
    ajustavalornutri(tabnutri.fields[12].asfloat, 5) + '0000');
    tabnutri.next;
    End;
    CloseFile(F); // fecha e salva arquivo
    // Receitas
    tabnutri.Open;
    tabnutri.first; // vai para o primeiro registro

    If FileExists(arqrece) Then // se existe o arquivo
    DeleteFile(arqrece); // deleta o arquivo

    AssignFile(F, arqrece); // atribui o arquivo para variável F.
    Rewrite(F); // abre para escrita
    While Not tabnutri.eof Do // enquanto não for fim do arquivo, salva linhas
    Begin
    If tabnutri.fields[13].asstring <> '' Then
    Begin
    Writeln(F,
    // soma os campos da tabela tabnutri
    ajustavalornutri(tabnutri.fields[1].asfloat, 6) +
    trim(tabnutri.fields[13].asstring)+ '@');
    End;
    tabnutri.next;
    End;
    CloseFile(F); // fecha e salva arquivo
  }

  // Setores
  proSetorFilizola.first;
  If FileExists(vpArqSet) Then
    DeleteFile(vpArqSet);

  AssignFile(f1, vpArqSet);
  Rewrite(f1);

  mgeraarquivotcl.Position := 0;
  mgeraarquivotcl.Max := proSetorFilizola.RecordCount;

  While Not proSetorFilizola.eof Do
  Begin
    mgeraarquivotcl.Position := mgeraarquivotcl.Position + 1;
    Application.ProcessMessages;

    Writeln(f1, proSetorFilizola.fields[0].asstring + proSetorFilizola.fields[1].asstring + proSetorFilizola.fields[2].asstring + proSetorFilizola.fields[3]
      .asstring);
    proSetorFilizola.next;
  End;
  CloseFile(f1);

  { inherited; }
  close;

End;

end.
