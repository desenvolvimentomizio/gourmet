inherited fvch: Tfvch
  ActiveControl = vchdataemissao
  Caption = 'C'#243'digo de desconto ou Voucher'
  ClientHeight = 472
  ClientWidth = 810
  ExplicitWidth = 826
  ExplicitHeight = 511
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 443
    Width = 810
    ExplicitTop = 582
    ExplicitWidth = 810
    inherited bconfirma: TBitBtn
      Left = 656
      ExplicitLeft = 656
    end
    inherited bcancela: TBitBtn
      Left = 731
      ExplicitLeft = 731
    end
    inherited bfechar: TBitBtn
      Left = 591
      ExplicitLeft = 591
    end
  end
  inherited paginas: TPageControl
    Width = 810
    Height = 443
    ExplicitWidth = 810
    ExplicitHeight = 582
    inherited Principal: TTabSheet
      ExplicitWidth = 802
      ExplicitHeight = 415
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 95
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Registro'
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de emiss'#227'o'
      end
      object Label3: TLabel
        Left = 8
        Top = 303
        Width = 57
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor em R$'
      end
      object Label4: TLabel
        Left = 8
        Top = 330
        Width = 114
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual de Desconto'
      end
      object Label5: TLabel
        Left = 8
        Top = 276
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de validade'
      end
      object Labeletdcodigo: TLabel
        Left = 7
        Top = 195
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Cliente'
      end
      object Label7: TLabel
        Left = 7
        Top = 222
        Width = 89
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Produto'
      end
      object Label8: TLabel
        Left = 7
        Top = 249
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade de venda'
      end
      object Label9: TLabel
        Left = 8
        Top = 357
        Width = 153
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Desconto ou Voucher'
      end
      object spBuscaEntidade: TSpeedButton
        Left = 258
        Top = 192
        Width = 22
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
        OnClick = spBuscaEntidadeClick
      end
      object spBuscaProduto: TSpeedButton
        Left = 235
        Top = 219
        Width = 22
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
        OnClick = spBuscaProdutoClick
      end
      object spBuscaUnidade: TSpeedButton
        Left = 235
        Top = 246
        Width = 22
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
        OnClick = spBuscaUnidadeClick
      end
      object Label6: TLabel
        Left = 7
        Top = 168
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo do Emissor'
      end
      object sbEmissor: TSpeedButton
        Left = 258
        Top = 165
        Width = 22
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
        OnClick = sbEmissorClick
      end
      object Label10: TLabel
        Left = 8
        Top = 384
        Width = 165
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Aplica o Voucher automaticamente'
        FocusControl = vchautomatico
      end
      object vchchave: TDBEdit
        Left = 179
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vchchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object vchdataemissao: TDBEdit
        Left = 179
        Top = 30
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vchdataemissao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object vchtipo: TDBRadioGroup
        Left = 179
        Top = 57
        Width = 242
        Height = 48
        CustomHint = BalloonHint
        Caption = ' Tipo '
        Columns = 2
        DataField = 'vchtipo'
        DataSource = DSRegistro
        Items.Strings = (
          'Emiss'#227'o Pr'#243'pria'
          'Parceiros')
        TabOrder = 2
        Values.Strings = (
          '1'
          '2')
        OnClick = vchtipoClick
      end
      object vhcmodouso: TDBRadioGroup
        Left = 179
        Top = 111
        Width = 242
        Height = 48
        CustomHint = BalloonHint
        Caption = ' Modo de Uso'
        Columns = 2
        DataField = 'vchmodouso'
        DataSource = DSRegistro
        Items.Strings = (
          'Por validade'
          'Uma '#250'nica vez')
        TabOrder = 3
        Values.Strings = (
          '1'
          '2')
        OnClick = vhcmodousoClick
      end
      object vchvalor: TDBEdit
        Left = 179
        Top = 300
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vchvalor'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object vchpercentual: TDBEdit
        Left = 179
        Top = 327
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vchpercentual'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object vchdatavalidade: TDBEdit
        Left = 179
        Top = 273
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vchdatavalidade'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object etdcodigo: TDBEdit
        Left = 179
        Top = 192
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object procodigo: TDBEdit
        Left = 179
        Top = 219
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object puncodigo: TDBEdit
        Left = 179
        Top = 246
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'puncodigo'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object vchvoucher: TDBEdit
        Left = 179
        Top = 354
        Width = 242
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vchvoucher'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object vchetdemissor: TDBEdit
        Left = 179
        Top = 165
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vchetdemissor'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object vchautomatico: TDBEdit
        Left = 179
        Top = 381
        Width = 34
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vchautomatico'
        DataSource = DSRegistro
        TabOrder = 12
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 692
    Top = 88
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfg.cfgcodigo,'
      '  cfgidentificacao,'
      '  edr.cddcodigo,'
      '  cfgusanfe,'
      '  cfgmodonfe,'
      '  etd.etddoc1,'
      '  cfgmcfg.cfglogo,'
      '  cfgversao,'
      '  cfgultimobackup,'
      '  cfgetdempresa'
      'FROM cfg,'
      '     cfgmcfg,'
      '     etd,'
      '     edr,'
      '     cfgmnfe'
      'WHERE cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfgmcfg.cfgetdempresa = etd.etdcodigo'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1'
      'AND cfg.flacodigo = :flacodigo')
    Left = 372
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
  end
  inherited consulta: TUniQuery
    Top = 12
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vchchave,'
      '  vchdataemissao,'
      '  vchsituacao,'
      '  vchvoucher,'
      '  vchtipo,'
      '  vchmodouso,'
      '  vchdatavalidade,'
      '  vchvalor,'
      '  vchpercentual,'
      '  etdcodigo,'
      '  vchdatauso,'
      '  procodigo,'
      '  puncodigo,'
      '  vchetdemissor,'
      '  vchautomatico'
      'FROM vch where vchchave=:vchchave')
    Left = 500
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vchchave'
        Value = nil
      end>
    object registrovchchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'vchchave'
    end
    object registrovchdataemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'vchdataemissao'
      Required = True
    end
    object registrovchvoucher: TStringField
      DisplayLabel = 'C'#243'digo de Desconto ou Voucher'
      FieldName = 'vchvoucher'
      Required = True
      Size = 200
    end
    object registrovchdatavalidade: TDateField
      DisplayLabel = 'Validade'
      FieldName = 'vchdatavalidade'
      Required = True
    end
    object registrovchvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'vchvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrovchpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'vchpercentual'
      Required = True
      DisplayFormat = '##0.000'
      EditFormat = '##0.000'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object registroprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object registropuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object registrovchtipo: TIntegerField
      FieldName = 'vchtipo'
      Required = True
    end
    object registrovchmodouso: TIntegerField
      FieldName = 'vchmodouso'
    end
    object registrovchetdemissor: TIntegerField
      FieldName = 'vchetdemissor'
    end
    object registrovchautomatico: TIntegerField
      FieldName = 'vchautomatico'
      Required = True
    end
    object registrosenvchautomatico: TStringField
      FieldKind = fkLookup
      FieldName = 'senvchautomatico'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'vchautomatico'
      Size = 5
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 720
    Top = 148
  end
  inherited dtb: TUniQuery
    Left = 676
    Top = 148
  end
  inherited coa: TUniQuery
    Left = 640
    Top = 244
  end
  inherited BalloonHint: TBalloonHint
    Left = 516
  end
  inherited cpg: TUniQuery
    Left = 620
    Top = 240
  end
  inherited cpc: TUniQuery
    Left = 509
    Top = 25
  end
  inherited dau: TUniQuery
    Left = 692
  end
  inherited lou: TUniQuery
    Left = 416
    Top = 296
  end
  inherited stg: TUniQuery
    Left = 556
    Top = 24
  end
  inherited consultashema: TUniQuery
    Left = 772
    Top = 152
  end
  inherited stgid: TUniQuery
    Left = 620
    Top = 24
  end
  inherited cfgalterado: TUniQuery
    Left = 596
    Top = 96
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 612
    Top = 368
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
