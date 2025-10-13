unit ufidc;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, ACBrBase, ACBrValidador, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, Vcl.ImgList, Vcl.Controls, PngImageList,
  System.Classes, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls, Vcl.Dialogs, System.SysUtils,
  uFuncoes, System.ImageList;

type
  Tfidc = class(Tfrmbase)
    registroidccodigo: TIntegerField;
    registroidcnome: TStringField;
    registroidcdoc: TStringField;
    registroidcemail: TStringField;
    registroidccelular: TStringField;
    Label1: TLabel;
    idccodigo: TDBEdit;
    Label2: TLabel;
    idcnome: TDBEdit;
    Label3: TLabel;
    idcdoc: TDBEdit;
    Bvalidar: TBitBtn;
    ACBrValidador: TACBrValidador;
    edprocurar: TEdit;
    sbBuscaCliente: TSpeedButton;
    Label4: TLabel;
    idcemail: TDBEdit;
    Label5: TLabel;
    idccelular: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BvalidarClick(Sender: TObject);
    procedure idcdocExit(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
    procedure edprocurarExit(Sender: TObject);
    procedure sbBuscaClienteClick(Sender: TObject);
  private
    function verificadocumento: Boolean;
    procedure ValidaDocumento;
    { Private declarations }
  public
    { Public declarations }
    vpIdcCodigo: string;
    vpMeschave: string;
    vpOrcchave: string;

  end;

var
  fidc: Tfidc;

  // Início ID do Módulo fidc
const
  vPlIdMd = '01.01.01.010-02';
  // Fim ID do Módulo fidc

implementation

{$R *.dfm}

function ClienteSimples(AOwner: TComponent; Conexao: TUniConnection; vMesChave: string; vClbCodigo: string): string;
begin
  try
    fidc := Tfidc.create(AOwner);
    fidc.vpIdcCodigo := '';
    fidc.vpMeschave := vMesChave;
    fidc.vpOrcchave := '0';
    fidc.Acesso.Usuario := StrToInt(vClbCodigo);
    fidc.vchave := '0';
    fidc.zcone := Conexao;
    fidc.ShowModal;
    result := fidc.vpIdcCodigo;
  finally
    freeandnil(fidc);
  end;

end;

function ClienteSimplesOrc(AOwner: TComponent; Conexao: TUniConnection; vMesChave: string; vClbCodigo: string): string;
begin
  try
    fidc := Tfidc.create(AOwner);
    fidc.vpIdcCodigo := '';
    fidc.vpMeschave := '0';
    fidc.vpOrcchave := vMesChave;

    fidc.Acesso.Usuario := StrToInt(vClbCodigo);
    fidc.vchave := '0';
    fidc.zcone := Conexao;
    fidc.ShowModal;
    result := fidc.vpIdcCodigo;
  finally
    freeandnil(fidc);
  end;

end;

exports ClienteSimples, ClienteSimplesOrc;

procedure Tfidc.bconfirmaClick(Sender: TObject);
begin
  inherited;
  vpIdcCodigo := Self.idccodigo.Field.AsString;

end;

procedure Tfidc.BvalidarClick(Sender: TObject);
begin
  inherited;
  ValidaDocumento;
end;

procedure Tfidc.edprocurarExit(Sender: TObject);
var
  vlidcDoc: string;
begin
  inherited;
  if edprocurar.Text <> '' then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select idccodigo from idc where idccodigo=' + Self.edprocurar.Text;
    consulta.Open;

    if consulta.RecordCount = 1 then
    begin
      vlidcDoc := Self.edprocurar.Text;
      registro.Cancel;
      registro.Close;
      registro.Params[0].AsString := vlidcDoc;
      registro.Open;
      registro.Edit;
      psituacao.Caption := 'Alterando';
    end;
    Self.idcnome.SetFocus;
    bconfirma.Enabled := True;

  end;
end;

function Tfidc.verificadocumento: Boolean;
begin
  result := True;

  idcdoc.Field.AsString := SoNumeros(idcdoc.Field.AsString);
  ACBrValidador.AjustarTamanho := True;
  ACBrValidador.Documento := idcdoc.Field.AsString;

  if length(idcdoc.Field.AsString) = 11 then
    ACBrValidador.TipoDocto := docCPF
  else
    ACBrValidador.TipoDocto := docCNPJ;

  if (ACBrValidador.Validar) then
  begin
    idcdoc.Field.AsString := ACBrValidador.Formatar;
    idcdoc.Color := $00F9D188;
  end
  else
  begin

    ShowMessage('CPF/CNPJ inválido!');
    idcdoc.SetFocus;
    result := False;
  end;
end;

procedure Tfidc.ValidaDocumento;
var
  vlidcDoc: string;
begin
  if verificadocumento then
  begin
    consulta.Close;
    consulta.SQL.Text := 'select idccodigo from idc where idcdoc=' + chr(39) + Self.idcdoc.Field.AsString + chr(39);
    consulta.Open;
    if consulta.RecordCount = 1 then
    begin
      vlidcDoc := consulta.Fields[0].AsString;
      registro.Cancel;
      registro.Close;
      registro.Params[0].AsString := vlidcDoc;
      registro.Open;
      registro.Edit;
      psituacao.Caption := 'Alterando';
    end;
    Self.idcnome.SetFocus;
    bconfirma.Enabled := True;
  end
  else
  begin
    Self.idcdoc.SetFocus;
  end;
end;

procedure Tfidc.FormShow(Sender: TObject);
begin
  IdModulo := vPlIdMd;
  inherited;

end;

procedure Tfidc.idcdocExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if ActiveControl = bcancela then
    Exit;

  if Trim(idcdoc.Field.AsString) = '' then
    Exit;

  ValidaDocumento;
end;

procedure Tfidc.sbBuscaClienteClick(Sender: TObject);
var
  vlidccodigo: string;
begin
  inherited;
  vlidccodigo := '';
  vlidccodigo := mostralista('midc', '');
  if vlidccodigo <> '' then
  begin
    edprocurar.Text := vlidccodigo;
    consulta.Close;
    consulta.SQL.Text := 'select idcdoc,idcnome from idc where idccodigo=' + Self.edprocurar.Text+' order by idccodigo desc limit 1 ';
    consulta.Open;

    if consulta.RecordCount=1 then
    begin
      idcdoc.Field.Text:=consulta.FieldByName('idcdoc').AsString;
      idcnome.Field.Text:=consulta.FieldByName('idcnome').AsString;
    end;

    edprocurar.SetFocus;

  end;
end;

end.
