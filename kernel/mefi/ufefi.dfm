inherited fefi: Tfefi
  ActiveControl = etdcodigo
  Caption = 'Lan'#231'amento Fixo'
  ClientHeight = 381
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 352
    ExplicitTop = 352
  end
  inherited paginas: TPageControl
    Height = 352
    ExplicitHeight = 352
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 324
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = efichave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 34
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento'
        FocusControl = evfcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 141
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = efidtinicial
      end
      object Label5: TLabel
        Left = 8
        Top = 168
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = efidtfinal
      end
      object Label6: TLabel
        Left = 8
        Top = 195
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = efivalor
      end
      object Label7: TLabel
        Left = 8
        Top = 114
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico Pad'#227'o'
        FocusControl = phgcodigo
      end
      object Label8: TLabel
        Left = 8
        Top = 60
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Folha'
        FocusControl = tflcodigo
      end
      object efichave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'efichave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object evfcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 3
        OnEnter = evfcodigoEnter
      end
      object efidtinicial: TDBEdit
        Left = 136
        Top = 138
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'efidtinicial'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object efidtfinal: TDBEdit
        Left = 136
        Top = 165
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'efidtfinal'
        DataSource = DSRegistro
        TabOrder = 6
        OnEnter = efidtfinalEnter
      end
      object efivalor: TDBEdit
        Left = 136
        Top = 192
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'efivalor'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 111
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 4
        OnEnter = evfcodigoEnter
      end
      object tflcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tflcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  efichave,'
      '  evfcodigo,'
      '  etdcodigo,'
      '  phgcodigo,'
      '  efidtinicial,'
      '  efidtfinal,'
      '  efivalor,'
      '  clbcodigo,'
      '  eficriacao,'
      '  tflcodigo '
      'FROM efi where efichave=:efichave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'efichave'
        Value = nil
      end>
    object registroefichave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'efichave'
    end
    object registroevfcodigo: TIntegerField
      DisplayLabel = 'Evento'
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
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registrophgcodigo: TIntegerField
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
    object registroefidtinicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'efidtinicial'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registroefidtfinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'efidtfinal'
      EditMask = '!99/99/9999;1;_'
    end
    object registroefivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'efivalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroeficriacao: TDateTimeField
      FieldName = 'eficriacao'
    end
    object registrotflcodigo: TIntegerField
      DisplayLabel = 'Tipo de Folha'
      FieldName = 'tflcodigo'
      Required = True
    end
    object registrotflidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tflidentificacao'
      LookupDataSet = tfl
      LookupKeyFields = 'tflcodigo'
      LookupResultField = 'tflidentificacao'
      KeyFields = 'tflcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 152
    Top = 252
  end
  inherited dtb: TUniQuery
    Left = 108
    Top = 252
  end
  inherited coa: TUniQuery
    Left = 72
    Top = 252
  end
  inherited cpc: TUniQuery
    Left = 77
    Top = 305
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 392
    Top = 264
  end
  object etd: TUniQuery
    SQL.Strings = (
      
        'select etd.etdcodigo, etdidentificacao from etd, etv where etd.e' +
        'tdcodigo=etv.etdcodigo and etv.tvicodigo=3 and tsecodigo=0')
    Left = 456
    Top = 288
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object evf: TUniQuery
    SQL.Strings = (
      'SELECT evfcodigo'
      '     , evfidentificacao'
      '     , tevcodigo'
      '     , evfpelocco'
      'FROM evf'
      'WHERE tevcodigo = 1')
    Left = 336
    Top = 256
    object evfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object evfevfidentificacao: TStringField
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object evftevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object evfevfpelocco: TIntegerField
      FieldName = 'evfpelocco'
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 344
    Top = 192
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object tfl: TUniQuery
    SQL.Strings = (
      'select tflcodigo, tflidentificacao from tfl')
    Left = 632
    Top = 192
    object tfltflcodigo: TIntegerField
      FieldName = 'tflcodigo'
    end
    object tfltflidentificacao: TStringField
      FieldName = 'tflidentificacao'
      Size = 50
    end
  end
end
