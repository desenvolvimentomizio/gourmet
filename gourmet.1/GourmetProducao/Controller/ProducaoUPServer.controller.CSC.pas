unit ProducaoUPServer.controller.CSC;

interface

Uses
  System.AnsiStrings,
  Horse,
  DataSetConverter4D,
  DataSetConverter4D.Impl,
  System.Json,
  Uni,
  UniProvider,
  MySQLUniProvider,
  ProducaoUP.Services.Connection ;


procedure Registry(App: THorse);
procedure V1GetId(Req: THorseRequest; Res: THorseResponse; Next: TProc);
procedure V1Post(Req: THorseRequest; Res: THorseResponse; Next: TProc);

type
 TAPIError = class
  private
    Ferror: string;
  public
    property error: string read Ferror write Ferror;
  end;

implementation

uses
  System.Variants, System.SysUtils;



procedure Registry(App: THorse);
begin
  App.Get('/v1/csc/:id', V1Getid);
  App.Post('/v1/csc', V1Post);

end;

Function SoNumeros(Const Texto: String): String;

//
// Remove caracteres de uma string deixando apenas numeros
//
Var
  i: Integer;
  S: String;
Begin
  S := '';
  For i := 1 To Length(Texto) Do
  Begin
    If (Texto[i] In ['0' .. '9']) Then
    Begin
      S := S + Copy(Texto, i, 1);
    End;
  End;
  Result := S;
End;


procedure V1Post(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  conexao:TUniConnection;
  CSC:TUniQuery;
  CZN:TUniQuery;

  Acsc:TJSONArray;
  Ocsc:TJsonObject;

  jspair:TJSONPair;

  vlcznchave:string;
  vlsepcodigo:string;
  vlclbcodigo:string;

  i:integer;

begin

  try

    conexao:=TUniConnection.Create(nil);

    if AtivaConexao(conexao) then
    begin

      try

        try

          CZN:=TUniQuery.Create(nil);
          CZN.Connection:=conexao;
          CZN.sql.Text:='select cznchave '+
                        'from czn '+
                        'Where cznfechamento is null order by cznchave desc limit 1';
          CZN.Open;

          if not CZN.IsEmpty then
          begin
            vlcznchave := CZN.FieldByName('cznchave').AsString;
            CZN.close;
          end
          else
          begin
            vlcznchave:='1';
            CZN.close;
          end;

        finally

          if CZN<>nil then
            CZN.DisposeOf;

        end;

        Acsc := Req.Body<TJSONArray>;

        for i := 0 to Acsc.Count-1 do
        begin

          Ocsc :=  Acsc.Items[i].GetValue<TJSONObject>;

          jspair := Ocsc.Pairs[0];
          vlsepcodigo := SoNumeros(jspair.JsonValue.ToString);

          jspair := Ocsc.Pairs[1];
          vlclbcodigo := SoNumeros(jspair.JsonValue.ToString);

          try

            CSC:=TUniQuery.Create(nil);
            CSC.Connection:=conexao;

            CSC.sql.Text:='select cscchave, cznchave, clbcodigo, sepcodigo, cscregistro '+
                        'from csc where cznchave='+vlcznchave;

            CSC.Open;

            if CSC.IsEmpty then
            begin
              csc.Append;
            end
            else
            begin
              if CSC.Locate('clbcodigo;sepcodigo',vararrayof([vlclbcodigo,vlsepcodigo ]),[] ) then
                CSC.Edit
              else
                CSC.Append;
            end;

            CSC.FieldByName('cznchave').AsString:=SoNumeros(vlcznchave);
            CSC.FieldByName('sepcodigo').AsString:=SoNumeros(vlsepcodigo);
            CSC.FieldByName('clbcodigo').AsString:=SoNumeros(vlclbcodigo);
            CSC.FieldByName('cscregistro').Asdatetime:=now();
            CSC.Post;

          finally
            CSC.Close;

            if CSC<>nil then
              CSC.DisposeOf;

          end;

        end;

        res.Send('Registro realizado com sucesso').Status(200);

      except

        res.Send('Falha ao salvar Registro').Status(404);

      end;


    end;

  finally

    if conexao.Connected then
    conexao.Connected:=false;


    if conexao<>nil then
      conexao.DisposeOf;


  end;

end;

procedure V1GetID(Req: THorseRequest; Res: THorseResponse; Next: TProc);
var
  conexao:TUniConnection;
  CSC:TUniQuery;
  CZN:TUniQuery;

  vlcznchave:string;

begin

  try

    conexao:=TUniConnection.Create(nil);

    if AtivaConexao(conexao) then
    begin

      CZN:=TUniQuery.Create(nil);
      CZN.Connection:=conexao;
      CZN.sql.Text:='select cznchave '+
                    'from czn '+
                    'Where cznfechamento is null order by cznchave desc limit 1';
      CZN.Open;


      if not CZN.IsEmpty then
      begin
        vlcznchave := CZN.FieldByName('cznchave').AsString;
        CZN.close;
      end
      else
      begin
        vlcznchave:='1';
        CZN.close;
      end;


      CSC:=TUniQuery.Create(nil);
      CSC.Connection:=conexao;

      CSC.sql.Text:='select clb.clbcodigo, clb.clbidentificacao from clb,csc '+
                    'Where clb.clbcodigo=csc.clbcodigo '+
                    'and csc.cznchave='+vlcznchave+' '+
                    'and clb.fnccodigo=9 and clb.clbativo=' +QuotedStr('1')+' '+
                    'and csc.sepcodigo='+ Req.Params.Items['id']+' '+
                    'order by csc.cscregistro';

      CSC.Open;
    end;

    if not CSC.IsEmpty then
    begin
       Res.Send<TJsonarray>(TConverter.New.DataSet(CSC).AsJSONArray);
       CSC.close;
    end
    else
    begin
       res.Status(204);
    end;

  finally

    if conexao.Connected then
    conexao.Connected:=false;

    if CZN<>nil then
      CZN.DisposeOf;

    if CSC<>nil then
      CSC.DisposeOf;

    if conexao<>nil then
      conexao.DisposeOf;

  end;


end;



end.

