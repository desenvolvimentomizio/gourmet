inherited fmcg: Tfmcg
  ActiveControl = ccgcodigo
  Caption = 'Movimenta'#231#227'o de Centros de Custos'
  ClientHeight = 199
  ExplicitHeight = 238
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 170
    ExplicitTop = 170
  end
  inherited paginas: TPageControl
    Height = 170
    ExplicitHeight = 170
    inherited Principal: TTabSheet
      ExplicitHeight = 142
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = mcgchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Centro de Custo'
        FocusControl = ccgcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 114
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = mcgvalor
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do Vencimento'
        FocusControl = mcgdata
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 107
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Compet'#234'ncia (AA-MM)'
        FocusControl = mcgcompetencia
      end
      object mcgchave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mcgchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ccgcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccgcodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnEnter = ccgcodigoEnter
      end
      object mcgvalor: TDBEdit
        Left = 136
        Top = 111
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mcgvalor'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object mcgdata: TDBEdit
        Left = 136
        Top = 57
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mcgdata'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = mcgdataExit
      end
      object mcgcompetencia: TDBEdit
        Left = 136
        Top = 84
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mcgcompetencia'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = mcgcompetenciaExit
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcgchave,'
      '  ccgcodigo,'
      '  mcgvalor,'
      '  mcgdata,'
      '  mcgtabela,'
      '  mcgchaveorigem,'
      '  clbcodigo,'
      '  mcgregistro,'
      '  rfichave,'
      '  mcgcompetencia'
      'FROM mcg where mcgchave=:mcgchave')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mcgchave'
        Value = nil
      end>
    object registromcgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mcgchave'
    end
    object registroccgcodigo: TIntegerField
      DisplayLabel = 'Centro de Custo'
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
    object registromcgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mcgvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromcgdata: TDateField
      DisplayLabel = 'Data do Registro'
      FieldName = 'mcgdata'
      Required = True
    end
    object registromcgchaveorigem: TIntegerField
      FieldName = 'mcgchaveorigem'
    end
    object registromcgtabela: TStringField
      FieldName = 'mcgtabela'
      Size = 50
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registromcgregistro: TDateTimeField
      FieldName = 'mcgregistro'
    end
    object registrorfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object registromcgcompetencia: TStringField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'mcgcompetencia'
      Required = True
      EditMask = '00\-00;1;_'
      Size = 10
    end
  end
  inherited dcp: TUniQuery
    Left = 656
    Top = 36
  end
  inherited dtb: TUniQuery
    Left = 612
    Top = 36
  end
  inherited coa: TUniQuery
    Left = 576
    Top = 36
  end
  inherited cpg: TUniQuery
    Left = 572
    Top = 96
  end
  inherited cpc: TUniQuery
    Left = 685
    Top = 97
  end
  object ccg: TUniQuery
    SQL.Strings = (
      'select ccgcodigo, ccgidentificacao from ccg')
    Left = 452
    Top = 88
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
  object tit: TUniQuery
    Left = 340
    Top = 40
  end
  object v_rfi: TUniQuery
    Left = 628
    Top = 80
  end
  object mcgaju: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcgchave,'
      '  ccgcodigo,'
      '  mcgvalor,'
      '  mcgdata,'
      '  mcgtabela,'
      '  mcgchaveorigem,'
      '  mcgsituacao,'
      '  clbcodigo,'
      '  mcgregistro,'
      '  rfichave'
      
        'FROM mcg where mcgchaveorigem=:mcgchaveorigem and mcgtabela='#39'rfi' +
        #39' and rfichave=:rfichave and ccgcodigo=:ccgcodigo'
      '')
    Left = 424
    Top = 65530
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mcgchaveorigem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ccgcodigo'
        Value = nil
      end>
    object mcgajumcgchave: TIntegerField
      FieldName = 'mcgchave'
    end
    object mcgajuccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object mcgajumcgvalor: TFloatField
      FieldName = 'mcgvalor'
    end
    object mcgajumcgdata: TDateField
      FieldName = 'mcgdata'
    end
    object mcgajumcgtabela: TStringField
      FieldName = 'mcgtabela'
      Size = 10
    end
    object mcgajumcgchaveorigem: TIntegerField
      FieldName = 'mcgchaveorigem'
    end
    object mcgajumcgsituacao: TIntegerField
      FieldName = 'mcgsituacao'
    end
    object mcgajuclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mcgajumcgregistro: TDateTimeField
      FieldName = 'mcgregistro'
    end
    object mcgajurfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
  object rfi: TUniQuery
    Left = 460
    Top = 65528
  end
end
