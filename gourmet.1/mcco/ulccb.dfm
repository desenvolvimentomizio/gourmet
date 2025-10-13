inherited lccb: Tlccb
  Caption = 'Concilia'#231#227'o Banc'#225'ria'
  ClientHeight = 611
  ClientWidth = 1063
  ExplicitWidth = 1079
  ExplicitHeight = 650
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 582
    Width = 1063
    ExplicitTop = 582
    ExplicitWidth = 1063
    inherited psituacao: TPanel
      Caption = 'Conciliando'
    end
    inherited bconfirma: TBitBtn
      Left = 909
      ExplicitLeft = 909
    end
    inherited bcancela: TBitBtn
      Left = 984
      ExplicitLeft = 984
    end
  end
  object plCCO: TPanel
    Left = 0
    Top = 26
    Width = 513
    Height = 556
    Align = alLeft
    BorderWidth = 2
    TabOrder = 1
    object DBGListaCCO: TDBGrid
      Left = 3
      Top = 43
      Width = 507
      Height = 474
      Align = alClient
      BorderStyle = bsNone
      Color = clCream
      DataSource = Dcco
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGListaCCOCellClick
      OnDrawColumnCell = DBGListaCCODrawColumnCell
      OnDblClick = DBGListaCCODblClick
      Columns = <
        item
          Expanded = False
          FieldName = 'ccoconciliado'
          Title.Caption = ' '
          Width = 15
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ccochave'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ccodataregistro'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ccohistorico'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ccovalor'
          Width = 85
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'cconatureza'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 26
          Visible = True
        end>
    end
    object plRodaCCO: TPanel
      Left = 3
      Top = 517
      Width = 507
      Height = 36
      Align = alBottom
      TabOrder = 1
      object plTitSaldoAtual: TPanel
        Left = 120
        Top = 6
        Width = 335
        Height = 25
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = 'Total Selecionado na Conta Corrente R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object plTotalCCO: TPanel
          Left = 233
          Top = 2
          Width = 100
          Height = 21
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvLowered
          BorderWidth = 3
          Caption = '0,00'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object plTopoCCO: TPanel
      Left = 3
      Top = 3
      Width = 507
      Height = 40
      Align = alTop
      TabOrder = 2
    end
  end
  object plCCB: TPanel
    Left = 550
    Top = 26
    Width = 513
    Height = 556
    Align = alRight
    BorderWidth = 2
    TabOrder = 2
    object plRodaPeCCB: TPanel
      Left = 3
      Top = 517
      Width = 507
      Height = 36
      Align = alBottom
      TabOrder = 0
      object Panel1: TPanel
        Left = 128
        Top = 6
        Width = 335
        Height = 25
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = 'Total Selecionado na Conta Banc'#225'ria R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Panel2: TPanel
          Left = 233
          Top = 2
          Width = 100
          Height = 21
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvLowered
          BorderWidth = 3
          Caption = '0,00'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object plTopoCCB: TPanel
      Left = 3
      Top = 3
      Width = 507
      Height = 40
      Align = alTop
      TabOrder = 1
    end
    object DBGListaCCB: TDBGrid
      Left = 3
      Top = 43
      Width = 507
      Height = 474
      Align = alClient
      BorderStyle = bsNone
      Color = clCream
      DataSource = Dccb
      DrawingStyle = gdsGradient
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      TabOrder = 2
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ccoconciliado'
          Title.Caption = ' '
          Width = 15
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ccochave'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ccodataregistro'
          Title.Caption = 'Data'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ccohistorico'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'ccovalor'
          Width = 85
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'cconatureza'
          Title.Alignment = taCenter
          Title.Caption = 'Tipo'
          Width = 26
          Visible = True
        end>
    end
  end
  object plCentro: TPanel
    Left = 513
    Top = 26
    Width = 37
    Height = 556
    Align = alClient
    TabOrder = 3
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1063
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'T'#237'tulo'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 4
  end
  object cco: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccochave,'
      '  ctacodigo,'
      '  cedcodigo,'
      '  ccoemissao,'
      '  ccovencimento,'
      '  cconumero,'
      '  ccohistorico,'
      '  ccovalor,'
      '  ccoconciliado'
      'FROM cco'
      'where ctacodigo=:contacodigo and ccoconciliado='#39'0'#39)
    Left = 220
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'contacodigo'
        Value = nil
      end>
    object ccoccochave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object ccoccoemissao: TDateField
      DisplayLabel = 'Dt.Registro'
      FieldName = 'ccoemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object ccoccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object ccoccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccocedcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'cedcodigo'
    end
    object ccoccoconciliado: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'ccoconciliado'
    end
  end
  object Dcco: TDataSource
    DataSet = cco
    Left = 256
    Top = 285
  end
  object Dccb: TDataSource
    DataSet = ccb
    Left = 816
    Top = 253
  end
  object ccb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccbchave,'
      '  ctacodigo,'
      '  cedcodigo,'
      '  ccbhistorico,'
      '  ccbnumident,'
      '  ccbdata,'
      '  ccbvalor,'
      '  ccbconciliado'
      'FROM ccb'
      'where ctacodigo=:ctacodigo and ccbconciliado='#39'0'#39)
    Left = 782
    Top = 250
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object ccbccbchave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccbchave'
    end
    object ccbccbdata: TDateField
      DisplayLabel = 'Dt.Registro'
      FieldName = 'ccbdata'
    end
    object ccbccbhistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccbhistorico'
      Size = 50
    end
    object ccbccbvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccbvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccbcedcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'cedcodigo'
    end
    object ccbccbconciliado: TIntegerField
      DisplayLabel = 'C'
      FieldName = 'ccbconciliado'
    end
  end
  object cnb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cnbchave,'
      '  ccbchave,'
      '  ccochave,'
      '  clbcodigo,'
      '  cnbdata,'
      '  cnbhora'
      'FROM cnb limit 0')
    Left = 518
    Top = 266
  end
end
