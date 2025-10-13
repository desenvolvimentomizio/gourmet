object fipc: Tfipc
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Gerar dados Base para Classifica'#231#227'o / Contabiliza'#231#227'o'
  ClientHeight = 153
  ClientWidth = 471
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lTabelas: TLabel
    Left = 32
    Top = 24
    Width = 37
    Height = 13
    Caption = 'Tabelas'
  end
  object lRegistros: TLabel
    Left = 32
    Top = 88
    Width = 45
    Height = 13
    Caption = 'Registros'
  end
  object registros: TProgressBar
    Left = 32
    Top = 112
    Width = 417
    Height = 17
    TabOrder = 0
  end
  object Tabelas: TProgressBar
    Left = 32
    Top = 48
    Width = 417
    Height = 17
    TabOrder = 1
  end
  object consulta: TUniQuery
    Left = 552
    Top = 65528
  end
  object consultaremota: TUniQuery
    Left = 512
    Top = 80
  end
  object inicializar: TTimer
    Enabled = False
    Interval = 200
    OnTimer = inicializarTimer
    Left = 344
    Top = 8
  end
end
