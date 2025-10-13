object fimpgou: Tfimpgou
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Impressor'
  ClientHeight = 125
  ClientWidth = 202
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 8
    Top = 16
    Width = 185
    Height = 89
    Lines.Strings = (
      'Memo1')
    TabOrder = 0
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 184
    Top = 96
  end
  object UniSQLMonitor: TUniSQLMonitor
    Left = 186
    Top = 42
  end
  object Conexao: TUniConnection
    DataTypeMap = <
      item
        DBType = 210
        FieldType = ftInteger
        IgnoreErrors = True
      end
      item
        DBType = 211
        FieldType = ftInteger
        IgnoreErrors = True
      end>
    ProviderName = 'mySQL'
    Database = 'kuskao0201'
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    Left = 184
    Top = 152
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object frxUniDACComponents: TfrxUniDACComponents
    DefaultDatabase = Conexao
    Left = 74
    Top = 10
  end
  object vias: TUniQuery
    Connection = Conexao
    Left = 186
    Top = 207
  end
  object imprimir: TTimer
    Enabled = False
    Interval = 100
    OnTimer = imprimirTimer
    Left = 296
    Top = 128
  end
end
