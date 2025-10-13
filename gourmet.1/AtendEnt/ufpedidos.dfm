object fpedidos: Tfpedidos
  Left = 0
  Top = 0
  Caption = 'Pedidos'
  ClientHeight = 606
  ClientWidth = 1347
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
  object plRodaPe: TPanel
    Left = 0
    Top = 544
    Width = 1347
    Height = 62
    Align = alBottom
    BevelOuter = bvNone
    BorderWidth = 4
    Color = 12615680
    ParentBackground = False
    TabOrder = 0
    object GBUtilitarios: TGroupBox
      Tag = 1
      Left = 608
      Top = 4
      Width = 613
      Height = 54
      Margins.Left = 0
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 0
      Align = alRight
      Caption = ' Utilit'#225'rios '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object sbAtualizar: TSpeedButton
        Left = 24
        Top = 18
        Width = 200
        Height = 30
        Caption = '[F2] Atualizar Lista'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Margin = 1
        ParentFont = False
        OnClick = sbAtualizarClick
      end
      object sbVoltaVenda: TSpeedButton
        Left = 16
        Top = 121
        Width = 280
        Height = 30
        Caption = 'Volta Venda'
        Enabled = False
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Margin = 1
        ParentFont = False
      end
      object spFinalizarPedido: TSpeedButton
        Left = 230
        Top = 18
        Width = 200
        Height = 30
        Caption = 'Finalizar Pedido'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Margin = 1
        ParentFont = False
      end
      object spdreimprimir: TSpeedButton
        Left = 407
        Top = 18
        Width = 200
        Height = 30
        Caption = 'Reimprime Pedido'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Margin = 1
        ParentFont = False
        OnClick = spdreimprimirClick
      end
    end
    object GBFuncoes: TGroupBox
      Tag = 1
      Left = 1221
      Top = 4
      Width = 122
      Height = 54
      Margins.Right = 15
      Align = alRight
      Caption = ' Fun'#231#245'es '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object SBDescontoGeral: TSpeedButton
        Left = 342
        Top = 24
        Width = 250
        Height = 30
        Caption = '[Ctrl+G] Desc. Geral'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = []
        Margin = 1
        ParentFont = False
      end
      object SBFinalizaVenda: TSpeedButton
        Left = 310
        Top = 69
        Width = 250
        Height = 30
        Caption = '[F6] Finaliza Venda'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SBAFaturar: TSpeedButton
        Left = 310
        Top = 109
        Width = 250
        Height = 30
        Caption = '[F9] A Faturar'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -21
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
      end
      object SBSair: TSpeedButton
        Left = 41
        Top = 16
        Width = 60
        Height = 30
        Caption = 'Sair'
        Flat = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindow
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Margin = 1
        ParentFont = False
        OnClick = SBSairClick
      end
    end
  end
  object listaOrcs: TDBGrid
    Left = 0
    Top = 0
    Width = 1347
    Height = 544
    Align = alClient
    BorderStyle = bsNone
    Color = 14286847
    DataSource = dsOrcs
    DrawingStyle = gdsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -21
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'orcdataentrega'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orchoraentrega'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orcchave'
        Width = 119
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orchoraabert'
        Title.Caption = 'Hora Pedido'
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'pdghoraentrega'
        Width = 124
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdidentificacao'
        Width = 331
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdidentificacaoent'
        Visible = True
      end>
  end
  object dsOrcs: TUniDataSource
    DataSet = orcs
    Left = 360
    Top = 123
  end
  object orcs: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  orc.orcchave,'
      '  orc.orcdataabert,'
      '  orc.orchoraabert,'
      '  orc.orcdataencerr,'
      '  orc.orchoraencerr,'
      '  orc.etdcodigo,'
      '  etd.etdidentificacao,'
      '  clb.clbidentificacao,'
      
        '  IF(orc.puocodigo = 0, orc.orcgeralav, orc.orcgeralap) AS orcge' +
        'ral,'
      
        '  IF(orc.puocodigo = 0, orc.orcdescontoav, orc.orcdescontoap) AS' +
        ' orcdesconto,'
      
        '  IF(orc.puocodigo = 0, orc.orctotalav, orc.orctotalap) AS orcto' +
        'tal,'
      '  orc.orcobs,'
      '  orc.orcdescrpagto,'
      '  orc.orcnome,'
      '  orc.orcendereco,'
      '  orc.orctelefone,'
      '  orc.puocodigo,'
      '  edr.edrbairro,'
      '  orc.orcdataentrega,'
      '  orc.orchoraentrega,'
      ''
      '  '
      '  CONCAT(edr.edrrua, '#39', '#39', edrnumero) AS edrendereco,'
      ''
      '  DATE_FORMAT((SELECT'
      '      imm.immhoraentrega'
      '    FROM imm'
      '      INNER JOIN ito'
      '        ON imm.itochave = ito.itochave'
      ''
      '    WHERE ito.orcchave = orc.orcchave'
      '    LIMIT 1), '#39'%H:%i'#39') AS pdghoraentrega,'
      ''
      ''
      ''
      '  CONVERT((SELECT'
      '      imm.immnumepedido'
      '    FROM imm'
      '      INNER JOIN ito'
      '        ON imm.itochave = ito.itochave'
      ''
      '    WHERE ito.orcchave = orc.orcchave'
      '    LIMIT 1), char) AS pdgnumero,'
      ''
      '  (SELECT'
      '      etd.etdidentificacao'
      '    FROM imm'
      '      INNER JOIN ito'
      '        ON imm.itochave = ito.itochave'
      '      LEFT JOIN etd'
      '        ON imm.etdcodigoent = etd.etdcodigo'
      '        AND imm.etdcodigoent <> 0'
      ''
      '    WHERE ito.orcchave = orc.orcchave'
      '    LIMIT 1) AS etdidentificacaoent'
      ''
      ''
      ''
      'FROM orc,'
      '     etd,'
      '     clb,'
      '     edr,'
      '     ito,'
      '     imm,'
      '     czn'
      'WHERE etd.etdcodigo = orc.etdcodigo'
      'AND orc.clbcodigo = clb.clbcodigo'
      'AND orc.etdcodigo = edr.etdcodigo'
      'AND orc.edrcodigo = edr.edrcodigo'
      'AND orc.stocodigo in (5) /*para entrega*/'
      'AND orc.orcchave = ito.orcchave'
      'AND ito.itochave = imm.itochave'
      '-- AND imm.etdcodigoent = 0'
      'and orc.etdcodigo <>0'
      ''
      'AND imm.cznchave = czn.cznchave'
      'AND czn.cznfechamento IS null'
      'order by orc.orcdataentrega,orc.orchoraentrega')
    Left = 312
    Top = 123
    object orcsorcchave: TIntegerField
      DisplayLabel = 'Atendimento'
      FieldName = 'orcchave'
    end
    object orcsorcdataabert: TDateField
      FieldName = 'orcdataabert'
    end
    object orcsorchoraabert: TTimeField
      FieldName = 'orchoraabert'
    end
    object orcsorcdataencerr: TDateField
      DisplayLabel = 'Data'
      FieldName = 'orcdataencerr'
    end
    object orcsorchoraencerr: TTimeField
      DisplayLabel = 'Hora Sa'#237'da'
      FieldName = 'orchoraencerr'
    end
    object orcsetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'etdcodigo'
    end
    object orcsetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object orcsorcgeral: TFloatField
      DisplayLabel = 'Total Bruto R$'
      FieldName = 'orcgeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcsorcdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'orcdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcsorctotal: TFloatField
      DisplayLabel = 'Total Geral R$'
      FieldName = 'orctotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcsclbidentificacao: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object orcsorcobs: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'orcobs'
      Size = 250
    end
    object orcsorcnome: TStringField
      FieldName = 'orcnome'
      Size = 50
    end
    object orcsorcendereco: TStringField
      FieldName = 'orcendereco'
      Size = 50
    end
    object orcsorctelefone: TStringField
      FieldName = 'orctelefone'
    end
    object orcspuocodigo: TIntegerField
      FieldName = 'puocodigo'
    end
    object orcsedrbairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'edrbairro'
      Size = 60
    end
    object orcsedrendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'edrendereco'
      Size = 62
    end
    object orcspdghoraentrega: TStringField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'pdghoraentrega'
      ReadOnly = True
      Size = 10
    end
    object orcsorcdescrpagto: TStringField
      FieldName = 'orcdescrpagto'
      Size = 250
    end
    object orcspdgnumero: TStringField
      DisplayLabel = 'Pedido'
      FieldName = 'pdgnumero'
      ReadOnly = True
      Size = 11
    end
    object orcsetdidentificacaoent: TStringField
      DisplayLabel = 'Entregador'
      FieldName = 'etdidentificacaoent'
      ReadOnly = True
      Size = 60
    end
    object orcsorcdataentrega: TDateField
      DisplayLabel = 'Entrega dia'
      FieldName = 'orcdataentrega'
    end
    object orcsorchoraentrega: TTimeField
      DisplayLabel = 'Hor'#225'rio'
      FieldName = 'orchoraentrega'
    end
  end
  object consulta: TUniQuery
    Left = 400
    Top = 120
  end
end
