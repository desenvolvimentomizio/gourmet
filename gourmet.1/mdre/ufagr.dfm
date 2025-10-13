inherited fagr: Tfagr
  Caption = 'Agrupamento Geerncial'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = drechave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 104
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo de Acumula'#231#227'o'
        FocusControl = agrchave
      end
      object Label3: TLabel
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
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'drechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object agrchave: TDBEdit
        Left = 136
        Top = 30
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'agrchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object dreposicao: TDBEdit
        Left = 136
        Top = 57
        Width = 33
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
      '  agrchave,'
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
    object registroagrchave: TIntegerField
      FieldName = 'agrchave'
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
end
