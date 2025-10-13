object fcest: Tfcest
  Left = 0
  Top = 0
  ActiveControl = procest
  BorderIcons = []
  Caption = 'Ajuste de CEST'
  ClientHeight = 69
  ClientWidth = 244
  Color = 12615680
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
    Top = 11
    Width = 68
    Height = 13
    Caption = 'C'#243'digo CEST'
    FocusControl = procest
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object procest: TDBEdit
    Left = 104
    Top = 8
    Width = 97
    Height = 21
    Color = clYellow
    DataField = 'procest'
    DataSource = Dsregistro
    MaxLength = 8
    TabOrder = 0
    OnExit = procestExit
    OnKeyPress = FormKeyPress
  end
  object pbotoes: TPanel
    Left = 0
    Top = 38
    Width = 244
    Height = 31
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 1
    ExplicitTop = 39
    ExplicitWidth = 348
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
      Left = 90
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
      ExplicitLeft = 194
    end
    object bcancela: TBitBtn
      Left = 165
      Top = 4
      Width = 75
      Height = 23
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
      ExplicitLeft = 269
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
  object Dsregistro: TUniDataSource
    DataSet = registro
    OnStateChange = DsregistroStateChange
    Left = 164
    Top = 65524
  end
  object registro: TUniQuery
    SQL.Strings = (
      
        'select procodigo, procest,tpocodigo from pro where procodigo=:pr' +
        'ocodigo')
    Left = 216
    Top = 65524
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
  object Dtcg: TUniDataSource
    Left = 168
    Top = 80
  end
  object consulta: TUniQuery
    Left = 280
  end
  object tce: TUniQuery
    SQL.Strings = (
      'select tcecest from tce where tcecest=:tcecest')
    Left = 256
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcecest'
        Value = nil
      end>
  end
end
