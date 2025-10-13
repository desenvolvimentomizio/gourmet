object fAjustaTelefone: TfAjustaTelefone
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Ajusta Telefones'
  ClientHeight = 147
  ClientWidth = 344
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
  object Panel1: TPanel
    Left = 17
    Top = 48
    Width = 300
    Height = 25
    Caption = 'Aguarde! Ajustando registros de Telefones'
    TabOrder = 0
  end
  object ProgressBar1: TProgressBar
    Left = 17
    Top = 96
    Width = 300
    Height = 17
    TabOrder = 1
  end
  object inicializar: TTimer
    Enabled = False
    Interval = 100
    OnTimer = inicializarTimer
    Left = 55
    Top = 3
  end
  object Consulta: TUniQuery
    Left = 272
    Top = 65531
  end
  object etf: TUniQuery
    SQL.Strings = (
      'select etfcodigo, etftelefone from etf')
    Left = 216
    object etfetfcodigo: TIntegerField
      FieldName = 'etfcodigo'
    end
    object etfetftelefone: TStringField
      FieldName = 'etftelefone'
    end
  end
end
