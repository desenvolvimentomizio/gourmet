unit ufbxm;

interface

uses
  Winapi.Windows, Vcl.Forms, Vcl.StdCtrls, System.Classes, Vcl.Controls,
  Vcl.ExtCtrls, System.SysUtils, UTDownloadXMLNFeDLL;

type
  Tfbxm = class(TForm)
    Image1: TImage;
    LabAtualizarCaptcha: TLabel;
  private
    function BaixarXML(vChaveNFE, vArqNome, vlCertificado: string): boolean;
    procedure LabAtualizarCaptchaClick(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fbxm: Tfbxm;

  BaixarXMLNFe: TDownloadXMLNFeDLL;

implementation

{$R *.dfm}

uses UDownloadXMLNFe;

function BaixaXML(AOwner: TComponent; vChaveNFE: string; vArqNome: string; vlCertificado: string): boolean;
begin
  try
    if FindWindow('Tfbxm', nil) = 0 then
    begin
      fbxm := Tfbxm.Create(AOwner);
    end;

    BaixarXMLNFe := TDownloadXMLNFeDLL.Create;
    BaixarXMLNFe.CaptchaBossURL('http://fasttypers.org/imagepost.ashx');

    if BaixarXMLNFe.CaptchaLer('15MCB4KRR5W1JJNU9QQHNU6V17KPJFKS696O574Y', 'Captcha.jpg') then
      vArqNome := BaixarXMLNFe.CaptchaLerTexto;

    BaixarXMLNFe.SetCertificadoDigital(vlCertificado);

    result := BaixarXMLNFe.BaixarXMLNFeComCertAuto(vChaveNFE, vArqNome, '15MCB4KRR5W1JJNU9QQHNU6V17KPJFKS696O574Y', 3, True);

    // result := fbxm.BaixarXML(vChaveNFE, vArqNome, vlCertificado);
  finally
    freeandnil(fbxm);
  end;
end;

exports BaixaXML;

function Tfbxm.BaixarXML(vChaveNFE: string; vArqNome: string; vlCertificado: string): boolean;
var
  vlCaptchaText: string;
  vlRetorno: string;
begin
  try
    if fileexists(vArqNome) = false then
    begin
      LabAtualizarCaptchaClick(LabAtualizarCaptcha);

      if BaixarXMLNFe.CaptchaLer('15MCB4KRR5W1JJNU9QQHNU6V17KPJFKS696O574Y', 'Captcha.jpg') then
        vlCaptchaText := BaixarXMLNFe.CaptchaLerTexto;

      vlCaptchaText := BaixarXMLNFe.CaptchaLerTexto;

     // UDownloadXMLNFe.CaptchaLer(ExtractFilePath(application.ExeName) + 'Captcha.gif', '15MCB4KRR5W1JJNU9QQHNU6V17KPJFKS696O574Y');

      BaixarXMLNFe.BaixarXMLNFeComCertAuto(vChaveNFE, vArqNome, vlCaptchaText, 3, True);

      vlRetorno:= BaixarXMLNFe.Msg;

    end;
    result := True;

  except
    result := false;

  end;

end;

procedure Tfbxm.LabAtualizarCaptchaClick(Sender: TObject);
begin
  UDownloadXMLNFe.Captcha(ExtractFilePath(application.ExeName) + 'Captcha.gif');
  Image1.Picture.LoadFromFile(ExtractFilePath(application.ExeName) + 'Captcha.gif.bmp');
end;

end.
