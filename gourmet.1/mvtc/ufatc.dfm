inherited frmbase1: Tfrmbase1
  Caption = 'Tabela de Pre'#231'o Autorizada'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = DBEdit1
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = DBEdit2
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tabela de Pre'#231'o'
        FocusControl = DBEdit3
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'In'#237'cio da Validade'
        FocusControl = DBEdit4
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Final da Validade'
        FocusControl = DBEdit5
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vtcchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 136
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 136
        Top = 57
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpvcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 136
        Top = 84
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vtcinicio'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 136
        Top = 111
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vtcfinal'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vtcchave,'
      '  clbcodigo,'
      '  tpvcodigo,'
      '  vtcinicio,'
      '  vtcfinal'
      'FROM vtc where vtcchave=:vtcchave')
    Left = 388
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vtcchave'
        Value = nil
      end>
    object registrovtcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'vtcchave'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registrotpvcodigo: TIntegerField
      DisplayLabel = 'Tabela de Pre'#231'o'
      FieldName = 'tpvcodigo'
      Required = True
    end
    object registrovtcinicio: TDateField
      DisplayLabel = 'In'#237'cio da Validade'
      FieldName = 'vtcinicio'
      Required = True
    end
    object registrovtcfinal: TDateField
      DisplayLabel = 'Final da Validade'
      FieldName = 'vtcfinal'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
