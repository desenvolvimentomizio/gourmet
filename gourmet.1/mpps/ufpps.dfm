inherited fpps: Tfpps
  Caption = 'Produtos para Substitui'#231#227'o Tribut'#225'ria'
  ClientHeight = 427
  ClientWidth = 851
  ExplicitWidth = 867
  ExplicitHeight = 466
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 398
    Width = 851
    ExplicitTop = 398
    ExplicitWidth = 851
    inherited bconfirma: TBitBtn
      Left = 697
      ExplicitLeft = 697
    end
    inherited bcancela: TBitBtn
      Left = 772
      ExplicitLeft = 772
    end
    inherited bfechar: TBitBtn
      Left = 632
      ExplicitLeft = 632
    end
  end
  inherited paginas: TPageControl
    Width = 851
    Height = 398
    ExplicitWidth = 851
    ExplicitHeight = 398
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 843
      ExplicitHeight = 370
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ppscodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cap'#237'tulo'
        FocusControl = cpscodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
      end
      object ppscodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ppscodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cpscodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 46
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cpscodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ppsidentificacao: TDBMemo
        Left = 136
        Top = 57
        Width = 633
        Height = 152
        CustomHint = BalloonHint
        DataField = 'ppsidentificacao'
        DataSource = DSRegistro
        ScrollBars = ssVertical
        TabOrder = 2
      end
      object plnpp: TPanel
        Left = 0
        Top = 215
        Width = 843
        Height = 155
        CustomHint = BalloonHint
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        BevelOuter = bvNone
        TabOrder = 3
      end
      object bvalidar: TButton
        Left = 775
        Top = 188
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 4
        OnClick = bvalidarClick
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ppscodigo,'
      '  cpscodigo,'
      '  ppsidentificacao'
      'FROM pps'
      '  where ppscodigo=:ppscodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ppscodigo'
        Value = nil
      end>
    object registroppscodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 30
      FieldName = 'ppscodigo'
      Required = True
      Size = 30
    end
    object registrocpscodigo: TIntegerField
      DisplayLabel = 'Cap'#237'tulo'
      FieldName = 'cpscodigo'
      Required = True
    end
    object registrocpsidientificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cpsidientificacao'
      LookupDataSet = cps
      LookupKeyFields = 'cpscodigo'
      LookupResultField = 'cpsidentificacao'
      KeyFields = 'cpscodigo'
      Size = 50
      Lookup = True
    end
    object registroppsidentificacao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'ppsidentificacao'
      Required = True
      Size = 2000
    end
  end
  inherited cau: TUniQuery
    Left = 712
    Top = 248
  end
  inherited BalloonHint: TBalloonHint
    Left = 548
    Top = 208
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object cps: TUniQuery
    SQL.Strings = (
      'select cpscodigo, cpsidentificacao from cps')
    Left = 364
    Top = 248
    object cpscpscodigo: TIntegerField
      FieldName = 'cpscodigo'
    end
    object cpscpsidentificacao: TStringField
      FieldName = 'cpsidentificacao'
      Size = 50
    end
  end
end
