inherited ffra: Tffra
  ActiveControl = fraidentificacao
  Caption = 'Cadastro de Frames'
  ClientHeight = 212
  ClientWidth = 622
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 183
    Width = 622
    inherited bconfirma: TBitBtn
      Left = 468
    end
    inherited bcancela: TBitBtn
      Left = 543
    end
    inherited bfechar: TBitBtn
      Left = 403
    end
  end
  inherited paginas: TPageControl
    Width = 622
    Height = 183
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = fracodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = fraidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'ID do Frame'
        FocusControl = fraidmd
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 73
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do frame'
        FocusControl = franome
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 68
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo da BPL'
        FocusControl = bplcodigo
      end
      object fracodigo: TDBEdit
        Left = 138
        Top = 3
        Width = 63
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fracodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object fraidentificacao: TDBEdit
        Left = 138
        Top = 30
        Width = 462
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fraidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object fraidmd: TDBEdit
        Left = 138
        Top = 57
        Width = 207
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fraidmd'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object franome: TDBEdit
        Left = 138
        Top = 84
        Width = 207
        Height = 21
        CustomHint = BalloonHint
        DataField = 'franome'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object bplcodigo: TDBEdit
        Left = 138
        Top = 111
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bplcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited consulta: TUniQuery
    Left = 360
    Top = 124
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  fracodigo,'
      '  fraidentificacao,'
      '  fraidmd,'
      '  franome,'
      '  bplcodigo'
      'FROM fra where fracodigo=:fracodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fracodigo'
        Value = nil
      end>
    object registrofracodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'fracodigo'
    end
    object registrofraidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'fraidentificacao'
      Required = True
      Size = 50
    end
    object registrofraidmd: TStringField
      DisplayLabel = 'ID do Frame'
      FieldName = 'fraidmd'
      Size = 50
    end
    object registrofranome: TStringField
      DisplayLabel = 'Nome do frame'
      FieldName = 'franome'
      Required = True
      Size = 35
    end
    object registrobplcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo da BPL'
      FieldName = 'bplcodigo'
      Required = True
    end
    object registrobplidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'bplidentificacao'
      LookupDataSet = bpl
      LookupKeyFields = 'bplcodigo'
      LookupResultField = 'bplidentificacao'
      KeyFields = 'bplcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object bpl: TUniQuery
    SQL.Strings = (
      'select bplcodigo, bplidentificacao from bpl')
    Left = 472
    Top = 288
    object bplbplcodigo: TIntegerField
      FieldName = 'bplcodigo'
    end
    object bplbplidentificacao: TStringField
      FieldName = 'bplidentificacao'
      Size = 50
    end
  end
end
