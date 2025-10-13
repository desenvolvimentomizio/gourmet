inherited fipr: Tfipr
  ActiveControl = iprimpostovenda
  Caption = #205'ndices para Precifica'#231#227'o'
  ClientHeight = 311
  ClientWidth = 484
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 282
    Width = 484
    inherited bconfirma: TBitBtn
      Left = 330
    end
    inherited bcancela: TBitBtn
      Left = 405
    end
    inherited bfechar: TBitBtn
      Left = 265
    end
  end
  inherited paginas: TPageControl
    Width = 484
    Height = 282
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 15
        Top = 23
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = iprcodigo
      end
      object Label2: TLabel
        Left = 15
        Top = 50
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial'
        FocusControl = flacodigo
      end
      object Label3: TLabel
        Left = 15
        Top = 77
        Width = 108
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Impostos Sobre Venda'
        FocusControl = iprimpostovenda
      end
      object Label4: TLabel
        Left = 15
        Top = 104
        Width = 109
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Comiss'#227'o Sobre Venda'
        FocusControl = iprcomissaovenda
      end
      object Label5: TLabel
        Left = 15
        Top = 131
        Width = 88
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Custo Operacional'
        FocusControl = iprcustooperacional
      end
      object Label6: TLabel
        Left = 15
        Top = 158
        Width = 95
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Frete Sobre Vendas'
        FocusControl = iprfretevendas
      end
      object Label7: TLabel
        Left = 15
        Top = 185
        Width = 104
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Taxa de Juros Mensal'
        FocusControl = iprtaxajuros
      end
      object Label8: TLabel
        Left = 15
        Top = 212
        Width = 107
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Taxa de Inadimpl'#234'ncia'
        FocusControl = iprinadimplenciaclientes
      end
      object iprcodigo: TDBEdit
        Left = 140
        Top = 20
        Width = 40
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iprcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flacodigo: TDBEdit
        Left = 140
        Top = 47
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flacodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object iprimpostovenda: TDBEdit
        Left = 140
        Top = 74
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iprimpostovenda'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = ValidaPercentual
      end
      object iprcomissaovenda: TDBEdit
        Left = 140
        Top = 101
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iprcomissaovenda'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = ValidaPercentual
      end
      object iprcustooperacional: TDBEdit
        Left = 140
        Top = 128
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iprcustooperacional'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = ValidaPercentual
      end
      object iprfretevendas: TDBEdit
        Left = 140
        Top = 155
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iprfretevendas'
        DataSource = DSRegistro
        TabOrder = 5
        OnExit = ValidaPercentual
      end
      object iprtaxajuros: TDBEdit
        Left = 140
        Top = 182
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iprtaxajuros'
        DataSource = DSRegistro
        TabOrder = 6
        OnExit = ValidaPercentual
      end
      object iprinadimplenciaclientes: TDBEdit
        Left = 140
        Top = 209
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'iprinadimplenciaclientes'
        DataSource = DSRegistro
        TabOrder = 7
        OnExit = ValidaPercentual
      end
      object PnlLucroLiq: TPanel
        Left = 216
        Top = 182
        Width = 177
        Height = 48
        CustomHint = BalloonHint
        Caption = 'Margem de Lucro L'#237'quida aceit'#225'vel:'
        TabOrder = 8
        VerticalAlignment = taAlignTop
        object PnlMargemLucroLiq: TPanel
          Left = 88
          Top = 16
          Width = 81
          Height = 27
          CustomHint = BalloonHint
          Caption = '99,99 %'
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
  end
  inherited DSRegistro: TUniDataSource
    Left = 388
    Top = 104
  end
  inherited cfg: TUniQuery
    Left = 508
    Top = 92
  end
  inherited consulta: TUniQuery
    Left = 448
    Top = 60
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT ipr.iprcodigo'
      '     , ipr.flacodigo'
      '     , ipr.iprimpostovenda'
      '     , ipr.iprcomissaovenda'
      '     , ipr.iprcustooperacional'
      '     , ipr.iprfretevendas'
      '     , ipr.iprtaxajuros'
      '     , ipr.iprinadimplenciaclientes'
      '  FROM ipr'
      ' WHERE ipr.iprcodigo = :iprcodigo'
      '   AND ipr.flacodigo = :flacodigo')
    Left = 388
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'iprcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object registroiprcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'iprcodigo'
    end
    object registroflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
    end
    object registroflaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flaidentificacao'
      LookupDataSet = fla
      LookupKeyFields = 'flacodigo'
      LookupResultField = 'flaidentificacao'
      KeyFields = 'flacodigo'
      Size = 30
      Lookup = True
    end
    object registroiprimpostovenda: TFloatField
      DisplayLabel = 'Impostos Sobre Venda'
      FieldName = 'iprimpostovenda'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroiprcomissaovenda: TFloatField
      DisplayLabel = 'Comiss'#227'o Sobre Venda'
      FieldName = 'iprcomissaovenda'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroiprcustooperacional: TFloatField
      DisplayLabel = 'Custo Operacional'
      FieldName = 'iprcustooperacional'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroiprfretevendas: TFloatField
      DisplayLabel = 'Frete Sobre Vendas'
      FieldName = 'iprfretevendas'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroiprtaxajuros: TFloatField
      DisplayLabel = 'Taxa de Juros Mensal'
      FieldName = 'iprtaxajuros'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroiprinadimplenciaclientes: TFloatField
      DisplayLabel = 'Taxa de Inadimpl'#234'ncia'
      FieldName = 'iprinadimplenciaclientes'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
  end
  inherited dcp: TUniQuery
    Left = 224
    Top = 332
  end
  inherited dtb: TUniQuery
    Left = 180
    Top = 332
  end
  inherited coa: TUniQuery
    Left = 144
    Top = 332
  end
  inherited pfr: TUniQuery
    Left = 568
    Top = 124
  end
  inherited psf: TUniQuery
    Left = 624
    Top = 108
  end
  inherited dcl: TUniQuery
    Left = 620
    Top = 168
  end
  inherited cau: TUniQuery
    Left = 624
    Top = 320
  end
  inherited err: TUniQuery
    Left = 624
    Top = 252
  end
  inherited acoesfrm: TActionList
    Left = 500
    Top = 44
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 700
    Top = 268
  end
  object fla: TUniQuery
    SQL.Strings = (
      'SELECT fla.flacodigo'
      '     , fla.flaidentificacao'
      '  FROM fla')
    Left = 452
    Top = 136
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 30
    end
  end
end
