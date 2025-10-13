inherited fats: Tfats
  ActiveControl = atsidentificacao
  Caption = 'Adicional por Tempo'
  ClientHeight = 315
  ExplicitWidth = 812
  ExplicitHeight = 354
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 286
    ExplicitTop = 222
  end
  inherited paginas: TPageControl
    Height = 286
    ExplicitHeight = 222
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 194
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = atscodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = atsidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 143
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Final da Faixa em Meses'
        FocusControl = atsmeses
      end
      object Label4: TLabel
        Left = 8
        Top = 170
        Width = 111
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual do Adicional'
        FocusControl = atspercentual
      end
      object Label5: TLabel
        Left = 8
        Top = 197
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento da Folha'
        FocusControl = evfcodigo
      end
      object Label6: TLabel
        Left = 8
        Top = 116
        Width = 119
        Height = 13
        CustomHint = BalloonHint
        Caption = 'In'#237'cio da Faixa em Meses'
        FocusControl = atsmesesinicial
      end
      object Label7: TLabel
        Left = 8
        Top = 224
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object Label10: TLabel
        Left = 8
        Top = 61
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cor Principal'
      end
      object Label8: TLabel
        Left = 8
        Top = 88
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cor do T'#237'tulo'
      end
      object atscodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atscodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object atsidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 438
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atsidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object atsmeses: TDBEdit
        Left = 136
        Top = 140
        Width = 62
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atsmeses'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object atspercentual: TDBEdit
        Left = 136
        Top = 167
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atspercentual'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object evfcodigo: TDBEdit
        Left = 136
        Top = 194
        Width = 62
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object atsmesesinicial: TDBEdit
        Left = 136
        Top = 113
        Width = 62
        Height = 21
        CustomHint = BalloonHint
        DataField = 'atsmesesinicial'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 221
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object plcor: TPanel
        Left = 136
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        Caption = 'cor'
        ParentBackground = False
        TabOrder = 7
        OnClick = plcorClick
      end
      object plcortitulo: TPanel
        Left = 136
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        Caption = 'cor'
        ParentBackground = False
        TabOrder = 8
        OnClick = plcortituloClick
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  atscodigo,'
      '  atsidentificacao,'
      '  atsmeses,'
      '  atspercentual,'
      '  evfcodigo,'
      '  atsmesesinicial,'
      '  phgcodigo,'
      '  atscor,'
      '  atscortitulo'
      'FROM ats where atscodigo=:atscodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'atscodigo'
        Value = nil
      end>
    object registroatscodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'atscodigo'
    end
    object registroatsidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'atsidentificacao'
      Required = True
      Size = 50
    end
    object registroatsmeses: TIntegerField
      DisplayLabel = 'Tempo em Meses'
      FieldName = 'atsmeses'
      Required = True
    end
    object registroatspercentual: TFloatField
      DisplayLabel = 'Percentual do Adicional'
      FieldName = 'atspercentual'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroevfcodigo: TIntegerField
      DisplayLabel = 'Evento da Folha'
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
    object registroatsmesesinicial: TIntegerField
      DisplayLabel = 'In'#237'cio da Faixa'
      FieldName = 'atsmesesinicial'
      Required = True
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Hist'#243'rico'
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
    object registroatscor: TStringField
      FieldName = 'atscor'
      Size = 10
    end
    object registroatscortitulo: TStringField
      FieldName = 'atscortitulo'
      Size = 10
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object evf: TUniQuery
    SQL.Strings = (
      'select evfcodigo, evfidentificacao from evf')
    Left = 644
    Top = 96
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
    Left = 332
    Top = 151
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
