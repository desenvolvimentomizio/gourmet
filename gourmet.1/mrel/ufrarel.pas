unit ufrarel;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrabase, VirtualTable, Data.DB, MemDS, DBAccess,
  Uni, Vcl.Menus, System.Classes, System.Actions, Vcl.ActnList, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.Imaging.pngimage, Vcl.Controls, Vcl.Dialogs, System.SysUtils, uFuncoes,
  uPegaBase, Vcl.Mask, Vcl.DBCtrls, Vcl.Graphics, System.ImageList, Vcl.ImgList,
  Xml.xmldom, Xml.XMLIntf, Xml.XMLDoc;

type
  Tfrarel = class(Tfrabase)
    uqtabelarelcodigo: TStringField;
    uqtabelarelidentificacao: TStringField;
    uqtabelareltitulo: TStringField;
    uqtabelareltipodescri: TStringField;
    uqtabelarelsituacaodescri: TStringField;
    uqtabelarelnomearquivo: TStringField;
    ActClonar: TAction;
    ActExportar: TAction;
    ActImportar: TAction;
    uqtabelarelorigem: TStringField;
    cfg: TUniQuery;
    cfgcfgcodigo: TIntegerField;
    cfgetddoc1: TStringField;
    rell: TUniQuery;
    relc: TUniQuery;
    mrec: TUniQuery;
    crlc: TUniQuery;
    procedure ActIncluirExecute(Sender: TObject);
    procedure ActAlterarExecute(Sender: TObject);
    procedure ActExportarExecute(Sender: TObject);
    procedure ActImportarExecute(Sender: TObject);
    procedure ActClonarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frarel: Tfrarel;

  // Início ID do Módulo framrel
const
  vPlIdMd = '03.06.80.008-01';
  vPlTitMdl = 'Gestão de Relatórios';

  // Fim ID do Módulo framrel

implementation

{$R *.dfm}

uses ufrel, ufexpimprel;

function formuFrame(pCargaFrame: TCargaFrame): string;
begin
  pCargaFrame.IdModulo := vPlIdMd;
  pCargaFrame.Titulo := vPlTitMdl;
  frarel := Tfrarel.Create(pCargaFrame);
end;

procedure defineacesso(pCargaFrame: TCargaFrame);
begin
  pCargaFrame.Titulo := vPlTitMdl;
  frarel := Tfrarel.Create(pCargaFrame);
  try
    frarel.CriaAcoesDeAcesso;
  finally
    frarel.Free;
  end;
end;

exports formuFrame, defineacesso;

procedure Tfrarel.ActAlterarExecute(Sender: TObject);
begin
  CriaFormulario(Tfrel, uqtabelarelcodigo.asstring, '');
end;

procedure Tfrarel.ActClonarExecute(Sender: TObject);
var
  vlRadCNPJ: string;
  vlRelcodigo: string;
  i: Integer;
    vlChaverel:String;
begin
  inherited;
  If Application.MessageBox(PChar('Deseja Clonar este relatório PADRÃO?'), 'Atenção', MB_YESNO + MB_DEFBUTTON1 + MB_ICONQUESTION) = IDYES Then
  Begin
    if not cfg.Active then
      cfg.Open;

    vlRadCNPJ := SoNumeros(self.cfgetddoc1.asstring);
    vlRadCNPJ := copy(vlRadCNPJ, 1, 8);
    vlRelcodigo := copy(self.uqtabelarelcodigo.asstring, 1, 3) + vlRadCNPJ;

    consulta.Close;
    consulta.sql.Text := 'select count(*) from rel where relcodigo=' + chr(39) + vlRelcodigo + chr(39);
    consulta.Open;

    if consulta.fields[0].AsInteger > 0 then
    begin
      consulta.Close;
      consulta.sql.Text := 'SELECT COALESCE( MAX(LPAD(SUBSTR(relcodigo,1,3),3,0)),0) FROM rel';
      consulta.Open;
      vlRelcodigo := consulta.fields[0].AsString+ vlRadCNPJ;

    end;

