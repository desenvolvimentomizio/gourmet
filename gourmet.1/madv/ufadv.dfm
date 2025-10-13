inherited fadv: Tfadv
  ActiveControl = etdidentificacao
  Caption = 'Advogado'
  ClientHeight = 389
  ClientWidth = 612
  ExplicitWidth = 628
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 360
    Width = 612
    ExplicitTop = 360
    ExplicitWidth = 612
    inherited bconfirma: TBitBtn
      Left = 458
      ExplicitLeft = 452
      ExplicitTop = 2
    end
    inherited bcancela: TBitBtn
      Left = 533
      ExplicitLeft = 533
    end
    inherited bfechar: TBitBtn
      Left = 393
      ExplicitLeft = 393
    end
  end
  inherited paginas: TPageControl
    Width = 612
    Height = 360
    ExplicitWidth = 612
    ExplicitHeight = 360
    inherited Principal: TTabSheet
      ExplicitLeft = 8
      ExplicitTop = 22
      ExplicitWidth = 604
      ExplicitHeight = 332
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = etdcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 27
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome'
        FocusControl = etdidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Apelido'
        FocusControl = etdapelido
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Oberva'#231#227'o'
      end
      object Label9: TLabel
        Left = 8
        Top = 142
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Endere'#231'o'
        FocusControl = edrrua
      end
      object Label10: TLabel
        Left = 489
        Top = 142
        Width = 37
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero'
        FocusControl = edrnumero
      end
      object Label5: TLabel
        Left = 8
        Top = 167
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Refer'#234'ncia / Obs'
      end
      object Label11: TLabel
        Left = 8
        Top = 224
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
        FocusControl = edrcomple
      end
      object Label12: TLabel
        Left = 8
        Top = 251
        Width = 28
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Bairro'
        FocusControl = edrbairro
      end
      object Label13: TLabel
        Left = 466
        Top = 251
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Caixa Postal'
        FocusControl = edrcxpostal
      end
      object Label6: TLabel
        Left = 8
        Top = 278
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado (UF)'
        FocusControl = edrbairro
      end
      object Label7: TLabel
        Left = 408
        Top = 278
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Inscri'#231#227'o Municipal'
        FocusControl = edrinscmun
        Visible = False
      end
      object Label14: TLabel
        Left = 8
        Top = 305
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cidade'
        FocusControl = cddcodigo
      end
      object Label16: TLabel
        Left = 492
        Top = 305
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CEP'
        FocusControl = edrcep
      end
      object DBText1: TDBText
        Left = 56
        Top = 120
        Width = 65
        Height = 17
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = Dedr
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 456
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object etdapelido: TDBEdit
        Left = 136
        Top = 57
        Width = 249
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdapelido'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object etdobs: TDBMemo
        Left = 136
        Top = 84
        Width = 456
        Height = 49
        CustomHint = BalloonHint
        DataField = 'etdobs'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object edrrua: TDBEdit
        Left = 136
        Top = 139
        Width = 337
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrrua'
        DataSource = Dedr
        TabOrder = 4
      end
      object edrnumero: TDBEdit
        Left = 532
        Top = 139
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrnumero'
        DataSource = Dedr
        TabOrder = 5
      end
      object edrobs: TDBMemo
        Left = 137
        Top = 166
        Width = 455
        Height = 44
        CustomHint = BalloonHint
        DataField = 'edrobs'
        DataSource = Dedr
        TabOrder = 6
      end
      object edrcomple: TDBEdit
        Left = 136
        Top = 221
        Width = 456
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrcomple'
        DataSource = Dedr
        TabOrder = 7
      end
      object edrbairro: TDBEdit
        Left = 136
        Top = 248
        Width = 293
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrbairro'
        DataSource = Dedr
        TabOrder = 8
      end
      object edrcxpostal: TDBEdit
        Left = 531
        Top = 248
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrcxpostal'
        DataSource = Dedr
        TabOrder = 9
      end
      object ufscodigo: TDBEdit
        Left = 136
        Top = 275
        Width = 24
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufscodigo'
        DataSource = Dedr
        TabOrder = 10
        OnExit = ufscodigoExit
      end
      object edrinscmun: TDBEdit
        Left = 507
        Top = 275
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrinscmun'
        DataSource = Dedr
        TabOrder = 11
        Visible = False
      end
      object cddcodigo: TDBEdit
        Left = 136
        Top = 302
        Width = 62
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cddcodigo'
        DataSource = Dedr
        TabOrder = 12
        OnEnter = cddcodigoEnter
      end
      object edrcep: TDBEdit
        Left = 517
        Top = 302
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edrcep'
        DataSource = Dedr
        TabOrder = 13
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select * from etd where etdcodigo=:etdcodigo')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object registroetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object registroetdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social / Nome'
      FieldName = 'etdidentificacao'
      Required = True
      Size = 60
    end
    object registroetdapelido: TStringField
      DisplayLabel = 'Nome Fantasia / Apelido'
      FieldName = 'etdapelido'
      Required = True
      Size = 35
    end
    object registroetddeletar: TIntegerField
      DefaultExpression = '0'
      FieldName = 'etddeletar'
      Required = True
    end
    object registrotpecodigo: TIntegerField
      DisplayLabel = 'Tipo de Pessoa'
      FieldName = 'tpecodigo'
      Required = True
    end
    object registroetddatacad: TDateField
      DisplayLabel = 'Data Cadastro'
      FieldName = 'etddatacad'
    end
    object registroetddataalt: TDateField
      DisplayLabel = 'Data Altera'#231#227'o'
      FieldName = 'etddataalt'
    end
    object registroetddoc1: TStringField
      DisplayLabel = 'CNPJ / CPF'
      FieldName = 'etddoc1'
      Required = True
    end
    object registroetdobs: TStringField
      FieldName = 'etdobs'
      Size = 200
    end
    object registrotsecodigo: TIntegerField
      FieldName = 'tsecodigo'
    end
    object registrotcbcodigo: TIntegerField
      FieldName = 'tcbcodigo'
      Required = True
    end
    object registroetdsuframa: TStringField
      DisplayLabel = 'SUFRAMA'
      FieldName = 'etdsuframa'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object edr: TUniQuery
    SQL.Strings = (
      'select * from edr where tedcodigo=1')
    MasterSource = DSRegistro
    MasterFields = 'etdcodigo'
    DetailFields = 'etdcodigo'
    Constraints = <>
    AfterInsert = edrAfterInsert
    BeforePost = edrBeforePost
    Left = 220
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object edredrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'edrcodigo'
    end
    object edretdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object edrtedcodigo: TIntegerField
      FieldName = 'tedcodigo'
      Required = True
    end
    object edredrrua: TStringField
      FieldName = 'edrrua'
      Required = True
      Size = 50
    end
    object edredrnumero: TStringField
      FieldName = 'edrnumero'
      Required = True
      Size = 10
    end
    object edredrcxpostal: TStringField
      FieldName = 'edrcxpostal'
      Size = 10
    end
    object edredrcomple: TStringField
      FieldName = 'edrcomple'
      Size = 50
    end
    object edredrbairro: TStringField
      DisplayWidth = 60
      FieldName = 'edrbairro'
      Required = True
      Size = 60
    end
    object edrcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object edrcddnome: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'cddnome'
      LookupDataSet = cdd
      LookupKeyFields = 'cddcodigo'
      LookupResultField = 'cddnome'
      KeyFields = 'cddcodigo'
      Size = 30
      Lookup = True
    end
    object edrufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object edrufsnome: TStringField
      DisplayLabel = 'UF'
      FieldKind = fkLookup
      FieldName = 'ufsnome'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufsnome'
      KeyFields = 'ufscodigo'
      Size = 35
      Lookup = True
    end
    object edredrobs: TStringField
      FieldName = 'edrobs'
      Size = 250
    end
    object edredrinscest: TStringField
      DisplayLabel = 'Inscri'#231#227'o Estadual'
      FieldName = 'edrinscest'
    end
    object edredrcep: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'edrcep'
      Required = True
      EditMask = '99999\-999;0;_'
      Size = 10
    end
    object edrufssigla: TStringField
      Tag = 777
      FieldKind = fkCalculated
      FieldName = 'ufssigla'
      KeyFields = 'ufscodigo'
      Size = 3
      Calculated = True
    end
    object edredrinscmun: TStringField
      DisplayLabel = 'Inscri'#231#227'o Municipal'
      FieldName = 'edrinscmun'
      Size = 50
    end
    object edredritem: TIntegerField
      FieldName = 'edritem'
    end
  end
  object ufs: TUniQuery
    SQL.Strings = (
      'select ufscodigo, ufsnome, ufssigla from ufs')
    Constraints = <>
    Left = 152
    Top = 288
    object ufsufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 10
    end
    object ufsufsnome: TStringField
      FieldName = 'ufsnome'
      Size = 50
    end
    object ufsufssigla: TStringField
      FieldName = 'ufssigla'
      Size = 10
    end
  end
  object cdd: TUniQuery
    SQL.Strings = (
      'select cddcodigo, cddnome from cdd')
    Constraints = <>
    Left = 184
    Top = 288
    object cddcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object cddcddnome: TStringField
      DisplayWidth = 35
      FieldName = 'cddnome'
      Required = True
      Size = 35
    end
  end
  object Dedr: TDataSource
    DataSet = edr
    Left = 260
    Top = 400
  end
  object etv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etvcodigo,'
      '  etdcodigo,'
      '  tvicodigo,'
      '  pcgcodigo'
      'FROM etv')
    Constraints = <>
    BeforePost = etvBeforePost
    Left = 252
    Top = 288
    object etvetvcodigo: TIntegerField
      FieldName = 'etvcodigo'
    end
    object etvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etvtvicodigo: TIntegerField
      FieldName = 'tvicodigo'
    end
  end
end
