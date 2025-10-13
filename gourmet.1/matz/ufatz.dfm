object fatz: Tfatz
  Left = 0
  Top = 0
  Caption = 'fatz'
  ClientHeight = 97
  ClientWidth = 463
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object lblStatus: TLabel
    Left = 24
    Top = 24
    Width = 41
    Height = 13
    Caption = 'lblStatus'
  end
  object pbprogresso: TProgressBar
    Left = 112
    Top = 48
    Width = 150
    Height = 17
    TabOrder = 0
  end
  object IdHTTP: TIdHTTP
    OnWork = IdHTTPWork
    OnWorkBegin = IdHTTPWorkBegin
    OnWorkEnd = IdHTTPWorkEnd
    AllowCookies = True
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
    Left = 288
    Top = 8
  end
end
