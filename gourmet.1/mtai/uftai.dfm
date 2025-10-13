inherited ftai: Tftai
  ActiveControl = ufscodigoorigem
  Caption = 'Aliquota de ICM para Estados'
  ClientHeight = 228
  ClientWidth = 765
  ExplicitWidth = 781
  ExplicitHeight = 267
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 199
    Width = 765
    ExplicitTop = 199
    ExplicitWidth = 765
    inherited bconfirma: TBitBtn
      Left = 611
      ExplicitLeft = 611
    end
    inherited bcancela: TBitBtn
      Left = 686
      ExplicitLeft = 686
    end
    inherited bfechar: TBitBtn
      Left = 546
      ExplicitLeft = 546
    end
  end
  inherited paginas: TPageControl
    Width = 765
    Height = 199
    ExplicitWidth = 765
    ExplicitHeight = 199
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 757
      ExplicitHeight = 171
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = taichave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado de Origem'
        FocusControl = ufscodigoorigem
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado de Destino'
        FocusControl = ufscodigodestino
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Aliquota do ICM'
        FocusControl = taialiquota
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Inicio da Validade'
        FocusControl = taiiniciovalidade
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Inicio da Finalidade'
        FocusControl = taifinalvalidade
      end
      object taichave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'taichave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ufscodigoorigem: TDBEdit
        Left = 136
        Top = 30
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufscodigoorigem'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ufscodigodestino: TDBEdit
        Left = 136
        Top = 57
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufscodigodestino'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object taialiquota: TDBEdit
        Left = 136
        Top = 84
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'taialiquota'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object taiiniciovalidade: TDBEdit
        Left = 136
        Top = 111
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'taiiniciovalidade'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object taifinalvalidade: TDBEdit
        Left = 136
        Top = 138
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'taifinalvalidade'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  taichave,'
      '  taiiniciovalidade,'
      '  taifinalvalidade,'
      '  ufscodigoorigem,'
      '  ufscodigodestino,'
      '  taialiquota'
      'FROM tai where taichave=:taichave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'taichave'
        Value = nil
      end>
    object registrotaichave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'taichave'
    end
    object registroufscodigoorigem: TStringField
      DisplayLabel = 'Estado de Origem'
      FieldName = 'ufscodigoorigem'
      Required = True
      Size = 3
    end
    object registroufsufsnomeorigem: TStringField
      FieldKind = fkLookup
      FieldName = 'ufsufsnomeorigem'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufsnome'
      KeyFields = 'ufscodigoorigem'
      Size = 50
      Lookup = True
    end
    object registroufscodigodestino: TStringField
      DisplayLabel = 'Estado de Destino'
      FieldName = 'ufscodigodestino'
      Required = True
      Size = 3
    end
    object registroufsufsnomedestino: TStringField
      FieldKind = fkLookup
      FieldName = 'ufsufsnomedestino'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufsnome'
      KeyFields = 'ufscodigodestino'
      Size = 50
      Lookup = True
    end
    object registrotaialiquota: TFloatField
      DisplayLabel = 'Aliquota do ICM'
      FieldName = 'taialiquota'
      Required = True
      DisplayFormat = '#,##0.0'
      EditFormat = '#,##0.0'
    end
    object registrotaiiniciovalidade: TDateField
      DisplayLabel = 'Inicio da Validade'
      FieldName = 'taiiniciovalidade'
      Required = True
    end
    object registrotaifinalvalidade: TDateField
      DisplayLabel = 'Inicio da Finalidade'
      FieldName = 'taifinalvalidade'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ufs: TUniQuery
    SQL.Strings = (
      'select ufscodigo, ufsnome from ufs')
    Left = 636
    Top = 120
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
