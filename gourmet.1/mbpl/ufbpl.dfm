inherited fbpl: Tfbpl
  ActiveControl = bplidentificacao
  Caption = 'Arquivo de M'#243'dulo'
  ClientHeight = 213
  ExplicitWidth = 812
  ExplicitHeight = 252
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 184
    ExplicitTop = 150
  end
  inherited paginas: TPageControl
    Height = 184
    ExplicitHeight = 150
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 122
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = bplcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = bplidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do arquivo'
        FocusControl = bplnomearq
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 99
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do frame Base'
        FocusControl = bplfranome
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fun'#231#227'o Especial'
        FocusControl = bplfuncao
      end
      object bplcodigo: TDBEdit
        Left = 138
        Top = 3
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bplcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object bplidentificacao: TDBEdit
        Left = 138
        Top = 30
        Width = 440
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bplidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bplnomearq: TDBEdit
        Left = 138
        Top = 57
        Width = 247
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bplnomearq'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object bplfranome: TDBEdit
        Left = 138
        Top = 84
        Width = 104
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bplfranome'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object bplfuncao: TDBEdit
        Left = 138
        Top = 111
        Width = 183
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bplfuncao'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 620
    Top = 88
  end
  inherited consulta: TUniQuery
    Left = 512
    Top = 60
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  bplcodigo,'
      '  bplidentificacao,'
      '  bplnomearq,'
      '  bplfranome,'
      '  bplfuncao'
      'FROM bpl where bplcodigo=:bplcodigo')
    Left = 620
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bplcodigo'
        Value = nil
      end>
    object registrobplcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'bplcodigo'
    end
    object registrobplidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'bplidentificacao'
      Required = True
      Size = 50
    end
    object registrobplnomearq: TStringField
      DisplayLabel = 'Nome do arquivo'
      FieldName = 'bplnomearq'
      Required = True
      Size = 50
    end
    object registrobplfranome: TStringField
      DisplayLabel = 'Nome do frame Base'
      FieldName = 'bplfranome'
      Required = True
      Size = 50
    end
    object registrobplfuncao: TStringField
      DisplayLabel = 'Fun'#231#227'o Especial'
      FieldName = 'bplfuncao'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
