object frcg: Tfrcg
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Contabilizando - Aguarde  ...'
  ClientHeight = 136
  ClientWidth = 362
  Color = clBtnFace
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
  object lbcodigojanela: TPanel
    Left = 264
    Top = 0
    Width = 99
    Height = 18
    BevelOuter = bvLowered
    Caption = '01-01-000'
    TabOrder = 0
  end
  object mlg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mlgchave,'
      '  clbcodigo,'
      '  mlgsituacao,'
      '  flacodigo,'
      '  mlgdata,'
      '  ltechave'
      'FROM mlg limit 1')
    AfterInsert = mlgAfterInsert
    Left = 88
    Top = 24
    object mlgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object mlgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mlgmlgsituacao: TIntegerField
      FieldName = 'mlgsituacao'
    end
    object mlgflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mlgmlgdata: TDateField
      FieldName = 'mlgdata'
    end
    object mlgltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object rmg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rmgchave,'
      '  mlgchave,'
      '  phgcodigo,'
      '  rmgdata,'
      '  rmgvalor,'
      '  rmgcomplemento,'
      '  pcgdebito,'
      '  pcgcredito'
      'FROM rmg limit 0')
    Left = 144
    Top = 24
    object rmgrmgchave: TIntegerField
      FieldName = 'rmgchave'
    end
    object rmgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object rmgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object rmgrmgdata: TDateField
      FieldName = 'rmgdata'
    end
    object rmgrmgvalor: TFloatField
      FieldName = 'rmgvalor'
    end
    object rmgrmgcomplemento: TStringField
      FieldName = 'rmgcomplemento'
      Size = 300
    end
    object rmgpcgdebito: TIntegerField
      FieldName = 'pcgdebito'
    end
    object rmgpcgcredito: TIntegerField
      FieldName = 'pcgcredito'
    end
  end
  object consulta: TUniQuery
    Left = 272
    Top = 32
  end
  object Timer: TTimer
    Enabled = False
    Interval = 300
    OnTimer = TimerTimer
    Left = 192
    Top = 24
  end
end
