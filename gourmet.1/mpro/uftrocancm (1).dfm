object ftrocancm: Tftrocancm
  Left = 0
  Top = 0
  ActiveControl = edNovoNCM
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Troca de NCM'
  ClientHeight = 109
  ClientWidth = 305
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 11
    Width = 105
    Height = 13
    Caption = 'C'#243'digo NCM Antigo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 38
    Width = 96
    Height = 13
    Caption = 'C'#243'digo NCM Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pbotoes: TPanel
    Left = 0
    Top = 78
    Width = 305
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 74
      Height = 23
      Align = alLeft
      BevelOuter = bvLowered
      Caption = 'Alterando'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = 13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 151
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 226
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
    object tpocodigo: TDBEdit
      Left = 96
      Top = 6
      Width = 41
      Height = 21
      DataField = 'tpocodigo'
      DataSource = Dsregistro
      TabOrder = 3
      Visible = False
    end
  end
  object edNovoNCM: TEdit
    Left = 119
    Top = 35
    Width = 98
    Height = 21
    TabOrder = 1
  end
  object proncm: TDBEdit
    Left = 119
    Top = 8
    Width = 97
    Height = 21
    Color = clYellow
    DataField = 'proncm'
    DataSource = Dsregistro
    MaxLength = 8
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object Dsregistro: TUniDataSource
    DataSet = registro
    Left = 124
    Top = 60
  end
  object registro: TUniQuery
    SQL.Strings = (
      
        'select procodigo, proncm,tpocodigo from pro where procodigo=:pro' +
        'codigo')
    Constraints = <>
    Left = 264
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object registroprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object registroproncm: TStringField
      FieldName = 'proncm'
      Size = 50
    end
    object registrotpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
  end
  object consulta: TUniQuery
    Constraints = <>
    Left = 248
  end
  object tcg: TUniQuery
    SQL.Strings = (
      
        'select tcgncm, tcgaliqnac, tcgaliqimp from tcg where tcgncm=:pro' +
        'ncm')
    Constraints = <>
    Left = 76
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'proncm'
        Value = nil
      end>
    object tcgtcgncm: TStringField
      FieldName = 'tcgncm'
      Size = 8
    end
    object tcgtcgaliqnac: TFloatField
      FieldName = 'tcgaliqnac'
    end
    object tcgtcgaliqimp: TFloatField
      FieldName = 'tcgaliqimp'
    end
  end
  object Dtcg: TUniDataSource
    DataSet = tcg
    Left = 32
    Top = 56
  end
end
