inherited fcfgmcre: Tfcfgmcre
  ActiveControl = cfgportadorpadrao
  Caption = 'Configura'#231#245'es para Contas a Receber'
  ClientHeight = 234
  ClientWidth = 786
  ExplicitWidth = 802
  ExplicitHeight = 273
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 205
    Width = 786
    ExplicitTop = 189
    ExplicitWidth = 786
    inherited bconfirma: TBitBtn
      Left = 632
      ExplicitLeft = 632
    end
    inherited bcancela: TBitBtn
      Left = 707
      ExplicitLeft = 707
    end
    inherited bfechar: TBitBtn
      Left = 567
      ExplicitLeft = 567
    end
  end
  inherited paginas: TPageControl
    Width = 786
    Height = 205
    ExplicitWidth = 786
    ExplicitHeight = 205
    inherited Principal: TTabSheet
      Caption = 'v'
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 778
      ExplicitHeight = 177
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 140
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Carteira de Cobran'#231'a Padr'#227'o'
        FocusControl = cfgportadorpadrao
      end
      object Label2: TLabel
        Left = 3
        Top = 33
        Width = 129
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Documento Padr'#227'o'
        FocusControl = cfgtipodocpadrao
      end
      object Label3: TLabel
        Left = 3
        Top = 60
        Width = 127
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Comprovante para assinar'
        FocusControl = cfgviaassinar
      end
      object Label4: TLabel
        Left = 3
        Top = 87
        Width = 124
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Controla Limite de Cr'#233'dito'
        FocusControl = cfgcontrolalimite
      end
      object Label5: TLabel
        Left = 3
        Top = 114
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filtrar Recebimento'
        FocusControl = cfgfiltrarrec
      end
      object Label6: TLabel
        Left = 4
        Top = 141
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico padr'#227'o'
        FocusControl = cfgphgpadrao
      end
      object cfgportadorpadrao: TDBEdit
        Left = 156
        Top = 3
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgportadorpadrao'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgtipodocpadrao: TDBEdit
        Left = 155
        Top = 30
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgtipodocpadrao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cfgviaassinar: TDBEdit
        Left = 155
        Top = 57
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgviaassinar'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgcontrolalimite: TDBEdit
        Left = 156
        Top = 84
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgcontrolalimite'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cfgfiltrarrec: TDBEdit
        Left = 155
        Top = 111
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgfiltrarrec'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cfgphgpadrao: TDBEdit
        Left = 155
        Top = 138
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgphgpadrao'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 332
    Top = 160
  end
  inherited consulta: TUniQuery
    Left = 352
    Top = 116
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT cfgmcre.cfgcodigo'
      '     , cfgmcre.cfgportadorpadrao'
      '     , cfgmcre.cfgtipodocpadrao'
      '     , cfgmcre.cfgviaassinar'
      '     , cfgmcre.cfgcontrolalimite'
      '     , cfgmcre.cfgfiltrarrec'
      '     , cfgmcre.cfgphgpadrao'
      '  FROM cfgmcre'
      ' WHERE cfgmcre.cfgcodigo = :cfgcodigo')
    Left = 340
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgportadorpadrao: TIntegerField
      DisplayLabel = 'Carteira de Cobran'#231'a Padr'#227'o'
      FieldName = 'cfgportadorpadrao'
      Required = True
    end
    object registrocaridentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'caridentificacao'
      LookupDataSet = car
      LookupKeyFields = 'carcodigo'
      LookupResultField = 'caridentificacao'
      KeyFields = 'cfgportadorpadrao'
      Size = 50
      Lookup = True
    end
    object registrocfgtipodocpadrao: TIntegerField
      DisplayLabel = 'Tipo de Documento Padr'#227'o'
      FieldName = 'cfgtipodocpadrao'
    end
    object registrotfiidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tfiidentificacao'
      LookupDataSet = tfi
      LookupKeyFields = 'tficodigo'
      LookupResultField = 'tfiidentificacao'
      KeyFields = 'cfgtipodocpadrao'
      Size = 50
      Lookup = True
    end
    object registrocfgviaassinar: TIntegerField
      DisplayLabel = 'Comprovante para assinar'
      FieldName = 'cfgviaassinar'
    end
    object registrosenassinar: TStringField
      FieldKind = fkLookup
      FieldName = 'senassinar'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgviaassinar'
      Size = 5
      Lookup = True
    end
    object registrocfgcontrolalimite: TIntegerField
      DisplayLabel = 'Controla Limite de Cr'#233'dito'
      FieldName = 'cfgcontrolalimite'
    end
    object registrosencontrolalimite: TStringField
      FieldKind = fkLookup
      FieldName = 'sencontrolalimite'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgcontrolalimite'
      Size = 5
      Lookup = True
    end
    object registrocfgfiltrarrec: TIntegerField
      DisplayLabel = 'Filtrar Recebimento'
      FieldName = 'cfgfiltrarrec'
      Required = True
    end
    object registrosencfgfiltrarrec: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgfiltrarrec'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgfiltrarrec'
      Size = 5
      Lookup = True
    end
    object registrocfgphgpadrao: TIntegerField
      FieldName = 'cfgphgpadrao'
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'cfgphgpadrao'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object car: TUniQuery
    SQL.Strings = (
      'select carcodigo, caridentificacao from car')
    Constraints = <>
    Left = 588
    Top = 96
    object carcarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object carcaridentificacao: TStringField
      FieldName = 'caridentificacao'
      Size = 50
    end
  end
  object tfi: TUniQuery
    SQL.Strings = (
      'select tficodigo, tfiidentificacao from tfi')
    Constraints = <>
    Left = 392
    Top = 200
    object tfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object tfitfiidentificacao: TStringField
      FieldName = 'tfiidentificacao'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Constraints = <>
    Left = 632
    Top = 48
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Constraints = <>
    Left = 260
    Top = 128
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
end
