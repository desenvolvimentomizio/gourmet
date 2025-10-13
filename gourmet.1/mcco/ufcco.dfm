inherited fcco: Tfcco
  ActiveControl = ccoemissao
  Caption = 'Conta Corrente'
  ClientHeight = 488
  ClientWidth = 903
  ExplicitWidth = 919
  ExplicitHeight = 527
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 459
    Width = 903
    ExplicitTop = 459
    ExplicitWidth = 903
    inherited bconfirma: TBitBtn
      Left = 749
      ExplicitLeft = 749
    end
    inherited bcancela: TBitBtn
      Left = 824
      ExplicitLeft = 824
    end
    inherited bfechar: TBitBtn
      Left = 684
      ExplicitLeft = 684
    end
    object etdcodigo: TDBEdit
      Left = 140
      Top = 2
      Width = 73
      Height = 21
      CustomHint = BalloonHint
      TabStop = False
      DataField = 'etdcodigo'
      DataSource = DSRegistro
      ReadOnly = True
      TabOrder = 4
      Visible = False
    end
  end
  inherited paginas: TPageControl
    Width = 903
    Height = 459
    ExplicitWidth = 903
    ExplicitHeight = 459
    inherited Principal: TTabSheet
      ExplicitWidth = 895
      ExplicitHeight = 431
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Registro'
        FocusControl = ccochave
      end
      object lccovencimento: TLabel
        Left = 327
        Top = 33
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Vencimento'
        FocusControl = ccovencimento
      end
      object Label3: TLabel
        Left = 9
        Top = 33
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data da Emiss'#227'o'
        FocusControl = ccoemissao
      end
      object Label4: TLabel
        Left = 8
        Top = 60
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza'
        FocusControl = cedcodigo
      end
      object Label5: TLabel
        Left = 7
        Top = 142
        Width = 124
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento do Hist'#243'rico'
      end
      object Label6: TLabel
        Left = 8
        Top = 189
        Width = 109
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Documento'
        FocusControl = cconumero
      end
      object Label7: TLabel
        Left = 8
        Top = 216
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = ccovalor
      end
      object Label10: TLabel
        Left = 8
        Top = 88
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Favorecido'
        FocusControl = cedcodigo
      end
      object bbuscaetd: TSpeedButton
        Left = 518
        Top = 85
        Width = 23
        Height = 21
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = bbuscaetdClick
      end
      object Label8: TLabel
        Left = 8
        Top = 115
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object ccochave: TDBEdit
        Left = 136
        Top = 3
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccochave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ccovencimento: TDBEdit
        Left = 436
        Top = 30
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccovencimento'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = ccovencimentoExit
      end
      object ccoemissao: TDBEdit
        Left = 136
        Top = 30
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccoemissao'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = ccoemissaoExit
      end
      object cedcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cconumero: TDBEdit
        Left = 135
        Top = 186
        Width = 161
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cconumero'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object ccovalor: TDBEdit
        Left = 135
        Top = 213
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccovalor'
        DataSource = DSRegistro
        TabOrder = 8
        OnExit = ccovalorExit
      end
      object ccohistorico: TDBMemo
        Left = 135
        Top = 139
        Width = 406
        Height = 41
        CustomHint = BalloonHint
        DataField = 'ccohistorico'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object ccofavorecido: TDBEdit
        Left = 136
        Top = 85
        Width = 376
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ccofavorecido'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 112
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object plContab: TPanel
        Left = 0
        Top = 246
        Width = 895
        Height = 185
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvLowered
        Caption = 'Classifica'#231#227'o Financeira ...'
        TabOrder = 9
        Visible = False
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 60
    Top = 80
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgusactb, cfgctbusaccg from cfg, cfgmctb  WHERE cfg.cfgc' +
        'odigo=cfgmctb.cfgcodigo and cfg.cfgcodigo=:flacodigo')
    Left = 504
    Top = 128
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
  inherited consulta: TUniQuery
    Left = 448
    Top = 96
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccochave,'
      '  ctacodigo,'
      '  toccodigo,'
      '  cedcodigo,'
      '  clbcodigo,'
      '  tficodigo,'
      '  moecodigo,'
      '  ccoemissao,'
      '  ccovencimento,'
      '  cconumero,'
      '  ccohistorico,'
      '  ccovalor,'
      '  ccochaveorig,'
      '  ccochavedest,'
      '  ccoconciliado,'
      '  ccoextenso,'
      '  etdcodigo,'
      '  ccodatamov,'
      '  ccohoraregistro,'
      '  ccodataregistro,'
      '  ccofavorecido,'
      '  phgcodigo,'
      '  flacodigo'
      'FROM cco'
      'WHERE cco.ccochave = :ccochave'
      'AND cco.ctacodigo = :ctacodigo')
    Left = 100
    Top = 60
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ctacodigo'
        Value = nil
      end>
    object registroccochave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ccochave'
    end
    object registroctacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object registroccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registroccovencimento: TDateField
      FieldName = 'ccovencimento'
      Required = True
    end
    object registrotoccodigo: TIntegerField
      DisplayLabel = 'OP'
      FieldName = 'toccodigo'
    end
    object registrocedcodigo: TIntegerField
      DisplayLabel = 'N'
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrocedidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidentificacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 15
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotficodigo: TIntegerField
      DisplayLabel = 'TFI'
      FieldName = 'tficodigo'
    end
    object registromoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object registrocconumero: TStringField
      FieldName = 'cconumero'
      Size = 15
    end
    object registroccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 50
    end
    object registroccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroccochaveorig: TIntegerField
      FieldName = 'ccochaveorig'
    end
    object registroccochavedest: TIntegerField
      FieldName = 'ccochavedest'
    end
    object registroccoconciliado: TIntegerField
      DisplayLabel = 'Conciliado'
      FieldName = 'ccoconciliado'
      Required = True
    end
    object registroccoextenso: TStringField
      FieldName = 'ccoextenso'
      Size = 2000
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registroccodatamov: TDateField
      FieldName = 'ccodatamov'
    end
    object registroccodataregistro: TDateField
      FieldName = 'ccodataregistro'
    end
    object registroccohoraregistro: TTimeField
      FieldName = 'ccohoraregistro'
    end
    object registroccofavorecido: TStringField
      FieldName = 'ccofavorecido'
      Size = 80
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico Base'
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
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  inherited dcp: TUniQuery
    Left = 744
    Top = 188
  end
  inherited dtb: TUniQuery
    Left = 700
    Top = 188
  end
  inherited coa: TUniQuery
    Left = 664
    Top = 188
  end
  inherited pfr: TUniQuery
    Left = 572
    Top = 64
  end
  inherited psf: TUniQuery
    Left = 384
    Top = 72
  end
  inherited dcl: TUniQuery
    Left = 480
    Top = 88
  end
  inherited cau: TUniQuery
    Left = 488
    Top = 208
  end
  inherited err: TUniQuery
    Top = 212
  end
  inherited BalloonHint: TBalloonHint
    Left = 628
    Top = 48
  end
  inherited acoesfrm: TActionList
    Left = 300
    Top = 76
    object ActConciliar: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Conciliar'
      OnExecute = ActConciliarExecute
    end
  end
  object lte: TUniQuery
    Left = 380
    Top = 116
  end
  object ced: TUniQuery
    SQL.Strings = (
      'select cedcodigo, cedidentificacao from ced')
    Left = 176
    Top = 72
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 15
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 296
    Top = 160
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 432
    Top = 208
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object let: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  letchave,'
      '  ltechave,'
      '  etdcodigo'
      'FROM let limit 0')
    Left = 616
    Top = 200
    object letletchave: TIntegerField
      FieldName = 'letchave'
    end
    object letltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object letetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
end
