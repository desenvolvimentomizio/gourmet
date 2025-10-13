inherited ftec: Tftec
  ActiveControl = tecidentificacao
  Caption = 'Est'#225'gio do Chamado'
  ClientHeight = 202
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 173
    ExplicitTop = 140
  end
  inherited paginas: TPageControl
    Height = 173
    ExplicitHeight = 140
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 112
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = teccodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tecidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Chamado'
        FocusControl = ttccodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Posi'#231#227'o'
        FocusControl = tecposicao
      end
      object Label5: TLabel
        Left = 8
        Top = 119
        Width = 70
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sele'#231#227'o de cor'
        FocusControl = tecposicao
      end
      object teccodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'teccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tecidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 226
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tecidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ttccodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttccodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tecposicao: TDBEdit
        Left = 136
        Top = 84
        Width = 38
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tecposicao'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object plcor: TPanel
        Left = 136
        Top = 111
        Width = 226
        Height = 31
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        Caption = 'Clique para selecionar a cor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 4
        OnClick = plcorClick
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 404
    Top = 168
  end
  inherited consulta: TUniQuery
    Left = 400
    Top = 108
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select teccodigo, tecidentificacao, ttccodigo,tecposicao,teccor ' +
        'from tec where teccodigo=:teccodigo')
    Left = 452
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'teccodigo'
        Value = nil
      end>
    object registroteccodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'teccodigo'
    end
    object registrotecidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tecidentificacao'
      Required = True
      Size = 30
    end
    object registrottccodigo: TIntegerField
      DisplayLabel = 'Tipo de Chamado'
      FieldName = 'ttccodigo'
      Required = True
    end
    object registrottcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ttcidentificacao'
      LookupDataSet = ttc
      LookupKeyFields = 'ttccodigo'
      LookupResultField = 'ttcidentificacao'
      KeyFields = 'ttccodigo'
      Size = 50
      Lookup = True
    end
    object registrotecposicao: TIntegerField
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'tecposicao'
      Required = True
    end
    object registroteccor: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'teccor'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ttc: TUniQuery
    SQL.Strings = (
      'select ttccodigo, ttcidentificacao from ttc')
    Left = 728
    Top = 272
    object ttcttccodigo: TIntegerField
      FieldName = 'ttccodigo'
    end
    object ttcttcidentificacao: TStringField
      FieldName = 'ttcidentificacao'
      Size = 50
    end
  end
  object ColorDialog: TColorDialog
    Left = 596
    Top = 72
  end
end
