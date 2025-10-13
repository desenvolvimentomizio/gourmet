inherited fctd: Tfctd
  Caption = 'Dados do Contador'
  ClientHeight = 372
  ClientWidth = 465
  ExplicitWidth = 481
  ExplicitHeight = 411
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 343
    Width = 465
    ExplicitTop = 343
    ExplicitWidth = 465
    inherited bconfirma: TBitBtn
      Left = 311
      ExplicitLeft = 311
    end
    inherited bcancela: TBitBtn
      Left = 386
      ExplicitLeft = 386
    end
    inherited bfechar: TBitBtn
      Left = 246
      ExplicitLeft = 246
    end
  end
  inherited paginas: TPageControl
    Width = 465
    Height = 343
    ExplicitWidth = 465
    ExplicitHeight = 343
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 457
      ExplicitHeight = 315
      object Label2: TLabel
        Left = 16
        Top = 12
        Width = 27
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome'
        FocusControl = ctdidentificacao
      end
      object Label3: TLabel
        Left = 16
        Top = 39
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CPF'
      end
      object Label4: TLabel
        Left = 285
        Top = 39
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CNPJ'
      end
      object Label5: TLabel
        Left = 16
        Top = 66
        Width = 21
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CRC'
        FocusControl = ctdcrc
      end
      object Label6: TLabel
        Left = 16
        Top = 93
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Endere'#231'o'
        FocusControl = ctdendereco
      end
      object Label7: TLabel
        Left = 362
        Top = 93
        Width = 12
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#186
        FocusControl = ctdnumero
      end
      object Label8: TLabel
        Left = 16
        Top = 120
        Width = 28
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Bairro'
        FocusControl = ctdbairro
      end
      object Label9: TLabel
        Left = 16
        Top = 147
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
        FocusControl = ctdcomple
      end
      object Label10: TLabel
        Left = 16
        Top = 174
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Telefone'
        FocusControl = ctdfone
      end
      object Label11: TLabel
        Left = 220
        Top = 174
        Width = 18
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fax'
        FocusControl = ctdfax
      end
      object Label1: TLabel
        Left = 339
        Top = 174
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cep'
      end
      object Label12: TLabel
        Left = 16
        Top = 201
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cidade'
        FocusControl = cddcodigo
      end
      object Label13: TLabel
        Left = 16
        Top = 228
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'email do Escrit'#243'rio'
        FocusControl = ctdemail
      end
      object Label14: TLabel
        Left = 16
        Top = 255
        Width = 115
        Height = 13
        CustomHint = BalloonHint
        Caption = 'BOX-e Dom'#237'nio Sistemas'
        FocusControl = ctdboxedominio
      end
      object ctdidentificacao: TDBEdit
        Left = 137
        Top = 9
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdidentificacao'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ctdcpf: TDBEdit
        Left = 137
        Top = 36
        Width = 116
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcpf'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ctdcnpj: TDBEdit
        Left = 316
        Top = 36
        Width = 120
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcnpj'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ctdcrc: TDBEdit
        Left = 137
        Top = 63
        Width = 147
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcrc'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ctdendereco: TDBEdit
        Left = 137
        Top = 90
        Width = 220
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdendereco'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ctdnumero: TDBEdit
        Left = 379
        Top = 90
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdnumero'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object ctdbairro: TDBEdit
        Left = 137
        Top = 117
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdbairro'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object ctdcomple: TDBEdit
        Left = 137
        Top = 144
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcomple'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object ctdfone: TDBEdit
        Left = 137
        Top = 171
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdfone'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object ctdfax: TDBEdit
        Left = 244
        Top = 171
        Width = 88
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdfax'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object ctdcep: TDBEdit
        Left = 364
        Top = 171
        Width = 72
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdcep'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object cddcodigo: TDBEdit
        Left = 137
        Top = 198
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cddcodigo'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object ctdemail: TDBEdit
        Left = 137
        Top = 225
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdemail'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object ctdboxedominio: TDBEdit
        Left = 137
        Top = 252
        Width = 299
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctdboxedominio'
        DataSource = DSRegistro
        TabOrder = 13
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ctdcodigo,cfgcodigo,ctdidentificacao,ctdcpf,ctdcrc,ctdcnp' +
        'j,ctdcep,ctdboxedominio,'
      
        'ctdendereco,ctdnumero,ctdcomple,ctdbairro,ctdfone,ctdfax,ctdemai' +
        'l,cddcodigo from ctd'
      'where ctdcodigo=:ctdcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctdcodigo'
        Value = nil
      end>
    object registroctdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ctdcodigo'
    end
    object registrocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object registroctdidentificacao: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'ctdidentificacao'
      Required = True
      Size = 100
    end
    object registroctdcpf: TStringField
      DisplayLabel = 'CPF'
      FieldName = 'ctdcpf'
    end
    object registroctdcrc: TStringField
      DisplayLabel = 'CRC'
      FieldName = 'ctdcrc'
      Required = True
      Size = 15
    end
    object registroctdcnpj: TStringField
      DisplayLabel = 'CNPJ'
      FieldName = 'ctdcnpj'
    end
    object registroctdendereco: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ctdendereco'
      Required = True
      Size = 60
    end
    object registroctdnumero: TStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'ctdnumero'
      Required = True
      Size = 10
    end
    object registroctdcomple: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'ctdcomple'
      Size = 60
    end
    object registroctdbairro: TStringField
      DisplayLabel = 'Bairro'
      FieldName = 'ctdbairro'
      Required = True
      Size = 60
    end
    object registroctdfone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'ctdfone'
      Required = True
      Size = 11
    end
    object registroctdfax: TStringField
      DisplayLabel = 'Fax'
      FieldName = 'ctdfax'
      Size = 11
    end
    object registroctdemail: TStringField
      DisplayLabel = 'email'
      FieldName = 'ctdemail'
      Required = True
      Size = 200
    end
    object registrocddcodigo: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object registrocddnome: TStringField
      FieldKind = fkLookup
      FieldName = 'cddnome'
      LookupDataSet = cdd
      LookupKeyFields = 'cddcodigo'
      LookupResultField = 'cddnome'
      KeyFields = 'cddcodigo'
      Required = True
      Size = 30
      Lookup = True
    end
    object registroctdboxedominio: TStringField
      FieldName = 'ctdboxedominio'
      Size = 200
    end
    object registroctdcep: TStringField
      FieldName = 'ctdcep'
    end
  end
  inherited pfr: TUniQuery
    Left = 548
    Top = 128
  end
  inherited psf: TUniQuery
    Left = 500
    Top = 112
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object cdd: TUniQuery
    SQL.Strings = (
      'select cddcodigo,cddnome from cdd')
    Left = 412
    Top = 216
    object cddcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Size = 10
    end
    object cddcddnome: TStringField
      FieldName = 'cddnome'
      Size = 30
    end
  end
end
