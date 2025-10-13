inherited fcfgmcli: Tfcfgmcli
  ActiveControl = cfgmcliusarefpes
  Caption = 'Configura'#231#245'es de Clientes'
  ClientHeight = 341
  ClientWidth = 753
  ExplicitWidth = 769
  ExplicitHeight = 380
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 312
    Width = 753
    ExplicitTop = 298
    ExplicitWidth = 753
    inherited bconfirma: TBitBtn
      Left = 599
      ExplicitLeft = 599
    end
    inherited bcancela: TBitBtn
      Left = 674
      ExplicitLeft = 674
    end
    inherited bfechar: TBitBtn
      Left = 534
      ExplicitLeft = 534
    end
  end
  inherited paginas: TPageControl
    Width = 753
    Height = 312
    ExplicitWidth = 753
    ExplicitHeight = 298
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 745
      ExplicitHeight = 270
      object Label1: TLabel
        Left = 3
        Top = 5
        Width = 144
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registra Refer'#234'ncias Pessoais'
        FocusControl = cfgmcliusarefpes
      end
      object Label3: TLabel
        Left = 3
        Top = 32
        Width = 154
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registra Refer'#234'ncias Comerciais'
        FocusControl = cfgmcliusarefecom
      end
      object Label4: TLabel
        Left = 3
        Top = 59
        Width = 149
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registra Refer'#234'ncias Banc'#225'rias'
        FocusControl = cfgmcliusarefban
      end
      object Label5: TLabel
        Left = 3
        Top = 86
        Width = 196
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registra Consulta a empresas de Cr'#233'dito'
        FocusControl = cfgmcliusaconemp
      end
      object Label6: TLabel
        Left = 3
        Top = 113
        Width = 138
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registra dados Pessoa F'#237'sica'
        FocusControl = cfgmcliusadapefi
      end
      object Label2: TLabel
        Left = 3
        Top = 140
        Width = 151
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valida CPF para pessoas F'#237'sicas'
        FocusControl = cfgmclivalidacpf
      end
      object Label7: TLabel
        Left = 3
        Top = 167
        Width = 118
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ocultar Cliente inativado'
        FocusControl = cfgmcliocultainativo
      end
      object Label8: TLabel
        Left = 3
        Top = 194
        Width = 183
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Permite definir respons'#225'vel por cliente'
        FocusControl = cfgmclicarteira
      end
      object Label9: TLabel
        Left = 3
        Top = 221
        Width = 179
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Utiliza cadastro simplificado de cliente'
        FocusControl = cfgmclisimplificado
      end
      object Label10: TLabel
        Left = 3
        Top = 248
        Width = 137
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registra Fotos nos Cadastro'
        FocusControl = cfgmclifoto
      end
      object cfgmcliusarefpes: TDBEdit
        Left = 215
        Top = 2
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcliusarefpes'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgmcliusarefecom: TDBEdit
        Left = 215
        Top = 29
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcliusarefecom'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object cfgmcliusarefban: TDBEdit
        Left = 215
        Top = 56
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcliusarefban'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object cfgmcliusaconemp: TDBEdit
        Left = 215
        Top = 83
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcliusaconemp'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object cfgmcliusadapefi: TDBEdit
        Left = 215
        Top = 110
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcliusadapefi'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object cfgmclivalidacpf: TDBEdit
        Left = 215
        Top = 137
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmclivalidacpf'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object cfgmcliocultainativo: TDBEdit
        Left = 215
        Top = 164
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmcliocultainativo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object cfgmclicarteira: TDBEdit
        Left = 215
        Top = 191
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmclicarteira'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object cfgmclisimplificado: TDBEdit
        Left = 215
        Top = 218
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmclisimplificado'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object cfgmclifoto: TDBEdit
        Left = 215
        Top = 245
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgmclifoto'
        DataSource = DSRegistro
        TabOrder = 9
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 665
    Width = 80
    Caption = '01-05-002.02'
    ExplicitLeft = 665
    ExplicitWidth = 80
    inherited spChamaAjuda: TSpeedButton
      Left = 60
      ExplicitLeft = 60
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 324
    Top = 104
  end
  inherited consulta: TUniQuery
    Left = 320
    Top = 44
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgmcliusarefpes,'
      '  cfgmcliusarefecom,'
      '  cfgmcliusarefban,'
      '  cfgmcliusaconemp,'
      '  cfgmcliusadapefi,'
      '  cfgmclivalidacpf,'
      '  cfgmcliocultainativo,'
      '  cfgmclicarteira,'
      '  cfgmclisimplificado,'
      '  cfgmclifoto'
      'FROM cfgmcli'
      'WHERE cfgcodigo = :cfgcodigo')
    Left = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgcodigo: TIntegerField
      DisplayLabel = 'Configura'#231#227'o'
      FieldName = 'cfgcodigo'
    end
    object registrocfgmcliusarefpes: TIntegerField
      DisplayLabel = 'Registra Refer'#234'ncias Pessoais'
      FieldName = 'cfgmcliusarefpes'
      Required = True
    end
    object registrosenusarefpes: TStringField
      FieldKind = fkLookup
      FieldName = 'senusarefpes'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmcliusarefpes'
      Size = 5
      Lookup = True
    end
    object registrocfgmcliusarefecom: TIntegerField
      FieldName = 'cfgmcliusarefecom'
      Required = True
    end
    object registrosenusarefcom: TStringField
      FieldKind = fkLookup
      FieldName = 'senusarefcom'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmcliusarefecom'
      Size = 5
      Lookup = True
    end
    object registrocfgmcliusarefban: TIntegerField
      DisplayLabel = 'Registra Refer'#234'ncias Banc'#225'rias'
      FieldName = 'cfgmcliusarefban'
      Required = True
    end
    object registrosenusarefban: TStringField
      FieldKind = fkLookup
      FieldName = 'senusarefban'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmcliusarefban'
      Size = 5
      Lookup = True
    end
    object registrocfgmcliusaconemp: TIntegerField
      DisplayLabel = 'Registra Consulta a empresas de Cr'#233'dito'
      FieldName = 'cfgmcliusaconemp'
      Required = True
    end
    object registrosenusaconemp: TStringField
      FieldKind = fkLookup
      FieldName = 'senusaconemp'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmcliusaconemp'
      Size = 5
      Lookup = True
    end
    object registrocfgmcliusadapefi: TIntegerField
      DisplayLabel = 'Registra dados Pessoa F'#237'sica'
      FieldName = 'cfgmcliusadapefi'
      Required = True
    end
    object registrosenusadapefi: TStringField
      FieldKind = fkLookup
      FieldName = 'senusadapefi'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmcliusadapefi'
      Size = 5
      Lookup = True
    end
    object registrocfgmclivalidacpf: TIntegerField
      DisplayLabel = 'Permite Pessoa F'#237'sica sem CPF'
      FieldName = 'cfgmclivalidacpf'
      Required = True
    end
    object registrosenvalidacpf: TStringField
      FieldKind = fkLookup
      FieldName = 'senvalidacpf'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmclivalidacpf'
      Size = 5
      Lookup = True
    end
    object registrocfgmcliocultainativo: TIntegerField
      DisplayLabel = 'Oculta Cliente inativado'
      FieldName = 'cfgmcliocultainativo'
      Required = True
    end
    object registrosencfgmcliocultainativo: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmcliocultainativo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmcliocultainativo'
      Size = 5
      Lookup = True
    end
    object registrocfgmclicarteira: TIntegerField
      DisplayLabel = 'Permite formar carteira de clientes'
      FieldName = 'cfgmclicarteira'
      Required = True
    end
    object registrosencfgmclicarteira: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmclicarteira'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmclicarteira'
      Size = 5
      Lookup = True
    end
    object registrocfgmclisimplificado: TIntegerField
      FieldName = 'cfgmclisimplificado'
      Required = True
    end
    object registrosencfgmclisimplificado: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmclisimplificado'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmclisimplificado'
      Size = 5
      Lookup = True
    end
    object registrocfgmclifoto: TIntegerField
      DisplayLabel = 'Registra Fotos nos Cadastros'
      FieldName = 'cfgmclifoto'
      Required = True
    end
    object registrosencfgmclifoto: TStringField
      FieldKind = fkLookup
      FieldName = 'sencfgmclifoto'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'cfgmclifoto'
      Size = 5
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 256
    Top = 300
  end
  inherited dtb: TUniQuery
    Left = 620
    Top = 52
  end
  inherited coa: TUniQuery
    Left = 584
    Top = 52
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 632
    Top = 268
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 15
    end
  end
end
