inherited frcb: Tfrcb
  ActiveControl = rcbemissao
  Caption = 'Emiss'#227'o de Recibo'
  ClientHeight = 462
  ExplicitHeight = 501
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 433
    ExplicitTop = 433
  end
  inherited paginas: TPageControl
    Height = 433
    ExplicitHeight = 433
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 405
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 50
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Recibo'
        FocusControl = rcbchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Emiss'#227'o'
        FocusControl = rcbemissao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = rcbvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 66
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Esta Pagando'
        FocusControl = etdpagador
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Esta Recebendo'
        FocusControl = etdrecebedor
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = etdrecebedor
      end
      object rcbchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcbchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object rcbemissao: TDBEdit
        Left = 136
        Top = 30
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcbemissao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object rcbvalor: TDBEdit
        Left = 136
        Top = 57
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rcbvalor'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object etdpagador: TDBEdit
        Left = 136
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdpagador'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object etdrecebedor: TDBEdit
        Left = 136
        Top = 111
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdrecebedor'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object rcbhistorico: TDBMemo
        Left = 136
        Top = 138
        Width = 513
        Height = 47
        CustomHint = BalloonHint
        DataField = 'rcbhistorico'
        DataSource = DSRegistro
        MaxLength = 250
        TabOrder = 5
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rcbchave,'
      '  rcbemissao,'
      '  rcbvalor,'
      '  etdrecebedor,'
      '  etdpagador,'
      '  rcbhistorico,'
      '  rcbsituacao,'
      '  clbcodigo'
      'FROM rcb where rcbchave=:rcbchave')
    Left = 348
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rcbchave'
        Value = nil
      end>
    object registrorcbchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Recibo'
      FieldName = 'rcbchave'
    end
    object registrorcbemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rcbemissao'
      Required = True
    end
    object registrorcbvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rcbvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroetdpagador: TIntegerField
      DisplayLabel = 'Cod.Pagador'
      FieldName = 'etdpagador'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdpagador'
      Size = 50
      Lookup = True
    end
    object registroetdrecebedor: TIntegerField
      DisplayLabel = 'Cod.Recebedor'
      FieldName = 'etdrecebedor'
      Required = True
    end
    object registrorecebedor: TStringField
      FieldKind = fkLookup
      FieldName = 'recebedor'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdrecebedor'
      Size = 50
      Lookup = True
    end
    object registrorcbhistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rcbhistorico'
      Required = True
      Size = 250
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrorcbsituacao: TIntegerField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'rcbsituacao'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 644
    Top = 104
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
