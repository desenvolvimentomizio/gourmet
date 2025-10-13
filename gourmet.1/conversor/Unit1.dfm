object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 672
  ClientWidth = 977
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 304
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
  end
  object producao: TUniConnection
    DataTypeMap = <
      item
        DBType = 210
        FieldType = ftInteger
      end
      item
        DBType = 211
        FieldType = ftInteger
      end
      item
        DBType = 218
        FieldType = ftDateTime
      end>
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'kuskaoproducao'
    SpecificOptions.Strings = (
      'MySQL.NullForZeroDelphiDate=True'
      'MySQL.ConnectionTimeout=10')
    Options.LocalFailover = True
    Options.DefaultSortType = stCaseInsensitive
    DefaultTransaction.IsolationLevel = ilRepeatableRead
    Username = 'root'
    Server = '127.0.0.1'
    LoginPrompt = False
    Left = 232
    Top = 120
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object MySQLUniProvider: TMySQLUniProvider
    Left = 280
    Top = 176
  end
  object UniQueryProducao: TUniQuery
    Connection = producao
    Left = 232
    Top = 240
  end
  object nova: TUniConnection
    DataTypeMap = <
      item
        DBType = 210
        FieldType = ftInteger
      end
      item
        DBType = 211
        FieldType = ftInteger
      end
      item
        DBType = 218
        FieldType = ftDateTime
      end>
    ProviderName = 'MySQL'
    Port = 3306
    Database = 'kuskaonova'
    SpecificOptions.Strings = (
      'MySQL.NullForZeroDelphiDate=True'
      'MySQL.ConnectionTimeout=10')
    Options.LocalFailover = True
    Options.DefaultSortType = stCaseInsensitive
    DefaultTransaction.IsolationLevel = ilRepeatableRead
    Username = 'root'
    Server = '127.0.0.1'
    Connected = True
    LoginPrompt = False
    Left = 352
    Top = 120
    EncryptedPassword = '87FF9BFF9EFFC6FFC8FFCCFF'
  end
  object UniQueryNova: TUniQuery
    Connection = nova
    Left = 352
    Top = 240
  end
end
