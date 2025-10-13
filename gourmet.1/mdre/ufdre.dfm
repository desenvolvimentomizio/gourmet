inherited fdre: Tfdre
  ActiveControl = ccgcodigo
  Caption = 'Conta para Agrupamento de Demonstrativos'
  ClientHeight = 153
  ClientWidth = 791
  ExplicitWidth = 807
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 124
    Width = 791
    ExplicitTop = 345
    ExplicitWidth = 791
    inherited bconfirma: TBitBtn
      Left = 637
      ExplicitLeft = 637
    end
    inherited bcancela: TBitBtn
      Left = 712
      ExplicitLeft = 712
    end
    inherited bfechar: TBitBtn
      Left = 572
      ExplicitLeft = 572
    end
  end
  inherited paginas: TPageControl
    Width = 791
    Height = 124
    ExplicitWidth = 791
    ExplicitHeight = 345
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 783
      ExplicitHeight = 317
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = drechave
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Gerencial'
        FocusControl = ccgcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 117
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Posi'#231#227'o no demostrativo'
        FocusControl = dreposicao
      end
      object drechave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ccgcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object dreposicao: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dreposicao'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  drechave,'
      '  grecodigo,'
      '  ccgcodigo,'
      '  dreposicao'
      'FROM dre'
      '  where drechave=:drechave and grecodigo=:grecodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'drechave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'grecodigo'
        Value = nil
      end>
    object registrodrechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'drechave'
    end
    object registrogrecodigo: TIntegerField
      DisplayLabel = 'Grupo de Contas'
      FieldName = 'grecodigo'
      Required = True
    end
    object registrogreidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'greidentificacao'
      LookupDataSet = gre
      LookupKeyFields = 'grecodigo'
      LookupResultField = 'greidentificacao'
      KeyFields = 'grecodigo'
      Size = 50
      Lookup = True
    end
    object registroccgcodigo: TIntegerField
      DisplayLabel = 'Conta Gerencial'
      FieldName = 'ccgcodigo'
      Required = True
    end
    object registroccgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgidentificacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'ccgcodigo'
      Size = 50
      Lookup = True
    end
    object registrodreposicao: TIntegerField
      DisplayLabel = 'Posi'#231#227'o no demostrativo'
      FieldName = 'dreposicao'
      Required = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ccg: TUniQuery
    SQL.Strings = (
      
        'select ccgcodigo, concat(ccgestrutural, '#39' '#39', ccgidentificacao ) ' +
        'as ccgidentificacao from ccg')
    Left = 672
    Top = 232
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
  object gre: TUniQuery
    SQL.Strings = (
      'select grecodigo, greidentificacao from gre')
    Left = 424
    Top = 280
    object gregrecodigo: TIntegerField
      FieldName = 'grecodigo'
    end
    object gregreidentificacao: TStringField
      FieldName = 'greidentificacao'
      Size = 50
    end
  end
end
