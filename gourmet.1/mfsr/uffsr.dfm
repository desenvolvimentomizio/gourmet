object ffsr: Tffsr
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rios'
  ClientHeight = 378
  ClientWidth = 734
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object frxUniDACComponents: TfrxUniDACComponents
    Left = 328
    Top = 100
  end
  object Relatorio: TfrxReport
    Version = '4.12.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41179.609434756950000000
    ReportOptions.LastChange = 41179.609434756950000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 328
    Top = 164
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxTabela: TfrxDBDataset
    UserName = 'frxTabela'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 328
    Top = 216
  end
end
