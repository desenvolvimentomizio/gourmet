inherited faje: Tfaje
  ActiveControl = BActIncluir
  Caption = 'Ajustes de Estoque'
  ClientHeight = 677
  ClientWidth = 972
  ExplicitWidth = 988
  ExplicitHeight = 716
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 648
    Width = 972
    ExplicitTop = 648
    ExplicitWidth = 972
    inherited bconfirma: TBitBtn
      Left = 818
      ExplicitLeft = 818
    end
    inherited bcancela: TBitBtn
      Left = 893
      ExplicitLeft = 893
    end
    inherited bfechar: TBitBtn
      Left = 753
      ExplicitLeft = 753
    end
  end
  inherited paginas: TPageControl
    Width = 972
    Height = 648
    ExplicitWidth = 972
    ExplicitHeight = 648
    inherited Principal: TTabSheet
      ExplicitWidth = 964
      ExplicitHeight = 620
      object Bvregistro: TBevel
        Left = 0
        Top = 0
        Width = 964
        Height = 63
        CustomHint = BalloonHint
        Align = alTop
        Shape = bsBottomLine
      end
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave'
        FocusControl = meschave
      end
      object Label4: TLabel
        Left = 8
        Top = 33
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Entrada'
        FocusControl = mesregistro
      end
      object meschave: TDBEdit
        Left = 136
        Top = 3
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meschave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object mesregistro: TDBEdit
        Left = 136
        Top = 30
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mesregistro'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object PlDetalhe: TPanel
        Left = 0
        Top = 63
        Width = 964
        Height = 557
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 2
        object PlItens: TPanel
          Left = 4
          Top = 4
          Width = 956
          Height = 549
          CustomHint = BalloonHint
          Align = alClient
          TabOrder = 0
          object listaitens: TDBGrid
            Left = 1
            Top = 25
            Width = 954
            Height = 523
            CustomHint = BalloonHint
            Align = alClient
            DataSource = Dvitm
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = listaitensDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'itmitem'
                Title.Caption = 'Item'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'procodigo'
                Width = 41
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pronome'
                Width = 182
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unisimbolo'
                Title.Caption = 'Unid.'
                Width = 42
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmquantidade'
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmcontendo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unisimbolobase'
                ReadOnly = True
                Width = 45
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmquanticontada'
                Visible = True
              end>
          end
          object plbotoesitens: TPanel
            Left = 1
            Top = 1
            Width = 954
            Height = 24
            CustomHint = BalloonHint
            Align = alTop
            BevelOuter = bvLowered
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object BActIncluir: TBitBtn
              Left = 90
              Top = 1
              Width = 64
              Height = 22
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Incluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
              OnClick = BActIncluirClick
            end
            object BActAlterar: TBitBtn
              Left = 154
              Top = 1
              Width = 64
              Height = 22
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Alterar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              Visible = False
              OnClick = BActAlterarClick
            end
            object BActEcluir: TBitBtn
              Left = 218
              Top = 1
              Width = 64
              Height = 22
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              OnClick = BActEcluirClick
            end
            object Panel3: TPanel
              Left = 1
              Top = 1
              Width = 89
              Height = 22
              CustomHint = BalloonHint
              Align = alLeft
              BevelOuter = bvNone
              Caption = 'Itens'
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 252
    Top = 240
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgetdempresa from cfg, cfgmcfg where cfg.cfgcodigo=cfgmc' +
        'fg.cfgcodigo and cfg.cfgcodigo=:cfgcodigo')
    Left = 388
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
  end
  inherited consulta: TUniQuery
    Left = 312
    Top = 196
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mes.meschave,'
      '  mes.etdcodigo,'
      '  mes.mesemissao,'
      '  mes.mesregistro,'
      '  mes.tdfcodigo,'
      '  mes.sdecodigo,'
      '  mes.messerie,'
      '  mes.mesnumero,'
      '  mes.meschavenfe,'
      '  mes.toecodigo,'
      '  mes.mesvalor,'
      '  mes.edritem,'
      '  mes.tfpcodigo,'
      '  mes.mesdesconto,'
      '  mes.mestotal,'
      '  mes.refcodigo,'
      '  mes.mesfrete,'
      '  mes.messeguro,'
      '  mes.mesoutras,'
      '  mes.mesbicm,'
      '  mes.mesicm,'
      '  mes.mesbicms,'
      '  mes.mesicms,'
      '  mes.trfcodigo,'
      '  mes.mesprotocolo,'
      '  mes.mesipi,'
      '  mes.mespis,'
      '  mes.mescofins,'
      '  mes.mespiss,'
      '  mes.mescofinss,'
      '  mes.clbcodigo,'
      '  mes.trmcodigo,'
      '  mes.temcodigo,'
      '  mes.mesprodutos,'
      '  mes.messervicos'
      'FROM mes'
      'WHERE meschave = :meschave')
    Left = 252
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registromeschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registromesemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'mesemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registromesregistro: TDateField
      DisplayLabel = 'Data de Entrada'
      FieldName = 'mesregistro'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object registrotdfcodigo: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object registrosdecodigo: TStringField
      FieldName = 'sdecodigo'
      Required = True
      Size = 2
    end
    object registromesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Required = True
      Size = 5
    end
    object registromesnumero: TIntegerField
      FieldName = 'mesnumero'
      Required = True
    end
    object registromeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 100
    end
    object registrotoecodigo: TIntegerField
      FieldName = 'toecodigo'
      Required = True
    end
    object registromesvalor: TFloatField
      FieldName = 'mesvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesdesconto: TFloatField
      FieldName = 'mesdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesprodutos: TFloatField
      FieldName = 'mesprodutos'
    end
    object registromestotal: TFloatField
      FieldName = 'mestotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrorefcodigo: TIntegerField
      FieldName = 'refcodigo'
      Required = True
    end
    object registromesfrete: TFloatField
      FieldName = 'mesfrete'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object registromesseguro: TFloatField
      FieldName = 'messeguro'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesoutras: TFloatField
      FieldName = 'mesoutras'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesbicm: TFloatField
      FieldName = 'mesbicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesicm: TFloatField
      FieldName = 'mesicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesbicms: TFloatField
      FieldName = 'mesbicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesicms: TFloatField
      FieldName = 'mesicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesipi: TFloatField
      FieldName = 'mesipi'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromespis: TFloatField
      FieldName = 'mespis'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromescofins: TFloatField
      FieldName = 'mescofins'
      Required = True
    end
    object registromespiss: TFloatField
      FieldName = 'mespiss'
      Required = True
    end
    object registromescofinss: TFloatField
      FieldName = 'mescofinss'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object registrotrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
      Required = True
    end
    object registromesprotocolo: TStringField
      FieldName = 'mesprotocolo'
      Size = 50
    end
    object registrotrfcodigo: TStringField
      FieldName = 'trfcodigo'
      Size = 1
    end
    object registrotemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object registroedritem: TIntegerField
      FieldName = 'edritem'
      Required = True
    end
    object registromesservicos: TFloatField
      FieldName = 'messervicos'
    end
  end
  inherited pfr: TUniQuery
    Left = 568
    Top = 36
  end
  inherited psf: TUniQuery
    Left = 512
    Top = 12
  end
  inherited dcl: TUniQuery
    Left = 468
    Top = 168
  end
  inherited acoesfrm: TActionList
    Left = 628
    Top = 36
  end
  object itm: TUniQuery
    SQL.Strings = (
      'select * from itm ')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 360
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'itmchave'
    end
    object itmmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object itmitmitem: TIntegerField
      DisplayLabel = 'Nr. Item'
      FieldName = 'itmitem'
      Required = True
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
      Required = True
    end
    object itmpronome: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 80
      Lookup = True
    end
    object itmcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object itmitmquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
    end
    object itmitmvalor: TFloatField
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
    end
    object itmitmdesconto: TFloatField
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object itmcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object itmitmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
    end
    object itmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmitmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
    end
    object itmitmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
    end
    object itmitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
      Required = True
    end
    object itmitmicms: TFloatField
      FieldName = 'itmicms'
      Required = True
    end
    object itmitmapuipi: TStringField
      FieldName = 'itmapuipi'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmcsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object itmceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmitmbipi: TFloatField
      FieldName = 'itmbipi'
      Required = True
    end
    object itmitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object itmitmipi: TFloatField
      FieldName = 'itmipi'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmitmbpis: TFloatField
      FieldName = 'itmbpis'
      Required = True
    end
    object itmitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmitmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      Required = True
    end
    object itmitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmitmcofins: TFloatField
      FieldName = 'itmcofins'
      Required = True
    end
    object itmpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object itmunicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object itmpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object itmpunidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'punidentificacao'
      LookupDataSet = pun
      LookupKeyFields = 'puncodigo'
      LookupResultField = 'punidentificacao'
      KeyFields = 'puncodigo'
      Size = 30
      Lookup = True
    end
    object itmitmicmsvalor: TFloatField
      FieldName = 'itmicmsvalor'
    end
    object itmprogtin: TStringField
      FieldName = 'progtin'
    end
    object itmunisimbolo: TStringField
      FieldKind = fkLookup
      FieldName = 'unisimbolo'
      LookupDataSet = uni
      LookupKeyFields = 'unicodigo'
      LookupResultField = 'unisimbolo'
      KeyFields = 'unicodigo'
      Size = 6
      Lookup = True
    end
    object itmitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmcfocfopdestinacao: TStringField
      DisplayLabel = 'CFOP Destino'
      FieldName = 'cfocfopdestinacao'
      Required = True
      Size = 5
    end
    object itmunicodigobase: TIntegerField
      DisplayLabel = 'Un Base'
      FieldName = 'unicodigobase'
      Required = True
    end
    object itmunisimbolobase: TStringField
      DisplayLabel = 'Un.Base'
      FieldKind = fkLookup
      FieldName = 'unisimbolobase'
      LookupDataSet = uni
      LookupKeyFields = 'unicodigo'
      LookupResultField = 'unisimbolo'
      KeyFields = 'unicodigobase'
      Size = 5
      Lookup = True
    end
    object itmitmcusto: TFloatField
      FieldName = 'itmcusto'
    end
    object itmitmfrete: TFloatField
      FieldName = 'itmfrete'
    end
    object itmitmseguro: TFloatField
      FieldName = 'itmseguro'
    end
    object itmitmoutras: TFloatField
      FieldName = 'itmoutras'
    end
    object itmitmdescontototal: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldKind = fkCalculated
      FieldName = 'itmdescontototal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
    object itmitmquanticontada: TFloatField
      DisplayLabel = 'Quant. Contada'
      FieldName = 'itmquanticontada'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
  end
  object Dvitm: TUniDataSource
    DataSet = itm
    Left = 412
    Top = 344
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 297
    Top = 244
    object proprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
  end
  object pun: TUniQuery
    SQL.Strings = (
      'select * from pun')
    Left = 353
    Top = 244
    object punpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object punprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object pununicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object punpunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Required = True
      Size = 30
    end
    object pununicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object punpunmultiplicador: TFloatField
      FieldName = 'punmultiplicador'
      Required = True
    end
    object punpunquantidade: TFloatField
      FieldName = 'punquantidade'
      Required = True
    end
    object punpunprecoav: TFloatField
      FieldName = 'punprecoav'
      Required = True
    end
    object punpunprecoap: TFloatField
      FieldName = 'punprecoap'
      Required = True
    end
    object punpuncusto: TFloatField
      FieldName = 'puncusto'
      Required = True
    end
    object punpunmargem: TFloatField
      FieldName = 'punmargem'
      Required = True
    end
    object punpunpesobruto: TFloatField
      FieldName = 'punpesobruto'
      Required = True
    end
    object punpunpesoliq: TFloatField
      FieldName = 'punpesoliq'
      Required = True
    end
    object pundgrcodigo: TIntegerField
      FieldName = 'dgrcodigo'
      Required = True
    end
    object punpunbarra: TStringField
      FieldName = 'punbarra'
      Size = 50
    end
    object puntuncodigo: TIntegerField
      FieldName = 'tuncodigo'
    end
    object punpununitrib: TIntegerField
      FieldName = 'pununitrib'
    end
    object punpunqtdtrib: TFloatField
      FieldName = 'punqtdtrib'
    end
  end
  object uni: TUniQuery
    SQL.Strings = (
      'select unicodigo, unisimbolo,uninome from uni')
    Left = 700
    Top = 268
    object uniunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object uniunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 6
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
      Size = 50
    end
  end
  object icm: TUniQuery
    SQL.Strings = (
      'select * from icm')
    Left = 660
    Top = 268
    object icmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object icmicmaliquotas: TStringField
      FieldName = 'icmaliquotas'
      Required = True
      Size = 8
    end
  end
end
