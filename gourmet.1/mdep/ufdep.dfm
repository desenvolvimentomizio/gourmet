inherited fdep: Tfdep
  ActiveControl = etdcodigo
  Caption = 'Dependente'
  ClientHeight = 198
  ExplicitWidth = 812
  ExplicitHeight = 237
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 169
    ExplicitTop = 169
  end
  inherited paginas: TPageControl
    Height = 169
    ExplicitHeight = 169
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 141
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = depchave
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
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Dependencia'
        FocusControl = gpacodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Nascimento'
        FocusControl = depdatanascimento
      end
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 104
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Dependente'
        FocusControl = depidentificacao
      end
      object depchave: TDBEdit
        Left = 176
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'depchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 176
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object gpacodigo: TDBEdit
        Left = 176
        Top = 84
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'gpacodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object depdatanascimento: TDBEdit
        Left = 176
        Top = 111
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'depdatanascimento'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object depidentificacao: TDBEdit
        Left = 176
        Top = 57
        Width = 462
        Height = 21
        CustomHint = BalloonHint
        DataField = 'depidentificacao'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  depchave,'
      '  etdcodigo,'
      '  depidentificacao,'
      '  depdatanascimento,'
      '  gpacodigo'
      'FROM dep where depchave=:depchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'depchave'
        Value = nil
      end>
    object registrodepchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'depchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd'
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
    object registrodepidentificacao: TStringField
      DisplayLabel = 'Nome do Dependente'
      FieldName = 'depidentificacao'
      Required = True
      Size = 50
    end
    object registrodepdatanascimento: TDateField
      DisplayLabel = 'Data Nasc.'
      FieldName = 'depdatanascimento'
      Required = True
    end
    object registrogpacodigo: TIntegerField
      FieldName = 'gpacodigo'
      Required = True
    end
    object registrogpaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'gpaidentificacao'
      LookupDataSet = gpa
      LookupKeyFields = 'gpacodigo'
      LookupResultField = 'gpaidentificacao'
      KeyFields = 'gpacodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object gpa: TUniQuery
    SQL.Strings = (
      'select gpacodigo, gpaidentificacao from gpa')
    Left = 460
    Top = 312
    object gpagpacodigo: TIntegerField
      FieldName = 'gpacodigo'
    end
    object gpagpaidentificacao: TStringField
      FieldName = 'gpaidentificacao'
      Size = 50
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 488
    Top = 312
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
