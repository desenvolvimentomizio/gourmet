unit ufdfr;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes, System.Actions,
  Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons, Vcl.ComCtrls,
  Vcl.ExtCtrls, System.StrUtils, uFuncoes, uPegaBase, System.ImageList;

type
  Tfdfr = class(Tfrmbase)
    registrodfrchave: TIntegerField;
    registromeschave: TIntegerField;
    registrotdfcodigo: TStringField;
    registrodfrchavenfe: TStringField;
    registroetdcodigo: TIntegerField;
    registroedritem: TIntegerField;
    registrodfrserie: TStringField;
    registrodfrnumero: TIntegerField;
    registrodfremissao: TDateField;
    Label1: TLabel;
    dfrchave: TDBEdit;
    Label2: TLabel;
    tdfcodigo: TDBEdit;
    tfd: TUniQuery;
    tfdtdfcodigo: TStringField;
    tfdtdfidentificacao: TStringField;
    registrotdfidentificacao: TStringField;
    etd: TUniQuery;
    etdetdcodigo: TIntegerField;
    etdetdidentificacao: TStringField;
    etdedritem: TIntegerField;
    registroetdidentificacao: TStringField;
    PCNotas: TPageControl;
    TSNFs: TTabSheet;
    TSNotas: TTabSheet;
    dfrchavenfe: TDBEdit;
    Label3: TLabel;
    etdcodigo: TDBEdit;
    Label4: TLabel;
    dfrnumero: TDBEdit;
    Label5: TLabel;
    dfrserie: TDBEdit;
    Label6: TLabel;
    dfremissao: TDBEdit;
    procedure tdfcodigoExit(Sender: TObject);
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure tdfcodigoEnter(Sender: TObject);
    procedure dfrchavenfeExit(Sender: TObject);
    procedure registroBeforePost(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
  private
    FMesChave: String;
    procedure SetMesChave(const Value: String);
    procedure AjustaCampos;
    { Private declarations }
  published
    property MesChave: String read FMesChave write SetMesChave;
  public
    { Public declarations }
  end;

var
  fdfr: Tfdfr;

  // Início ID do Módulo fravrp
const
  vPlIdMd = '00.00.00.001-01';

  // Fim ID do Módulo fravrp

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fdfr := Tfdfr.Create(pCargaFrame);
  fdfr.ShowModal;
  fdfr.Free;
end;
exports formulario;

procedure Tfdfr.dfrchavenfeExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if ActiveControl = bcancela then
    Exit;

  if dfrchavenfe.Field.AsString = '' then
    Exit;

  if Length(dfrchavenfe.Field.AsString) <> 44 then
  begin
    Application.MessageBox(PChar('Chave de NF-e inválida!'), 'Atenção', MB_ICONWARNING + MB_OK);
    dfrchavenfe.SetFocus;
    Exit;
  end;
end;

procedure Tfdfr.FormCreate(Sender: TObject);
begin
  inherited;
  PCNotas.ActivePageIndex := 0;
end;

procedure Tfdfr.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;

  MesChave := vChaveMestre;

  inherited;

  AjustaCampos;
end;

procedure Tfdfr.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registromeschave.AsString := MesChave;
end;

procedure Tfdfr.registroBeforePost(DataSet: TDataSet);
begin
  if TSNotas.TabVisible then
    registroedritem.AsInteger := etdedritem.AsInteger;
end;

procedure Tfdfr.SetMesChave(const Value: String);
begin
  FMesChave := Value;
end;

procedure Tfdfr.tdfcodigoEnter(Sender: TObject);
begin
  inherited;
  txtFiltro := ' (tdfcodigo = ''01'' OR tdfcodigo = ''04'' OR tdfcodigo = ''55'' OR tdfcodigo = ''65'') ';
end;

procedure Tfdfr.tdfcodigoExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if tdfcodigo.Field.AsString = '' then
    Exit;

  AjustaCampos;
end;

procedure Tfdfr.AjustaCampos;
var
  I: Integer;
begin
  if tdfcodigo.Field.AsString = '' then
    Exit;

  if AnsiMatchStr(tdfcodigo.Field.AsString, [tdfNotaFiscalEletronica, tdfNotaFiscalConsumidorEletronica]) then
  begin
    TSNFs.TabVisible := True;
    TSNotas.TabVisible := False;

    if Self.ActiveControl = nil then
      ActiveControl := dfrchavenfe;
  end
  else
  begin
    TSNFs.TabVisible := False;
    TSNotas.TabVisible := True;

    if Self.ActiveControl = nil then
      ActiveControl := etdcodigo;
  end;

  if TSNFs.TabVisible then
  begin
    dfrchavenfe.Field.Required := True;
    dfrchavenfe.Color := PEG_COR_VALORREQUERIDO;

    for I := 0 to Self.ComponentCount - 1 do
      if TDBEdit(Components[I]).Parent = TSNotas then
        if Components[I] is TDBEdit then
        begin
          TDBEdit(Components[I]).Field.Required := False;
          TDBEdit(Components[I]).Field.AsString := '';
        end;

    Exit;
  end;

  if TSNotas.TabVisible then
  begin
    for I := 0 to Self.ComponentCount - 1 do
      if TDBEdit(Components[I]).Parent = TSNotas then
        if Components[I] is TDBEdit then
        begin
          TDBEdit(Components[I]).Field.Required := True;
          TDBEdit(Components[I]).Color := PEG_COR_VALORREQUERIDO;
        end;

    dfrchavenfe.Field.Required := False;
    dfrchavenfe.Field.AsString := '';
  end;
end;

end.
