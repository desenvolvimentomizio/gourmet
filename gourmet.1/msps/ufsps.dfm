inherited fsps: Tfsps
  ActiveControl = uiscodigo
  Caption = 'Liga'#231#227'o de Itens com N'#237'vel de Imposto'
  ClientHeight = 370
  ClientWidth = 865
  ExplicitWidth = 881
  ExplicitHeight = 409
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 341
    Width = 865
    ExplicitTop = 341
    ExplicitWidth = 865
    inherited bconfirma: TBitBtn
      Left = 711
      ExplicitLeft = 711
    end
    inherited bcancela: TBitBtn
      Left = 786
      ExplicitLeft = 786
    end
    inherited bfechar: TBitBtn
      Left = 646
      ExplicitLeft = 646
    end
  end
  inherited paginas: TPageControl
    Width = 865
    Height = 341
    ExplicitWidth = 865
    ExplicitHeight = 341
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 857
      ExplicitHeight = 313
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = spscodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 87
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Item do Imposto'
        FocusControl = ppscodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 102
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado da Federa'#231#227'o'
        FocusControl = ufscodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 33
        Width = 23
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#237'vel'
        FocusControl = uiscodigo
      end
      object spscodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spscodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ppscodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ppscodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ufscodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufscodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object uiscodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'uiscodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  spscodigo,'
      '  uiscodigo,'
      '  ufscodigo,'
      '  ppscodigo'
      'FROM sps'
      'where spscodigo=:spscodigo ')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spscodigo'
        Value = nil
      end>
    object registrospscodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'spscodigo'
    end
    object registrouiscodigo: TStringField
      DisplayLabel = 'N'#237'vel'
      FieldName = 'uiscodigo'
      Required = True
      Size = 10
    end
    object registroppscodigo: TStringField
      DisplayLabel = 'Item do Imposto'
      FieldName = 'ppscodigo'
      Required = True
      Size = 10
    end
    object registroppsidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ppsidentificacao'
      LookupDataSet = pps
      LookupKeyFields = 'ppscodigo'
      LookupResultField = 'ppsidentificacao'
      KeyFields = 'ppscodigo'
      Size = 250
      Lookup = True
    end
    object registroufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 3
    end
    object registroufsnome: TStringField
      FieldKind = fkLookup
      FieldName = 'ufsnome'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufsnome'
      KeyFields = 'ufscodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pps: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ppscodigo,'
      '  ppsidentificacao'
      'FROM pps')
    Left = 332
    Top = 312
    object ppsppscodigo: TStringField
      FieldName = 'ppscodigo'
      Size = 10
    end
    object ppsppsidentificacao: TStringField
      FieldName = 'ppsidentificacao'
      Size = 450
    end
  end
  object ufs: TUniQuery
    SQL.Strings = (
      'select ufscodigo, ufsnome from ufs')
    Left = 452
    Top = 64
    object ufsufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 3
    end
    object ufsufsnome: TStringField
      FieldName = 'ufsnome'
      Size = 50
    end
  end
end
