unit ufexpimpits;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, uni, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, uFuncoes,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids;

type
  Tfexpimpits = class(TForm)
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgetddoc1: TStringField;
    pbotoes: TPanel;
    psituacao: TPanel;
    bfechar: TBitBtn;
    mostra: TProgressBar;
    itsweb: TUniQuery;
    misweb: TUniQuery;
    itsloc: TUniQuery;
    misloc: TUniQuery;
    consultaloc: TUniQuery;
    consultaweb: TUniQuery;
    processar: TTimer;
    btprocessar: TButton;
    DataSourceloc: TDataSource;
    DataSourceweb: TDataSource;
    pltexto: TPanel;
    procedure bfecharClick(Sender: TObject);
    procedure processarTimer(Sender: TObject);
    procedure btprocessarClick(Sender: TObject);
  private
    { Private declarations }
    Fzcone: TUniConnection;

    procedure ImportaDados(vlSql: string);
    function ConectItsWeb: boolean;
    procedure ExportaDados(vlSql: string);
  published
    property zcone: TUniConnection read Fzcone write Fzcone;

  public
    { Public declarations }
    ConexaoWeb: TUniConnection;

  end;

var
  fexpimpits: Tfexpimpits;

implementation

const
  vsenha = 'BEP3F$a+4e';

{$R *.dfm}

procedure Tfexpimpits.ImportaDados(vlSql: string);
var
  i, u: Integer;
begin

  consultaloc.close;
  consultaloc.Connection := zcone;
  consultaloc.Filter := '';
  consultaloc.Filtered := false;
  consultaloc.sql.Text := vlSql;
  consultaloc.Open;

  if ConectItsWeb then
  begin

    consultaweb.close;
    consultaweb.Connection := ConexaoWeb;
    consultaweb.Filter := '';
    consultaweb.Filtered := false;
    consultaweb.sql.Text := vlSql;
    consultaweb.Open;

    mostra.Max := consultaweb.RecordCount;
    mostra.Position := 0;
    application.ProcessMessages;

    consultaweb.First;
    while not consultaweb.Eof do
    begin
      mostra.Position := mostra.Position + 1;
      application.ProcessMessages;

      if pos('FROM its', consultaweb.sql.Text) > 0 then
      begin
        if consultaloc.Locate(consultaweb.Fields[0].FieldName, consultaweb.Fields[0].AsString, []) then
        begin
          consultaloc.Edit;
        end
        else
        begin
          consultaloc.Append;
        end;
      end
      else
      begin

        if consultaloc.Locate(consultaweb.Fields[0].FieldName + ';' + consultaweb.Fields[1].FieldName, VarArrayOf([consultaweb.Fields[0].AsString, consultaweb.Fields[1].AsString]
          ), []) then
        begin
          consultaloc.Edit;
        end
        else
        begin
          consultaloc.Append;
        end;
      end;

      u := 0;

      for i := u to consultaloc.Fields.Count - 1 do
      begin

        if consultaloc.Fields[i].DataType <> ftBlob then
          consultaloc.Fieldbyname(consultaloc.Fields[i].FieldName).AsString := consultaweb.Fieldbyname(consultaloc.Fields[i].FieldName).AsString
        else
          consultaloc.Fieldbyname(consultaloc.Fields[i].FieldName).asvariant := consultaweb.Fieldbyname(consultaloc.Fields[i].FieldName).asvariant;

      end;
      consultaloc.Post;

      consultaweb.Next;
    end;

  end;
end;

procedure Tfexpimpits.ExportaDados(vlSql: string);
var
  i, u: Integer;
