inherited fbco: Tfbco
  ActiveControl = bcocodigo
  Caption = 'Controle Banc'#225'rio'
  ClientHeight = 163
  ClientWidth = 770
  ExplicitWidth = 786
  ExplicitHeight = 202
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 134
    Width = 770
    ExplicitTop = 134
    ExplicitWidth = 770
    inherited bconfirma: TBitBtn
      Left = 616
      ExplicitLeft = 616
    end
    inherited bcancela: TBitBtn
      Left = 691
      ExplicitLeft = 691
    end
    inherited bfechar: TBitBtn
      Left = 551
      ExplicitLeft = 551
    end
  end
  inherited paginas: TPageControl
    Width = 770
    Height = 134
    ExplicitWidth = 770
    ExplicitHeight = 134
    inherited Principal: TTabSheet
      ExplicitWidth = 762
      ExplicitHeight = 106
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo '
        FocusControl = bcocodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 43
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = bconome
      end
      object Label3: TLabel
        Left = 8
        Top = 70
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ativo'
        FocusControl = bcoativo
      end
      object bcocodigo: TDBEdit
        Left = 136
        Top = 13
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bcocodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object bconome: TDBEdit
        Left = 136
        Top = 40
        Width = 459
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bconome'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object bcoativo: TDBEdit
        Left = 136
        Top = 67
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bcoativo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select bcocodigo,bconome,bcoativo from bco where bco.bcocodigo=:' +
        'bcocodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bcocodigo'
        Value = nil
      end>
    object registrobcocodigo: TStringField
      DisplayLabel = 'C'#243'digo Banco'
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object registrobconome: TStringField
      FieldName = 'bconome'
      Required = True
      Size = 35
    end
    object registrobcoativo: TIntegerField
      DisplayLabel = 'Ativo'
      FieldName = 'bcoativo'
      Required = True
    end
    object registrosenbcoativo: TStringField
      FieldKind = fkLookup
      FieldName = 'senbcoativo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'bcoativo'
      Size = 5
      Lookup = True
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 300
    Top = 280
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
