inherited fcfgmflh: Tfcfgmflh
  ActiveControl = actImplantarEventosPadroes
  Caption = 'Configura'#231#245'es da Folha Gerencial'
  PixelsPerInch = 96
  TextHeight = 13
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 7
        Top = 46
        Width = 116
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento para Pagamento'
        FocusControl = cfgevfpagto
      end
      object Label2: TLabel
        Left = 7
        Top = 73
        Width = 123
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico para Pagamento'
        FocusControl = cfgphgpagto
      end
      object lblccgcodigo: TLabel
        Left = 7
        Top = 100
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Centro de Custo'
        FocusControl = cfgccgcodigo
      end
      object cfgevfpagto: TDBEdit
        Left = 136
        Top = 43
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgevfpagto'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgphgpagto: TDBEdit
        Left = 136
        Top = 70
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgphgpagto'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object actImplantarEventosPadroes: TButton
        Left = 136
        Top = 12
        Width = 171
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Implantar Eventos Padr'#245'es'
        TabOrder = 2
        OnClick = actImplantarEventosPadroesClick
      end
      object cfgccgcodigo: TDBEdit
        Left = 136
        Top = 97
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgccgcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cfgmodeloleitor: TDBRadioGroup
        Left = 136
        Top = 136
        Width = 153
        Height = 105
        CustomHint = BalloonHint
        Caption = 'Modelo Leitor Biom'#233'trico '
        DataField = 'cfgmodeloleitor'
        DataSource = DSRegistro
        Items.Strings = (
          'Sem Leitor'
          'NitGet HDFU14'
          'Multilaser GA151')
        TabOrder = 4
        Values.Strings = (
          '0'
          '1'
          '2')
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Top = 184
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgusactb, cfgctbusaccg from cfg, cfgmctb  WHERE cfg.cfgc' +
        'odigo=cfgmctb.cfgcodigo and cfg.cfgcodigo=:flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgevfpagto,'
      '  cfgphgpagto,'
      '  cfgccgcodigo,'
      '  cfgmodeloleitor'
      'FROM cfgmflh where cfgcodigo=:cfgcodigo')
    Left = 284
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registrocfgphgpagto: TIntegerField
      DisplayLabel = 'Hist'#243'rico para Pagamento'
      FieldName = 'cfgphgpagto'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'cfgphgpagto'
      Size = 50
      Lookup = True
    end
    object registrocfgevfpagto: TIntegerField
      DisplayLabel = 'Evento para Pagamento'
      FieldName = 'cfgevfpagto'
      Required = True
    end
    object registroevfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'evfidentificacao'
      LookupDataSet = evf
      LookupKeyFields = 'evfcodigo'
      LookupResultField = 'evfidentificacao'
      KeyFields = 'cfgevfpagto'
      Size = 50
      Lookup = True
    end
    object registrocfgccgcodigo: TIntegerField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'cfgccgcodigo'
    end
    object registroccgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ccgidentificacao'
      LookupDataSet = ccg
      LookupKeyFields = 'ccgcodigo'
      LookupResultField = 'ccgidentificacao'
      KeyFields = 'cfgccgcodigo'
      Size = 50
      Lookup = True
    end
    object registrocfgmodeloleitor: TIntegerField
      FieldName = 'cfgmodeloleitor'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object evf: TUniQuery
    SQL.Strings = (
      'select evfcodigo, evfidentificacao from evf')
    Left = 232
    Top = 240
    object evfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object evfevfidentificacao: TStringField
      FieldName = 'evfidentificacao'
      Size = 50
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 232
    Top = 296
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object UniScript: TUniScript
    SQL.Strings = (
      ''
      'DELETE From evf;'
      ''
      ''
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(1, NULL, '#39'SAL'#193'RIO NOMINAL'#39', 1, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(2, NULL, '#39'COMISS'#195'O'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(3, NULL, '#39'GRATIFICA'#199#195'O'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(4, NULL, '#39'SAL'#193'RIO FAM'#205'LIA'#39', 1, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(5, NULL, '#39'DESCONTO DE INSS'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(6, NULL, '#39'FALTAS E ATRASOS'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(7, NULL, '#39'HORAS EXTRAS A 50%'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(8, NULL, '#39'HORAS EXTRAS A 100%'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(9, NULL, '#39'ADICIONAL TRABALHO NOTURNO'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(10, NULL, '#39'ADICIONAL DE PERICULOSIDADE'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(11, NULL, '#39'ADICIONAL DE INSALUBRIDADE'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(12, NULL, '#39'VALE'#39', 2, 0, 1);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(13, NULL, '#39'IRRF'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(14, NULL, '#39'1'#170' PARCELA 13'#176' SAL'#193'RIO'#39', 2, 1, 1);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(15, NULL, '#39'2'#170' PARCELA 13'#186' SAL'#193'RIO '#39', 2, 1, 1);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(16, NULL, '#39'SALDO RESTANTE 13'#186' SAL'#193'RIO'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(17, NULL, '#39'PAGAMENTO DE F'#201'RIAS'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(18, NULL, '#39'ADICIONAL DE 1/3 SOBRE F'#201'RIAS'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(19, NULL, '#39'DESCANSO SEMANAL REMUNERADO (DSR)'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(20, NULL, '#39'DSR SOBRE HORAS EXTRAS'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(21, NULL, '#39'OUTRAS VANTAGENS'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(22, NULL, '#39'PR'#211'-LABORE'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(23, NULL, '#39'VERBAS RESCIS'#211'RIAS'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(24, NULL, '#39'SAL'#193'RIO MATERNIDADE'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(25, NULL, '#39'CONTRIBUI'#199#195'O SINDICAL'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(26, NULL, '#39'CONV'#202'NIO DESCONTADO EM FOLHA'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(27, NULL, '#39'PENS'#195'O JUDICIAL'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(28, NULL, '#39'DESCONTO DE QUEBRA DE OPERADOR'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(29, NULL, '#39'DESCONTO DE PREJU'#205'ZO DOLOSO '#192' EMPRESA'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(30, NULL, '#39'DESCONTO DE ALUGUEL FUNCIONAL'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(31, NULL, '#39'DESCONTO DE ALIMENTA'#199#195'O'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(32, NULL, '#39'REMUNERA'#199#195'O L'#205'QUIDA'#39', 2, 1, 1);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(33, NULL, '#39'DESCONTO DE ADIANTAMENTO'#39', 2, 0, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(34, NULL, '#39'ADIANTAMENTO'#39', 2, 1, 1);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(35, NULL, '#39'PARTICIPA'#199#195'O EM LUCROS E RESULTADOS'#39', 2, 1, 0);'
      
        'INSERT INTO evf(evfcodigo, pcgcodigo, evfidentificacao, tevcodig' +
        'o, cedcodigo, evfpelocco) VALUES'
      '(36, 5826, '#39'PAGAMENTO DE SAL'#193'RIO'#39', 2, 0, 1);'
      '')
    Left = 172
    Top = 160
  end
  object ccg: TUniQuery
    SQL.Strings = (
      'select ccgcodigo, ccgidentificacao from ccg')
    Left = 468
    Top = 328
    object ccgccgcodigo: TIntegerField
      FieldName = 'ccgcodigo'
    end
    object ccgccgidentificacao: TStringField
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
end
