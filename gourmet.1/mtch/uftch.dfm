inherited ftch: Tftch
  ActiveControl = ctacodigo
  Caption = 'Cadastro de Talon'#225'rio de Cheque'
  ClientHeight = 429
  ClientWidth = 731
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 400
    Width = 731
    inherited bconfirma: TBitBtn
      Left = 577
    end
    inherited bcancela: TBitBtn
      Left = 652
    end
    inherited bfechar: TBitBtn
      Left = 512
    end
  end
  inherited paginas: TPageControl
    Width = 731
    Height = 400
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 30
        Top = 48
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tchcodigo
      end
      object Label2: TLabel
        Left = 30
        Top = 75
        Width = 75
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Corrente'
        FocusControl = ctacodigo
      end
      object Label3: TLabel
        Left = 30
        Top = 102
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha Inicial'
        FocusControl = tchfolhainicial
      end
      object Label4: TLabel
        Left = 30
        Top = 129
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha Final'
        FocusControl = tchfolhafinal
      end
      object tchcodigo: TDBEdit
        Left = 120
        Top = 45
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tchcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ctacodigo: TDBEdit
        Left = 120
        Top = 72
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctacodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnEnter = ctacodigoEnter
      end
      object tchfolhainicial: TDBEdit
        Left = 120
        Top = 99
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tchfolhainicial'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = tchfolhainicialExit
      end
      object tchfolhafinal: TDBEdit
        Left = 120
        Top = 126
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tchfolhafinal'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = tchfolhafinalExit
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 204
    Top = 72
  end
  inherited consulta: TUniQuery
    Left = 264
    Top = 28
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT tch.tchcodigo'
      '     , tch.ctacodigo'
      '     , tch.clbcodigo'
      '     , tch.tchfolhainicial'
      '     , tch.tchfolhafinal'
      'FROM tch'
      'WHERE tch.tchcodigo = :tchcodigo;')
    Left = 204
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tchcodigo'
        Value = nil
      end>
    object registrotchcodigo: TIntegerField
      DisplayLabel = 'Talon'#225'rio'
      FieldName = 'tchcodigo'
    end
    object registroctacodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Conta Corrente'
      FieldName = 'ctacodigo'
      Required = True
    end
    object registroctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'ctacodigo'
      Size = 50
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotchfolhainicial: TIntegerField
      DisplayLabel = 'Folha Inicial'
      FieldName = 'tchfolhainicial'
      Required = True
    end
    object registrotchfolhafinal: TIntegerField
      DisplayLabel = 'Folha Final'
      FieldName = 'tchfolhafinal'
      Required = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object cta: TUniQuery
    SQL.Strings = (
      'SELECT cta.ctacodigo'
      '     , cta.ctaidentificacao'
      '     , cta.tctcodigo'
      'FROM cta'
      'WHERE cta.tctcodigo = 2; -- Conta Banc'#225'ria')
    Left = 268
    Top = 88
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
    object ctatctcodigo: TIntegerField
      FieldName = 'tctcodigo'
    end
  end
  object tchVerif: TUniQuery
    SQL.Strings = (
      'SELECT tch.tchcodigo'
      'FROM tch'
      'WHERE tch.ctacodigo = :ctacodigo'
      'AND (:folhaIni BETWEEN tch.tchfolhainicial AND tch.tchfolhafinal'
      'OR :folhaFin BETWEEN tch.tchfolhainicial AND tch.tchfolhafinal)')
    Left = 324
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'folhaIni'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'folhaFin'
        Value = nil
      end>
    object tchVeriftchcodigo: TIntegerField
      FieldName = 'tchcodigo'
    end
  end
end
