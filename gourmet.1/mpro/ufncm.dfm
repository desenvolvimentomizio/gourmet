object fncm: Tfncm
  Left = 0
  Top = 0
  ActiveControl = proncm
  BorderIcons = []
  Caption = 'Ajuste de NCM'
  ClientHeight = 156
  ClientWidth = 399
  Color = clGray
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
    Left = 13
    Top = 8
    Width = 65
    Height = 13
    Caption = 'C'#243'digo NCM'
    FocusControl = proncm
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 219
    Top = 11
    Width = 64
    Height = 13
    Caption = 'Aliquota IBPT'
  end
  object proncm: TDBEdit
    Left = 104
    Top = 8
    Width = 97
    Height = 21
    Color = clYellow
    DataField = 'proncm'
    DataSource = Dsregistro
    MaxLength = 8
    TabOrder = 0
    OnExit = proncmExit
    OnKeyPress = FormKeyPress
  end
  object pbotoes: TPanel
    Left = 0
    Top = 125
    Width = 399
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 1
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 74
      Height = 23
      Align = alLeft
      BevelOuter = bvLowered
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
      Left = 245
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 320
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
    object tpocodigo: TDBEdit
      Left = 104
      Top = 6
      Width = 41
      Height = 21
      DataField = 'tpocodigo'
      DataSource = Dsregistro
      TabOrder = 3
      Visible = False
    end
  end
  object pltcgaliqnac: TPanel
    Left = 298
    Top = 7
    Width = 68
    Height = 21
    Alignment = taRightJustify
    BevelOuter = bvLowered
    BorderWidth = 2
    Caption = '%'
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMaroon
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object tcgaliqnac: TDBText
      Left = 3
      Top = 3
      Width = 48
      Height = 15
      Align = alLeft
      Alignment = taRightJustify
      DataField = 'tcgaliqnac'
      DataSource = Dtcg
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object Dsregistro: TUniDataSource
    DataSet = registro
    OnStateChange = DsregistroStateChange
    Left = 132
    Top = 28
  end
  object registro: TUniQuery
    SQL.Strings = (
      
        'select procodigo, proncm,tpocodigo from pro where procodigo=:pro' +
        'codigo')
    Left = 200
    Top = 36
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
  object tcg: TUniQuery
    SQL.Strings = (
      
        'select tcgncm, tcgaliqnac, tcgaliqimp,tcgdescricao from tcg wher' +
        'e tcgfinal IS not null and tcgfinal>=curdate()  and  tcgncm=:pro' +
        'ncm')
    Left = 252
    Top = 72
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
    Left = 168
    Top = 80
  end
  object consulta: TUniQuery
    Left = 256
    Top = 8
  end
end