vlChaverel:=  TGUID.NewGuid.ToString;


   vlRelcodigo:= copy(vlChaverel,2,11);


    rell.Close;
    rell.Params[0].asstring := uqtabelarelcodigo.asstring;
    rell.Open;

    relc.Close;
    relc.Params[0].asstring := vlRelcodigo;
    relc.Open;
    relc.Append;

    for i := 1 to rell.fields.Count - 1 do
    begin
      relc.fields[i].asvariant := rell.fields[i].asvariant;
    end;
    relc.Fieldbyname('relcodigo').asstring := vlRelcodigo;
    relc.Fieldbyname('reltipo').AsInteger := 1;
    relc.Fieldbyname('relidentificacao').asstring := rell.Fieldbyname('relidentificacao').asstring + '(Clonado)';
    relc.Post;

    consulta.Close;
    consulta.sql.Text := 'SELECT  relcodigo, bplcodigo FROM mre where relcodigo=' + chr(39) + uqtabelarelcodigo.asstring + chr(39);
    consulta.Open;

    mrec.Close;
    mrec.sql.Text := 'SELECT relcodigo, bplcodigo FROM mre limit 0';
    mrec.Open;

    consulta.First;
    while not consulta.eof do
    begin
      mrec.Append;

      for i := 0 to mrec.fields.Count - 1 do
      begin
        mrec.fields[i].asstring := consulta.fields[i].asstring;
      end;
      mrec.Fieldbyname('relcodigo').asstring := vlRelcodigo;

      mrec.Post;
      consulta.Next;
    end;

    consulta.Close;
    consulta.sql.Text := 'SELECT  crlnome, relcodigo FROM crl where relcodigo=' + chr(39) + uqtabelarelcodigo.asstring + chr(39);
    consulta.Open;

    crlc.Close;
    crlc.sql.Text := 'SELECT crlnome, relcodigo FROM crl limit 0';
    crlc.Open;

    consulta.First;
    while not consulta.eof do
    begin
      crlc.Append;

      for i := 0 to crlc.fields.Count - 1 do
      begin
        crlc.fields[i].asstring := consulta.fields[i].asstring;
      end;
      crlc.Fieldbyname('relcodigo').asstring := vlRelcodigo;

      crlc.Post;
      consulta.Next;
    end;

    self.ActAtualizar.Execute;
  End;

end;

procedure Tfrarel.ActExportarExecute(Sender: TObject);
begin
  inherited;
  if cfg.Fieldbyname('etddoc1').asstring = '14.477.548/0001-31' then
  begin
    Showmessage('A EMPRESA mizio NAO PODE EXPORTAR MENUS!');
  end
  else
  begin

    try
      Application.CreateForm(Tfexpimprel, fexpimprel);

      fexpimprel.SBExcluirUn.Visible := False;
      fexpimprel.SBExcluirTodos.Visible := False;
      fexpimprel.SBIncluirUm.Visible := True;
      fexpimprel.SBIncluirTodos.Visible := True;

      fexpimprel.zcone := self.zcone;
      fexpimprel.Caption := 'Exportação de Relatórios';
      fexpimprel.psituacao.Caption := 'Exportando';

      fexpimprel.ShowModal;

    finally
      FreeAndNil(fexpimprel);
    end;
  end;
end;

procedure Tfrarel.ActImportarExecute(Sender: TObject);
begin
  inherited;
  if cfg.Fieldbyname('etddoc1').asstring = '14.477.548/0001-31' then
  begin
    Showmessage('A EMPRESA mizio NAO PODE IMPORTAR MENUS!');
  end
  else
  begin

    try

      Application.CreateForm(Tfexpimprel, fexpimprel);

      fexpimprel.SBExcluirUn.Visible := True;
      fexpimprel.SBExcluirTodos.Visible := True;
      fexpimprel.SBIncluirUm.Visible := False;
      fexpimprel.SBIncluirTodos.Visible := False;

      fexpimprel.zcone := self.zcone;
      fexpimprel.Caption := 'Importação de Relatórios';
      fexpimprel.psituacao.Caption := 'Importando';
      fexpimprel.ShowModal;

      ActAtualizar.Execute;

    finally
      FreeAndNil(fexpimprel);
    end;
  end;
end;

procedure Tfrarel.ActIncluirExecute(Sender: TObject);
begin
  CriaFormulario(Tfrel, '0', '');
end;

end.
