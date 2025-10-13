inherited fltp: Tfltp
  ActiveControl = cd
  Caption = 'Lote de Produtos'
  ClientHeight = 175
  ClientWidth = 686
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 146
    Width = 686
    inherited bconfirma: TBitBtn
      Left = 532
    end
    inherited bcancela: TBitBtn
      Left = 607
    end
    inherited bfechar: TBitBtn
      Left = 467
    end
  end
  inherited paginas: TPageControl
    Width = 686
    Height = 146
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ltpcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Barra'
        FocusControl = procodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 21
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Lote'
        FocusControl = ltplote
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Vencimento'
        FocusControl = ltpvencimento
      end
      object ltpcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ltpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ltplote: TDBEdit
        Left = 136
        Top = 57
        Width = 264
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ltplote'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ltpvencimento: TDBEdit
        Left = 136
        Top = 84
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ltpvencimento'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cd: TEdit
        Left = 136
        Top = 30
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        Color = clAqua
        TabOrder = 1
        OnExit = cdExit
        OnKeyPress = cdKeyPress
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 572
    Top = 32
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select ltpcodigo,'
      'procodigo,'
      'ltplote,'
      'ltpvencimento,'
      'sltcodigo'
      'from ltp'
      'where ltpcodigo=:ltpcodigo')
    Left = 524
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltpcodigo'
        Value = nil
      end>
    object registroltpcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ltpcodigo'
      ReadOnly = True
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object registropronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 60
      Lookup = True
    end
    object registroltplote: TStringField
      DisplayLabel = 'Lote'
      FieldName = 'ltplote'
      Required = True
    end
    object registroltpvencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'ltpvencimento'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrosltcodigo: TIntegerField
      FieldName = 'sltcodigo'
    end
  end
  inherited dcp: TUniQuery
    Left = 128
    Top = 260
  end
  inherited dtb: TUniQuery
    Left = 76
    Top = 260
  end
  inherited coa: TUniQuery
    Left = 40
    Top = 252
  end
  inherited acoesfrm: TActionList
    Left = 476
    Top = 4
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 648
    Top = 192
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 80
    end
  end
end
