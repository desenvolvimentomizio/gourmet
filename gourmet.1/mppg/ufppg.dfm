inherited fppg: Tfppg
  ActiveControl = ppgidentificacao
  Caption = 'Programa'#231#227'o de Pagamento'
  ClientHeight = 621
  ExplicitWidth = 812
  ExplicitHeight = 660
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 592
    ExplicitTop = 592
  end
  inherited paginas: TPageControl
    Height = 592
    ExplicitHeight = 592
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 564
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = ppgchave
      end
      object Label2: TLabel
        Left = 5
        Top = 60
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Emiss'#227'o'
        FocusControl = ppgemissao
      end
      object Label3: TLabel
        Left = 3
        Top = 87
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Vencimento'
        FocusControl = ppgvencimento
      end
      object Label4: TLabel
        Left = 3
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = ppgidentificacao
      end
      object Label5: TLabel
        Left = 3
        Top = 114
        Width = 63
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Observa'#231#245'es'
        FocusControl = ppgidentificacao
      end
      object ppgchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ppgchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ppgemissao: TDBEdit
        Left = 136
        Top = 57
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ppgemissao'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ppgvencimento: TDBEdit
        Left = 136
        Top = 84
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ppgvencimento'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ppgidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 430
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ppgidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ppgobservacao: TDBMemo
        Left = 136
        Top = 111
        Width = 353
        Height = 65
        CustomHint = BalloonHint
        DataField = 'ppgobservacao'
        DataSource = DSRegistro
        MaxLength = 50
        TabOrder = 4
      end
      object plipg: TPanel
        Left = 0
        Top = 192
        Width = 788
        Height = 372
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 5
      end
      object bvalidar: TButton
        Left = 509
        Top = 155
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 6
        OnClick = bvalidarClick
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 596
    Top = 104
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ppgchave,'
      '  ppgemissao,'
      '  ppgvencimento,'
      '  ppgidentificacao,'
      '  ppgobservacao,'
      '  clbcodigo,'
      '  flacodigo'
      'FROM ppg where ppgchave=:ppgchave')
    Left = 668
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppgchave'
        Value = nil
      end>
    object registroppgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'ppgchave'
    end
    object registroppgemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ppgemissao'
      Required = True
    end
    object registroppgvencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'ppgvencimento'
      Required = True
    end
    object registroppgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ppgidentificacao'
      Required = True
      Size = 50
    end
    object registroppgobservacao: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'ppgobservacao'
      Size = 500
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Clb'
      FieldName = 'clbcodigo'
    end
    object registroflacodigo: TIntegerField
      DisplayLabel = 'Fla'
      FieldName = 'flacodigo'
    end
  end
  inherited pfr: TUniQuery
    Left = 712
    Top = 92
  end
  inherited dcl: TUniQuery
    Left = 628
    Top = 64
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
