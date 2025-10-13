object FormComunicacaopdv: TFormComunicacaopdv
  Left = 0
  Top = 0
  Caption = 'Comunica'#231#227'o'
  ClientHeight = 137
  ClientWidth = 360
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object IdWebDAVC: TIdWebDAV
    Intercept = IdCompressionIntercept1
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    MaxAuthRetries = 30
    AllowCookies = False
    HandleRedirects = True
    RedirectMaximum = 50
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    CookieManager = IdCookieManager1
    Compressor = IdCompressorZLib1
    Left = 264
    Top = 56
  end
  object IdCompressionIntercept1: TIdCompressionIntercept
    CompressionLevel = 0
    Left = 64
    Top = 8
  end
  object IdCookieManager1: TIdCookieManager
    Left = 64
    Top = 56
  end
  object IdCompressorZLib1: TIdCompressorZLib
    Left = 168
    Top = 8
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Intercept = IdCompressionIntercept1
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 264
    Top = 8
  end
  object HTTPBasicAuthenticator1: THTTPBasicAuthenticator
    Left = 168
    Top = 56
  end
end
