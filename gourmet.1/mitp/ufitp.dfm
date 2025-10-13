inherited fitp: Tfitp
  ActiveControl = procodigo
  Caption = 'Item da Tabela de Pre'#231'o'
  ClientHeight = 517
  ClientWidth = 815
  ExplicitWidth = 831
  ExplicitHeight = 556
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 488
    Width = 815
    ExplicitTop = 488
    ExplicitWidth = 815
    inherited bconfirma: TBitBtn
      Left = 661
      ExplicitLeft = 661
    end
    inherited bcancela: TBitBtn
      Left = 736
      ExplicitLeft = 736
    end
    inherited bfechar: TBitBtn
      Left = 596
      ExplicitLeft = 596
    end
  end
  inherited paginas: TPageControl
    Width = 815
    Height = 488
    ExplicitWidth = 815
    ExplicitHeight = 488
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 807
      ExplicitHeight = 460
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = itpchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto'
        FocusControl = procodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade'
        FocusControl = puncodigo
      end
      object lpunprecoav: TLabel
        Left = 8
        Top = 277
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pre'#231'o a Vista'
        FocusControl = punprecoav
      end
      object plpunprecoap: TLabel
        Left = 8
        Top = 304
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pre'#231'oa a Prazo'
        FocusControl = punprecoap
      end
      object Label4: TLabel
        Left = 8
        Top = 223
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de C'#225'lculo'
        FocusControl = descodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 250
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Percentual'
        FocusControl = itppercentual
      end
      object itpchave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itpchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = procodigoExit
      end
      object puncodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'puncodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnEnter = puncodigoEnter
        OnExit = puncodigoExit
      end
      object punprecoav: TDBEdit
        Left = 136
        Top = 274
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'punprecoav'
        DataSource = DSRegistro
        TabOrder = 6
        OnEnter = punprecoavEnter
        OnExit = punprecoavExit
      end
      object punprecoap: TDBEdit
        Left = 136
        Top = 301
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'punprecoap'
        DataSource = DSRegistro
        TabOrder = 7
        OnEnter = punprecoapEnter
      end
      object gbInformacoes: TGroupBox
        Left = 136
        Top = 84
        Width = 502
        Height = 130
        CustomHint = BalloonHint
        Caption = ' Informa'#231#245'es '
        TabOrder = 3
        object Label6: TLabel
          Left = 16
          Top = 24
          Width = 39
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Unidade'
          FocusControl = punidentificacao
        end
        object Label7: TLabel
          Left = 370
          Top = 24
          Width = 36
          Height = 13
          CustomHint = BalloonHint
          Caption = 'S'#237'mbolo'
          FocusControl = unisimbolo
        end
        object Label8: TLabel
          Left = 16
          Top = 52
          Width = 101
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Pre'#231'o de Custo Atual'
          FocusControl = puncusto
        end
        object Label9: TLabel
          Left = 16
          Top = 78
          Width = 99
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Pre'#231'o a Vista Padr'#227'o'
          FocusControl = punprecoavinfo
        end
        object Label10: TLabel
          Left = 16
          Top = 105
          Width = 103
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Pre'#231'o a Prazo Padr'#227'o'
          FocusControl = punprecoapinfo
        end
        object Label11: TLabel
          Left = 243
          Top = 105
          Width = 77
          Height = 13
          CustomHint = BalloonHint
          Caption = 'C'#243'digo de Barra'
          FocusControl = punbarra
        end
        object punidentificacao: TDBEdit
          Left = 129
          Top = 21
          Width = 223
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'punidentificacao'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 0
        end
        object unisimbolo: TDBEdit
          Left = 416
          Top = 21
          Width = 69
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'unisimbolo'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 1
        end
        object puncusto: TDBEdit
          Left = 129
          Top = 48
          Width = 94
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'puncusto'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 2
        end
        object punprecoavinfo: TDBEdit
          Left = 129
          Top = 75
          Width = 94
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'punprecoav'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 3
        end
        object punprecoapinfo: TDBEdit
          Left = 129
          Top = 102
          Width = 94
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'punprecoap'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 4
        end
        object punbarra: TDBEdit
          Left = 326
          Top = 102
          Width = 162
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'punbarra'
          DataSource = DataSource1
          ReadOnly = True
          TabOrder = 5
        end
      end
      object descodigo: TDBEdit
        Left = 136
        Top = 220
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'descodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object itppercentual: TDBEdit
        Left = 136
        Top = 247
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'itppercentual'
        DataSource = DSRegistro
        TabOrder = 5
        OnEnter = itppercentualEnter
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 724
    Top = 232
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgunitrib,cfgdoisprecos, cfgprousaetiqposi2010,cfgmodoat' +
        'uapro,cfgpercentacresaprazo, cfgmostrapercentuais from cfgmsai')
    Left = 628
    object cfgcfgunitrib: TIntegerField
      FieldName = 'cfgunitrib'
    end
    object cfgcfgdoisprecos: TIntegerField
      FieldName = 'cfgdoisprecos'
    end
    object cfgcfgprousaetiqposi2010: TIntegerField
      FieldName = 'cfgprousaetiqposi2010'
    end
    object cfgcfgmodoatuapro: TIntegerField
      FieldName = 'cfgmodoatuapro'
    end
    object cfgcfgpercentacresaprazo: TFloatField
      FieldName = 'cfgpercentacresaprazo'
    end
    object cfgcfgmostrapercentuais: TIntegerField
      FieldName = 'cfgmostrapercentuais'
    end
  end
  inherited consulta: TUniQuery
    Left = 560
    Top = 44
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itpchave,'
      '  tpvcodigo,'
      '  procodigo,'
      '  puncodigo,'
      '  punprecoav,'
      '  punprecoap,'
      '  itpmaxporvenda,'
      '  descodigo,'
      '  itppercentual'
      'FROM itp where itpchave=:itpchave and tpvcodigo=:tpvcodigo')
    Left = 724
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itpchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tpvcodigo'
        Value = nil
      end>
    object registroitpchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itpchave'
    end
    object registrotpvcodigo: TIntegerField
      FieldName = 'tpvcodigo'
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 60
      Lookup = True
    end
    object registropuncodigo: TIntegerField
      DisplayLabel = 'Unidade'
      FieldName = 'puncodigo'
      Required = True
    end
    object registropunidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'punidentificacao'
      LookupDataSet = pun
      LookupKeyFields = 'puncodigo'
      LookupResultField = 'punidentificacao'
      KeyFields = 'puncodigo'
      Size = 50
      Lookup = True
    end
    object registropunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o a Vista'
      FieldName = 'punprecoav'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registropunprecoap: TFloatField
      DisplayLabel = 'Pre'#231'oa a Prazo'
      FieldName = 'punprecoap'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrodescodigo: TIntegerField
      DisplayLabel = 'Tipo de C'#225'lculo'
      FieldName = 'descodigo'
      Required = True
    end
    object registrodesidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'desidentificacao'
      LookupDataSet = des
      LookupKeyFields = 'descodigo'
      LookupResultField = 'desidentificacao'
      KeyFields = 'descodigo'
      Size = 30
      Lookup = True
    end
    object registroitppercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'itppercentual'
      Required = True
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
  end
  inherited dcp: TUniQuery
    Left = 216
    Top = 348
  end
  inherited dtb: TUniQuery
    Left = 156
    Top = 340
  end
  inherited coa: TUniQuery
    Left = 88
    Top = 348
  end
  inherited pfr: TUniQuery
    Left = 712
  end
  inherited psf: TUniQuery
    Left = 768
  end
  inherited dcl: TUniQuery
    Left = 764
  end
  inherited cau: TUniQuery
    Left = 776
    Top = 296
  end
  inherited err: TUniQuery
    Left = 768
  end
  inherited BalloonHint: TBalloonHint
    Left = 716
    Top = 400
  end
  inherited acoesfrm: TActionList
    Left = 620
  end
  inherited cpg: TUniQuery
    Left = 68
    Top = 376
  end
  inherited cpc: TUniQuery
    Left = 29
    Top = 369
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 496
    Top = 384
  end
  object pro: TUniQuery
    SQL.Strings = (
      'SELECT pro.procodigo'
      '     , pro.pronome'
      'FROM pro'
      '  JOIN v_enp enp'
      '    ON enp.enpcodigo = pro.enpcodigo'
      '  JOIN pun'
      '    ON pro.procodigo = pun.procodigo'
      '    AND pro.unicodigo = pun.unicodigo'
      '    where pro.tpocodigo<>1'
      '    ')
    Left = 508
    Top = 40
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 60
    end
  end
  object puninfo: TUniQuery
    SQL.Strings = (
      
        'select puncodigo,procodigo,unisimbolo,punprecoav,punprecoap,punc' +
        'usto,punidentificacao,punbarra,pun.tuncodigo from pun,uni'
      
        'where pun.unicodigo=uni.unicodigo and pun.puncodigo=:puncodigo a' +
        'nd pun.procodigo=:procodigo')
    Left = 684
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puncodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object puninfopuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object puninfoprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object puninfounisimbolo: TStringField
      DisplayLabel = 'S'#237'mbolo'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object puninfopunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o a Vista Padr'#227'o'
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object puninfopunprecoap: TFloatField
      DisplayLabel = 'Pre'#231'o a Prazo Padr'#227'o'
      FieldName = 'punprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object puninfopuncusto: TFloatField
      DisplayLabel = 'Pre'#231'o de Custo Atual'
      FieldName = 'puncusto'
      DisplayFormat = '#,##0.0000'
      EditFormat = '#,##0.0000'
    end
    object puninfopunbarra: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'punbarra'
    end
    object puninfopunidentificacao: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'punidentificacao'
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = puninfo
    Left = 672
    Top = 328
  end
  object pun: TUniQuery
    SQL.Strings = (
      'select puncodigo, punidentificacao from pun')
    Left = 384
    Top = 404
    object punpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object punpunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Size = 50
    end
  end
  object tpv: TUniQuery
    SQL.Strings = (
      
        'select tpvcodigo, descodigo, tpvpercentual from tpv where tpvcod' +
        'igo=:tpvcodigo')
    Left = 604
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tpvcodigo'
        Value = nil
      end>
    object tpvtpvcodigo: TIntegerField
      FieldName = 'tpvcodigo'
    end
    object tpvdescodigo: TIntegerField
      FieldName = 'descodigo'
    end
    object tpvtpvpercentual: TFloatField
      FieldName = 'tpvpercentual'
    end
  end
  object des: TUniQuery
    SQL.Strings = (
      'select descodigo, desidentificacao from des')
    Left = 508
    Top = 304
    object desdescodigo: TIntegerField
      FieldName = 'descodigo'
    end
    object desdesidentificacao: TStringField
      FieldName = 'desidentificacao'
      Size = 30
    end
  end
end
