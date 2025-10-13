inherited ffcb: Tffcb
  ActiveControl = flacodigo
  Caption = 'V'#237'nculo Colaborador e Filial'
  ClientHeight = 181
  ClientWidth = 584
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 152
    Width = 584
    inherited bconfirma: TBitBtn
      Left = 430
    end
    inherited bcancela: TBitBtn
      Left = 505
    end
    inherited bfechar: TBitBtn
      Left = 365
    end
  end
  inherited paginas: TPageControl
    Width = 584
    Height = 152
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 16
        Top = 41
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = clbcodigo
      end
      object Label2: TLabel
        Left = 16
        Top = 68
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial'
        FocusControl = flacodigo
      end
      object clbcodigo: TDBEdit
        Left = 100
        Top = 38
        Width = 39
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flacodigo: TDBEdit
        Left = 100
        Top = 65
        Width = 39
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flacodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = flacodigoExit
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '01-09-001'
  end
  inherited DSRegistro: TUniDataSource
    Left = 188
    Top = 80
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT fcb.fcbchave'
      '     , fcb.clbcodigo'
      '     , fcb.flacodigo'
      '  FROM fcb'
      ' WHERE fcb.fcbchave = :fcbchave'
      '   AND fcb.clbcodigo = :clbcodigo')
    Left = 188
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fcbchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object registrofcbchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'fcbchave'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 30
      Lookup = True
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object registroflaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flaidentificacao'
      LookupDataSet = fla
      LookupKeyFields = 'flacodigo'
      LookupResultField = 'flaidentificacao'
      KeyFields = 'flacodigo'
      Size = 30
      Lookup = True
    end
  end
  inherited psf: TUniQuery
    Top = 84
  end
  inherited dcl: TUniQuery
    Left = 544
    Top = 140
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT clbcodigo'
      '     , clbidentificacao'
      '  FROM clb')
    Left = 252
    Top = 56
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
  object fla: TUniQuery
    SQL.Strings = (
      'SELECT flacodigo'
      '     , flaidentificacao'
      '  FROM fla')
    Left = 288
    Top = 56
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 50
    end
  end
  object fcb: TUniQuery
    SQL.Strings = (
      'SELECT fcb.flacodigo'
      '  FROM fcb'
      ' WHERE fcb.clbcodigo = :clbcodigo')
    Left = 228
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
  end
end
