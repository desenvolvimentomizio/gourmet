inherited fpdc: Tfpdc
  Caption = 'Pedido de Compra'
  ClientHeight = 564
  ClientWidth = 819
  ExplicitWidth = 835
  ExplicitHeight = 603
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 535
    Width = 819
    ExplicitTop = 535
    ExplicitWidth = 801
    inherited bconfirma: TBitBtn
      Left = 665
      ExplicitLeft = 647
    end
    inherited bcancela: TBitBtn
      Left = 740
      ExplicitLeft = 722
    end
    inherited bfechar: TBitBtn
      Left = 600
      ExplicitLeft = 582
    end
  end
  inherited paginas: TPageControl
    Width = 819
    Height = 535
    ExplicitWidth = 801
    ExplicitHeight = 535
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 793
      ExplicitHeight = 507
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = pdcchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 73
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do Pedido'
        FocusControl = pdcemissao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fornecedor'
        FocusControl = etdcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 130
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero Pedido Fornecedor'
      end
      object Label5: TLabel
        Left = 8
        Top = 141
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Observa'#231#245'es'
      end
      object Label6: TLabel
        Left = 8
        Top = 87
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Transporte'
        FocusControl = ttrcodigo
      end
      object pdcchave: TDBEdit
        Left = 144
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pdcchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pdcemissao: TDBEdit
        Left = 144
        Top = 30
        Width = 113
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pdcemissao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdcodigo: TDBEdit
        Left = 144
        Top = 57
        Width = 71
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object pdcnumerofornecedor: TDBEdit
        Left = 144
        Top = 111
        Width = 225
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pdcnumerofornecedor'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object pdcobs: TDBEdit
        Left = 144
        Top = 138
        Width = 574
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pdcobs'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ttrcodigo: TDBEdit
        Left = 144
        Top = 84
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttrcodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 492
    Top = 56
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      ''
      'SELECT'
      '  pdcchave,'
      '  pdcemissao,'
      '  etdcodigo,'
      '  pdcregistro,'
      '  pdcrecebimento,'
      '  clbcodigo,'
      '  pdcobs,'
      '  tspcodigo,'
      '  ttrcodigo,'
      '  pdcnumerofornecedor'
      'FROM pdc where pdcchave=:pdcchave')
    Left = 324
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pdcchave'
        Value = nil
      end>
    object registropdcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'pdcchave'
    end
    object registropdcemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'pdcemissao'
      Required = True
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registropdcregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'pdcregistro'
    end
    object registropdcrecebimento: TDateField
      DisplayLabel = 'Recebimento'
      FieldName = 'pdcrecebimento'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Clb'
      FieldName = 'clbcodigo'
    end
    object registropdcobs: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'pdcobs'
      Size = 250
    end
    object registrotspcodigo: TIntegerField
      FieldName = 'tspcodigo'
    end
    object registrottrcodigo: TIntegerField
      FieldName = 'ttrcodigo'
    end
    object registrottridentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ttridentificacao'
      LookupDataSet = ttr
      LookupKeyFields = 'ttrcodigo'
      LookupResultField = 'ttridentificacao'
      KeyFields = 'ttrcodigo'
      Size = 50
      Lookup = True
    end
    object registropdcnumerofornecedor: TStringField
      DisplayLabel = 'Nr. Pedido Forn.'
      FieldName = 'pdcnumerofornecedor'
      Size = 30
    end
  end
  inherited dcl: TUniQuery
    Left = 596
    Top = 88
  end
  inherited err: TUniQuery
    Left = 504
    Top = 228
  end
  inherited BalloonHint: TBalloonHint
    Left = 660
    Top = 88
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 556
    Top = 212
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 296
    Top = 224
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object ttr: TUniQuery
    SQL.Strings = (
      'select ttrcodigo, ttridentificacao from ttr')
    Left = 624
    Top = 312
    object ttrttrcodigo: TIntegerField
      FieldName = 'ttrcodigo'
    end
    object ttrttridentificacao: TStringField
      FieldName = 'ttridentificacao'
      Size = 50
    end
  end
end
