unit ufcfgmnfe;

interface

uses
  Winapi.Windows, Vcl.Forms, ufrmbase, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Mask, Vcl.ImgList, Vcl.Controls, PngImageList, System.Classes,
  System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni, Vcl.Buttons,
  Vcl.ComCtrls, System.SysUtils, Vcl.Dialogs, uPegaBase, System.ImageList;

type
  Tfcfgmnfe = class(Tfrmbase)
    registrocfgcodigo: TIntegerField;
    registrocfgcfop: TStringField;
    registrocfgnumecertif: TStringField;
    registrocfgviasnfe: TIntegerField;
    registrocfgobs1: TIntegerField;
    registrocfgobs2: TIntegerField;
    registrocfgobs3: TIntegerField;
    registrocfgobs4: TIntegerField;
    registrocfgserienfe: TStringField;
    registrocfgnumeronfe: TIntegerField;
    registrocfgemailnfe: TStringField;
    registrocfgemailservidornfe: TStringField;
    registrocfgemailsenhanfe: TStringField;
    registrocfgdescrinfe: TIntegerField;
    registrocfgemailusatls: TIntegerField;
    Label28: TLabel;
    cfgserienfe: TDBEdit;
    Label29: TLabel;
    cfgnumeronfe: TDBEdit;
    Label60: TLabel;
    cfgviasnfe: TDBEdit;
    Label30: TLabel;
    cfgnumecertif: TDBEdit;
    bbuscacerti: TButton;
    tof: tuniquery;
    toftofcodigo: TIntegerField;
    toftofidentificacao: TStringField;
    Label34: TLabel;
    cfgobs1: TDBEdit;
    cfgobs2: TDBEdit;
    Label35: TLabel;
    sen: tuniquery;
    sensencodigo: TIntegerField;
    sensenidentificacao: TStringField;
    Label3: TLabel;
    cfgdescrinfe: TDBEdit;
    registrosendescrinfe: TStringField;
    registrocfgmailportnfe: TStringField;
    registrotofidentificacao1: TStringField;
    registrotofidentificacao2: TStringField;
    registrotofidentificacao3: TStringField;
    registrotofidentificacao4: TStringField;
    tls: tuniquery;
    tlstlscodigo: TIntegerField;
    tlstlsidentificacao: TStringField;
    registrotlsidentificacao: TStringField;
    Label6: TLabel;
    cfgobs3: TDBEdit;
    cfgobs4: TDBEdit;
    Label7: TLabel;
    Bevel2: TBevel;
    Label5: TLabel;
    Label9: TLabel;
    cfgserienfce: TDBEdit;
    Label10: TLabel;
    cfgnumeronfce: TDBEdit;
    registrocfgserienfce: TStringField;
    registrocfgnumeronfce: TIntegerField;
    Panel1: TPanel;
    Panel2: TPanel;
    registrocfgtoken1nfce: TStringField;
    registrocfgtoken2nfce: TStringField;
    cfgtoken1nfce: TDBEdit;
    cfgtoken2nfce: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    cfgservargnfes: TDBEdit;
    Label13: TLabel;
    registrocfgservarqnfes: TStringField;
    SPSelecionarioDiretorioNFEs: TSpeedButton;
    registrocfgnumecertifa1: TStringField;
    Label14: TLabel;
    cfgnumecertifa1: TDBEdit;
    bbuscacertia1: TButton;
    registrocfgmodonfe: TIntegerField;
    cfgmodonfe: TDBRadioGroup;
    registrocfgIdtokennfce: TStringField;
    Label15: TLabel;
    cfgIdtokennfce: TDBEdit;
    TSConfigEmail: TTabSheet;
    Bevel1: TBevel;
    Label8: TLabel;
    Label31: TLabel;
    cfgemailservidornfe: TDBEdit;
    Label1: TLabel;
    cfgmailporta: TDBEdit;
    Label32: TLabel;
    cfgemailnfe: TDBEdit;
    Label33: TLabel;
    cfgemailsenhanfe: TDBEdit;
    Label4: TLabel;
    cfgemailusatls: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    cfgsenhacertificadoa1: TDBEdit;
    registrocfgsenhacertificado: TStringField;
    registrocfgsenhacertificadoa1: TStringField;
    Label18: TLabel;
    cfgsenhacertificado: TDBEdit;
    Label22: TLabel;
    cfgviasnfce: TDBEdit;
    registrocfgviasnfce: TIntegerField;
    registrocfgnumeronfsv: TIntegerField;
    registrocfgserienfsv: TStringField;
    registrocfgviasnfsv: TIntegerField;
    registrocfgcestativo: TIntegerField;
    registrosencfgcestativo: TStringField;
    Label26: TLabel;
    cfgcestativo: TDBEdit;
    registrocfgversao: TStringField;
    Label27: TLabel;
    cfgversao: TDBEdit;
    registrocfgtextoemail: TStringField;
    cfgtextoemail: TDBMemo;
    Label36: TLabel;
    registrocfgcertificadoa1: TBlobField;
    Label37: TLabel;
    btBuscaA1: TButton;
    cfgcertificadoa1: TDBMemo;
    OpenDialog: TOpenDialog;
    registrocfgpercentualpis: TFloatField;
    registrocfgpercentualcofins: TFloatField;
    registrocfgmodoautenticacao: TIntegerField;
    procedure bbuscacertiClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cfgemailservidornfeExit(Sender: TObject);
    procedure cfgemailnfeExit(Sender: TObject);
    procedure cfgemailsenhanfeExit(Sender: TObject);
    procedure SPSelecionarioDiretorioNFEsClick(Sender: TObject);
    procedure bbuscacertia1Click(Sender: TObject);
    procedure cfgsenhacertificadoa1Exit(Sender: TObject);
    procedure cfgsenhacertificadoExit(Sender: TObject);
    procedure btBuscaA1Click(Sender: TObject);
    procedure bconfirmaClick(Sender: TObject);
  private
    function BuscaCertificado: String;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fcfgmnfe: Tfcfgmnfe;

  // Início ID do Módulo fracfgmnfe
