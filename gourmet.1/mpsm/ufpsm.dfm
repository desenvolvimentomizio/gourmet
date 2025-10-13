inherited fpsm: Tfpsm
  Caption = 'Program'#231#227'o de SMS'
  ClientHeight = 515
  ExplicitHeight = 554
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 486
    ExplicitTop = 486
  end
  inherited paginas: TPageControl
    Height = 486
    ExplicitHeight = 486
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 458
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
        Width = 43
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Texto 01'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 43
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Texto 02'
        FocusControl = DBEdit1
      end
      object Label4: TLabel
        Left = 8
        Top = 195
        Width = 43
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Texto 03'
        FocusControl = DBEdit1
      end
      object Label5: TLabel
        Left = 8
        Top = 276
        Width = 43
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Texto 04'
        FocusControl = DBEdit1
      end
      object Label6: TLabel
        Left = 8
        Top = 357
        Width = 43
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Texto 05'
        FocusControl = DBEdit1
      end
      object qtletras1: TLabel
        Left = 72
        Top = 33
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        AutoSize = False
        Caption = 'Letras:'
      end
      object DBEdit1: TDBEdit
        Left = 136
        Top = 3
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'psmchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object psmtexto02: TDBMemo
        Left = 136
        Top = 111
        Width = 533
        Height = 75
        CustomHint = BalloonHint
        DataField = 'psmtexto02'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object psmtexto03: TDBMemo
        Left = 136
        Top = 192
        Width = 533
        Height = 75
        CustomHint = BalloonHint
        DataField = 'psmtexto03'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object psmtexto04: TDBMemo
        Left = 136
        Top = 273
        Width = 533
        Height = 75
        CustomHint = BalloonHint
        DataField = 'psmtexto04'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object psmtexto05: TDBMemo
        Left = 136
        Top = 354
        Width = 533
        Height = 75
        CustomHint = BalloonHint
        DataField = 'psmtexto05'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  object psmtexto01: TDBMemo [3]
    Left = 140
    Top = 54
    Width = 533
    Height = 75
    CustomHint = BalloonHint
    DataField = 'psmtexto01'
    DataSource = DSRegistro
    TabOrder = 3
    OnKeyUp = psmtexto01KeyUp
  end
  inherited DSRegistro: TUniDataSource
    Left = 204
    Top = 304
  end
  inherited consulta: TUniQuery
    Left = 712
    Top = 164
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  psmchave,'
      '  psmregistro,'
      '  clbcodigo,'
      '  psmtexto01,'
      '  psmtexto02,'
      '  psmtexto03,'
      '  psmtexto04,'
      '  psmtexto05'
      'FROM psm where psmchave=:psmchave')
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'psmchave'
        Value = nil
      end>
    object registropsmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'psmchave'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registropsmregistro: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'psmregistro'
    end
    object registropsmtexto01: TStringField
      DisplayLabel = 'Texto 01'
      FieldName = 'psmtexto01'
      Required = True
      Size = 250
    end
    object registropsmtexto02: TStringField
      DisplayLabel = 'Texto 02'
      FieldName = 'psmtexto02'
      Size = 250
    end
    object registropsmtexto03: TStringField
      DisplayLabel = 'Texto 03'
      FieldName = 'psmtexto03'
      Size = 250
    end
    object registropsmtexto04: TStringField
      DisplayLabel = 'Texto 04'
      FieldName = 'psmtexto04'
      Size = 250
    end
    object registropsmtexto05: TStringField
      DisplayLabel = 'Texto 05'
      FieldName = 'psmtexto05'
      Size = 250
    end
  end
  inherited dcp: TUniQuery
    Left = 664
    Top = 60
  end
  inherited dtb: TUniQuery
    Left = 620
    Top = 60
  end
  inherited coa: TUniQuery
    Left = 584
    Top = 60
  end
  inherited cpg: TUniQuery
    Left = 580
    Top = 120
  end
  inherited cpc: TUniQuery
    Left = 581
    Top = 169
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
