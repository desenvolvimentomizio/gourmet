inherited fete: Tfete
  ActiveControl = etecontato
  Caption = 'Email'
  ClientHeight = 143
  ClientWidth = 635
  ExplicitWidth = 651
  ExplicitHeight = 182
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 114
    Width = 635
    ExplicitTop = 114
    ExplicitWidth = 635
    inherited bconfirma: TBitBtn
      Left = 481
      ExplicitLeft = 481
    end
    inherited bcancela: TBitBtn
      Left = 556
      ExplicitLeft = 556
    end
    inherited bfechar: TBitBtn
      Left = 416
      ExplicitLeft = 416
    end
  end
  inherited paginas: TPageControl
    Width = 635
    Height = 114
    ExplicitWidth = 635
    ExplicitHeight = 114
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 627
      ExplicitHeight = 86
      object Label1: TLabel
        Left = 9
        Top = 8
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contato'
        FocusControl = etecontato
      end
      object Label2: TLabel
        Left = 326
        Top = 8
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Departamento'
        FocusControl = etedepartamento
      end
      object Label3: TLabel
        Left = 3
        Top = 35
        Width = 24
        Height = 13
        CustomHint = BalloonHint
        Caption = 'email'
        FocusControl = eteemail
      end
      object Label4: TLabel
        Left = 9
        Top = 62
        Width = 124
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Envia NFE para este email'
        FocusControl = eteenvianfe
      end
      object etecontato: TDBEdit
        Left = 139
        Top = 5
        Width = 160
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etecontato'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etedepartamento: TDBEdit
        Left = 401
        Top = 5
        Width = 192
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etedepartamento'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object eteemail: TDBEdit
        Left = 139
        Top = 32
        Width = 451
        Height = 21
        CustomHint = BalloonHint
        DataField = 'eteemail'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object eteenvianfe: TDBEdit
        Left = 139
        Top = 59
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'eteenvianfe'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select etecodigo,etdcodigo,etecontato,etedepartamento,eteemail,e' +
        'teenvianfe from ete '
      'where etecodigo=:etecodigo and'
      'ete.etdcodigo=:etdcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etecodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object registroetecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etecodigo'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registroetecontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'etecontato'
    end
    object registroetedepartamento: TStringField
      DisplayLabel = 'Departamento'
      FieldName = 'etedepartamento'
    end
    object registroeteemail: TStringField
      DisplayLabel = 'email'
      FieldName = 'eteemail'
      Size = 100
    end
    object registroeteenvianfe: TIntegerField
      DisplayLabel = 'Envia NFE'
      FieldName = 'eteenvianfe'
    end
    object registrosenenvianfe: TStringField
      FieldKind = fkLookup
      FieldName = 'senenvianfe'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'eteenvianfe'
      Size = 5
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 240
    Top = 56
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
