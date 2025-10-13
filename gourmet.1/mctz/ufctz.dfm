inherited fctz: Tfctz
  ActiveControl = rmgvalor
  Caption = 'Contabiliza'#231#227'o'
  ClientHeight = 393
  ClientWidth = 764
  ExplicitWidth = 780
  ExplicitHeight = 432
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 364
    Width = 764
    ExplicitTop = 364
    ExplicitWidth = 764
    inherited bconfirma: TBitBtn
      Left = 610
      ExplicitLeft = 610
    end
    inherited bcancela: TBitBtn
      Left = 685
      ExplicitLeft = 685
    end
    inherited bfechar: TBitBtn
      Left = 545
      ExplicitLeft = 545
    end
  end
  inherited paginas: TPageControl
    Width = 764
    Height = 364
    ExplicitWidth = 764
    ExplicitHeight = 364
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 60
        Width = 29
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta'
        FocusControl = pcgcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 24
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor'
        FocusControl = rmgvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
        FocusControl = rmgcomplemento
      end
      object Label5: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object pcgcodigo: TDBEdit
        Left = 140
        Top = 57
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnEnter = pcgcodigoEnter
      end
      object rmgvalor: TDBEdit
        Left = 140
        Top = 30
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rmgvalor'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = rmgvalorExit
      end
      object rmgcomplemento: TDBEdit
        Left = 140
        Top = 111
        Width = 445
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rmgcomplemento'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object rmgchave: TDBEdit
        Left = 140
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rmgchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object PlDrg: TPanel
        Left = 0
        Top = 140
        Width = 756
        Height = 196
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 5
      end
      object phgcodigo: TDBEdit
        Left = 140
        Top = 84
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 3
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 640
    ExplicitLeft = 640
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select cfgctbmodo from cfgmctb')
    object cfgcfgctbmodo: TIntegerField
      FieldName = 'cfgctbmodo'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rmgchave,'
      '  mlgchave,'
      '  phgcodigo,'
      '  rmgdata,'
      '  rmgvalor,'
      '  rmgcomplemento,'
      '  pcgcodigo,'
      '  cedcodigo,'
      '  rmgcompetencia,'
      '  rmginclusao,'
      '  rmgtipo'
      'FROM rmg where rmgchave=:rmgchave')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmgchave'
        Value = nil
      end>
    object registrormgchave: TIntegerField
      FieldName = 'rmgchave'
    end
    object registromlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object registrophgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 50
      Lookup = True
    end
    object registrormgdata: TDateField
      FieldName = 'rmgdata'
      Required = True
    end
    object registrormgvalor: TFloatField
      FieldName = 'rmgvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrormgcomplemento: TStringField
      FieldName = 'rmgcomplemento'
      Size = 50
    end
    object registropcgcodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'pcgcodigo'
    end
    object registropcgidentideb: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgidentideb'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgcodigo'
      Size = 150
      Lookup = True
    end
    object registrormginclusao: TDateTimeField
      FieldName = 'rmginclusao'
    end
    object registrormgtipo: TIntegerField
      FieldName = 'rmgtipo'
      Required = True
    end
    object registrormgcompetencia: TDateField
      FieldName = 'rmgcompetencia'
    end
    object registrocedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
  end
  inherited dcl: TUniQuery
    Left = 604
    Top = 48
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcgcodigo,'
      
        '  CONCAT(pcgestrutural, '#39' - '#39', pcgidentificacao) AS pcgidentific' +
        'acao'
      'FROM pcg')
    Left = 664
    Top = 48
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 150
    end
  end
  object mlg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mlgchave,'
      '  clbcodigo,'
      '  mlgsituacao,'
      '  flacodigo,'
      '  mlgdata,'
      '  ltechave'
      'FROM mlg where ltechave=:ltechave')
    Left = 512
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object mlgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object mlgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mlgmlgsituacao: TIntegerField
      FieldName = 'mlgsituacao'
    end
    object mlgflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mlgmlgdata: TDateField
      FieldName = 'mlgdata'
    end
    object mlgltechave: TIntegerField
      FieldName = 'ltechave'
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 352
    Top = 32
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object drg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  drgchave,'
      '  mlgchave,'
      '  drgvalor,'
      '  drgtipo,'
      '  ccgcodigo,'
      '  drgpercentual'
      'FROM drg where mlgchave=:mlgchave')
    Left = 488
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mlgchave'
        Value = nil
      end>
    object drgdrgchave: TIntegerField
      FieldName = 'drgchave'
    end
    object drgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object drgdrgvalor: TFloatField
      FieldName = 'drgvalor'
    end
    object drgdrgtipo: TIntegerField
      FieldName = 'drgtipo'
    end
    object drgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object drgdrgpercentual: TFloatField
      FieldName = 'drgpercentual'
    end
  end
end
