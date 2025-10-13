object fAjustaCpfCnpj: TfAjustaCpfCnpj
  Left = 0
  Top = 0
  Caption = 'Ajuste de CPF/CNPJ'
  ClientHeight = 173
  ClientWidth = 334
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
  object ProgressBar1: TProgressBar
    Left = 17
    Top = 96
    Width = 300
    Height = 17
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 17
    Top = 48
    Width = 300
    Height = 25
    Caption = 'Aguarde! Ajustando registros de CPF/CNPJ.'
    TabOrder = 1
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etddoc1,'
      '  etd.tpecodigo'
      'FROM etd')
    Left = 96
    Top = 3
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object etdtpecodigo: TIntegerField
      FieldName = 'tpecodigo'
    end
  end
  object ACBrValidador1: TACBrValidador
    IgnorarChar = './-'
    Left = 192
    Top = 3
  end
  object inicializar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = inicializarTimer
    Left = 55
    Top = 3
  end
  object Consulta: TUniQuery
    Left = 264
    Top = 3
  end
end
