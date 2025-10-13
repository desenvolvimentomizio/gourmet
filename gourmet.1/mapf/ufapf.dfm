inherited fapf: Tfapf
  ActiveControl = dmccodigo
  Caption = 'Apura'#231#227'o Financeira'
  ClientHeight = 703
  ClientWidth = 511
  ExplicitWidth = 527
  ExplicitHeight = 742
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 674
    Width = 511
    ExplicitTop = 674
    ExplicitWidth = 511
    inherited bconfirma: TBitBtn
      Left = 357
      ExplicitLeft = 357
    end
    inherited bcancela: TBitBtn
      Left = 432
      ExplicitLeft = 432
    end
    inherited bfechar: TBitBtn
      Left = 292
      ExplicitLeft = 292
    end
  end
  inherited paginas: TPageControl
    Width = 511
    Height = 674
    ExplicitWidth = 511
    ExplicitHeight = 674
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 503
      ExplicitHeight = 646
      object Label1: TLabel
        Left = 8
        Top = 7
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = apfchave
      end
      object Label2: TLabel
        Left = 8
        Top = 109
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = apfdatainicial
      end
      object Label3: TLabel
        Left = 256
        Top = 109
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = apfdatafinal
      end
      object Label4: TLabel
        Left = 8
        Top = 34
        Width = 122
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Modelo de Demonstrativo'
        FocusControl = dmccodigo
      end
      object apfchave: TDBEdit
        Left = 136
        Top = 4
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'apfchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object apfdatainicial: TDBEdit
        Left = 136
        Top = 107
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'apfdatainicial'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object apfdatafinal: TDBEdit
        Left = 312
        Top = 106
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'apfdatafinal'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object btApurar: TButton
        Left = 425
        Top = 106
        Width = 75
        Height = 22
        CustomHint = BalloonHint
        Caption = 'Apurar'
        TabOrder = 5
        OnClick = btApurarClick
      end
      object dmccodigo: TDBEdit
        Left = 136
        Top = 31
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dmccodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object apfmodo: TDBRadioGroup
        Left = 136
        Top = 59
        Width = 185
        Height = 41
        CustomHint = BalloonHint
        Caption = ' Modo de Gera'#231#227'o '
        Columns = 2
        DataField = 'apfmodo'
        DataSource = DSRegistro
        Items.Strings = (
          'Apura'#231#227'o'
          'Previs'#227'o')
        TabOrder = 2
        Values.Strings = (
          '1'
          '2')
      end
      object pldpf: TPanel
        Left = 0
        Top = 152
        Width = 503
        Height = 494
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 6
        object sbdre: TScrollBox
          Left = 1
          Top = 1
          Width = 501
          Height = 492
          CustomHint = BalloonHint
          Align = alClient
          TabOrder = 0
          ExplicitLeft = 0
          ExplicitTop = 4
          ExplicitHeight = 292
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 268
    Top = 440
  end
  inherited cfg: TUniQuery
    Left = 132
    Top = 340
  end
  inherited consulta: TUniQuery
    Left = 408
    Top = 276
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  apfchave,'
      '  apfdatainicial,'
      '  apfdatafinal,'
      '  apfagrupamento,'
      '  flacodigo,'
      '  dmccodigo,'
      '  apfmodo'
      'FROM apf where apfchave=:apfchave')
    Left = 60
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'apfchave'
        Value = nil
      end>
    object registroapfchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'apfchave'
    end
    object registroapfdatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'apfdatainicial'
      Required = True
    end
    object registroapfdatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'apfdatafinal'
      Required = True
    end
    object registroapfagrupamento: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'apfagrupamento'
    end
    object registroflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
    end
    object registrodmccodigo: TIntegerField
      DisplayLabel = 'MOdelo de Demonstrativo'
      FieldName = 'dmccodigo'
      Required = True
    end
    object registrodmcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'dmcidentificacao'
      LookupDataSet = dmc
      LookupKeyFields = 'dmccodigo'
      LookupResultField = 'dmcidentificacao'
      KeyFields = 'dmccodigo'
      Size = 50
      Lookup = True
    end
    object registroapfmodo: TIntegerField
      DisplayLabel = 'Modo '
      FieldName = 'apfmodo'
    end
  end
  inherited pfr: TUniQuery
    Left = 576
    Top = 52
  end
  inherited psf: TUniQuery
    Left = 576
    Top = 100
  end
  inherited dcl: TUniQuery
    Left = 132
    Top = 400
  end
  inherited cau: TUniQuery
    Left = 112
    Top = 496
  end
  inherited err: TUniQuery
    Left = 72
    Top = 444
  end
  inherited acoesfrm: TActionList
    Left = 204
    Top = 244
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 188
    Top = 444
  end
  object dmc: TUniQuery
    SQL.Strings = (
      'select dmccodigo, dmcidentificacao from dmc')
    Left = 296
    Top = 456
    object dmcdmccodigo: TIntegerField
      FieldName = 'dmccodigo'
    end
    object dmcdmcidentificacao: TStringField
      FieldName = 'dmcidentificacao'
      Size = 50
    end
  end
  object dre: TUniQuery
    SQL.Strings = (
      'SELECT'
      '   gre.grecodigo'
      '  ,gre.greidentificacao'
      '  ,dre.drechave'
      '  ,pcg.pcgcodigo'
      '  ,pcg.pcgidentificacao'
      'FROM gre'
      '  INNER join dre '
      '  ON gre.grecodigo = dre.grecodigo'
      '  LEFT JOIN pcg  '
      '  ON dre.pcgcodigo = pcg.pcgcodigo and gre.dmccodigo=:dmccodigo'
      '  WHERE gre.dmccodigo=:dmccodigo'
      'order by gre.greposicao desc'
      ''
      ''
      '')
    Left = 160
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dmccodigo'
        Value = nil
      end>
    object dregrecodigo: TIntegerField
      FieldName = 'grecodigo'
    end
    object dregreidentificacao: TStringField
      FieldName = 'greidentificacao'
      Size = 50
    end
    object dredrechave: TIntegerField
      FieldName = 'drechave'
    end
    object drepcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object drepcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 50
    end
  end
  object ofp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ofpchave,'
      '  drechave,'
      '  ofpsql'
      'FROM ofp where drechave=:drechave')
    Left = 141
    Top = 567
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'drechave'
        Value = nil
      end>
    object ofpofpchave: TIntegerField
      FieldName = 'ofpchave'
    end
    object ofpdrechave: TIntegerField
      FieldName = 'drechave'
    end
    object ofpofpsql: TStringField
      FieldName = 'ofpsql'
      Size = 10000
    end
  end
  object Ddre: TDataSource
    DataSet = dre
    Left = 212
    Top = 320
  end
end
