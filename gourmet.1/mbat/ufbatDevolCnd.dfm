inherited fbatDevolCnd: TfbatDevolCnd
  Caption = 'Devolu'#231#227'o de Condicional'
  ClientHeight = 729
  ClientWidth = 1350
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 700
    Width = 1350
    inherited bconfirma: TBitBtn
      Left = 1196
    end
    inherited bcancela: TBitBtn
      Left = 1271
    end
    inherited bfechar: TBitBtn
      Left = 1131
    end
  end
  inherited paginas: TPageControl
    Width = 1350
    Height = 700
    inherited Principal: TTabSheet
      object DBGListaItens: TDBGrid
        Left = 0
        Top = 164
        Width = 1342
        Height = 508
        CustomHint = BalloonHint
        Align = alClient
        DataSource = Dlito
        DrawingStyle = gdsGradient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = [fsBold]
        OnDrawColumnCell = DBGListaItensDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'itoitem'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'procodigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pronome'
            Width = 500
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itoquanticondi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itoquantidevolcondi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itoquantidade'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'unisimbolo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itovalor'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itototal'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itodesconto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'itosaldo'
            Visible = True
          end>
      end
      object plbotoesitens: TPanel
        Left = 0
        Top = 129
        Width = 1342
        Height = 35
        CustomHint = BalloonHint
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 1
        object Panel1: TPanel
          Left = 1
          Top = 1
          Width = 140
          Height = 33
          CustomHint = BalloonHint
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Digite o C'#243'digo: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
        object cdBarra: TEdit
          AlignWithMargins = True
          Left = 144
          Top = 6
          Width = 188
          Height = 23
          Margins.Top = 5
          Margins.Bottom = 5
          CustomHint = BalloonHint
          Align = alLeft
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Text = 'cdBarra'
          OnKeyPress = cdBarraKeyPress
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 1342
        Height = 129
        CustomHint = BalloonHint
        Align = alTop
        TabOrder = 2
        object Label1: TLabel
          Left = 16
          Top = 16
          Width = 37
          Height = 13
          CustomHint = BalloonHint
          Caption = 'N'#250'mero'
          FocusControl = orcchave
        end
        object Label3: TLabel
          Left = 16
          Top = 43
          Width = 78
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Nome do Cliente'
          FocusControl = etdidentificacao
        end
        object Label4: TLabel
          Left = 16
          Top = 70
          Width = 43
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Abertura'
          FocusControl = orcdataabert
        end
        object Label6: TLabel
          Left = 16
          Top = 95
          Width = 59
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Usu'#225'rio'
          FocusControl = clbidentificacao
        end
        object orcchave: TDBEdit
          Left = 122
          Top = 13
          Width = 70
          Height = 21
          CustomHint = BalloonHint
          DataField = 'orcchave'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 0
        end
        object etdcodigo: TDBEdit
          Left = 122
          Top = 40
          Width = 70
          Height = 21
          CustomHint = BalloonHint
          DataField = 'etdcodigo'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 1
        end
        object orcdataabert: TDBEdit
          Left = 122
          Top = 67
          Width = 95
          Height = 21
          CustomHint = BalloonHint
          DataField = 'orcdataabert'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 2
        end
        object clbidentificacao: TDBEdit
          Left = 122
          Top = 92
          Width = 199
          Height = 21
          CustomHint = BalloonHint
          DataField = 'clbidentificacao'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 3
        end
        object etdidentificacao: TDBEdit
          Left = 198
          Top = 40
          Width = 524
          Height = 21
          CustomHint = BalloonHint
          DataField = 'etdidentificacao'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 4
        end
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  orc.orcchave,'
      '  orc.etdcodigo,'
      '  etd.etdidentificacao,'
      '  orc.orcdataabert,'
      
        '  IF(orc.puocodigo = 0, orc.orcgeralav, orc.orcgeralap) AS orcge' +
        'ral,'
      
        '  IF(orc.puocodigo = 0, orc.orcdescontoav, orc.orcdescontoap) AS' +
        ' orcdesconto,'
      
        '  IF(orc.puocodigo = 0, orc.orctotalav, orc.orctotalap) AS orcto' +
        'tal,'
      '  orc.stocodigo,'
      '  sto.stoidentificacao,'
      '  orc.clbcodigo,'
      '  orc.moccodigo,'
      '  orc.orcnome,'
      '  orc.orctelefone,'
      '  orc.orcendereco,'
      '  orc.orcdescrpagto,'
      '  orc.puocodigo,'
      '  puo.puoidentificacao,'
      '  orc.edrcodigo,'
      '  clb.clbidentificacao'
      'FROM orc,'
      '     (SELECT'
      '         orc.orcchave,'
      
        '         IF(orc.etdcodigo = 0, IF(orc.orcnome <> '#39#39', CONCAT(orc.' +
        'orcnome, IFNULL(CONCAT('#39' - '#39', orc.orcendereco), '#39#39'), IFNULL(CONC' +
        'AT('#39' - '#39', orc.orctelefone), '#39#39')), '#39'Consumidor'#39'), etd.etdidentifi' +
        'cacao) AS etdidentificacao'
      '       FROM orc,'
      '            etd'
      '       WHERE orc.etdcodigo = etd.etdcodigo) etd,'
      '     sto,'
      '     puo,'
      '     clb'
      'WHERE orc.orcchave = etd.orcchave'
      'AND sto.stocodigo = orc.stocodigo'
      'AND puo.puocodigo = orc.puocodigo'
      'AND clb.clbcodigo = orc.clbcodigo'
      'AND orc.orcchave = :orcchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object registroorcchave: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'orcchave'
      Required = True
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      DisplayWidth = 40
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object registroorcdataabert: TDateField
      DisplayLabel = 'Abertura'
      FieldName = 'orcdataabert'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Visible = False
    end
    object registroclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 15
      FieldName = 'clbidentificacao'
      Required = True
      Size = 15
    end
    object registroorcnome: TStringField
      FieldName = 'orcnome'
      Visible = False
      Size = 50
    end
    object registroorctelefone: TStringField
      FieldName = 'orctelefone'
      Visible = False
    end
    object registroorcendereco: TStringField
      FieldName = 'orcendereco'
      Visible = False
      Size = 50
    end
    object registroorcdescrpagto: TStringField
      FieldName = 'orcdescrpagto'
      Visible = False
      Size = 250
    end
    object registroorcgeral: TFloatField
      DisplayLabel = 'Geral R$'
      FieldName = 'orcgeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroorcdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'orcdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroorctotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'orctotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrostoidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'stoidentificacao'
      Size = 30
    end
    object registropuoidentificacao: TStringField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'puoidentificacao'
      Size = 30
    end
    object registroedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object registrostocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
  end
  inherited dcp: TUniQuery
    Left = 112
    Top = 244
  end
  inherited dtb: TUniQuery
    Left = 68
    Top = 236
  end
  inherited coa: TUniQuery
    Left = 32
    Top = 236
  end
  object lito: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ito.itochave,'
      '  ito.itoitem,'
      '  ito.itoquantidade,'
      '  ito.itoquanticondi,'
      '  ito.itoquantidevolcondi,'
      '  ito.procodigo,'
      '  pro.pronome,'
      
        '  IF(orc.puocodigo = 0, ito.itovalorav, ito.itovalorap) AS itova' +
        'lor,'
      
        '  IF(orc.puocodigo = 0, ito.itototalav, ito.itototalap) AS itoto' +
        'tal,'
      
        '  IF(orc.puocodigo = 0, ito.itodescontoav, ito.itodescontoap) AS' +
        ' itodesconto,'
      
        '  IF(orc.puocodigo = 0, ito.itosaldoav, ito.itosaldoap) AS itosa' +
        'ldo,'
      '  pro.prosaldodisp,'
      '  uni.unisimbolo,'
      '  ito.unicodigo,'
      '  ito.orcchave,'
      '  ito.tdecodigo,'
      '  pro.proreferencia,'
      '  ito.itoproservico,'
      '  ito.itoinfadprod,'
      '  pro.tpocodigo,'
      '  ito.itoprocomple'
      'FROM ito,'
      '     pro,'
      '     uni,'
      '     orc'
      'WHERE ito.orcchave = orc.orcchave'
      'AND ito.procodigo = pro.procodigo'
      'AND ito.unicodigo = uni.unicodigo'
      'AND ito.stocodigo IN (1, 2)'
      'AND ito.orcchave = :orcchave'
      'ORDER BY ito.itoitem')
    ReadOnly = True
    AutoCalcFields = False
    Left = 332
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object litoitoitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itoitem'
      Required = True
    end
    object litoprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object litopronome: TStringField
      DisplayLabel = 'Produto / Servi'#231'o'
      FieldName = 'pronome'
      ReadOnly = True
      Required = True
      Size = 150
    end
    object litoitoquanticondi: TFloatField
      DisplayLabel = 'Qtd. Total'
      FieldName = 'itoquanticondi'
    end
    object litoitoquantidevolcondi: TFloatField
      DisplayLabel = 'Devolvido'
      FieldName = 'itoquantidevolcondi'
    end
    object litoitoquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itoquantidade'
    end
    object litoitovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itovalor'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoitototal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itototal'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoitodesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itodesconto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoitosaldo: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'itosaldo'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object litoprosaldodisp: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'prosaldodisp'
      ReadOnly = True
      Required = True
    end
    object litoitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'itochave'
    end
    object litounisimbolo: TStringField
      DisplayLabel = 'Uni.'
      DisplayWidth = 6
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object litounicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object litoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object litotdecodigo: TIntegerField
      FieldName = 'tdecodigo'
    end
    object litoproreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'proreferencia'
      Size = 45
    end
    object litoitoproservico: TStringField
      FieldName = 'itoproservico'
      Size = 1000
    end
    object litoitoinfadprod: TStringField
      FieldName = 'itoinfadprod'
      Size = 500
    end
    object litotpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object litoitoprocomple: TStringField
      FieldName = 'itoprocomple'
      Size = 250
    end
  end
  object Dlito: TUniDataSource
    DataSet = lito
    Left = 296
    Top = 336
  end
  object ito: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ito.itochave,'
      '  ito.orcchave,'
      '  ito.procodigo,'
      '  ito.itoquanticondi,'
      '  ito.itoquantidevolcondi,'
      '  ito.itoquantidade,'
      '  ito.stocodigo'
      'FROM ito'
      'WHERE ito.stocodigo IN (1, 2)'
      'AND ito.orcchave = :orcchave')
    Left = 300
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object itoitochave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itochave'
    end
    object itoorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object itoprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object itoitoquantidade: TFloatField
      FieldName = 'itoquantidade'
    end
    object itoitoquanticondi: TFloatField
      FieldName = 'itoquanticondi'
    end
    object itoitoquantidevolcondi: TFloatField
      FieldName = 'itoquantidevolcondi'
    end
    object itostocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
  end
  object orc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  orc.orcchave,'
      '  orc.orcgeralav,'
      '  orc.orcgeralap,'
      '  orc.orcdescontoav,'
      '  orc.orcdescontoap,'
      '  orc.orctotalav,'
      '  orc.orctotalap'
      'FROM orc'
      'WHERE orc.orcchave = :orcchave')
    Left = 392
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object orcorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object orcorcgeralav: TFloatField
      FieldName = 'orcgeralav'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorcgeralap: TFloatField
      FieldName = 'orcgeralap'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorcdescontoav: TFloatField
      FieldName = 'orcdescontoav'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorcdescontoap: TFloatField
      FieldName = 'orcdescontoap'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorctotalav: TFloatField
      FieldName = 'orctotalav'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorctotalap: TFloatField
      FieldName = 'orctotalap'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
end
