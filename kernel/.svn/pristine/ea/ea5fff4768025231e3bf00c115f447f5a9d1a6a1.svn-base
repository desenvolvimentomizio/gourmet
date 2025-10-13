unit ulbrp;

interface

uses
  Winapi.Windows, Vcl.Forms, ulbrf, ufrabase, ufrabrf, ufrabrp, Vcl.StdCtrls,
  Vcl.Buttons, System.Classes, Vcl.Controls, Vcl.ExtCtrls, Data.DB, Uni,
  System.SysUtils, uPegaBase, uFuncoes;

type
  Tlbrp = class(Tlbrf)
    frabrp: Tfrabrp;
    procedure bcancelaClick(Sender: TObject);
    procedure frabrpDvbaixaDataChange(Sender: TObject; Field: TField);
    procedure bconfirmaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  lbrp: Tlbrp;

implementation

{$R *.dfm}
{

  function formu(pCargaFrame: TCargaFrame; vtfdcodigo: string; vrfichave: string): string;
  begin
  pCargaFrame.Titulo := vPlTitMdl;

  lbrp := Tlbrp.Create(pCargaFrame);
  try
  lbrp.frabrp.IdModulo := vPlIdMd;
  lbrp.frabrp.titulo := vPlTitMdl;
  lbrp.frabrp.vTfdCodigo := vTfdCodigo;
  (* Limpa filtros existentes *)
  lbrp.frabrp.RemoverFiltro := True;

  lbrp.ShowModal;
  Result := lbrp.frabrp.vretorno;
  finally
  lbrp.Free;
  end;
  end; }

function formu(pCargaFrame: TCargaFrame): string;
// function formu(pCargaFrame: TCargaFrame; vtfdcodigo: string; vrfichave: string): string;
begin

  pCargaFrame.Titulo := vPlTitMdl;
  lbrp := Tlbrp.Create(pCargaFrame);
  try
    lbrp.frabrp.IdModulo := vPlIdMd;
    lbrp.frabrp.Titulo := vPlTitMdl;

    lbrp.frabrp.vtfdcodigo := '1';

    lbrp.frabrp.edbusca.Tag := 1;

    (* Limpa filtros existentes *)
    lbrp.frabrp.RemoverFiltro := True;
    if lbrp.frabrp.TxtFiltro <> '' then
    begin
      lbrp.frabrp.uqtabela.Filter := lbrp.frabrp.TxtFiltro;
      lbrp.frabrp.uqtabela.Filtered := True;

    end;

    // lbrp.frabrp.ActAtualizar.Execute;

    { if vrfichave <> '' then
      lbrp.frabrp.tabela.Locate('rfichave', vrfichave, []); }

    lbrp.frabrp.lte.Open;
    lbrp.frabrp.lte.Append;
    lbrp.frabrp.ltetfdcodigo.AsString := '1'; // vtfdcodigo;
    lbrp.frabrp.lte.Post;

    lbrp.frabrp.lte.Edit;
    lbrp.frabrp.bBuscaClientes.Visible := True;

    {lbrp.frabrp.Consulta.Close;
    lbrp.frabrp.consulta.SQL.Text:='DELETE FROM act WHERE actformulario='+QuotedStr('frabrp');
    lbrp.frabrp.consulta.ExecSQL;}


    lbrp.ShowModal;
  finally
    FreeAndNil(lbrp);
  end;

end;

{
  function formu(pCargaFrame: TCargaFrame; vtfdcodigo: string; vrfichave: string): string;
  begin

  pCargaFrame.Titulo := vPlTitMdl;
  lbrp := Tlbrp.Create(pCargaFrame);
  try
  lbrp.frabrp.IdModulo := vPlIdMd;
  lbrp.frabrp.Titulo := vPlTitMdl;

  lbrp.frabrp.vtfdcodigo := vtfdcodigo;
  lbrp.frabrp.edbusca.Tag := 1;

  (* Limpa filtros existentes *)
  lbrp.frabrp.RemoverFiltro := True;
  lbrp.frabrp.ActAtualizar.Execute;

  if vrfichave <> '' then
  lbrp.frabrp.tabela.Locate('rfichave', vrfichave, []);

  lbrp.frabrp.lte.Open;
  lbrp.frabrp.lte.Append;
  lbrp.frabrp.ltetfdcodigo.AsString := vtfdcodigo;
  lbrp.frabrp.lte.Post;

  lbrp.frabrp.lte.Edit;

  lbrp.ShowModal;
  finally
  FreeAndNil(lbrp);
  end;

  end; }
function Pagar(pCargaFrame: TCargaFrame; acesso: Tacesso; pEtdCodigo: String): string;
var
  lfram: Tfrabrp;
  vch: string;
begin

  pCargaFrame.Titulo := vPlTitMdl;
  lbrp := Tlbrp.Create(pCargaFrame);

  try
    lbrp.frabrp.IdModulo := vPlIdMd;
    lbrp.frabrp.Titulo := vPlTitMdl;

    lbrp.frabrp.vtfdcodigo := '1';

    lbrp.frabrp.acesso := acesso;
    lbrp.frabrp.vtfdcodigo := IntToStr(tfdPagar);
    lfram := lbrp.frabrp as Tfrabrp;
    lfram.edbusca.Tag := 1;

    (* Limpa filtros existentes *)
    lfram.RemoverFiltro := True;

    { if pEtdCodigo <> '' then
      begin
      lfram.uqtabela.Filter := 'etdcodigo = ' + pEtdCodigo;
      lfram.uqtabela.Filtered := True;

      lfram.bBuscaClientes.Visible := True;
      end }

    // lfram.carregar;

    lbrp.frabrp.lte.Open;
    lbrp.frabrp.lte.Append;
    lbrp.frabrp.ltetfdcodigo.AsInteger := tfdPagar;
    lbrp.frabrp.lte.Post;

   { lbrp.frabrp.Consulta.Close;
    lbrp.frabrp.consulta.SQL.Text:='DELETE FROM act WHERE actformulario='+QuotedStr('frabrp');
    lbrp.frabrp.consulta.ExecSQL;}

    lbrp.frabrp.lte.Edit;

    lbrp.ShowModal;
  finally
    FreeAndNil(lbrp);
  end;
end;

exports formu, Pagar;

procedure Tlbrp.bcancelaClick(Sender: TObject);
begin
  frabrp.BRemoverTodos.Click;
  lbrp.frabrp.LimpaRegistros;
  inherited;
end;

procedure Tlbrp.bconfirmaClick(Sender: TObject);
begin

  if lbrp.frabrp.Finaliza then
    inherited;
end;

procedure Tlbrp.frabrpDvbaixaDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  if Self.frabrp.Dvbaixa.DataSet.RecordCount = 0 then
    Self.bconfirma.Enabled := false
  else
    Self.bconfirma.Enabled := True;
end;

end.
