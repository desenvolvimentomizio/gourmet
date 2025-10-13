inherited fcte: Tfcte
  ActiveControl = cteemissao
  Caption = 'Conhecimento de Transporte'
  ClientHeight = 495
  ClientWidth = 926
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 466
    Width = 926
    inherited bconfirma: TBitBtn
      Left = 772
    end
    inherited bcancela: TBitBtn
      Left = 847
    end
    inherited bfechar: TBitBtn
      Left = 707
    end
  end
  inherited paginas: TPageControl
    Width = 926
    Height = 466
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 12
        Top = 3
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Registro'
        FocusControl = ctechave
      end
      object Label2: TLabel
        Left = 12
        Top = 33
        Width = 110
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Emiss'#227'o do Documento'
        FocusControl = cteemissao
      end
      object Label18: TLabel
        Left = 268
        Top = 33
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do Registro'
        FocusControl = ctedtaquis
      end
      object Label15: TLabel
        Left = 12
        Top = 60
        Width = 75
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Transportadora'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 12
        Top = 87
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. S'#233'rie'
        FocusControl = cteserie
      end
      object Label4: TLabel
        Left = 209
        Top = 87
        Width = 123
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Conhecimento'
        FocusControl = ctenumero
      end
      object Label5: TLabel
        Left = 12
        Top = 113
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Situa'#231#227'o do Documento'
        FocusControl = sdecodigo
      end
      object Label6: TLabel
        Left = 12
        Top = 167
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. CTE eletr'#244'nico'
        FocusControl = cteechave
      end
      object Label7: TLabel
        Left = 12
        Top = 140
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Documento'
        FocusControl = tdfcodigo
      end
      object Label17: TLabel
        Left = 12
        Top = 194
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Opera'#231#227'o'
        FocusControl = toecodigo
      end
      object Label11: TLabel
        Left = 12
        Top = 275
        Width = 139
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor Total do Documento R$'
        FocusControl = ctevalordoc
      end
      object Label12: TLabel
        Left = 12
        Top = 302
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor Frete R$'
        FocusControl = ctevalor
      end
      object Label9: TLabel
        Left = 12
        Top = 329
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desconto R$'
        FocusControl = ctedesconto
      end
      object Label13: TLabel
        Left = 12
        Top = 356
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Base para ICMS R$'
        FocusControl = ctebicm
      end
      object Label16: TLabel
        Left = 12
        Top = 383
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Aliquota do ICMS'
        FocusControl = ctealiqicm
      end
      object Label14: TLabel
        Left = 12
        Top = 410
        Width = 68
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor ICMS R$'
        FocusControl = cteicm
      end
      object Label8: TLabel
        Left = 12
        Top = 221
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Respons'#225'vel pelo Frete'
        FocusControl = refcodigo
      end
      object Label10: TLabel
        Left = 12
        Top = 248
        Width = 106
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Conhecimento'
        FocusControl = tcfcodigo
      end
      object ctechave: TDBEdit
        Left = 160
        Top = 3
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cteemissao: TDBEdit
        Left = 160
        Top = 30
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cteemissao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ctedtaquis: TDBEdit
        Left = 364
        Top = 30
        Width = 93
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctedtaquis'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object etdcodigo: TDBEdit
        Left = 160
        Top = 57
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 3
        OnEnter = etdcodigoEnter
      end
      object cteserie: TDBEdit
        Left = 160
        Top = 84
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cteserie'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ctenumero: TDBEdit
        Left = 356
        Top = 84
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctenumero'
        DataSource = DSRegistro
        TabOrder = 5
        OnExit = ctenumeroExit
      end
      object sdecodigo: TDBEdit
        Left = 160
        Top = 110
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sdecodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object cteechave: TDBEdit
        Left = 160
        Top = 164
        Width = 461
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cteechave'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object tdfcodigo: TDBEdit
        Left = 160
        Top = 137
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tdfcodigo'
        DataSource = DSRegistro
        TabOrder = 7
        OnExit = tdfcodigoExit
      end
      object toecodigo: TDBEdit
        Left = 160
        Top = 191
        Width = 53
        Height = 21
        CustomHint = BalloonHint
        Color = clWhite
        DataField = 'toecodigo'
        DataSource = DSRegistro
        TabOrder = 9
        OnKeyPress = FormKeyPress
      end
      object ctevalordoc: TDBEdit
        Left = 160
        Top = 272
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctevalordoc'
        DataSource = DSRegistro
        TabOrder = 12
      end
      object ctevalor: TDBEdit
        Left = 160
        Top = 299
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctevalor'
        DataSource = DSRegistro
        TabOrder = 13
        OnEnter = ctevalorEnter
      end
      object ctedesconto: TDBEdit
        Left = 160
        Top = 326
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctedesconto'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object ctebicm: TDBEdit
        Left = 160
        Top = 353
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ctebicm'
        DataSource = DSRegistro
        TabOrder = 15
        OnEnter = ctebicmEnter
      end
      object ctealiqicm: TDBEdit
        Left = 160
        Top = 380
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        Color = clWhite
        DataField = 'ctealiqicm'
        DataSource = DSRegistro
        TabOrder = 16
        OnKeyPress = FormKeyPress
      end
      object cteicm: TDBEdit
        Left = 160
        Top = 407
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cteicm'
        DataSource = DSRegistro
        TabOrder = 17
        OnEnter = cteicmEnter
      end
      object refcodigo: TDBEdit
        Left = 160
        Top = 218
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'refcodigo'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object tcfcodigo: TDBEdit
        Left = 160
        Top = 245
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcfcodigo'
        DataSource = DSRegistro
        TabOrder = 11
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 428
    Top = 40
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select * from cte where ctechave=:ctechave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ctechave'
        Value = nil
      end>
    object registroctechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Registro'
      FieldName = 'ctechave'
    end
    object registrocteserie: TStringField
      DisplayLabel = 'Nr. S'#233'rie'
      FieldName = 'cteserie'
      Required = True
      Size = 3
    end
    object registrocteoperacao: TStringField
      FieldName = 'cteoperacao'
      Required = True
      FixedChar = True
      Size = 1
    end
    object registrocteemissor: TStringField
      FieldName = 'cteemissor'
      Required = True
      FixedChar = True
      Size = 1
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Transportadora'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 60
      Lookup = True
    end
    object registrotdfcodigo: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object registrotdfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tdfidentificacao'
      LookupDataSet = tdf
      LookupKeyFields = 'tdfcodigo'
      LookupResultField = 'tdfidentificacao'
      KeyFields = 'tdfcodigo'
      Size = 35
      Lookup = True
    end
    object registrosdecodigo: TStringField
      DisplayLabel = 'Situa'#231#227'o do Documento'
      FieldName = 'sdecodigo'
      Required = True
      Size = 2
    end
    object registrosdeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'sdeidentificacao'
      LookupDataSet = sde
      LookupKeyFields = 'sdecodigo'
      LookupResultField = 'sdeidentificacao'
      KeyFields = 'sdecodigo'
      Size = 30
      Lookup = True
    end
    object registroctesubserie: TStringField
      FieldName = 'ctesubserie'
      Size = 3
    end
    object registroctenumero: TStringField
      DisplayLabel = 'N'#250'mero do Conhecimento'
      FieldName = 'ctenumero'
      Required = True
      Size = 10
    end
    object registrocteechave: TStringField
      DisplayLabel = 'Nr. CTE eletr'#244'nico'
      FieldName = 'cteechave'
      Size = 44
    end
    object registrotoecodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object registrotoeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 60
      Lookup = True
    end
    object registrorefcodigo: TIntegerField
      DisplayLabel = 'Respons'#225'vel pelo Frete'
      FieldName = 'refcodigo'
      Required = True
    end
    object registrorefidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'refidentificacao'
      LookupDataSet = ref
      LookupKeyFields = 'refcodigo'
      LookupResultField = 'refidentificacao'
      KeyFields = 'refcodigo'
      Size = 30
      Lookup = True
    end
    object registrotcfcodigo: TStringField
      DisplayLabel = 'Tipo de Conhecimento'
      FieldName = 'tcfcodigo'
      Size = 2
    end
    object registrotcfidentificaacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tcfidentificaacao'
      LookupDataSet = tcf
      LookupKeyFields = 'tcfcodigo'
      LookupResultField = 'tcfidentificacao'
      KeyFields = 'tcfcodigo'
      Size = 35
      Lookup = True
    end
    object registrocteemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'cteemissao'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object registroctedtaquis: TDateField
      FieldName = 'ctedtaquis'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object registrocteechaveref: TStringField
      FieldName = 'cteechaveref'
      Size = 44
    end
    object registroctevalor: TFloatField
      DisplayLabel = 'Valor Frete R$'
      FieldName = 'ctevalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroctedesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'ctedesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroctevalordoc: TFloatField
      DisplayLabel = 'Valor Documento de Origem R$'
      FieldName = 'ctevalordoc'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroctebicm: TFloatField
      DisplayLabel = 'Base para ICMS R$'
      FieldName = 'ctebicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrocteicm: TFloatField
      DisplayLabel = 'Valor ICMS R$'
      FieldName = 'cteicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registroctevlrntrbi: TFloatField
      FieldName = 'ctevlrntrbi'
      Required = True
    end
    object registroticcodigo: TIntegerField
      FieldName = 'ticcodigo'
      Required = True
    end
    object registropcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object registrospdchave: TIntegerField
      FieldName = 'spdchave'
    end
    object registroctealiqicm: TFloatField
      DisplayLabel = 'Al'#237'quota do ICMS'
      FieldName = 'ctealiqicm'
      Required = True
    end
  end
  inherited dcp: TUniQuery
    Left = 568
    Top = 40
  end
  inherited dtb: TUniQuery
    Left = 536
    Top = 40
  end
  inherited coa: TUniQuery
    Left = 500
    Top = 40
  end
  inherited psf: TUniQuery
    Left = 576
    Top = 100
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 520
    Top = 192
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
  end
  object spd: TUniQuery
    SQL.Strings = (
      'select * from spd where spdativo=1')
    Left = 608
    Top = 200
    object spdspdchave: TIntegerField
      FieldName = 'spdchave'
    end
    object spdspddatainicial: TDateField
      FieldName = 'spddatainicial'
      Required = True
    end
    object spdspddatafinal: TDateField
      FieldName = 'spddatafinal'
      Required = True
    end
  end
  object toe: TUniQuery
    SQL.Strings = (
      'select toecodigo, toeidentificacao, toecfopsaida from toe')
    Left = 508
    Top = 276
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Required = True
      Size = 100
    end
    object toetoecfopsaida: TStringField
      FieldName = 'toecfopsaida'
      Required = True
      Size = 5
    end
  end
  object ict: TUniQuery
    SQL.Strings = (
      'select * from ict')
    Left = 628
    Top = 264
    object ictictchave: TIntegerField
      FieldName = 'ictchave'
    end
    object ictctechave: TIntegerField
      FieldName = 'ctechave'
      Required = True
    end
    object ictcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object ictcfocfop: TStringField
      DisplayLabel = 'C'#243'digo do CFOP'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object ictcfoidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cfoidentificacao'
      LookupDataSet = cfo
      LookupKeyFields = 'cfocfop'
      LookupResultField = 'cfoidentificacao'
      KeyFields = 'cfocfop'
      Size = 60
      Lookup = True
    end
    object ictictaliqicm: TFloatField
      DisplayLabel = 'Aliquota do ICMS'
      FieldName = 'ictaliqicm'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object ictictvlroperacao: TFloatField
      FieldName = 'ictvlroperacao'
      Required = True
    end
    object ictictbicm: TFloatField
      FieldName = 'ictbicm'
      Required = True
    end
    object icticticm: TFloatField
      FieldName = 'icticm'
      Required = True
    end
    object ictictredbase: TFloatField
      FieldName = 'ictredbase'
      Required = True
    end
    object icttofcodigo: TIntegerField
      FieldName = 'tofcodigo'
      Required = True
    end
  end
  object tdf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tdfcodigo,'
      '  tdfidentificacao'
      'FROM tdf'
      'WHERE tdfcodigo IN ('#39'08'#39', '#39'57'#39')')
    Left = 496
    Top = 336
    object tdftdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object tdftdfidentificacao: TStringField
      FieldName = 'tdfidentificacao'
      Required = True
      Size = 50
    end
  end
  object cfo: TUniQuery
    SQL.Strings = (
      'select cfocfop, cfoidentificacao from cfo')
    Left = 540
    Top = 368
    object cfocfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object cfocfoidentificacao: TStringField
      FieldName = 'cfoidentificacao'
      Required = True
      Size = 200
    end
  end
  object sde: TUniQuery
    SQL.Strings = (
      'select sdecodigo, sdeidentificacao from sde')
    Left = 588
    Top = 332
    object sdesdecodigo: TStringField
      FieldName = 'sdecodigo'
      Required = True
      Size = 2
    end
    object sdesdeidentificacao: TStringField
      FieldName = 'sdeidentificacao'
      Required = True
      Size = 50
    end
  end
  object Dict: TUniDataSource
    DataSet = ict
    Left = 532
    Top = 84
  end
  object ref: TUniQuery
    SQL.Strings = (
      'select refcodigo, refidentificacao from ref')
    Left = 416
    Top = 276
    object refrefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object refrefidentificacao: TStringField
      FieldName = 'refidentificacao'
      Size = 30
    end
  end
  object tcf: TUniQuery
    SQL.Strings = (
      'select tcfcodigo, tcfidentificacao from tcf')
    Left = 376
    Top = 276
    object tcftcfcodigo: TStringField
      FieldName = 'tcfcodigo'
      Size = 2
    end
    object tcftcfidentificacao: TStringField
      FieldName = 'tcfidentificacao'
      Size = 35
    end
  end
end
