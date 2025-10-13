object frm_ps: Tfrm_ps
  Left = 0
  Top = 0
  ClientHeight = 609
  ClientWidth = 511
  Caption = ''
  BorderStyle = bsNone
  WindowState = wsMaximized
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  OnScreenResize = UniFormScreenResize
  PixelsPerInch = 96
  TextHeight = 13
  object pnl_topo: TUniContainerPanel
    Left = 0
    Top = 0
    Width = 511
    Height = 65
    Hint = ''
    ParentColor = False
    Align = alTop
    TabOrder = 0
    object ppl_topo: TUniPanel
      Left = 0
      Top = 0
      Width = 511
      Height = 65
      Hint = ''
      Align = alClient
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -40
      Font.Style = [fsBold]
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = 'BEM VINDO'
      Color = 8404992
    end
  end
  object pnl_principal: TUniContainerPanel
    Left = 0
    Top = 65
    Width = 511
    Height = 544
    Hint = ''
    ParentColor = False
    Align = alClient
    TabOrder = 1
    object ppl_avisa: TUniPanel
      AlignWithMargins = True
      Left = 50
      Top = 366
      Width = 411
      Height = 128
      Hint = ''
      Margins.Left = 50
      Margins.Top = 15
      Margins.Right = 50
      Margins.Bottom = 50
      Align = alBottom
      ParentFont = False
      Font.Color = clWhite
      Font.Height = -47
      Font.Style = [fsBold]
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      Color = 8404992
    end
    object btn_senha2: TUniPanel
      AlignWithMargins = True
      Left = 50
      Top = 169
      Width = 411
      Height = 132
      Hint = ''
      Margins.Left = 50
      Margins.Top = 0
      Margins.Right = 50
      Margins.Bottom = 50
      Align = alClient
      ParentFont = False
      Font.Color = 8454143
      Font.Height = -67
      Font.Style = [fsBold]
      TabOrder = 2
      BorderStyle = ubsNone
      Caption = ''
      Color = clRed
      OnClick = btn_senha2Click
    end
    object btn_senha1: TUniPanel
      AlignWithMargins = True
      Left = 50
      Top = 15
      Width = 411
      Height = 154
      Hint = ''
      Margins.Left = 50
      Margins.Top = 15
      Margins.Right = 50
      Margins.Bottom = 0
      Align = alTop
      ParentFont = False
      Font.Color = 8454143
      Font.Height = -73
      Font.Style = [fsBold]
      TabOrder = 3
      BorderStyle = ubsNone
      Caption = ''
      Color = clRed
      OnClick = btn_senha2Click
    end
  end
  object tm_apaga: TUniTimer
    Interval = 3000
    Enabled = False
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = tm_apagaTimer
    Left = 32
    Top = 80
  end
  object frxReport: TfrxReport
    Version = '5.6.8'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    PrintOptions.ShowDialog = False
    ReportOptions.CreateDate = 43089.386858831020000000
    ReportOptions.LastChange = 43089.386858831020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    ShowProgress = False
    Left = 88
    Top = 81
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object UniTimer1: TUniTimer
    Interval = 10000
    ClientEvent.Strings = (
      'function(sender)'
      '{'
      ' '
      '}')
    OnTimer = UniTimer1Timer
    Left = 168
    Top = 89
  end
end
