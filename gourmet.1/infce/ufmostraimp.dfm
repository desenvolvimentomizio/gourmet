object fmostraimp: Tfmostraimp
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Imprimindo, aguarde ...'
  ClientHeight = 405
  ClientWidth = 713
  Color = 12615680
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object bcancelar: TSpeedButton
    Left = 564
    Top = 368
    Width = 133
    Height = 22
    Caption = 'Cancelar'
    Visible = False
    OnClick = bcancelarClick
  end
  object nmostra: TProgressBar
    Left = 24
    Top = 368
    Width = 534
    Height = 22
    TabOrder = 0
  end
  object plmensagem: TPanel
    Left = 24
    Top = 16
    Width = 673
    Height = 29
    Caption = 'Imprimindo'
    Color = clBlack
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
  end
  object textoimpresso: TMemo
    Left = 24
    Top = 51
    Width = 673
    Height = 302
    Color = 12189695
    Font.Charset = OEM_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Terminal'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object frxReport1: TfrxReport
    Version = '5.0.9'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41914.404499085650000000
    ReportOptions.LastChange = 41914.404499085650000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 384
    Top = 112
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
