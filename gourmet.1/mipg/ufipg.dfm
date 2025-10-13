inherited fipg: Tfipg
  ActiveControl = rfichave
  Caption = 'Iten da Programa'#231#227'o de Pagamento'
  ClientHeight = 277
  ClientWidth = 632
  ExplicitWidth = 648
  ExplicitHeight = 316
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 248
    Width = 632
    ExplicitTop = 248
    ExplicitWidth = 632
    inherited bconfirma: TBitBtn
      Left = 478
      ExplicitLeft = 478
    end
    inherited bcancela: TBitBtn
      Left = 553
      ExplicitLeft = 553
    end
    inherited bfechar: TBitBtn
      Left = 413
      ExplicitLeft = 413
    end
  end
  inherited paginas: TPageControl
    Width = 632
    Height = 248
    ExplicitWidth = 632
    ExplicitHeight = 248
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 624
      ExplicitHeight = 220
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = ipgchave
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Contas a Pagar'
        FocusControl = rfichave
      end
      object Label4: TLabel
        Left = 8
        Top = 168
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Pagamento'
        FocusControl = tficodigo
      end
      object lbtfinumerocheque: TLabel
        Left = 382
        Top = 168
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Cheque'
        FocusControl = ipgnumerocheque
        Visible = False
      end
      object Label6: TLabel
        Left = 8
        Top = 195
        Width = 102
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor a Programar R$'
        FocusControl = rfivalor
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 104
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do fornecedor'
        FocusControl = etdcodigo
      end
      object Label7: TLabel
        Left = 8
        Top = 87
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Emiss'#227'o'
        FocusControl = rfiemissao
      end
      object Label8: TLabel
        Left = 239
        Top = 87
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Vencimento'
        FocusControl = rfivencimento
      end
      object Label9: TLabel
        Left = 8
        Top = 114
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = rfihistorico
      end
      object Label10: TLabel
        Left = 437
        Top = 87
        Width = 37
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero'
        FocusControl = rfinumero
      end
      object Label11: TLabel
        Left = 8
        Top = 141
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dias de atrazo'
        FocusControl = rfidias
      end
      object Label12: TLabel
        Left = 232
        Top = 141
        Width = 66
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Juros a pagar'
        FocusControl = rfijuros
      end
      object Label13: TLabel
        Left = 432
        Top = 141
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Saldo R$'
        FocusControl = rfisaldogeral
      end
      object ipgchave: TDBEdit
        Left = 144
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ipgchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object rfichave: TDBEdit
        Left = 144
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rfichave'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = rfichaveExit
      end
      object tficodigo: TDBEdit
        Left = 144
        Top = 165
        Width = 44
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tficodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = tficodigoExit
      end
      object ipgnumerocheque: TDBEdit
        Left = 480
        Top = 165
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ipgnumerocheque'
        DataSource = DSRegistro
        TabOrder = 3
        Visible = False
      end
      object rfivalor: TDBEdit
        Left = 144
        Top = 192
        Width = 137
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rfivalor'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object etdcodigo: TDBEdit
        Left = 144
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'etdcodigo'
        DataSource = Dv_rfi
        ReadOnly = True
        TabOrder = 5
      end
      object etdidentificacao: TDBEdit
        Left = 223
        Top = 57
        Width = 391
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'etdidentificacao'
        DataSource = Dv_rfi
        ReadOnly = True
        TabOrder = 6
      end
      object rfiemissao: TDBEdit
        Left = 144
        Top = 84
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'rfiemissao'
        DataSource = Dv_rfi
        ReadOnly = True
        TabOrder = 7
      end
      object rfivencimento: TDBEdit
        Left = 300
        Top = 84
        Width = 109
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'rfivencimento'
        DataSource = Dv_rfi
        ReadOnly = True
        TabOrder = 8
      end
      object rfihistorico: TDBEdit
        Left = 144
        Top = 111
        Width = 470
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'rfihistorico'
        DataSource = Dv_rfi
        ReadOnly = True
        TabOrder = 9
      end
      object rfinumero: TDBEdit
        Left = 480
        Top = 84
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'rfinumero'
        DataSource = Dv_rfi
        ReadOnly = True
        TabOrder = 10
      end
      object rfidias: TDBEdit
        Left = 144
        Top = 138
        Width = 44
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'rfidias'
        DataSource = Dv_rfi
        ReadOnly = True
        TabOrder = 11
      end
      object rfijuros: TDBEdit
        Left = 304
        Top = 138
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'rfijuros'
        DataSource = Dv_rfi
        ReadOnly = True
        TabOrder = 12
      end
      object rfisaldogeral: TDBEdit
        Left = 480
        Top = 138
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'rfisaldogeral'
        DataSource = Dv_rfi
        ReadOnly = True
        TabOrder = 13
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 300
    Top = 240
  end
  inherited cfg: TUniQuery
    Left = 724
  end
  inherited consulta: TUniQuery
    Left = 456
    Top = 228
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ipgchave,'
      '  ppgchave,'
      '  rfichave,'
      '  tficodigo,'
      '  rfivalor,'
      '  ipgnumerocheque,'
      '  clbcodigo,'
      '  flacodigo'
      'FROM ipg where ipgchave=:ipgchave and ppgchave=:ppgchave')
    Left = 492
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ipgchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ppgchave'
        Value = nil
      end>
    object registroipgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'ipgchave'
    end
    object registroppgchave: TIntegerField
      DisplayLabel = 'Programa'#231#227'o de Pagamento'
      FieldName = 'ppgchave'
    end
    object registrorfichave: TIntegerField
      DisplayLabel = 'Contas a Pagar'
      FieldName = 'rfichave'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = cpa
      LookupKeyFields = 'rfichave'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'rfichave'
      Size = 50
      Lookup = True
    end
    object registrotficodigo: TIntegerField
      DisplayLabel = 'Tipo de Pagamento'
      FieldName = 'tficodigo'
      Required = True
    end
    object registrotfiidenticacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tfiidenticacao'
      LookupDataSet = tfi
      LookupKeyFields = 'tficodigo'
      LookupResultField = 'tfiidentificacao'
      KeyFields = 'tficodigo'
      Size = 50
      Lookup = True
    end
    object registroipgnumerocheque: TStringField
      DisplayLabel = 'N'#250'mero do Cheque'
      FieldName = 'ipgnumerocheque'
      Size = 10
    end
    object registrorfivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rfivalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#0.00'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  inherited dcp: TUniQuery
    Left = 144
    Top = 260
  end
  inherited dtb: TUniQuery
    Left = 100
    Top = 260
  end
  inherited coa: TUniQuery
    Left = 80
    Top = 276
  end
  inherited pfr: TUniQuery
    Left = 760
    Top = 124
  end
  inherited psf: TUniQuery
    Left = 784
    Top = 172
  end
  inherited dcl: TUniQuery
    Left = 732
    Top = 176
  end
  inherited BalloonHint: TBalloonHint
    Left = 692
    Top = 264
  end
  inherited acoesfrm: TActionList
    Left = 676
    Top = 252
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object v_rfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  v_rfi.rfichave,'
      '  v_rfi.etdcodigo,'
      '  v_rfi.rfiemissao,'
      '  v_rfi.rfivencimento,'
      '  v_rfi.rfinumero,'
      '  v_rfi.rfihistorico,'
      '  v_rfi.etdidentificacao,'
      '  v_rfi.rfidias,'
      '  v_rfi.rfijuros,'
      '  v_rfi.rfimoradia,'
      '  v_rfi.rfisaldogeral,'
      '  v_rfi.tficodigo'
      '  FROM v_rfi'
      'where v_rfi.rfichave=:rfichave')
    Left = 364
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object v_rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object v_rfietdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object v_rfirfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object v_rfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object v_rfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'rfinumero'
      Size = 10
    end
    object v_rfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 50
    end
    object v_rfietdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object v_rfirfidias: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'rfidias'
    end
    object v_rfirfijuros: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'rfijuros'
      DisplayFormat = '#,##0.00'
    end
    object v_rfirfisaldogeral: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
    end
    object v_rfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
  end
  object Dv_rfi: TDataSource
    DataSet = v_rfi
    Left = 440
    Top = 288
  end
  object tfi: TUniQuery
    SQL.Strings = (
      'select tficodigo, tfiidentificacao from tfi')
    Left = 556
    Top = 24
    object tfitficodigo: TIntegerField
      FieldName = 'tficodigo'
    end
    object tfitfiidentificacao: TStringField
      FieldName = 'tfiidentificacao'
      Size = 50
    end
  end
  object cpa: TUniQuery
    SQL.Strings = (
      
        'select rfichave, etdidentificacao from v_rfi where rfisaldogeral' +
        '>0')
    Left = 428
    Top = 32
    object cparfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object cpaetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
