inherited fpca: Tfpca
  Caption = 'Tabela Auxiliar'
  ClientHeight = 143
  ClientWidth = 526
  ExplicitWidth = 542
  ExplicitHeight = 182
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 114
    Width = 526
    inherited bconfirma: TBitBtn
      Left = 372
    end
    inherited bcancela: TBitBtn
      Left = 447
    end
    inherited bfechar: TBitBtn
      Left = 307
    end
  end
  inherited paginas: TPageControl
    Width = 526
    Height = 114
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = pcachave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = pcaidentificacao
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome da Tabela'
        FocusControl = pcatabela
      end
      object pcachave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcachave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pcaidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 366
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcaidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object pcatabela: TDBEdit
        Left = 136
        Top = 57
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcatabela'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcachave,'
      '  pcaidentificacao,'
      '  procodigo,'
      '  pcatabela'
      'FROM pca where pcachave=:pcachave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcachave'
        Value = nil
      end>
    object registropcachave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'pcachave'
    end
    object registropcaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pcaidentificacao'
      Required = True
      Size = 50
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object registropcatabela: TStringField
      DisplayLabel = 'Nome da Tabela'
      FieldName = 'pcatabela'
      Required = True
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
