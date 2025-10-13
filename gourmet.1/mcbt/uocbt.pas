unit uocbt;

interface

uses System.SysUtils,uni;

type
  TOcbt = class(TObject)
  Procedure GeraArquivoCarga(arqDest:string);
  end;

implementation


Procedure TOcbt.CarregaDados;
Var
  ENCHE, QUERY: String;
  I, x: INTEGER;
Begin
  Inherited;
  enche := '                       ';

  teclas.Open;
  teclas.EmptyTable;
  produtos.Open;
  produtos.EmptyTable;

  consulta.Close;
  consulta.SQL.Clear;
  consulta.SQL.Add('select * from pro, icm,pun,tpu,uni ' +
    ' where ' +
    'pro.procodigo=pun.procodigo and ' +
    'icm.icmcodigo=pro.icmcodigo and ' +
    'uni.unicodigo=pun.unicodigo and ' +
    'tpu.puncodigo=pun.puncodigo');
  consulta.Open;
  x := 1;
  While Not consulta.eof Do
  Begin
    If consulta.FieldByName('probalanca').AsString = '1' Then
    Begin

      produtos.append;
      produtos.fieldbyname('DEPARTAMENTO').asstring := '01';
      produtos.fieldbyname('ETIQUETA').asstring := '01';
      produtos.fieldbyname('codigo').asstring := FORMATFLOAT('000000', consulta.Fieldbyname('procodigo').Asfloat);

      If uppercase(consulta.fieldbyname('unisimbolo').asstring) = 'UN' Then
      Begin
        produtos.fieldbyname('tipo').asstring := '1';
      End;

      If uppercase(consulta.fieldbyname('unisimbolo').asstring) = 'KG' Then
      Begin
        produtos.fieldbyname('tipo').asstring := '0';
      End;

      produtos.fieldbyname('DESCRICAO').asstring := format('%-25s', [COPY(consulta.Fieldbyname('pronome').AsString, 1, 25) + enche]);
      produtos.fieldbyname('PRECO').asstring := FORMATFLOAT('0000000', consulta.Fieldbyname('tpuvalor').AsFLOAT * 1000);
      Try
        produtos.fieldbyname('VALIDADE').asstring := FORMATFLOAT('000', consulta.Fieldbyname('provalidade').AsFLOAT);
      Except
        produtos.fieldbyname('VALIDADE').asstring := '000';
      End;
      produtos.post;

      teclas.Append;
      teclasteccodigo.AsString := formatfloat('00', 1);
      teclastecnumero.AsString := '1';
      if  consulta.Fieldbyname('protecla').Asstring<>'' then
      begin
        teclastectecla.AsString := FORMATFLOAT('00', consulta.Fieldbyname('protecla').AsFLOAT);
      end
      else
      begin
        teclastectecla.AsString := '00';
      end;

      teclastecproduto.AsString := FORMATFLOAT('000000', consulta.Fieldbyname('procodigo').AsFLOAT);
      teclastecnome.AsString := copy(self.consulta.FieldByName('pronome').AsString, 1, 8);
      teclas.Post;
      x := x + 1;

    End;
    consulta.next;
  End;
  produtos.First;
End;


Procedure TOcbt.GeraArquivoCarga(arqDest:string);
Var
  F: TextFile;
  arq: String;
  mpro:TUniQuery;
  mtcl:TUniQuery;
Begin

  qpro.first;
  If FileExists(arqDest) Then
    DeleteFile(arqDest);

  AssignFile(F, arqDest);
  Rewrite(F);
  While Not qpro.eof Do
  Begin
    Writeln(F,
      qpro.fields[0].asstring +
      qpro.fields[1].asstring +
      qpro.fields[2].asstring +
      qpro.fields[3].asstring +
      qpro.fields[4].asstring +
      qpro.fields[5].asstring +
      qpro.fields[6].asstring);
    qpro.next;
  End;
  CloseFile(F);



  arq := arqDest;
  arq := extractfilepath(arq) + 'txteclas.txt';

  qtcl.first;

  If FileExists(arq) Then
    DeleteFile(arq);

  AssignFile(F, arq);
  Rewrite(F);
  While Not qtcl.eof Do
  Begin
    If qtcl.fields[2].asstring <> '00' Then
    Begin
      Writeln(F,
        qtcl.fields[0].asstring +
        qtcl.fields[1].asstring +
        qtcl.fields[2].asstring +
        qtcl.fields[3].asstring + '0' + qtcl.fields[4].asstring + qtcl.fields[4].asstring + qtcl.fields[4].asstring);
    End;
    qtcl.next;
  End;
  CloseFile(F);

End;

end.
