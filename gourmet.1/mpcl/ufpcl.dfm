inherited fpcl: Tfpcl
  ActiveControl = cctchave
  Caption = 'Participa'#231#227'o de Colaborador'
  ClientHeight = 223
  ClientWidth = 886
  ExplicitWidth = 902
  ExplicitHeight = 262
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 194
    Width = 886
    ExplicitTop = 196
    ExplicitWidth = 886
    inherited bconfirma: TBitBtn
      Left = 732
      ExplicitLeft = 732
    end
    inherited bcancela: TBitBtn
      Left = 807
      ExplicitLeft = 807
    end
    inherited bfechar: TBitBtn
      Left = 667
      ExplicitLeft = 667
    end
  end
  inherited paginas: TPageControl
    Width = 886
    Height = 194
    ExplicitWidth = 886
    ExplicitHeight = 196
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 878
      ExplicitHeight = 168
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = pclchave
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 110
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Colaborador'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 110
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave do Contrato'
        FocusControl = cctchave
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = pcldatainicial
      end
      object Label5: TLabel
        Left = 8
        Top = 141
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = pcldatafinal
      end
      object Label6: TLabel
        Left = 8
        Top = 87
        Width = 127
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de Participa'#231#227'o'
        FocusControl = pclpercentual
      end
      object pclchave: TDBEdit
        Left = 141
        Top = 3
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pclchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 141
        Top = 57
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cctchave: TDBEdit
        Left = 141
        Top = 30
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cctchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object pcldatainicial: TDBEdit
        Left = 141
        Top = 111
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcldatainicial'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object pcldatafinal: TDBEdit
        Left = 141
        Top = 138
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcldatafinal'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object pclpercentual: TDBEdit
        Left = 141
        Top = 84
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pclpercentual'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pclchave,'
      '  cctchave,'
      '  etdcodigo,'
      '  pcldatainicial,'
      '  pcldatafinal,'
      '  pclpercentual'
      'FROM pcl where pclchave=:pclchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pclchave'
        Value = nil
      end>
    object registropclchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'pclchave'
    end
    object registrocctchave: TIntegerField
      DisplayLabel = 'Ch.'
      FieldName = 'cctchave'
      Required = True
    end
    object registrocctidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cctidentificacao'
      LookupDataSet = cct
      LookupKeyFields = 'cctchave'
      LookupResultField = 'cctidentificacao'
      KeyFields = 'cctchave'
      Lookup = True
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
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
    object registropcldatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'pcldatainicial'
      Required = True
    end
    object registropcldatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'pcldatafinal'
    end
    object registropclpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'pclpercentual'
      Required = True
    end
  end
  inherited dcp: TUniQuery
    Left = 400
    Top = 252
  end
  inherited dtb: TUniQuery
    Left = 356
    Top = 252
  end
  inherited coa: TUniQuery
    Left = 320
    Top = 252
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object cct: TUniQuery
    SQL.Strings = (
      
        'select cctchave, concat(etdidentificacao, '#39' '#39', IF (cctidentifica' +
        'cao IS null,'#39#39',cctidentificacao))  cctidentificacao from cct, et' +
        'd where cct.etdcodigo=etd.etdcodigo')
    Constraints = <>
    Left = 544
    Top = 32
    object cctcctchave: TIntegerField
      FieldName = 'cctchave'
    end
    object cctcctidentificacao: TStringField
      FieldName = 'cctidentificacao'
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      
        'select etd.etdcodigo, etdidentificacao from etd, etv where etd.e' +
        'tdcodigo=etv.etdcodigo and etv.tvicodigo=3 and tsecodigo=0')
    Constraints = <>
    Left = 432
    Top = 320
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
