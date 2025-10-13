object flche: Tflche
  Left = 0
  Top = 0
  ActiveControl = qtd
  BorderIcons = []
  Caption = 'Registro de Cheques'
  ClientHeight = 469
  ClientWidth = 1099
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
  object pbotoes: TPanel
    Left = 0
    Top = 440
    Width = 1099
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
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Registrando'
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
      Left = 945
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 1020
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
    end
    object bfechar: TBitBtn
      Left = 880
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      Visible = False
    end
  end
  object pltopo: TPanel
    Left = 0
    Top = 26
    Width = 1099
    Height = 35
    Align = alTop
    BorderWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object bvalidar: TBitBtn
      Left = 998
      Top = 5
      Width = 96
      Height = 25
      Align = alRight
      Caption = 'Registrar'
      TabOrder = 1
      OnClick = bvalidarClick
    end
    object qtd: TEdit
      Left = 945
      Top = 5
      Width = 30
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      Color = clYellow
      NumbersOnly = True
      TabOrder = 0
      Text = '1'
      OnKeyPress = FormKeyPress
      ExplicitHeight = 24
    end
    object Panel1: TPanel
      Left = 975
      Top = 5
      Width = 23
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 691
      Top = 5
      Width = 254
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      BevelOuter = bvNone
      BorderWidth = 4
      Caption = 'Quantidade de cheques a registrar:'
      TabOrder = 3
    end
    object Panel4: TPanel
      Left = 653
      Top = 5
      Width = 38
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 4
    end
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1099
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 6
    Caption = 'Registro de Cheques'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
    object plid: TPanel
      Left = 967
      Top = 6
      Width = 126
      Height = 14
      Align = alRight
      BevelOuter = bvNone
      Caption = '00-00-000'
      Color = clNavy
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
  object DBGLista: TDBGrid
    Left = 0
    Top = 61
    Width = 1099
    Height = 344
    Align = alClient
    BorderStyle = bsNone
    Color = clCream
    DataSource = Dche
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgAlwaysShowEditor, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    OnColExit = DBGListaColExit
    OnDrawColumnCell = DBGListaDrawColumnCell
    OnExit = DBGListaExit
    OnKeyDown = DBGListaKeyDown
    OnKeyPress = FormKeyPress
    OnKeyUp = DBGListaKeyUp
    Columns = <
      item
        Expanded = False
        FieldName = 'ctaidentificacao'
        Title.Caption = 'Identifica'#231#227'o da Conta'
        Width = 180
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chenome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chedocumento'
        Width = 125
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chetelefone'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bcocodigo'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cheagencia'
        Width = 60
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'checonta'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chenumero'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chevalor'
        Width = 75
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chevencimento'
        Width = 90
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chesituacao'
        Visible = False
      end>
  end
  object pltotais: TPanel
    Left = 0
    Top = 405
    Width = 1099
    Height = 35
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 4
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object Panel3: TPanel
      Left = 1064
      Top = 5
      Width = 30
      Height = 25
      Align = alRight
      BevelOuter = bvNone
      TabOrder = 0
    end
    object Panel5: TPanel
      Left = 688
      Top = 5
      Width = 254
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      BevelOuter = bvNone
      BorderWidth = 4
      Caption = 'Total de Cheques Registrados R$  '
      TabOrder = 1
    end
    object pltotal: TPanel
      Left = 942
      Top = 5
      Width = 122
      Height = 25
      Align = alRight
      Alignment = taRightJustify
      BevelOuter = bvLowered
      BorderWidth = 4
      Caption = '0,00'
      Color = clYellow
      ParentBackground = False
      TabOrder = 2
    end
  end
  object che: TUniQuery
    SQL.Strings = (
      'select chechave, cheemissao, chevencimento, chenumero, checonta,'
      
        'cheagencia, bcocodigo, chenome, chedocumento, chetelefone, cheva' +
        'lor, schcodigo from che where schcodigo=:schcodigo')
    Left = 660
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'schcodigo'
        Value = nil
      end>
    object chechechave: TIntegerField
      FieldName = 'chechave'
    end
    object checheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object chechevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object chechenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Size = 10
    end
    object checheconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Size = 15
    end
    object checheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Size = 10
    end
    object chebcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object chechenome: TStringField
      DisplayLabel = 'Nome do Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object chechedocumento: TStringField
      DisplayLabel = 'Nr. Doc. Emitente'
      FieldName = 'chedocumento'
      Size = 30
    end
    object chechetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
    end
    object chechevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Dche: TUniDataSource
    DataSet = tmp
    Left = 792
    Top = 160
  end
  object ltc: TUniQuery
    SQL.Strings = (
      'select  ltcchave, chechave, dtlchave, schcodigo from ltc limit 2')
    Left = 704
    Top = 236
    object ltcltcchave: TIntegerField
      FieldName = 'ltcchave'
    end
    object ltcchechave: TIntegerField
      FieldName = 'chechave'
    end
    object ltcdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object ltcschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
  end
  object tmp: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterInsert = tmpAfterInsert
    Left = 752
    Top = 160
    object tmpchechave: TIntegerField
      FieldName = 'chechave'
    end
    object tmpcheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object tmpchevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object tmpchenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Size = 10
    end
    object tmpcheconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Size = 15
    end
    object tmpcheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Size = 10
    end
    object tmpbcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object tmpchenome: TStringField
      DisplayLabel = 'Nome do Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object tmpchedocumento: TStringField
      DisplayLabel = 'CPF/CNPJ Emitente'
      FieldName = 'chedocumento'
      Size = 30
    end
    object tmpchetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
    end
    object tmpchevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object tmpctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object tmpctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
    end
  end
  object consulta: TUniQuery
    Left = 228
    Top = 216
  end
  object cta: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cta.ctacodigo,'
      '  cta.ctaidentificacao,'
      '  cta.tctcodigo,'
      '  cta.bcocodigo,'
      '  cta.ctanumero,'
      '  cta.ctaagencia'
      'FROM cta'
      'where tctcodigo=2')
    Left = 428
    Top = 184
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
    object ctabcocodigo: TStringField
      FieldName = 'bcocodigo'
      Size = 3
    end
    object ctactanumero: TStringField
      FieldName = 'ctanumero'
      Size = 15
    end
    object ctactaagencia: TStringField
      FieldName = 'ctaagencia'
      Size = 10
    end
    object ctatctcodigo: TIntegerField
      FieldName = 'tctcodigo'
    end
  end
  object chc: TUniQuery
    SQL.Strings = (
      'select chccodigo, ctacodigo, chechave from chc limit 1')
    Left = 548
    Top = 188
    object chcctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object chcchechave: TIntegerField
      FieldName = 'chechave'
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdidentificacao,'
      '  cfgmcfg.cfgcodigo,'
      '  etf.etftelefone,'
      '  etd.etddoc1'
      'FROM cfgmcfg'
      '  INNER JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo'
      '  INNER JOIN etf'
      '    ON etf.etdcodigo = etd.etdcodigo'
      'WHERE etf.ttfcodigo = 1')
    Left = 64
    Top = 160
    object cfgetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 80
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object cfgetftelefone: TStringField
      FieldName = 'etftelefone'
      Size = 15
    end
  end
end
