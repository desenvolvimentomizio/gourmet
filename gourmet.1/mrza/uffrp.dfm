inherited ffrp: Tffrp
  ActiveControl = pcgcodigo
  Caption = 'Contas para o Raz'#227'o'
  ClientHeight = 268
  ClientWidth = 783
  ExplicitWidth = 799
  ExplicitHeight = 307
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 239
    Width = 783
    ExplicitTop = 239
    ExplicitWidth = 783
    inherited bconfirma: TBitBtn
      Left = 629
      ExplicitLeft = 629
    end
    inherited bcancela: TBitBtn
      Left = 704
      ExplicitLeft = 704
    end
    inherited bfechar: TBitBtn
      Left = 564
      ExplicitLeft = 564
    end
  end
  inherited paginas: TPageControl
    Width = 783
    Height = 239
    ExplicitWidth = 783
    ExplicitHeight = 239
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 7
        Top = 6
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo da Conta'
        FocusControl = pcgcodigo
      end
      object pcgcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 0
        OnExit = pcgcodigoExit
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select frpchave, frcchave, pcgcodigo from frp where frpchave=:fr' +
        'pchave and frcchave=:frcchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'frpchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'frcchave'
        Value = nil
      end>
    object registrofrpchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'frpchave'
    end
    object registrofrcchave: TIntegerField
      FieldName = 'frcchave'
    end
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo da Conta'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object registropcgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgidentificacao'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'select pcgcodigo, pcgidentificacao from pcg')
    Left = 476
    Top = 212
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 50
    end
  end
end
