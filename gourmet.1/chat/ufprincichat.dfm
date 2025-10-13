object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 645
  ClientWidth = 722
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 416
    Top = 64
    Width = 31
    Height = 13
    Caption = 'Label7'
  end
  object LbStatus: TLabel
    Left = 424
    Top = 88
    Width = 42
    Height = 13
    Caption = 'LbStatus'
  end
  object Memo1: TMemo
    Left = 40
    Top = 200
    Width = 609
    Height = 337
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object Button1: TButton
    Left = 504
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 1
    OnClick = Button1Click
  end
  object ServiceWhtasApp1: TServiceWhtasApp
    NotUseWindowDefaultQrCode = False
    NotUseDefaultInterface = True
    DisableNotification = False
    HideNotificationAfter = 0
    SecretKey = 'daniel-556699223319-b5cc17d3a35877ca8b76f0b2e07497039c250696'
    OnReceiveMessage = ServiceWhtasApp1ReceiveMessage
    OnContactsVerifyAccount = ServiceWhtasApp1ContactsVerifyAccount
    OnStatus = ServiceWhtasApp1Status
    OnStatusPhone = ServiceWhtasApp1StatusPhone
    OnStarted = ServiceWhtasApp1Started
    OnStatusContact = ServiceWhtasApp1StatusContact
    OnBroadcasts = ServiceWhtasApp1Broadcasts
    OnGroups = ServiceWhtasApp1Groups
    ConfigFormWhatsApp.Height = 474
    ConfigFormWhatsApp.Width = 694
    ConfigFormWhatsApp.PanelTopColor = 12615680
    NotifyMySentMessages = True
    NotShowFormQrCodeAuthentication = False
    NotifyDeliveryMessage = True
    Left = 176
    Top = 59
  end
  object CdsContacts: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 280
    Top = 52
  end
  object CdsBroadcast: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 216
    Top = 152
    object CdsBroadcastid: TStringField
      FieldName = 'id'
      Size = 100
    end
    object CdsBroadcastname: TStringField
      FieldName = 'name'
      Size = 5000
    end
    object CdsBroadcasttotalParticipants: TStringField
      FieldName = 'totalParticipants'
    end
  end
  object DsBroadcast: TDataSource
    DataSet = CdsBroadcast
    Left = 296
    Top = 152
  end
  object IdHTTP1: TIdHTTP
    Intercept = IdLogEvent1
    IOHandler = IdSSLIOHandlerSocketOpenSSL1
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.ContentType = 'application/json'
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 390
    Top = 136
  end
  object IdSSLIOHandlerSocketOpenSSL1: TIdSSLIOHandlerSocketOpenSSL
    Intercept = IdLogEvent1
    MaxLineAction = maException
    Port = 0
    DefaultPort = 0
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 496
    Top = 144
  end
  object IdLogEvent1: TIdLogEvent
    Left = 608
    Top = 144
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 144
    Top = 152
    object ClientDataSet1ID: TStringField
      FieldName = 'ID'
      Size = 100
    end
    object ClientDataSet1NAME: TStringField
      FieldName = 'NAME'
    end
    object ClientDataSet1NUMBER: TStringField
      FieldName = 'NUMBER'
    end
    object ClientDataSet1ISGROUP_BROADCAST: TIntegerField
      FieldName = 'ISGROUP_BROADCAST'
    end
  end
end
