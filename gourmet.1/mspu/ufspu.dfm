inherited fspu: Tfspu
  ActiveControl = procodigo
  Caption = 'Pre'#231'o do Sabor'
  ClientHeight = 202
  ClientWidth = 812
  ExplicitWidth = 828
  ExplicitHeight = 241
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 173
    Width = 812
    ExplicitTop = 174
    ExplicitWidth = 812
    inherited bconfirma: TBitBtn
      Left = 658
      ExplicitLeft = 658
    end
    inherited bcancela: TBitBtn
      Left = 733
      ExplicitLeft = 733
    end
    inherited bfechar: TBitBtn
      Left = 593
      ExplicitLeft = 593
    end
  end
  inherited paginas: TPageControl
    Width = 812
    Height = 173
    ExplicitWidth = 812
    ExplicitHeight = 174
    inherited Principal: TTabSheet
      ExplicitWidth = 804
      ExplicitHeight = 145
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = spucodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade'
        FocusControl = puncodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor do Sabor R$'
        FocusControl = spupreco
      end
      object Label4: TLabel
        Left = 464
        Top = 3
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto'
        FocusControl = produto
        Visible = False
      end
      object Label5: TLabel
        Left = 8
        Top = 33
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Produto'
        FocusControl = procodigo
      end
      object Label6: TLabel
        Left = 8
        Top = 87
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cobrar com Adicional'
        FocusControl = spuadicional
      end
      object spucodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 62
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spucodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object puncodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'puncodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnEnter = puncodigoEnter
      end
      object spupreco: TDBEdit
        Left = 136
        Top = 111
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spupreco'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object produto: TDBEdit
        Left = 592
        Top = 3
        Width = 62
        Height = 21
        CustomHint = BalloonHint
        DataField = 'produto'
        DataSource = DSRegistro
        TabOrder = 5
        Visible = False
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object spuadicional: TDBEdit
        Left = 136
        Top = 84
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'spuadicional'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited consulta: TUniQuery
    Top = 92
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  spucodigo,'
      '  spu.sbrcodigo,'
      '  puncodigo,'
      '  spupreco, '
      '  pro.procodigo produto,'
      '  spu.procodigo,'
      '  spuadicional'
      
        ' FROM spu, sbr,  pro WHERE spu.sbrcodigo=sbr.sbrcodigo AND sbr.g' +
        'rpcodigo=pro.grpcodigo and spucodigo=:spucodigo and spu.sbrcodig' +
        'o=:sbrcodigo'
      ''
      ''
      '')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'spucodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'sbrcodigo'
        Value = nil
      end>
    object registrospucodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'spucodigo'
    end
    object registrosbrcodigo: TIntegerField
      FieldName = 'sbrcodigo'
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 50
      Lookup = True
    end
    object registropuncodigo: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'puncodigo'
      Required = True
    end
    object registropunidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'punidentificacao'
      LookupDataSet = pun
      LookupKeyFields = 'puncodigo'
      LookupResultField = 'punidentificacao'
      KeyFields = 'puncodigo'
      Size = 50
      Lookup = True
    end
    object registrospupreco: TCurrencyField
      DisplayLabel = 'Pre'#231'o R$'
      FieldName = 'spupreco'
      EditFormat = '#,##0.00'
    end
    object registroproduto: TIntegerField
      FieldName = 'produto'
    end
    object registrospuadicional: TIntegerField
      DisplayLabel = 'Cobrar com Adicional'
      FieldName = 'spuadicional'
      Required = True
    end
    object registrosenspuadicional: TStringField
      FieldKind = fkLookup
      FieldName = 'senspuadicional'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'spuadicional'
      Size = 5
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Left = 324
    Top = 32
  end
  object pun: TUniQuery
    SQL.Strings = (
      'select puncodigo, punidentificacao from pun')
    Left = 356
    Top = 184
    object punpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object punpunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Size = 50
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 672
    Top = 96
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 596
    Top = 160
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
