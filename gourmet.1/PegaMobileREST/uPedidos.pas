unit uPedidos;

interface

uses Data.DB, System.JSON;

type
  TPedidos = class
    private
      function Adicionar : Boolean;
      function Atualizar : Boolean;
    public
      Cliente_ID             : Integer;
      Cliente_Nome           : String ;
      Cliente_DataNascimento : TDate  ;
      Cliente_Telefone       : String ;
      Cliente_Email          : String ;
      Cliente_DataCadastro   : TDate  ;

      class function RetornarTodosRegistros : tDataSet;
      class function RetornarRegistroById(pnId : Integer) : TDataSet;
      class procedure DeletarRegistroById(pnId : Integer);

      function Salvar : Boolean;

      procedure Assign(json : TJSONObject);
  end;



implementation

end.
