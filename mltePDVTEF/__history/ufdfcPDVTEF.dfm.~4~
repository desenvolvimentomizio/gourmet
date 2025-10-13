object fdfcPDVTEF: TfdfcPDVTEF
  Left = 0
  Top = 0
  ActiveControl = qtd
  BorderIcons = []
  Caption = 'Registro de Contas a Receber'
  ClientHeight = 378
  ClientWidth = 689
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyDown = FormKeyDown
  OnKeyUp = FormKeyUp
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 689
    Height = 31
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 6
    Caption = 'Defini'#231#227'o de Parcelas'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object plid: TPanel
      Left = 557
      Top = 6
      Width = 126
      Height = 19
      Align = alRight
      BevelOuter = bvNone
      Caption = '00-00-000'
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
  end
  object pbotoes: TPanel
    Left = 0
    Top = 349
    Width = 689
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentBackground = False
    ParentFont = False
    TabOrder = 1
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Incluindo'
      Color = 12615680
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
      Left = 535
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
      OnKeyDown = FormKeyDown
    end
    object bcancela: TBitBtn
      Left = 610
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bcancelaClick
      OnKeyDown = FormKeyDown
    end
    object bfechar: TBitBtn
      Left = 470
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      Visible = False
      OnKeyDown = FormKeyDown
    end
  end
  object pltopo: TPanel
    Left = 0
    Top = 31
    Width = 689
    Height = 35
    Align = alTop
    BorderWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object bvalidar: TBitBtn
      Left = 588
      Top = 5
      Width = 96
      Height = 25
      Align = alRight
      Caption = 'Registrar'
      TabOrder = 2
      OnClick = bvalidarClick
      OnKeyDown = FormKeyDown
    end
    object qtd: TEdit
      Left = 542
      Top = 5
      Width = 30
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      Color = 7471103
      NumbersOnly = True
      TabOrder = 1
      OnKeyDown = FormKeyDown
      OnKeyPress = DBGListaKeyPress
      ExplicitHeight = 24
    end
    object Panel1: TPanel
      Left = 572
      Top = 5
      Width = 16
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 3
    end
    object Panel2: TPanel
      Left = 280
      Top = 5
      Width = 262
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      BevelOuter = bvNone
      BorderWidth = 4
      Caption = 'Quantidade de parcelas a registrar:'
      TabOrder = 4
    end
    object totalemconvenio: TEdit
      Left = 154
      Top = 5
      Width = 126
      Height = 25
      TabStop = False
      Align = alRight
      Alignment = taRightJustify
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = FormKeyDown
      ExplicitHeight = 24
    end
    object Panel3: TPanel
      Left = -150
      Top = 5
      Width = 304
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      BevelOuter = bvNone
      BorderWidth = 4
      Caption = 'Total em Conv'#234'nio R$'
      TabOrder = 5
    end
  end
  object DBGLista: TDBGrid
    Left = 0
    Top = 66
    Width = 689
    Height = 283
    Align = alClient
    BorderStyle = bsNone
    Color = clCream
    DataSource = Drfi
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -16
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnColEnter = DBGListaColEnter
    OnDrawColumnCell = DBGListaDrawColumnCell
    OnKeyDown = DBGListaKeyDown
    OnKeyPress = DBGListaKeyPress
    OnKeyUp = DBGListaKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'rfinumero'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rfivencimento'
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rfivalor'
        Visible = True
      end>
  end
  object Drfi: TUniDataSource
    DataSet = rfi
    OnStateChange = DrfiStateChange
    Left = 452
    Top = 220
  end
  object rfi: TVirtualTable
    Left = 496
    Top = 224
    Data = {04000000000000000000}
    object rfirfichave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'rfichave'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero Documento'
      FieldName = 'rfinumero'
    end
    object rfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object rfirfivalor: TFloatField
      DisplayLabel = 'Valor Parcela R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Precision = 2
    end
    object rfirfivalorparcela: TCurrencyField
      FieldName = 'rfivalorparcela'
    end
  end
  object etl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etlchave,'
      '  etdcodigo,'
      '  etllimitetotal,'
      '  etltipo,'
      '  etldias'
      'FROM etl'
      'where etdcodigo=:etdcodigo')
    Left = 280
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etletlchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'etlchave'
    end
    object etletdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
      Required = True
    end
    object etletllimitetotal: TFloatField
      DisplayLabel = 'Limite de Cr'#233'dito'
      FieldName = 'etllimitetotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object etletltipo: TIntegerField
      DisplayLabel = 'Tipo de Faturamento'
      FieldName = 'etltipo'
      Required = True
    end
    object etletldias: TIntegerField
      DisplayLabel = 'Dias / Dia Fixo'
      FieldName = 'etldias'
      Required = True
    end
  end
end
