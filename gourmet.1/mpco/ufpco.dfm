inherited fpco: Tfpco
  ActiveControl = pcosubproduto
  Caption = 'Composi'#231#227'o do Produto'
  ClientHeight = 183
  ClientWidth = 565
  ExplicitWidth = 581
  ExplicitHeight = 222
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 154
    Width = 565
    ExplicitTop = 115
    ExplicitWidth = 346
    inherited bconfirma: TBitBtn
      Left = 411
      ExplicitLeft = 192
    end
    inherited bcancela: TBitBtn
      Left = 486
      ExplicitLeft = 267
    end
    inherited bfechar: TBitBtn
      Left = 346
      ExplicitLeft = 127
    end
  end
  inherited paginas: TPageControl
    Width = 565
    Height = 154
    ExplicitWidth = 346
    ExplicitHeight = 115
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 338
      ExplicitHeight = 87
      object Label2: TLabel
        Left = 8
        Top = 6
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto'
        FocusControl = pcosubproduto
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade'
        FocusControl = unicodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 56
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade'
        FocusControl = pcoquantidade
      end
      object Label1: TLabel
        Left = 8
        Top = 87
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto/Sabor fixo'
        FocusControl = pcosaborfixo
      end
      object pcosubproduto: TDBEdit
        Left = 134
        Top = 3
        Width = 47
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcosubproduto'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object unicodigo: TDBEdit
        Left = 134
        Top = 30
        Width = 47
        Height = 21
        CustomHint = BalloonHint
        DataField = 'unicodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object pcoquantidade: TDBEdit
        Left = 134
        Top = 57
        Width = 79
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcoquantidade'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object pcosaborfixo: TDBEdit
        Left = 134
        Top = 84
        Width = 35
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcosaborfixo'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select pcocodigo,procodigo,pcosubproduto,unicodigo,pcoquantidade' +
        ',pcosaborfixo from pco'
      'where pcocodigo=:pcocodigo and pco.procodigo=:procodigo')
    Left = 296
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcocodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object registropcocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcocodigo'
    end
    object registroprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object registropcosubproduto: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'pcosubproduto'
      Required = True
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'pcosubproduto'
      Size = 50
      Lookup = True
    end
    object registrounicodigo: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'unicodigo'
      Required = True
    end
    object registrouninome: TStringField
      FieldKind = fkLookup
      FieldName = 'uninome'
      LookupDataSet = uni
      LookupKeyFields = 'unicodigo'
      LookupResultField = 'uninome'
      KeyFields = 'unicodigo'
      Lookup = True
    end
    object registropcoquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'pcoquantidade'
      Required = True
    end
    object registropcosaborfixo: TIntegerField
      DisplayLabel = 'Produto/Sabor fixo'
      FieldName = 'pcosaborfixo'
      Required = True
    end
    object registrosenpcosaborfixo: TStringField
      FieldKind = fkLookup
      FieldName = 'senpcosaborfixo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'pcosaborfixo'
      Size = 5
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object uni: TUniQuery
    SQL.Strings = (
      'select unicodigo,uninome from uni')
    Left = 392
    Top = 172
    object uniunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 428
    Top = 172
    object proprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'pronome'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 204
    Top = 128
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
