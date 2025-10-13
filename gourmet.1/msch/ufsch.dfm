object fsch: Tfsch
  Left = 0
  Top = 0
  ActiveControl = edbusca
  BorderIcons = []
  Caption = 'Sele'#231#227'o de Cheques'
  ClientHeight = 677
  ClientWidth = 538
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 538
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 6
    Caption = 'Sele'#231#227'o de Cheques'
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
      Left = 406
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
  object pbotoes: TPanel
    Left = 0
    Top = 648
    Width = 538
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
      Caption = 'Registrando'
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
      Left = 384
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
      Left = 459
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
      Left = 319
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      Visible = False
    end
  end
  object DBGLista: TDBGrid
    Left = 0
    Top = 77
    Width = 538
    Height = 520
    Align = alClient
    BorderStyle = bsNone
    Color = clCream
    DataSource = DSTabela
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGListaCellClick
    OnDrawColumnCell = DBGListaDrawColumnCell
    OnDblClick = DBGListaDblClick
    OnKeyDown = DBGListaKeyDown
    OnTitleClick = DBGListaTitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'cheselecionar'
        Title.Alignment = taCenter
        Title.Caption = ' '
        Width = 21
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bcocodigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chenumero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'checonta'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cheagencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chevalor'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'chevencimento'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'schcodigo'
        Width = 36
        Visible = True
      end>
  end
  object pltotal: TPanel
    Left = 0
    Top = 597
    Width = 538
    Height = 51
    Align = alBottom
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 3
    object plselecionado: TPanel
      Left = 416
      Top = 0
      Width = 122
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 3
      Caption = 'Panel2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object GBselecionado: TGroupBox
        Left = 3
        Top = 3
        Width = 116
        Height = 45
        Align = alClient
        Caption = ' Selecionado R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object pttotsele: TPanel
          Left = 2
          Top = 15
          Width = 112
          Height = 21
          Align = alTop
          Alignment = taRightJustify
          BevelOuter = bvLowered
          BorderWidth = 4
          Caption = '0,00'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object Panel1: TPanel
      Left = 336
      Top = 0
      Width = 80
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 3
      Caption = 'Panel2'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 3
        Top = 3
        Width = 74
        Height = 45
        Align = alClient
        Caption = ' Qtde '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object ptqtdsele: TPanel
          Left = 2
          Top = 15
          Width = 70
          Height = 21
          Align = alTop
          Alignment = taRightJustify
          BevelOuter = bvLowered
          BorderWidth = 4
          Caption = '0'
          Color = clYellow
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object PlFiltros: TPanel
    Left = 0
    Top = 26
    Width = 538
    Height = 51
    Align = alTop
    BevelOuter = bvNone
    Color = clSilver
    ParentBackground = False
    TabOrder = 4
    object PlEdTextoBusca: TPanel
      Left = 0
      Top = 0
      Width = 241
      Height = 51
      Align = alLeft
      BevelOuter = bvNone
      BorderWidth = 3
      TabOrder = 0
      object GrBTextoProcurar: TGroupBox
        Left = 3
        Top = 3
        Width = 235
        Height = 45
        Align = alClient
        Caption = ' Informa'#231#227'o a Procurar: '
        Color = clSilver
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object PlGbEdtBusca: TPanel
          Left = 2
          Top = 15
          Width = 231
          Height = 28
          Align = alClient
          BevelOuter = bvNone
          BorderWidth = 3
          TabOrder = 0
          object edbusca: TEdit
            Left = 3
            Top = 3
            Width = 225
            Height = 21
            Align = alTop
            Color = 14286847
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnKeyUp = edbuscaKeyUp
          end
        end
      end
    end
    object plaselecionar: TPanel
      Left = 416
      Top = 0
      Width = 122
      Height = 51
      Align = alRight
      BevelOuter = bvNone
      BorderWidth = 3
      Caption = 'plaselecionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object GBaselecionar: TGroupBox
        Left = 3
        Top = 3
        Width = 116
        Height = 45
        Align = alClient
        Caption = ' A Seleciona R$ '
        TabOrder = 0
        object pttotasele: TPanel
          Left = 2
          Top = 15
          Width = 112
          Height = 21
          Align = alTop
          Alignment = taRightJustify
          BevelOuter = bvLowered
          Caption = '0,00'
          Color = 16767927
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  object uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT distinct cco.ctacodigo'
      '     , che.chechave'
      '     , che.cheemissao'
      '     , che.chevencimento'
      '     , che.chenumero'
      '     , che.checonta'
      '     , che.cheagencia'
      '     , che.chenome'
      '     , che.bcocodigo'
      '     , che.chedocumento'
      '     , che.chetelefone'
      '     , che.chevalor'
      '     , ltc.schcodigo'
      '     , dtl.ltechave'
      '     , dtl.mdacodigo'
      '  FROM che'
      ' INNER JOIN (SELECT ltc.ltcchave'
      '                  , ltc.chechave'
      '                  , ltc.dtlchave'
      '                  , ltc.schcodigo'
      '               FROM ltc'
      '              WHERE ltc.ltcchave = (SELECT MAX(l.ltcchave)'
      '                                      FROM ltc l'
      
        '                                     WHERE l.chechave = ltc.chec' +
        'have))'
      '            ltc ON che.chechave = ltc.chechave'
      ' INNER JOIN dtl ON ltc.dtlchave = dtl.dtlchave'
      '  LEFT JOIN clt ON dtl.ltechave = clt.ltechave'
      '  LEFT JOIN cco ON clt.ccochave = cco.ccochave'
      
        '  inner join cta on cco.ctacodigo = cta.ctacodigo -- and cta.cta' +
        'terminal<>1'
      ' WHERE (ltc.schcodigo IN (1, 3) AND dtl.mdacodigo = 3)'
      '    OR (ltc.schcodigo IN (7)    AND dtl.ltechave  = :ltechave)')
    Left = 120
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object uqtabelachechave: TIntegerField
      FieldName = 'chechave'
    end
    object uqtabelacheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
    end
    object uqtabelachevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelachenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Size = 10
    end
    object uqtabelacheconta: TStringField
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Size = 10
    end
    object uqtabelacheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Size = 15
    end
    object uqtabelabcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object uqtabelachenome: TStringField
      DisplayLabel = 'Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object uqtabelachedocumento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'chedocumento'
    end
    object uqtabelachetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
    end
    object uqtabelachevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
  end
  object DSTabela: TUniDataSource
    DataSet = tmp
    Left = 188
    Top = 128
  end
  object consulta: TUniQuery
    Left = 252
    Top = 132
  end
  object tmp: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 184
    Top = 192
  end
  object ltc: TUniQuery
    SQL.Strings = (
      'select  ltcchave, chechave, dtlchave, schcodigo from ltc')
    Left = 268
    Top = 204
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
end
