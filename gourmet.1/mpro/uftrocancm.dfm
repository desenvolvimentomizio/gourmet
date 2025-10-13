object ftrocancm: Tftrocancm
  Left = 0
  Top = 0
  ActiveControl = edNovoNCM
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'Troca de NCM'
  ClientHeight = 102
  ClientWidth = 452
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
  object Label3: TLabel
    Left = 232
    Top = 40
    Width = 99
    Height = 13
    Caption = 'C'#243'digo CEST Novo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object pbotoes: TPanel
    Left = 0
    Top = 71
    Width = 452
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 3
    ExplicitTop = 66
    ExplicitWidth = 497
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
      Left = 298
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
      ExplicitLeft = 343
    end
    object bcancela: TBitBtn
      Left = 373
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
      ExplicitLeft = 418
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
    TabOrder = 0
    OnExit = edNovoNCMExit
    OnKeyPress = FormKeyPress
  end
  object proncm: TDBEdit
    Left = 119
    Top = 8
    Width = 97
    Height = 21
    TabStop = False
    Color = clYellow
    DataField = 'proncm'
    DataSource = Dsregistro
    MaxLength = 8
    TabOrder = 1
    OnKeyPress = FormKeyPress
  end
  object edNovoCEST: TEdit
    Left = 343
    Top = 37
    Width = 98
    Height = 21
    TabOrder = 2
    OnExit = edNovoCESTExit
    OnKeyPress = FormKeyPress
  end
  object Dsregistro: TUniDataSource
    DataSet = registro
    Left = 180
    Top = 60
  end
  object registro: TUniQuery
    SQL.Strings = (
      
        'select procodigo, proncm,tpocodigo from pro where procodigo=:pro' +
        'codigo')
    Left = 448
    Top = 4
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
    Left = 400
  end
  object tcg: TUniQuery
    SQL.Strings = (
      
        'select tcgncm, tcgaliqnac, tcgaliqimp,tcgdescricao from tcg wher' +
        'e tcgfinal IS not null and tcgfinal>=curdate()  and  tcgncm=:pro' +
        'ncm')
    Left = 236
    Top = 96
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
  object tce: TUniQuery
    SQL.Strings = (
      'select tcecest from tce where tcecest=:tcecest')
    Left = 264
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcecest'
        Value = nil
      end>
  end
end