const
  vPlIdMd = '03.06.81.004-01';
  vPlTitMdl = 'Configurações NF-e';

  // Fim ID do Módulo fracfgmnfe

implementation

{$R *.dfm}

function formulario(pCargaFrame: TCargaFrame): string;
begin
  fcfgmnfe := Tfcfgmnfe.Create(pCargaFrame);
  fcfgmnfe.ShowModal;
  fcfgmnfe.Free;
end;

exports formulario;

procedure Tfcfgmnfe.bbuscacertia1Click(Sender: TObject);
var
  vlCertificado: String;
begin
  vlCertificado := BuscaCertificado;
  if vlCertificado = '' then
    Exit;

  registrocfgnumecertifa1.AsString := vlCertificado;
end;

procedure Tfcfgmnfe.bbuscacertiClick(Sender: TObject);
var
  vlCertificado: String;
begin
  vlCertificado := BuscaCertificado;
  if vlCertificado = '' then
    Exit;

  registrocfgnumecertif.AsString := vlCertificado;
end;

procedure Tfcfgmnfe.bconfirmaClick(Sender: TObject);
begin
  if registrocfgcertificadoa1.AsString <> '' then
  begin
    if registrocfgsenhacertificadoa1.AsString = '' then
    begin
      ShowmeSsage('Favor informar a senha do certificado modelo A1!');
      cfgsenhacertificadoa1.SetFocus;
    end
    else
      inherited;

  end
  else
    inherited;

end;

procedure Tfcfgmnfe.btBuscaA1Click(Sender: TObject);
var
  vlarqA1: string;
  BlobField: TBlobField;
begin
  inherited;
  if OpenDialog.Execute then
    vlarqA1 := OpenDialog.FileName;

  if fileexists(vlarqA1) then
  begin
    BlobField := registro.FieldByName('cfgcertificadoa1') as TBlobField;
    BlobField.LoadFromFile(vlarqA1);
  end;

end;

procedure Tfcfgmnfe.cfgemailnfeExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if Trim(cfgemailnfe.Field.AsString) = '' then
    Exit;

  cfgemailnfe.Field.AsString := AnsiLowerCase(cfgemailnfe.Field.AsString);
end;

procedure Tfcfgmnfe.cfgemailsenhanfeExit(Sender: TObject);
begin
  if Self.ActiveControl = bcancela then
    Exit;

  if Trim(cfgemailsenhanfe.Field.AsString) = '' then
  begin
    ShowmeSsage('Campo obrigatório!');
    cfgemailsenhanfe.SetFocus;
  end;
end;

procedure Tfcfgmnfe.cfgemailservidornfeExit(Sender: TObject);
begin
  ValidaSaida(Sender);

  if Self.ActiveControl = bcancela then
    Exit;

  if Trim(cfgemailnfe.Field.AsString) = '' then
    Exit;

  cfgemailservidornfe.Field.AsString := AnsiLowerCase(cfgemailservidornfe.Field.AsString);
end;

procedure Tfcfgmnfe.cfgsenhacertificadoa1Exit(Sender: TObject);
begin
  (* Seomente para não chamar o ValidaSaida e tornar char Upper *)
  { inherited; }

end;

procedure Tfcfgmnfe.cfgsenhacertificadoExit(Sender: TObject);
begin
  (* Seomente para não chamar o ValidaSaida e tornar char Upper *)
  { inherited; }

end;

procedure Tfcfgmnfe.FormShow(Sender: TObject);
begin
  Self.Height := 690;
  Self.Width := 610;

  IdModulo := vPlIdMd;

  registro.Params[0].AsString := vChaveMestre;

  inherited;

  if Self.Height < 690 then
    Self.Height := 690;

  if Self.Width < 610 then
    Self.Width := 610;

  if Self.registrocfgcfop.AsString = '' then
    Self.registrocfgcfop.AsString := '0';
end;

function Tfcfgmnfe.BuscaCertificado: String;
type
  TImpCertNFe = function(AOwner: TComponent; conexao: TUniConnection; Acesso: TAcesso; vchave: string): string;
var
  ImpCertNFe: TImpCertNFe;

  vlPack: Cardinal;
begin
  vlPack := LoadPackage('minfe.bpl');
  if vlPack <> 0 then
    try
      @ImpCertNFe := GetProcAddress(vlPack, pchar('impertificadonfe'));

      if Assigned(ImpCertNFe) then
        Result := ImpCertNFe(Application, Self.zcone, Acesso, '');
    finally
      // DoUnLoadPackage(vlPack);
    end;
End;

procedure Tfcfgmnfe.SPSelecionarioDiretorioNFEsClick(Sender: TObject);
begin
  with TFileOpenDialog.Create(nil) do
    try
      Options := [fdoPickFolders];
      if Execute then
        cfgservargnfes.Field.AsString := FileName + '\';
    finally
      Free;
    end;
end;

end.