begin

  consultaloc.close;
  consultaloc.Connection := zcone;
  consultaloc.Filter := '';
  consultaloc.Filtered := false;
  consultaloc.sql.Text := vlSql;
  consultaloc.Open;

  if ConectItsWeb then
  begin

    consultaweb.close;
    consultaweb.Connection := ConexaoWeb;
    consultaweb.Filter := '';
    consultaweb.Filtered := false;
    consultaweb.sql.Text := vlSql;
    consultaweb.Open;

    mostra.Max := consultaloc.RecordCount;
    mostra.Position := 0;
    application.ProcessMessages;

    consultaloc.First;
    while not consultaloc.Eof do
    begin
      mostra.Position := mostra.Position + 1;
      application.ProcessMessages;

      if pos('FROM its', consultaweb.sql.Text) > 0 then
      begin
        if consultaweb.Locate(consultaloc.Fields[0].FieldName, consultaloc.Fields[0].AsString, []) then
        begin
          consultaweb.Edit;
        end
        else
        begin
          consultaweb.Append;
        end;

      end
      else
      begin
        if consultaweb.Locate(consultaloc.Fields[0].FieldName + ';' + consultaloc.Fields[1].FieldName, VarArrayOf([consultaloc.Fields[0].AsString, consultaloc.Fields[1].AsString]
          ), []) then
        begin
          consultaweb.Edit;
        end
        else
        begin
          consultaweb.Append;
        end;

      end;
      u := 0;

      for i := u to consultaweb.Fields.Count - 1 do
      begin

        if consultaweb.Fields[i].DataType <> ftBlob then
          consultaweb.Fieldbyname(consultaweb.Fields[i].FieldName).AsString := consultaloc.Fieldbyname(consultaweb.Fields[i].FieldName).AsString
        else
          consultaweb.Fieldbyname(consultaweb.Fields[i].FieldName).asvariant := consultaloc.Fieldbyname(consultaweb.Fields[i].FieldName).asvariant;

      end;
      consultaweb.Post;

      consultaloc.Next;
    end;

  end;
end;

procedure Tfexpimpits.processarTimer(Sender: TObject);
var
  vlSql: string;
begin

  processar.Enabled := false;
  mostra.Visible := true;
  application.ProcessMessages;
  if fexpimpits.Caption = 'Importação de Instruções' then
  begin

    // try

    // zcone.StartTransaction;

    vlSql := 'SELECT itscodigo, itsidentificacao, itsdescricao,  itspdf FROM its';
    ImportaDados(vlSql);

    vlSql := 'SELECT  itscodigo, bplcodigo FROM mis';
    ImportaDados(vlSql);
    ShowMessage('Importação realizada com sucesso!');

    // zcone.Commit;
    // except
    // ShowMessage('FALHA na Importação de instruções!');

    // zcone.Rollback;

    // end;

  end;

  if fexpimpits.Caption = 'Exportação de Instruções' then
  begin
    // try

    // ConexaoWeb.StartTransaction;

    vlSql := 'SELECT itscodigo, itsidentificacao, itsdescricao, itspdf FROM its';
    ExportaDados(vlSql);

    vlSql := 'SELECT  itscodigo, bplcodigo FROM mis';
    ExportaDados(vlSql);
    ShowMessage('Exportação realizada com sucesso!');

    // ConexaoWeb.Commit;
    // except
    // ShowMessage('FALHA na exportação de instruções!');

    // ConexaoWeb.Rollback;

    // end;

  end;
  mostra.Visible := false;
  application.ProcessMessages;

  close;

end;

procedure Tfexpimpits.btprocessarClick(Sender: TObject);
begin
  processar.Enabled := true;
end;

function Tfexpimpits.ConectItsWeb: boolean;
var
  i: Integer;
  vlHost: string;

begin
  result := false;
  cfg.close;
  cfg.Connection := zcone;
  cfg.Open;

  ConexaoWeb := TUniConnection.Create(self);
  ConexaoWeb.LoginPrompt := false;
  ConexaoWeb.Username := 'root';
  ConexaoWeb.Database := 'publica_gourmet';
  ConexaoWeb.Server := '189.113.123.127';
  ConexaoWeb.ProviderName := 'mySQL';
  ConexaoWeb.Port := 3306;
  ConexaoWeb.Password := 'xda973';

  try
    ConexaoWeb.Connect;
    result := true;
  except
    result := false;
    application.ProcessMessages;

  end;

end;

procedure Tfexpimpits.bfecharClick(Sender: TObject);
begin
  modalresult := mrok;
end;

end.
