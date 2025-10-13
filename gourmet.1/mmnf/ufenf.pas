unit ufenf;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, ufrmbase, System.ImageList, Vcl.ImgList, PngImageList, System.Actions, Vcl.ActnList, Data.DB, MemDS, DBAccess, Uni,
  Vcl.Buttons, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, ufuncoes,uPegaBase;

type
  Tfenf = class(Tfrmbase)
    registroenfchave: TIntegerField;
    registrotencodigo: TIntegerField;
    registroenfchaveevento: TStringField;
    registroenfseqevento: TIntegerField;
    registroenfdescricao: TStringField;
    registroenfxml: TBlobField;
    registroenfcstat: TIntegerField;
    registroenfxmotivo: TStringField;
    registroenfemaildestinatario: TStringField;
    registroenfcnpjdestinatario: TStringField;
    registroenfchavenfe: TStringField;
    Label1: TLabel;
    enfchavenfe: TDBEdit;
    Label2: TLabel;
    enfchave: TDBEdit;
    enfdescricao: TDBMemo;
    Label3: TLabel;
    Label4: TLabel;
    enfcnpjdestinatario: TDBEdit;
    Label5: TLabel;
    enfemaildestinatario: TDBEdit;
    registroenfregistroevento: TDateField;
    btBaixarXML: TButton;
    cfgufssigla: TStringField;
    cfgetddoc1: TStringField;
    cfgcfgprouso: TIntegerField;
    cfgcfgobs1: TIntegerField;
    cfgcfgobs2: TIntegerField;
    cfgcfgobs3: TIntegerField;
    cfgcfgobs4: TIntegerField;
    cfgcfgnumecertif: TStringField;
    cfgcfgserienfe: TStringField;
    cfgcfgetdempresa: TIntegerField;
    cfgcfgtoeusofora: TIntegerField;
    cfgcfgtoeusointe: TIntegerField;
    cfgcfgcadastrapro: TIntegerField;
    procedure registroAfterInsert(DataSet: TDataSet);
    procedure bconfirmaClick(Sender: TObject);
    procedure btBaixarXMLClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure RecuperaXML(vChave: string);
    { Private declarations }
  public
    { Public declarations }
  end;

  TImpNfe = function(AOwner: TComponent; conexao: tuniconnection; Acesso: TAcesso; vChave: string): string;
  Trecuperaxml = function(AOwner: TComponent; vChave: string; vLicencaDLL: String; vLicencaCaptcha: String; vCertificado: String): string;


var
  fenf: Tfenf;

implementation

{$R *.dfm}

procedure Tfenf.bconfirmaClick(Sender: TObject);
begin

  registroenfxmotivo.AsString:=enfdescricao.Field.AsString;
  inherited;

end;

procedure Tfenf.btBaixarXMLClick(Sender: TObject);
var
  vlChave: string;
  vlDiretorio: String;
  vlArquivo: String;
  vlParaReclassificar: Integer;
begin


  inherited;

  vlChave := Trim(SomenteNumeros(enfchavenfe.Field.AsString));

  if vlChave = '' then
  begin
    Application.MessageBox(PChar('Por favor, informe a Chave de Acesso da NFe!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    enfchavenfe.SetFocus;
    Exit;
  end;

  if Length(vlChave) <> 44 then
  begin
    Application.MessageBox(PChar('Chave de Acesso da NFe deve conter 44 digitos!!'), 'Atenção', MB_ICONWARNING + MB_OK);
    enfchavenfe.SetFocus;
    Exit;
  end;

  vlDiretorio := ExtractFilePath(Application.ExeName) + 'xml-recebidos';

  if not DirectoryExists(vlDiretorio) then
    ForceDirectories(vlDiretorio);

  vlArquivo := vlDiretorio + '\' + vlChave + '-nfe.xml';

  if not fileexists(vlArquivo) then
  begin
    showmessage('Arquivo não localizado: '+vlArquivo);
  end;

end;


procedure Tfenf.FormCreate(Sender: TObject);
begin
  cfg.Close;
  cfg.ParamByName('flacodigo').AsInteger:=acesso.Filial;
  cfg.Open;
  inherited;

end;

procedure Tfenf.FormShow(Sender: TObject);
var
  i:integer;
begin
  for i:=0 to self.ComponentCount-1 do
  begin
   if self.Components[i] is tuniquery then
   (self.Components[i] as tUniQuery).Connection:=ZCone;
  end;




  inherited;

end;

procedure Tfenf.RecuperaXML(vChave: string);
var
  RecuperaXML: Trecuperaxml;
  vPack: Cardinal;
  vlLicencaDLL: string;
  vlLicencaCaptcha: string;
  vlCertificado: string;

begin


  if fileexists(ExtractFilePath(Application.ExeName) + 'modulos\mdxm.bpl') then
    vPack := LoadPackage('modulos\mdxm.bpl');
  if vPack <> 0 then
    try
      @RecuperaXML := GetProcAddress(vPack, PChar('recuperaxml'));
      if Assigned(RecuperaXML) then
      begin
        vlLicencaDLL := 'QPIQFAIDC5D0PKNAEULR';
        vlLicencaCaptcha := 'VKB6GZ7LJHB2A22FV85VVMY381FAUNPYAY4D2VH2';
        vlCertificado := cfgcfgnumecertif.AsString;

        RecuperaXML(Application, vChave, vlLicencaDLL, vlLicencaCaptcha, vlCertificado);
      end;

    finally
      DoUnLoadPackage(vPack);
    end;

end;


procedure Tfenf.registroAfterInsert(DataSet: TDataSet);
begin
  inherited;
  registrotencodigo.AsInteger := 5;
  registroenfregistroevento.AsString := hoje(application, ZCone);
  registroenfseqevento.AsInteger := 1;
  registroenfcstat.AsInteger:=0;

end;

end.
