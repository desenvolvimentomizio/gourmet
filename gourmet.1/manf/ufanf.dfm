inherited fanf: Tfanf
  Caption = 'Adicional por Capacita'#231#227'o'
  ClientHeight = 251
  ExplicitWidth = 812
  ExplicitHeight = 290
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 222
    ExplicitTop = 171
  end
  inherited paginas: TPageControl
    Height = 222
    ExplicitHeight = 171
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 143
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = anfcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = anfidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual'
        FocusControl = anfpercentual
      end
      object Label4: TLabel
        Left = 8
        Top = 141
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento da Folha'
        FocusControl = evfcodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 168
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico Padr'#227'o'
      end
      object Label10: TLabel
        Left = 8
        Top = 61
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cor Prncipal'
      end
      object Label6: TLabel
        Left = 8
        Top = 88
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cor do T'#237'tulo'
      end
      object anfcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'anfcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object anfidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 438
        Height = 21
        CustomHint = BalloonHint
        DataField = 'anfidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object anfpercentual: TDBEdit
        Left = 136
        Top = 111
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'anfpercentual'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object evfcodigo: TDBEdit
        Left = 136
        Top = 138
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 165
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object plcor: TPanel
        Left = 133
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        Caption = 'cor'
        ParentBackground = False
        TabOrder = 5
        OnClick = plcorClick
      end
      object plcortitulo: TPanel
        Left = 133
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        Caption = 'cor'
        ParentBackground = False
        TabOrder = 6
        OnClick = plcortituloClick
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  anf.anfcodigo,'
      '  anf.anfidentificacao,'
      '  anf.anfpercentual,'
      '  anf.evfcodigo,'
      '  anf.phgcodigo,'
      '  anf.anfcor,'
      '  anf.anfcortitulo'
      'FROM anf where anfcodigo=:anfcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'anfcodigo'
        Value = nil
      end>
    object registroanfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'anfcodigo'
    end
    object registroanfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'anfidentificacao'
      Required = True
      Size = 50
    end
    object registroanfpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'anfpercentual'
      Required = True
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object registroevfcodigo: TIntegerField
      DisplayLabel = 'Cod.Evento'
      FieldName = 'evfcodigo'
      Required = True
    end
    object registroevfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'evfidentificacao'
      LookupDataSet = evf
      LookupKeyFields = 'evfcodigo'
      LookupResultField = 'evfidentificacao'
      KeyFields = 'evfcodigo'
      Size = 50
      Lookup = True
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico Padr'#227'o'
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 50
      Lookup = True
    end
    object registroanfcor: TStringField
      FieldName = 'anfcor'
      Size = 10
    end
    object registroanfcortitulo: TStringField
      FieldName = 'anfcortitulo'
      Size = 10
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object evf: TUniQuery
    SQL.Strings = (
      'select evfcodigo, evfidentificacao from evf')
    Left = 612
    Top = 48
    object evfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object evfevfidentificacao: TStringField
      FieldName = 'evfidentificacao'
      Size = 50
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 356
    Top = 176
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object ColorDialog: TColorDialog
    Left = 348
    Top = 40
  end
end
