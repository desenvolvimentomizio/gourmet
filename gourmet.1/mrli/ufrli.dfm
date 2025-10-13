inherited frli: Tfrli
  ActiveControl = etdcodigo
  Caption = 'Licen'#231'a ou Afastamento'
  ClientHeight = 203
  ExplicitWidth = 812
  ExplicitHeight = 242
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 174
    ExplicitTop = 174
  end
  inherited paginas: TPageControl
    Height = 174
    ExplicitHeight = 174
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 146
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = rlichave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 153
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Licen'#231'a ou Afastamento'
        FocusControl = tlicodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = rlidatainicial
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = rlidatafinal
      end
      object rlichave: TDBEdit
        Left = 176
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rlichave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 176
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tlicodigo: TDBEdit
        Left = 176
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tlicodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object rlidatainicial: TDBEdit
        Left = 176
        Top = 84
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rlidatainicial'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object rlidatafinal: TDBEdit
        Left = 176
        Top = 111
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rlidatafinal'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rlichave,'
      '  etdcodigo,'
      '  tlicodigo,'
      '  rlidatainicial,'
      '  rlidatafinal,'
      '  clbcodigo,'
      '  rliregistro'
      'FROM rli where rlichave=:rlichave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rlichave'
        Value = nil
      end>
    object registrorlichave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'rlichave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Coloborador'
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
    object registrotlicodigo: TIntegerField
      DisplayLabel = 'Tipo de Licen'#231'a ou Afastamento'
      FieldName = 'tlicodigo'
      Required = True
    end
    object registrotliidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tliidentificacao'
      LookupDataSet = tli
      LookupKeyFields = 'tlicodigo'
      LookupResultField = 'tliidentificacao'
      KeyFields = 'tlicodigo'
      Size = 50
      Lookup = True
    end
    object registrorlidatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'rlidatainicial'
      Required = True
    end
    object registrorlidatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'rlidatafinal'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrorliregistro: TDateTimeField
      FieldName = 'rliregistro'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 628
    Top = 152
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object tli: TUniQuery
    SQL.Strings = (
      'select tlicodigo, tliidentificacao from tli')
    Left = 692
    Top = 256
    object tlitlicodigo: TIntegerField
      FieldName = 'tlicodigo'
    end
    object tlitliidentificacao: TStringField
      FieldName = 'tliidentificacao'
      Size = 50
    end
  end
end
