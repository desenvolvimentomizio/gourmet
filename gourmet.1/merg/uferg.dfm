object ferg: Tferg
  Left = 0
  Top = 0
  ActiveControl = flacodigo
  BorderIcons = []
  Caption = 'Exporta'#231#227'o de Lan'#231'amentos'
  ClientHeight = 151
  ClientWidth = 541
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 12
    Top = 11
    Width = 69
    Height = 13
    Caption = 'C'#243'dgo da Filial'
    FocusControl = flacodigo
  end
  object Label2: TLabel
    Left = 12
    Top = 38
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
    FocusControl = rmgdtinicial
  end
  object Label3: TLabel
    Left = 12
    Top = 65
    Width = 48
    Height = 13
    Caption = 'Data Final'
    FocusControl = rmgdtfinal
  end
  object pbotoes: TPanel
    Left = 0
    Top = 122
    Width = 541
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 5
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Exportando'
      Color = 4227327
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 387
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 462
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Cancela'
      TabOrder = 2
      OnClick = bcancelaClick
    end
    object bfechar: TBitBtn
      Left = 322
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      OnClick = bfecharClick
    end
  end
  object mostra: TProgressBar
    Left = 12
    Top = 96
    Width = 513
    Height = 17
    TabOrder = 4
    Visible = False
  end
  object flacodigo: TDBEdit
    Left = 137
    Top = 8
    Width = 37
    Height = 21
    DataField = 'flacodigo'
    DataSource = Dcfg
    TabOrder = 0
    OnKeyPress = FormKeyPress
  end
  object rmgdtinicial: TDBEdit
    Left = 136
    Top = 35
    Width = 93
    Height = 21
    DataField = 'rmgdtinicial'
    DataSource = Dcfg
    TabOrder = 2
    OnKeyPress = FormKeyPress
  end
  object rmgdtfinal: TDBEdit
    Left = 136
    Top = 62
    Width = 93
    Height = 21
    DataField = 'rmgdtfinal'
    DataSource = Dcfg
    TabOrder = 3
    OnKeyPress = FormKeyPress
  end
  object flaidentificacao: TDBLookupComboBox
    Left = 180
    Top = 8
    Width = 345
    Height = 21
    DataField = 'flacodigo'
    DataSource = Dcfg
    KeyField = 'flacodigo'
    ListField = 'flaidentificacao'
    ListSource = Dfla
    TabOrder = 1
    TabStop = False
    OnKeyPress = FormKeyPress
  end
  object consulta: tuniquery
    Params = <>
    Left = 456
    Top = 4
  end
  object cfg: TVirtualTable
    FieldDefs = <
      item
        Name = 'flacodigo'
        DataType = ftInteger
      end
      item
        Name = 'rmgdtinicial'
        DataType = ftDate
      end
      item
        Name = 'rmgdtfinal'
        DataType = ftDate
      end>
    Left = 368
    Top = 4
    Data = {
      030003000900666C61636F6469676F03000000000000000C00726D676474696E
      696369616C09000000000000000A00726D67647466696E616C09000000000000
      00000000000000}
    object cfgflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
    end
    object cfgrmgdtinicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'rmgdtinicial'
      EditMask = '!99/99/9999;1;_'
    end
    object cfgrmgdtfinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'rmgdtfinal'
      EditMask = '!99/99/9999;1;_'
    end
  end
  object Dcfg: tunidatasource
    DataSet = cfg
    Left = 412
    Top = 4
  end
  object fla: tuniquery
    SQL.Strings = (
      'select flacodigo, flaidentificacao from fla')
    Params = <>
    Left = 324
    Top = 4
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 50
    end
  end
  object clb: tuniquery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Params = <>
    Left = 272
  end
  object fcb: tuniquery
    SQL.Strings = (
      'select flacodigo,clbcodigo from fcb')
    Params = <>
    Left = 268
    Top = 44
    object fcbflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object fcbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  object Dfla: tunidatasource
    DataSet = fla
    Left = 500
    Top = 24
  end
  object rmg: tuniquery
    SQL.Strings = (
      
        'select rmgchave, flacodigo,phgcodigo,rmgdata,rmgvalor,rmgcomplem' +
        'ento,pcgdebito,pcgcredito from rmg')
    Params = <>
    Left = 320
    Top = 52
    object rmgrmgchave: TIntegerField
      FieldName = 'rmgchave'
    end
    object rmgflacodigo: TIntegerField
      FieldName = 'flacodigo'
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
  object drg: tuniquery
    SQL.Strings = (
      
        'select rmgchave, pcgcodigo, drgvalor, drgtipo from drg order by ' +
        'drgtipo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'rmgchave'
        ParamType = ptUnknown
      end>
    MasterFields = 'rmgchave'
	DetailFields = 'rmgchave'
    MasterSource = Drmg
    Left = 392
    Top = 52
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmgchave'
        ParamType = ptUnknown
      end>
    object drgrmgchave: TIntegerField
      FieldName = 'rmgchave'
    end
    object drgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object drgdrgvalor: TFloatField
      FieldName = 'drgvalor'
    end
  end
  object Drmg: tunidatasource
    DataSet = rmg
    Left = 356
    Top = 52
  end
end
