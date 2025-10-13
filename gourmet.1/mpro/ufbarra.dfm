inherited fbarra: Tfbarra
  ActiveControl = punbarra
  Caption = 'Ajuste de C'#243'digo de BARRA'
  ClientHeight = 121
  ClientWidth = 540
  ExplicitWidth = 556
  ExplicitHeight = 160
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 92
    Width = 540
    ExplicitTop = 220
    ExplicitWidth = 540
    inherited bconfirma: TBitBtn
      Left = 386
      ExplicitLeft = 386
    end
    inherited bcancela: TBitBtn
      Left = 461
      ExplicitLeft = 461
    end
    inherited bfechar: TBitBtn
      Left = 321
      ExplicitLeft = 321
    end
  end
  inherited paginas: TPageControl
    Width = 540
    Height = 92
    ExplicitWidth = 540
    ExplicitHeight = 220
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 532
      ExplicitHeight = 192
      object Label11: TLabel
        Left = 8
        Top = 12
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Barra Interno'
        FocusControl = punbarrasistema
      end
      object Label1: TLabel
        Left = 8
        Top = 39
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Barra'
        FocusControl = punbarra
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object punbarrasistema: TDBEdit
        Left = 142
        Top = 9
        Width = 19
        Height = 21
        CustomHint = BalloonHint
        DataField = 'punbarrasistema'
        DataSource = DSRegistro
        MaxLength = 1
        TabOrder = 0
        OnExit = punbarrasistemaExit
        OnKeyPress = FormKeyPress
      end
      object punbarra: TDBEdit
        Left = 142
        Top = 36
        Width = 161
        Height = 21
        CustomHint = BalloonHint
        Color = clYellow
        DataField = 'punbarra'
        DataSource = DSRegistro
        MaxLength = 14
        TabOrder = 1
        OnEnter = punbarraEnter
        OnExit = punbarraExit
        OnKeyPress = FormKeyPress
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select puncodigo, punbarra,procodigo,unicodigo,punbarrasistema f' +
        'rom pun where puncodigo=:puncodigo')
    Left = 272
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puncodigo'
        Value = nil
      end>
    object registropuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object registropunbarrasistema: TIntegerField
      FieldName = 'punbarrasistema'
      Required = True
    end
    object registrosenbarrasistema: TStringField
      FieldKind = fkLookup
      FieldName = 'senbarrasistema'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'punbarrasistema'
      Size = 5
      Lookup = True
    end
    object registropunbarra: TStringField
      FieldName = 'punbarra'
      Required = True
      Size = 15
    end
    object registroprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object registrounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 204
    Top = 44
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object ACBrValidador: TACBrValidador
    TipoDocto = docGTIN
    IgnorarChar = './-'
    Left = 336
    Top = 44
  end
end
