object fftp: Tfftp
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Transfer'#234'ncia de Arquivos'
  ClientHeight = 116
  ClientWidth = 435
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbNome: TLabel
    Left = 8
    Top = 4
    Width = 41
    Height = 13
    Caption = 'Arquivo:'
  end
  object lbTamanho: TLabel
    Left = 8
    Top = 24
    Width = 48
    Height = 13
    Caption = 'Tamanho:'
  end
  object Label1: TLabel
    Left = 8
    Top = 66
    Width = 73
    Height = 13
    Caption = 'Processamento'
  end
  object lbStatus: TLabel
    Left = 96
    Top = 48
    Width = 320
    Height = 13
    AutoSize = False
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 97
    Width = 435
    Height = 19
    Panels = <
      item
        Width = 100
      end
      item
        Width = 100
      end
      item
        Width = 100
      end>
    ExplicitTop = 65
  end
  object mostra: TProgressBar
    Left = 95
    Top = 66
    Width = 321
    Height = 17
    TabOrder = 1
  end
  object plArquivo: TPanel
    Left = 95
    Top = 2
    Width = 321
    Height = 17
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    TabOrder = 2
  end
  object plTamanho: TPanel
    Left = 95
    Top = 22
    Width = 98
    Height = 17
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    TabOrder = 3
  end
  object IdFTP: TIdFTP
    OnStatus = IdFTPStatus
    OnWork = IdFTPWork
    OnWorkEnd = IdFTPWorkEnd
    IPVersion = Id_IPv4
    Host = '45.76.183.28'
    Passive = True
    ConnectTimeout = 0
    Password = 'mizio973'
    TransferType = ftBinary
    ListenTimeout = 30000
    Username = 'versoes'
    NATKeepAlive.UseKeepAlive = False
    NATKeepAlive.IdleTimeMS = 0
    NATKeepAlive.IntervalMS = 0
    ProxySettings.ProxyType = fpcmNone
    ProxySettings.Port = 0
    Left = 320
    Top = 12
  end
  object EfetuarDownload: TTimer
    Enabled = False
    Interval = 10
    OnTimer = EfetuarDownloadTimer
    Left = 359
    Top = 10
  end
end
