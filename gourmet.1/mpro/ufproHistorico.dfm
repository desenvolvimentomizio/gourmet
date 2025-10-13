object fproHistorico: TfproHistorico
  Left = 0
  Top = 0
  Caption = 'Hist'#243'rico do Produto'
  ClientHeight = 736
  ClientWidth = 1108
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  WindowState = wsMaximized
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object plTitulo: TPanel
    Left = 0
    Top = 0
    Width = 1108
    Height = 41
    Align = alTop
    Alignment = taLeftJustify
    BorderWidth = 6
    Color = 12910591
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 0
    object procodigo: TDBText
      Left = 113
      Top = 7
      Width = 80
      Height = 27
      Align = alLeft
      Alignment = taCenter
      DataField = 'procodigo'
      DataSource = Dpro
    end
    object pronome: TDBText
      Left = 193
      Top = 7
      Width = 908
      Height = 27
      Align = alClient
      DataField = 'pronome'
      DataSource = Dpro
      ExplicitLeft = 199
      ExplicitTop = 8
      ExplicitWidth = 536
    end
    object Panel7: TPanel
      Left = 7
      Top = 7
      Width = 106
      Height = 27
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'C'#243'digo: '
      TabOrder = 0
    end
  end
  object plsaidas: TPanel
    Left = 0
    Top = 41
    Width = 1108
    Height = 295
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 1
    object plvendas: TPanel
      Left = 4
      Top = 4
      Width = 1100
      Height = 142
      Align = alClient
      BorderWidth = 4
      TabOrder = 0
      object DBGridVendas: TDBGrid
        Left = 5
        Top = 25
        Width = 1090
        Height = 112
        Align = alClient
        Color = clWhite
        DataSource = dsvnd
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'meschave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mesnumero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mesregistro'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'etdidentificacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itmquantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itmvalor'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 5
        Top = 5
        Width = 1090
        Height = 20
        Margins.Left = 15
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = '      Vendas'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object plAjustevendas: TPanel
      Left = 4
      Top = 146
      Width = 1100
      Height = 144
      Align = alBottom
      BorderWidth = 4
      TabOrder = 1
      object DBGridAjusteVendas: TDBGrid
        Left = 5
        Top = 25
        Width = 1090
        Height = 114
        Align = alClient
        Color = clWhite
        DataSource = dsajuvnd
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'meschave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itmchave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mesregistro'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'etdidentificacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itmquantidade'
            Visible = True
          end>
      end
      object Panel3: TPanel
        Left = 5
        Top = 5
        Width = 1090
        Height = 20
        Margins.Left = 15
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = '      Ajustes de Sa'#237'da'
        Color = clTeal
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object plTotaisSaidas: TPanel
      Left = 4
      Top = 290
      Width = 1100
      Height = 1
      Align = alBottom
      TabOrder = 2
      object plTotalSaida: TPanel
        Left = 761
        Top = 1
        Width = 338
        Height = 28
        Align = alRight
        BevelOuter = bvLowered
        Caption = 'plTotalSaida'
        TabOrder = 0
      end
    end
  end
  object plEntradas: TPanel
    Left = 0
    Top = 336
    Width = 1108
    Height = 352
    Align = alTop
    BevelOuter = bvNone
    BorderWidth = 4
    TabOrder = 2
    object Panel2: TPanel
      Left = 4
      Top = 168
      Width = 1100
      Height = 179
      Align = alBottom
      BorderWidth = 4
      TabOrder = 0
      object DBGrid1: TDBGrid
        Left = 5
        Top = 25
        Width = 1090
        Height = 149
        Align = alClient
        Color = clWhite
        DataSource = Dajucpr
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'meschave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itmchave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mesregistro'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'etdidentificacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itmquantidade'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 5
        Top = 5
        Width = 1090
        Height = 20
        Margins.Left = 15
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = '      Ajustes de Entrada'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object Panel5: TPanel
      Left = 4
      Top = 4
      Width = 1100
      Height = 164
      Align = alClient
      BorderWidth = 4
      TabOrder = 1
      object DBGridCompras: TDBGrid
        Left = 5
        Top = 25
        Width = 1090
        Height = 134
        Align = alClient
        Color = clWhite
        DataSource = dscpr
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'meschave'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mesnumero'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'mesregistro'
            Width = 85
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'etdidentificacao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itmquantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itmvalor'
            Visible = True
          end>
      end
      object Panel6: TPanel
        Left = 5
        Top = 5
        Width = 1090
        Height = 20
        Margins.Left = 15
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = '      Compras'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
      end
    end
    object plTotaisEntradas: TPanel
      Left = 4
      Top = 347
      Width = 1100
      Height = 1
      Align = alBottom
      TabOrder = 2
      object plTotalEntrada: TPanel
        Left = 761
        Top = 1
        Width = 338
        Height = 28
        Align = alRight
        BevelOuter = bvLowered
        Caption = 'plTotalSaida'
        TabOrder = 0
      end
    end
  end
  object pbotoes: TPanel
    Left = 0
    Top = 707
    Width = 1108
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 3
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Consultando'
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
    object bfechar: TBitBtn
      Left = 1039
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = bfecharClick
    end
  end
  object vnd: TUniQuery
    SQL.Strings = (
      
        'select mes.meschave,mes.mesnumero, mes.mesregistro,(itm.itmconte' +
        'ndo*itm.itmquantidade) as itmquantidade, etd.etdidentificacao, i' +
        'tm.itmvalor, itmtotal '
      ''
      '  FROM itm'
      '  JOIN mes         on mes.meschave = itm.meschave'
      '  JOIN etd         ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN sde         ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '  JOIN trm        ON mes.trmcodigo = trm.trmcodigo'
      ''
      
        '  LEFT JOIN mor ON mes.meschave = mor.meschave and mor.flacodigo' +
        '=:flacodigo'
      
        ' WHERE (mes.sdecodigo<>'#39'02'#39') and (toe.ttecodigo IN (1) and toe.t' +
        'tocodigo in (2)) AND mes.flacodigo=:flacodigo and itm.procodigo=' +
        ':procodigo'
      ' '
      ''
      ' order by mesregistro')
    Left = 648
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object vndmeschave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'meschave'
    end
    object vndmesregistro: TDateField
      DisplayLabel = 'Data'
      FieldName = 'mesregistro'
    end
    object vnditmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object vndetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object vnditmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vnditmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vndmesnumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'mesnumero'
    end
  end
  object dsvnd: TUniDataSource
    DataSet = vnd
    Left = 608
    Top = 104
  end
  object ajuvnd: TUniQuery
    SQL.Strings = (
      
        'select mes.meschave,mes.mesnumero, mes.mesregistro, (itm.itmcont' +
        'endo*itm.itmquantidade) as itmquantidade, etd.etdidentificacao, ' +
        'itm.itmvalor, itmtotal, itmchave '
      ''
      '  FROM itm'
      '  JOIN mes         on mes.meschave = itm.meschave'
      '  JOIN etd         ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN sde         ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '  JOIN trm        ON mes.trmcodigo = trm.trmcodigo'
      ''
      
        '  LEFT JOIN mor ON mes.meschave = mor.meschave and mor.flacodigo' +
        '=:flacodigo'
      
        ' WHERE (toe.ttecodigo IN (1) and toe.ttocodigo<>10 and toe.ttoco' +
        'digo<>8) and mes.tdfcodigo='#39'AE'#39' AND mes.flacodigo=:flacodigo and' +
        ' itm.procodigo=:procodigo'
      ' '
      ''
      ' order by mesregistro')
    Left = 784
    Top = 153
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object ajuvndmeschave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'meschave'
    end
    object ajuvndmesregistro: TDateField
      DisplayLabel = 'Data'
      FieldName = 'mesregistro'
    end
    object ajuvnditmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object ajuvndetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object ajuvnditmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ajuvnditmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ajuvndmesnumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'mesnumero'
    end
    object ajuvnditmchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'itmchave'
    end
  end
  object dsajuvnd: TUniDataSource
    DataSet = ajuvnd
    Left = 736
    Top = 152
  end
  object cpr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mes.meschave,'
      '  mes.mesnumero,'
      '  mes.mesregistro,'
      'sum( (itm.itmcontendo*itm.itmquantidade)) as itmquantidade,'
      '  etd.etdidentificacao,'
      '  itm.itmvalor,'
      '  itmtotal'
      ''
      'FROM itm'
      '  JOIN mes'
      
        '    ON mes.meschave = itm.meschave AND itm.procodigo = :procodig' +
        'o'
      ''
      '  JOIN etd'
      '    ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN toe'
      '    ON mes.toecodigo = toe.toecodigo'
      ''
      
        ' LEFT JOIN mor ON mes.meschave = mor.meschave and mor.flacodigo=' +
        ':flacodigo'
      ''
      'WHERE '
      '  (toe.ttocodigo IN (1)) AND mes.flacodigo = :flacodigo AND '
      '  itm.procodigo = :procodigo'
      ''
      ''
      '  '
      'GROUP BY meschave'
      '  ORDER BY meschave')
    Left = 741
    Top = 374
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cprmeschave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'meschave'
    end
    object cprmesregistro: TDateField
      DisplayLabel = 'Data'
      FieldName = 'mesregistro'
    end
    object cpritmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object cpretdidentificacao: TStringField
      DisplayLabel = 'Nome do Fornecedor'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object cpritmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cpritmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object cprmesnumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'mesnumero'
    end
  end
  object dscpr: TUniDataSource
    DataSet = cpr
    Left = 773
    Top = 374
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro where procodigo=:procodigo')
    Left = 344
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
  object Dpro: TDataSource
    DataSet = pro
    Left = 381
    Top = 166
  end
  object ajucpr: TUniQuery
    SQL.Strings = (
      
        'select mes.meschave,mes.mesnumero, mes.mesregistro, (itm.itmcont' +
        'endo*itm.itmquantidade) as itmquantidade, etd.etdidentificacao, ' +
        'itm.itmvalor, itmtotal, itmchave '
      ''
      '  FROM itm'
      '  JOIN mes         on mes.meschave = itm.meschave'
      '  JOIN etd         ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN sde         ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN tdf         ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN toe        ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto        ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN tem        ON mes.temcodigo = tem.temcodigo'
      '  JOIN fla         ON mes.flacodigo = fla.flacodigo'
      '  JOIN trm        ON mes.trmcodigo = trm.trmcodigo'
      ''
      
        '  LEFT JOIN mor ON mes.meschave = mor.meschave and mor.flacodigo' +
        '=:flacodigo'
      
        ' WHERE (toe.ttecodigo IN (2) and toe.ttocodigo<>10 and toe.ttoco' +
        'digo<>8) and mes.tdfcodigo='#39'AE'#39' AND mes.flacodigo=:flacodigo and' +
        ' itm.procodigo=:procodigo'
      ' '
      ''
      ' order by mesregistro')
    Left = 796
    Top = 532
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
  end
  object Dajucpr: TDataSource
    DataSet = ajucpr
    Left = 844
    Top = 532
  end
end
