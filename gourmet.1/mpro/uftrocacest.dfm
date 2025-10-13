object ftrocacest: Tftrocacest
  Left = 0
  Top = 0
  ActiveControl = edNovoCEST
  BorderIcons = []
  Caption = 'Troca de CESTs'
  ClientHeight = 86
  ClientWidth = 285
  Color = 16756834
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
    Width = 108
    Height = 13
    Caption = 'C'#243'digo CEST Antigo'
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
  object procest: TDBEdit
    Left = 135
    Top = 8
    Width = 97
    Height = 21
    Color = clYellow
    DataField = 'procest'
    DataSource = Dsregistro
    MaxLength = 8
    TabOrder = 0
  end
  object edNovoCEST: TEdit
    Left = 135
    Top = 35
    Width = 98
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    OnExit = edNovoCESTExit
    OnKeyPress = FormKeyPress
  end
  object pbotoes: TPanel
    Left = 0
    Top = 55
    Width = 285
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 2
    ExplicitTop = 62
    ExplicitWidth = 266
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
      Left = 131
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
      ExplicitLeft = 112
    end
    object bcancela: TBitBtn
      Left = 206
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
      ExplicitLeft = 187
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
  object Dtcg: TUniDataSource
    Left = 40
    Top = 24
  end
  object Dsregistro: TUniDataSource
    DataSet = registro
    Left = 124
    Top = 52
  end
  object registro: TUniQuery
    SQL.Strings = (
      
        'select procodigo, procest,tpocodigo from pro where procodigo=:pr' +
        'ocodigo')
    Left = 80
    Top = 65532
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
    object registrotpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object registroprocest: TStringField
      FieldName = 'procest'
    end
  end
  object consulta: TUniQuery
    Left = 248
  end
  object tce: TUniQuery
    SQL.Strings = (
      'select tcecest from tce where tcecest=:teccest')
    Left = 16
    Top = 65520
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'teccest'
        Value = nil
      end>
  end
  object UniQuery1: TUniQuery
    SQL.Strings = (
      'select tcecest from tce where tcecest=:tcecest')
    Left = 208
    Top = 65529
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcecest'
        Value = nil
      end>
  end
end
