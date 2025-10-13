inherited fspr: Tfspr
  ActiveControl = sprdtinicial
  Caption = 'Sprint'
  ClientHeight = 485
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 456
  end
  inherited paginas: TPageControl
    Height = 456
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = sprcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Inicio'
        FocusControl = sprdtinicial
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 22
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Final'
        FocusControl = sprdtfinal
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Usu'#225'rio'
        FocusControl = clbcodigo
      end
      object Spt3: TSplitter
        Left = 0
        Top = 157
        Width = 796
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
      end
      object sprcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sprcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object sprdtinicial: TDBEdit
        Left = 136
        Top = 30
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sprdtinicial'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object sprdtfinal: TDBEdit
        Left = 136
        Top = 57
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sprdtfinal'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object clbcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object Plpsh: TPanel
        Left = 0
        Top = 160
        Width = 796
        Height = 268
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 4
      end
      object bvalidar: TButton
        Left = 604
        Top = 82
        Width = 75
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 5
        OnClick = bvalidarClick
      end
    end
  end
  inherited DSRegistro: tunidatasource
    Left = 468
    Top = 12
  end
  inherited cfg: tuniquery
    Left = 620
    Top = 0
  end
  inherited consulta: tuniquery
    Left = 556
    Top = 4
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select sprcodigo, sprdtinicial, sprdtfinal, spr.clbcodigo from s' +
        'pr where sprcodigo=:sprcodigo')
    Params = <
      item
        DataType = ftString
        Name = 'sprcodigo'
        ParamType = ptInput
      end>
    Left = 512
    Top = 4
    ParamData = <
      item
        DataType = ftString
        Name = 'sprcodigo'
        ParamType = ptInput
      end>
    object registrosprcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sprcodigo'
    end
    object registrosprdtinicial: TDateField
      DisplayLabel = 'Inicio'
      FieldName = 'sprdtinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrosprdtfinal: TDateField
      DisplayLabel = 'Final'
      FieldName = 'sprdtfinal'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited dcp: tuniquery
    Left = 264
    Top = 44
  end
  inherited dtb: tuniquery
    Left = 344
    Top = 12
  end
  inherited coa: tuniquery
    Left = 404
    Top = 4
  end
  inherited pfr: tuniquery
    Left = 436
    Top = 20
  end
  inherited psf: tuniquery
    Left = 544
    Top = 36
  end
  inherited dcl: tuniquery
    Left = 592
    Top = 24
  end
  inherited cau: tuniquery
    Left = 676
    Top = 20
  end
  object clb: tuniquery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Params = <>
    Left = 720
    Top = 76
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
end
