inherited fcfgmgou: Tfcfgmgou
  ActiveControl = cfgcodigo
  Caption = 'Configura'#231#245'es  do Vertical Gourmet'
  ClientHeight = 524
  ExplicitHeight = 563
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 495
    ExplicitTop = 495
  end
  inherited paginas: TPageControl
    Height = 495
    ExplicitHeight = 495
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 467
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = cfgcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 104
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade de Mesas'
        FocusControl = cfgmgouqtdmesas
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto Padr'#227'o Pesado'
        FocusControl = propesado
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 119
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pedido Inicial do Delivery'
        FocusControl = cfgmgoupedidelivery
      end
      object Label6: TLabel
        Left = 7
        Top = 141
        Width = 106
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pedido Inicial do Sal'#227'o'
        FocusControl = cfgmgounumepedint
      end
      object Label8: TLabel
        Left = 8
        Top = 195
        Width = 117
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Taxa de Atendimento %'
        FocusControl = cfgmgoutaxaatendimento
      end
      object Label10: TLabel
        Left = 8
        Top = 222
        Width = 148
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo para Taxa atendimento'
        FocusControl = cfgmgouproatendimento
      end
      object Label12: TLabel
        Left = 8
        Top = 276
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto REFEI'#199#195'O'
        FocusControl = cfgmgouprorefeicao
      end
      object Label13: TLabel
        Left = 8
        Top = 303
        Width = 153
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o fiscal para REFEI'#199#195'O'
        FocusControl = cfgmgoutoerefeicao
      end
      object Label14: TLabel
        Left = 9
        Top = 330
        Width = 159
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o fiscal FORA REFEI'#199#195'O'
        FocusControl = cfgmgoutoeforarefeicao
      end
      object Label15: TLabel
        Left = 9
        Top = 357
        Width = 141
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Relat'#243'rio Detalhado Entregas'
        FocusControl = cfgmgourelentrecomple
      end
      object Label16: TLabel
        Left = 8
        Top = 384
        Width = 147
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Relat'#243'rio Simplificado Entregas'
        FocusControl = cfgmgourelentreresumido
      end
      object Label18: TLabel
        Left = 8
        Top = 249
        Width = 154
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo para Taxa atend. Parcial'
        FocusControl = cfgmgouproatendimentoparcial
      end
      object Label19: TLabel
        Left = 7
        Top = 411
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hora da virada do dia'
        FocusControl = cfgmgouhoravirada
      end
      object Label7: TLabel
        Left = 8
        Top = 114
        Width = 114
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Vias comprovante Sal'#227'o'
        FocusControl = cfgmgouviasorc
      end
      object Label17: TLabel
        Left = 8
        Top = 168
        Width = 126
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Vias comprovante delivery'
        FocusControl = cfgmgouviasorcdelivery
      end
      object Label20: TLabel
        Left = 7
        Top = 438
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'T'#237'tulo CMDA/Mesa'
      end
      object Label23: TLabel
        Left = 325
        Top = 33
        Width = 325
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tempo em segundos para atualizar tela de entregas para ATEN'#199#195'O'
        FocusControl = cfgmgoutempoatuentrega1
      end
      object Label24: TLabel
        Left = 347
        Top = 60
        Width = 291
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tempo em segundos para tela de entregas para EM ATRAZO'
        FocusControl = cfgmgoutempoatuentrega2
      end
      object Label25: TLabel
        Left = 364
        Top = 114
        Width = 274
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Permite atualizar tela de Entregas mesmo com marca'#231#245'es'
        FocusControl = cfgmgouatualizaentrega
      end
      object Label26: TLabel
        Left = 387
        Top = 141
        Width = 251
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tempo em segundos para atualizar tela de produ'#231#227'o'
        FocusControl = cfgmgoutempoatuproducao
      end
      object Label27: TLabel
        Left = 362
        Top = 168
        Width = 276
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Permite atualizar tela de Produ'#231#227'o mesmo com marca'#231#245'es'
        FocusControl = cfgmgouatualizaproducao
      end
      object Label28: TLabel
        Left = 719
        Top = 33
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Segundos'
        FocusControl = cfgmgoutempoatuentrega1
      end
      object Label29: TLabel
        Left = 719
        Top = 60
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Segundos'
        FocusControl = cfgmgoutempoatuentrega1
      end
      object Label30: TLabel
        Left = 719
        Top = 141
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Segundos'
        FocusControl = cfgmgoutempoatuentrega1
      end
      object Label31: TLabel
        Left = 394
        Top = 87
        Width = 244
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tempo em segundos para atualizar tela de entrega'
        FocusControl = cfgmgoutempoentrega
      end
      object Label32: TLabel
        Left = 719
        Top = 87
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Segundos'
        FocusControl = cfgmgoutempoatuentrega1
      end
      object cfgcodigo: TDBEdit
        Left = 168
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgmgouqtdmesas: TDBEdit
        Left = 168
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgouqtdmesas'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object propesado: TDBEdit
        Left = 168
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'propesado'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgmgoupedidelivery: TDBEdit
        Left = 168
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoupedidelivery'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cfgmgounumepedint: TDBEdit
        Left = 167
        Top = 138
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgounumepedint'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cfgmgoutaxaatendimento: TDBEdit
        Left = 168
        Top = 192
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoutaxaatendimento'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object cfgmgouproatendimento: TDBEdit
        Left = 168
        Top = 219
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgouproatendimento'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object cfgmgouprorefeicao: TDBEdit
        Left = 168
        Top = 273
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgouprorefeicao'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object cfgmgoutoerefeicao: TDBEdit
        Left = 168
        Top = 300
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoutoerefeicao'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object cfgmgoutoeforarefeicao: TDBEdit
        Left = 168
        Top = 327
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoutoeforarefeicao'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object cfgmgourelentrecomple: TDBEdit
        Left = 168
        Top = 354
        Width = 153
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgourelentrecomple'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object cfgmgourelentreresumido: TDBEdit
        Left = 167
        Top = 381
        Width = 154
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgourelentreresumido'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object cfgmgouproatendimentoparcial: TDBEdit
        Left = 168
        Top = 246
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procfgmgouproatendimentoparcial'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object cfgmgouhoravirada: TDBEdit
        Left = 167
        Top = 408
        Width = 79
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgouhoravirada'
        DataSource = DSRegistro
        TabOrder = 13
      end
      object cfgmgouviasorc: TDBEdit
        Left = 168
        Top = 111
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgouviasorc'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object cfgmgouviasorcdelivery: TDBEdit
        Left = 167
        Top = 165
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgouviasorcdelivery'
        DataSource = DSRegistro
        TabOrder = 15
      end
      object cfgmgounomelocal: TDBComboBox
        Left = 167
        Top = 435
        Width = 79
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgounomelocal'
        DataSource = DSRegistro
        Items.Strings = (
          'CMDA'
          'Mesa')
        TabOrder = 16
      end
      object cfgmgoutempoatuentrega1: TDBEdit
        Left = 660
        Top = 30
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoutempoatuentrega1'
        DataSource = DSRegistro
        TabOrder = 17
      end
      object cfgmgoutempoatuentrega2: TDBEdit
        Left = 660
        Top = 57
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoutempoatuentrega2'
        DataSource = DSRegistro
        TabOrder = 18
      end
      object cfgmgouatualizaentrega: TDBEdit
        Left = 660
        Top = 111
        Width = 38
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgouatualizaentrega'
        DataSource = DSRegistro
        TabOrder = 19
      end
      object cfgmgoutempoatuproducao: TDBEdit
        Left = 660
        Top = 138
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoutempoatuproducao'
        DataSource = DSRegistro
        TabOrder = 20
      end
      object cfgmgouatualizaproducao: TDBEdit
        Left = 660
        Top = 165
        Width = 38
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgouatualizaproducao'
        DataSource = DSRegistro
        TabOrder = 21
      end
      object cfgmgoutempoentrega: TDBEdit
        Left = 660
        Top = 84
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoutempoentrega'
        DataSource = DSRegistro
        TabOrder = 22
      end
    end
    object Delivery: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Delivery'
      ImageIndex = 1
      object Label4: TLabel
        Left = 8
        Top = 6
        Width = 107
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Imprimir pedido parcial'
        FocusControl = cfgmgoupedideliveryaux
      end
      object Label9: TLabel
        Left = 8
        Top = 33
        Width = 110
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cobra taxa de entrega'
        FocusControl = cfgmgoucobraentrega
      end
      object Label11: TLabel
        Left = 8
        Top = 114
        Width = 110
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Permite entrega futura'
        FocusControl = cfggouentregafutura
      end
      object Label21: TLabel
        Left = 8
        Top = 60
        Width = 125
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Finaliza venda de Delivery'
        FocusControl = cfgmgoufinalizadelivery
      end
      object Label22: TLabel
        Left = 8
        Top = 87
        Width = 126
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta totaliadora Delivery'
        FocusControl = cfgmgouctadelivery
      end
      object cfgmgoupedideliveryaux: TDBEdit
        Left = 144
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoupedideliveryaux'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgmgoucobraentrega: TDBEdit
        Left = 144
        Top = 30
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoucobraentrega'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cfggouentregafutura: TDBEdit
        Left = 144
        Top = 111
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfggouentregafutura'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cfgmgoufinalizadelivery: TDBEdit
        Left = 144
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgoufinalizadelivery'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgmgouctadelivery: TDBEdit
        Left = 144
        Top = 84
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmgouctadelivery'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 316
    Top = 176
  end
  inherited consulta: TUniQuery
    Left = 344
    Top = 116
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT cfgmgou.cfgcodigo'
      '     , cfgmgou.cfgmgouqtdmesas'
      '     , cfgmgou.propesado'
      '     , cfgmgou.cfgmgoupedidelivery'
      '     , cfgmgou.cfgmgoupedideliveryaux'
      '     , cfgmgou.cfgmgounumepedint'
      '     , cfgmgou.cfgmgoupedidounificado'
      '     , cfgmgou.cfgmgoucobraentrega'
      '     , cfgmgou.cfgmgoutaxaatendimento '
      '     , cfgmgou.cfgmgouproatendimento '
      '     , cfgmgou.cfgmgouproatendimentoparcial'
      '     , cfgmgou.cfggouentregafutura'
      '     , cfgmgou.cfgmgouprorefeicao'
      '     , cfgmgou.cfgmgoutoerefeicao'
      '     , cfgmgou.cfgmgoutoeforarefeicao'
      '     , cfgmgou.cfgmgourelentreresumido'
      '     , cfgmgou.cfgmgourelentrecomple'
      '     , cfgmgou.cfgmgouttulocomposicao'
      '     , cfgmgou.cfgmgouhoravirada'
      '     , cfgmgou.cfgmgouviasorc'
      '     , cfgmgou.cfgmgouviasorcdelivery'
      '     , cfgmgou.cfgmgounomelocal'
      '     , cfgmgou.cfgmgoufinalizadelivery'
      '     , cfgmgou.cfgmgouctadelivery'
      '  , cfgmgou.cfgmgoutempoatuentrega1'
      '  , cfgmgou.cfgmgoutempoatuentrega2'
      '  , cfgmgou.cfgmgouatualizaentrega'
      '  , cfgmgou.cfgmgoutempoatuproducao'
      '  , cfgmgou.cfgmgouatualizaproducao'
      '  , cfgmgou.cfgmgoutempoentrega'
      ''
      '  FROM cfgmgou'
      ' WHERE cfgmgou.cfgcodigo = :cfgcodigo')
    Left = 340
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cfgcodigo'
    end
    object registrocfgmgouqtdmesas: TIntegerField
      DisplayLabel = 'Quantidade de Mesas'
      FieldName = 'cfgmgouqtdmesas'
    end
    object registropropesado: TIntegerField
      DisplayLabel = 'Produto Pesado'
      FieldName = 'propesado'
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'propesado'
      Size = 50
      Lookup = True
    end
    object registrocfgmgoupedidelivery: TIntegerField
      FieldName = 'cfgmgoupedidelivery'
      Required = True
    end
    object registrocfgmgoupedideliveryaux: TIntegerField
      DisplayLabel = 'Imprimir pedido parcial'
      FieldName = 'cfgmgoupedideliveryaux'
    end
    object registrosenpedideliveriaux: TStringField
      FieldKind = fkLookup
      FieldName = 'senpedideliveriaux'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmgoupedideliveryaux'
      Size = 5
      Lookup = True
    end
    object registrocfgmgounumepedint: TIntegerField
      FieldName = 'cfgmgounumepedint'
      Required = True
    end
    object registrocfgmgoupedidounificado: TIntegerField
      FieldName = 'cfgmgoupedidounificado'
    end
    object registrosencfgmgoupedidounificado: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmgoupedidounificado'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmgoupedidounificado'
      Size = 5
      Lookup = True
    end
    object registrocfgmgoutaxaatendimento: TFloatField
      DisplayLabel = 'Taxa de Atendimento'
      FieldName = 'cfgmgoutaxaatendimento'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registrocfgmgoucobraentrega: TIntegerField
      DisplayLabel = 'Cobra taxa de entrega'
      FieldName = 'cfgmgoucobraentrega'
      Required = True
    end
    object registrosencfgmgoucobraentrega: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmgoucobraentrega'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmgoucobraentrega'
      Size = 5
      Lookup = True
    end
    object registrocfgmgouproatendimento: TIntegerField
      DisplayLabel = 'C'#243'digo para Taxa aten.'
      FieldName = 'cfgmgouproatendimento'
    end
    object registroprocfgmgouproatendimento: TStringField
      FieldKind = fkLookup
      FieldName = 'procfgmgouproatendimento'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'cfgmgouproatendimento'
      Size = 80
      Lookup = True
    end
    object registrocfggouentregafutura: TIntegerField
      DisplayLabel = 'Permite entraga futura'
      FieldName = 'cfggouentregafutura'
    end
    object registrosencfggouentregafutura: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfggouentregafutura'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfggouentregafutura'
      Size = 50
      Lookup = True
    end
    object registrocfgmgouprorefeicao: TIntegerField
      FieldName = 'cfgmgouprorefeicao'
    end
    object registroprocfgmgouprorefeicao: TStringField
      FieldKind = fkLookup
      FieldName = 'procfgmgouprorefeicao'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'cfgmgouprorefeicao'
      Size = 50
      Lookup = True
    end
    object registrocfgmgoutoerefeicao: TIntegerField
      FieldName = 'cfgmgoutoerefeicao'
    end
    object registrotoetoerefeicao: TStringField
      FieldKind = fkLookup
      FieldName = 'toetoerefeicao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'cfgmgoutoerefeicao'
      Size = 50
      Lookup = True
    end
    object registrocfgmgoutoeforarefeicao: TIntegerField
      FieldName = 'cfgmgoutoeforarefeicao'
    end
    object registrotoecfgmgoutoeforarefeicao: TStringField
      FieldKind = fkLookup
      FieldName = 'toecfgmgoutoeforarefeicao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'cfgmgoutoeforarefeicao'
      Size = 50
      Lookup = True
    end
    object registrocfgmgourelentrecomple: TStringField
      DisplayLabel = 'Relat'#243'rio Detalahdo Entregas'
      FieldName = 'cfgmgourelentrecomple'
    end
    object registrorelcfgmgourelentrecomple: TStringField
      FieldKind = fkLookup
      FieldName = 'relcfgmgourelentrecomple'
      LookupDataSet = rel
      LookupKeyFields = 'relcodigo'
      LookupResultField = 'reltitulo'
      KeyFields = 'cfgmgourelentrecomple'
      Size = 50
      Lookup = True
    end
    object registrocfgmgourelentreresumido: TStringField
      DisplayLabel = 'Relat'#243'rio Simplificado Entregas'
      FieldName = 'cfgmgourelentreresumido'
    end
    object registrorelcfgmgourelentreresumido: TStringField
      FieldKind = fkLookup
      FieldName = 'relcfgmgourelentreresumido'
      LookupDataSet = rel
      LookupKeyFields = 'relcodigo'
      LookupResultField = 'reltitulo'
      KeyFields = 'cfgmgourelentreresumido'
      Size = 50
      Lookup = True
    end
    object registrocfgmgouttulocomposicao: TStringField
      DisplayLabel = 'T'#237'tulo composi'#231#227'o'
      FieldName = 'cfgmgouttulocomposicao'
      Size = 50
    end
    object registrocfgmgouproatendimentoparcial: TIntegerField
      FieldName = 'cfgmgouproatendimentoparcial'
    end
    object registroprocfgmgouproatendimentoparcial: TStringField
      FieldKind = fkLookup
      FieldName = 'procfgmgouproatendimentoparcial'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'cfgmgouproatendimentoparcial'
      Size = 50
      Lookup = True
    end
    object registrocfgmgouhoravirada: TTimeField
      DisplayLabel = 'Hora da virada do dia'
      FieldName = 'cfgmgouhoravirada'
      EditMask = '!90:00:00;1;_'
    end
    object registrocfgmgouviasorc: TIntegerField
      DisplayLabel = 'Vias comprovante Sal'#227'o'
      FieldName = 'cfgmgouviasorc'
    end
    object registrocfgmgouviasorcdelivery: TIntegerField
      FieldName = 'cfgmgouviasorcdelivery'
    end
    object registrocfgmgounomelocal: TStringField
      DisplayLabel = 'Titulo das Comandas'
      FieldName = 'cfgmgounomelocal'
      Size = 30
    end
    object registrocfgmgoufinalizadelivery: TIntegerField
      FieldName = 'cfgmgoufinalizadelivery'
      Required = True
    end
    object registrosencfgmgoufinalizadelivery: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmgoufinalizadelivery'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmgoufinalizadelivery'
      Size = 5
      Lookup = True
    end
    object registrocfgmgouctadelivery: TIntegerField
      FieldName = 'cfgmgouctadelivery'
      Required = True
    end
    object registroctaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ctaidentificacao'
      LookupDataSet = cta
      LookupKeyFields = 'ctacodigo'
      LookupResultField = 'ctaidentificacao'
      KeyFields = 'cfgmgouctadelivery'
      Size = 50
      Lookup = True
    end
    object registrocfgmgoutempoatuentrega1: TIntegerField
      DisplayLabel = 'Tem em segundos para atualizar tela de entregas para ATEN'#199#195'O'
      FieldName = 'cfgmgoutempoatuentrega1'
      Required = True
    end
    object registrocfgmgoutempoatuentrega2: TIntegerField
      DisplayLabel = 'Tem em segundos para tela de entregas para EM ATRAZO'
      FieldName = 'cfgmgoutempoatuentrega2'
      Required = True
    end
    object registrocfgmgouatualizaentrega: TIntegerField
      DisplayLabel = 'Permite atualizar tela de Entregas mesmo com marca'#231#245'es'
      FieldName = 'cfgmgouatualizaentrega'
      Required = True
    end
    object registrosencfgmgouatualizaentrega: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmgouatualizaentrega'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmgouatualizaentrega'
      Size = 5
      Lookup = True
    end
    object registrocfgmgoutempoatuproducao: TIntegerField
      DisplayLabel = 'Tem em segundos para atualizar tela de produ'#231#227'o'
      FieldName = 'cfgmgoutempoatuproducao'
      Required = True
    end
    object registrocfgmgouatualizaproducao: TIntegerField
      DisplayLabel = 'Permite atualizar tela de Produ'#231#227'o mesmo com marca'#231#245'es'
      FieldName = 'cfgmgouatualizaproducao'
      Required = True
    end
    object registrosencfgmgouatualizaproducao: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmgouatualizaproducao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmgouatualizaproducao'
      Size = 5
      Lookup = True
    end
    object registrocfgmgoutempoentrega: TIntegerField
      FieldName = 'cfgmgoutempoentrega'
      Required = True
    end
  end
  inherited dcp: TUniQuery
    Left = 576
    Top = 292
  end
  inherited dtb: TUniQuery
    Left = 532
    Top = 292
  end
  inherited coa: TUniQuery
    Left = 496
    Top = 292
  end
  inherited psf: TUniQuery
    Left = 472
    Top = 268
  end
  inherited cpg: TUniQuery
    Left = 452
    Top = 280
  end
  inherited cpc: TUniQuery
    Left = 453
    Top = 329
  end
  inherited ImgBusca: TPngImageList
    Left = 636
    Top = 168
    Bitmap = {}
  end
  inherited stg: TUniQuery
    Left = 524
    Top = 448
  end
  inherited consultashema: TUniQuery
    Left = 524
    Top = 384
  end
  inherited stgid: TUniQuery
    Left = 612
    Top = 392
  end
  inherited cfgalterado: TUniQuery
    Left = 612
    Top = 448
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 328
    Top = 296
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 608
    Top = 240
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object toe: TUniQuery
    SQL.Strings = (
      'select toecodigo, toeidentificacao from toe')
    Left = 452
    Top = 312
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 50
    end
  end
  object rel: TUniQuery
    SQL.Strings = (
      'select relcodigo, reltitulo from rel')
    Left = 732
    Top = 208
    object relrelcodigo: TStringField
      FieldName = 'relcodigo'
    end
    object relreltitulo: TStringField
      FieldName = 'reltitulo'
      Size = 50
    end
  end
  object cta: TUniQuery
    SQL.Strings = (
      'select ctacodigo, ctaidentificacao from cta')
    Left = 668
    Top = 352
    object ctactacodigo: TIntegerField
      FieldName = 'ctacodigo'
    end
    object ctactaidentificacao: TStringField
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
end
