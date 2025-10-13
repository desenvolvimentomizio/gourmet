object fPrinciGereImpGou: TfPrinciGereImpGou
  Left = 0
  Top = 0
  Caption = 'Impress'#245'es - GOURMET'
  ClientHeight = 636
  ClientWidth = 323
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object plCozinha: TPanel
    Left = 0
    Top = 0
    Width = 323
    Height = 34
    Align = alTop
    BorderWidth = 3
    ParentBackground = False
    TabOrder = 0
    object plHora: TPanel
      Left = 4
      Top = 4
      Width = 77
      Height = 26
      Align = alLeft
      BevelOuter = bvLowered
      Caption = '00:00:00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object BtnImpressao: TButton
      Left = 156
      Top = 4
      Width = 75
      Height = 26
      Align = alLeft
      Caption = 'Pausar'
      TabOrder = 1
      OnClick = BtnImpressaoClick
    end
    object Button3: TButton
      Left = 244
      Top = 4
      Width = 75
      Height = 26
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 2
      OnClick = Button3Click
    end
    object btlimpar: TButton
      Left = 81
      Top = 4
      Width = 75
      Height = 26
      Align = alLeft
      Caption = 'Limpar'
      TabOrder = 3
      OnClick = btlimparClick
    end
  end
  object plTopo: TPanel
    Left = 0
    Top = 34
    Width = 323
    Height = 151
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object sbTop: TScrollBox
      AlignWithMargins = True
      Left = 14
      Top = 14
      Width = 295
      Height = 123
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Color = 4227327
      ParentColor = False
      TabOrder = 0
    end
  end
  object plFalhaBanco: TPanel
    Left = 0
    Top = 185
    Width = 323
    Height = 451
    Align = alClient
    BevelOuter = bvNone
    BorderWidth = 5
    TabOrder = 2
    object erros: TMemo
      AlignWithMargins = True
      Left = 15
      Top = 197
      Width = 293
      Height = 220
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alClient
      Color = clInfoBk
      Lines.Strings = (
        'Status da(s) Impressora(s)')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 0
    end
    object pedidos: TMemo
      AlignWithMargins = True
      Left = 15
      Top = 15
      Width = 293
      Height = 162
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 10
      Margins.Bottom = 10
      Align = alTop
      Lines.Strings = (
        'pedidos')
      ReadOnly = True
      ScrollBars = ssVertical
      TabOrder = 1
    end
    object mensagens: TStatusBar
      Left = 5
      Top = 427
      Width = 313
      Height = 19
      Panels = <
        item
          Width = 150
        end
        item
          Width = 150
        end
        item
          Width = 50
        end>
    end
  end
  object inicializar: TTimer
    Enabled = False
    Interval = 200
    OnTimer = inicializarTimer
    Left = 191
    Top = 208
  end
  object tmVerificarPedidos: TTimer
    Enabled = False
    Interval = 3000
    OnTimer = tmVerificarPedidosTimer
    Left = 192
    Top = 152
  end
  object frxReport1: TfrxReport
    Version = '6.2.1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 43467.842483136580000000
    ReportOptions.LastChange = 43467.842483136580000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 78
    Top = 160
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object conexao: TFDConnection
    Params.Strings = (
      'Database=kuskao0201'
      'User_Name=root'
      'Password=xda973'
      'DriverID=MySQL')
    AfterConnect = conexaoAfterConnect
    BeforeConnect = conexaoBeforeConnect
    Left = 104
    Top = 280
  end
  object FDPhysMySQLDriverLink: TFDPhysMySQLDriverLink
    VendorHome = 'c:\mysql'
    Left = 104
    Top = 225
  end
  object FDQuery1: TFDQuery
    Connection = conexao
    Left = 224
    Top = 289
  end
  object ApplicationEvents1: TApplicationEvents
    OnMessage = ApplicationEvents1Message
    Left = 72
    Top = 424
  end
end
