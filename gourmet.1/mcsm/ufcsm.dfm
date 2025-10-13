inherited fcsm: Tfcsm
  ActiveControl = mesemissao
  Caption = 'Consumo Interno'
  ClientHeight = 601
  ClientWidth = 723
  ExplicitWidth = 739
  ExplicitHeight = 640
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 572
    Width = 723
    ExplicitTop = 572
    ExplicitWidth = 723
    inherited bconfirma: TBitBtn
      Left = 569
      ExplicitLeft = 569
    end
    inherited bcancela: TBitBtn
      Left = 644
      ExplicitLeft = 644
    end
    inherited bfechar: TBitBtn
      Left = 504
      ExplicitLeft = 504
    end
  end
  inherited paginas: TPageControl
    Width = 723
    Height = 572
    ExplicitWidth = 723
    ExplicitHeight = 572
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 715
      ExplicitHeight = 544
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave'
        FocusControl = meschave
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Emiss'#227'o'
        FocusControl = mesemissao
      end
      object Label2: TLabel
        Left = 8
        Top = 60
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Controle'
        FocusControl = mesnumero
      end
      object Bvregistro: TBevel
        Left = 0
        Top = 0
        Width = 715
        Height = 89
        CustomHint = BalloonHint
        Align = alTop
        Shape = bsBottomLine
        Style = bsRaised
        ExplicitWidth = 963
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
      object mesemissao: TDBEdit
        Left = 136
        Top = 30
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mesemissao'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = mesemissaoExit
      end
      object mesnumero: TDBEdit
        Left = 136
        Top = 57
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mesnumero'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object bvalidar: TButton
        Left = 223
        Top = 57
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 3
        OnClick = bvalidarClick
      end
      object PlDetalhe: TPanel
        Left = 0
        Top = 89
        Width = 715
        Height = 455
        CustomHint = BalloonHint
        Align = alClient
        TabOrder = 4
        Visible = False
        object plbotoesitens: TPanel
          Left = 1
          Top = 1
          Width = 713
          Height = 24
          CustomHint = BalloonHint
          Align = alTop
          BevelOuter = bvLowered
          Color = 5356845
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
          object BActIncluir: TBitBtn
            Left = 1
            Top = 1
            Width = 46
            Height = 22
            CustomHint = BalloonHint
            Align = alLeft
            Caption = 'Incluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            OnClick = BActIncluirClick
          end
          object BActAlterar: TBitBtn
            Left = 47
            Top = 1
            Width = 46
            Height = 22
            CustomHint = BalloonHint
            Align = alLeft
            Caption = 'Alterar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            OnClick = BActAlterarClick
          end
          object BActEcluir: TBitBtn
            Left = 93
            Top = 1
            Width = 46
            Height = 22
            CustomHint = BalloonHint
            Align = alLeft
            Caption = 'Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            OnClick = BActEcluirClick
          end
        end
        object listaitens: TDBGrid
          Left = 1
          Top = 25
          Width = 713
          Height = 429
          CustomHint = BalloonHint
          Align = alClient
          DataSource = Dvitm
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
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
            end>
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Top = 208
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ufs.ufssigla,'
      '  etd.etddoc1,'
      ''
      '  cfgmcfg.cfgetdempresa,'
      ''
      '  cfgmnfe.cfgobs1,'
      '  cfgmnfe.cfgobs2,'
      '  cfgmnfe.cfgobs3,'
      '  cfgmnfe.cfgobs4,'
      '  cfgmnfe.cfgnumeronfe,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgmnfe.cfgnumecertif,'
      ''
      '  cfgment.cfgprouso,'
      '  cfgment.cfgtoeusofora,'
      '  cfgment.cfgtoeusointe,'
      '  cfgmsai.cfgtoeconsumointerno'
      '  '
      'FROM cfgmcfg,'
      '     ufs,'
      '     etd,'
      '     cfgmnfe,'
      '     cfgment,'
      '     cfgmsai,'
      ''
      '     edr,'
      '     cfg'
      'WHERE ufs.ufscodigo = edr.ufscodigo AND'
      'cfg.cfgcodigo = cfgmcfg.cfgcodigo AND'
      'cfg.cfgcodigo = cfgment.cfgcodigo AND'
      'cfg.cfgcodigo = cfgmsai.cfgcodigo AND'
      'cfg.cfgcodigo = cfgmnfe.cfgcodigo AND'
      'etd.etdcodigo = cfgmcfg.cfgetdempresa AND'
      'etd.etdcodigo = edr.etdcodigo AND'
      'edr.tedcodigo = 1 AND'
      'cfg.cfgcodigo=:flacodigo'
      '')
    Left = 492
    Top = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      ReadOnly = True
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgcfgobs1: TIntegerField
      FieldName = 'cfgobs1'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs2: TIntegerField
      FieldName = 'cfgobs2'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs3: TIntegerField
      FieldName = 'cfgobs3'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs4: TIntegerField
      FieldName = 'cfgobs4'
      ReadOnly = True
      Required = True
    end
    object cfgcfgnumeronfe: TIntegerField
      FieldName = 'cfgnumeronfe'
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      Size = 5
    end
    object cfgcfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      Size = 50
    end
    object cfgcfgtoeconsumointerno: TIntegerField
      FieldName = 'cfgtoeconsumointerno'
    end
  end
  inherited consulta: TUniQuery
    Left = 416
    Top = 276
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
      '  mes.tfpcodigo,'
      '  mes.mesdesconto,'
      '  mes.mestotal,'
      '  mes.refcodigo,'
      '  mes.mesfrete,'
      '  mes.edritem,'
      '  mes.messeguro,'
      '  mes.mesoutras,'
      '  mes.mesbicm,'
      '  mes.mesicm,'
      '  mes.mesbicms,'
      '  mes.mesicms,'
      '  mes.trfcodigo,'
      '  mes.mesipi,'
      '  mes.mespis,'
      '  mes.mescofins,'
      '  mes.mespiss,'
      '  mes.mescofinss,'
      '  mes.clbcodigo,'
      '  mes.trmcodigo,'
      '  mes.temcodigo,'
      '  mes.mesprotocolo,'
      '  mes.mesprodutos,'
      '  mes.messervicos,'
      ' mes.tdecodigo'
      'FROM mes'
      'WHERE meschave = :meschave')
    Left = 212
    Top = 184
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
      EditMask = '!99/99/9999;1;_'
    end
    object registrotdfcodigo: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object registrosdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 2
    end
    object registromesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object registromesnumero: TIntegerField
      DisplayLabel = 'N'#250'mero do Controle'
      FieldName = 'mesnumero'
    end
    object registromeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 100
    end
    object registrotoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object registromesvalor: TFloatField
      FieldName = 'mesvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesdesconto: TFloatField
      FieldName = 'mesdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromestotal: TFloatField
      FieldName = 'mestotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrotfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object registrorefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object registromesfrete: TFloatField
      FieldName = 'mesfrete'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesseguro: TFloatField
      FieldName = 'messeguro'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesoutras: TFloatField
      FieldName = 'mesoutras'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesbicm: TFloatField
      FieldName = 'mesbicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesicm: TFloatField
      FieldName = 'mesicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesbicms: TFloatField
      FieldName = 'mesbicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesicms: TFloatField
      FieldName = 'mesicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromesipi: TFloatField
      FieldName = 'mesipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromespis: TFloatField
      FieldName = 'mespis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registromescofins: TFloatField
      FieldName = 'mescofins'
    end
    object registromespiss: TFloatField
      FieldName = 'mespiss'
    end
    object registromescofinss: TFloatField
      FieldName = 'mescofinss'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
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
    end
    object registromesprodutos: TFloatField
      FieldName = 'mesprodutos'
    end
    object registromesservicos: TFloatField
      FieldName = 'messervicos'
    end
    object registrotdecodigo: TIntegerField
      FieldName = 'tdecodigo'
    end
  end
  inherited pfr: TUniQuery
    Left = 576
    Top = 284
  end
  inherited psf: TUniQuery
    Left = 160
    Top = 260
  end
  inherited dcl: TUniQuery
    Left = 156
    Top = 320
  end
  inherited cau: TUniQuery
    Left = 160
    Top = 472
  end
  inherited err: TUniQuery
    Left = 160
    Top = 404
  end
  inherited BalloonHint: TBalloonHint
    Left = 364
    Top = 224
  end
  inherited acoesfrm: TActionList
    Left = 316
    Top = 308
  end
  inherited ImgBusca: TPngImageList
    Left = 292
    Top = 272
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 212
    Top = 316
  end
  object spd: TUniQuery
    SQL.Strings = (
      'select * from spd where spdativo=1')
    Left = 468
    Top = 356
    object spdspdexercicio: TIntegerField
      FieldName = 'spdexercicio'
      Required = True
    end
    object spdspddatainicial: TDateField
      FieldName = 'spddatainicial'
      Required = True
    end
    object spdspddatafinal: TDateField
      FieldName = 'spddatafinal'
      Required = True
    end
    object spdspdativo: TIntegerField
      FieldName = 'spdativo'
      Required = True
    end
  end
  object Dvitm: TUniDataSource
    DataSet = itm
    Left = 100
    Top = 340
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itm.itmchave,'
      '  itm.meschave,'
      '  itm.itmitem,'
      '  itm.procodigo,'
      '  itm.cstcodigo,'
      '  itm.progtin,'
      '  itm.procodigoori,'
      '  itm.pronomeori,'
      '  itm.itmdesccomple,'
      '  itm.itmquantidade,'
      '  itm.itmvalor,'
      '  itm.itmdesconto,'
      '  itm.itmtotal,'
      '  itm.itmmovifisico,'
      '  itm.toecodigo,'
      '  itm.cfocfop,'
      '  itm.itmbicm,'
      '  itm.icmcodigo,'
      '  itm.itmaliqicm,'
      '  itm.itmicm,'
      '  itm.itmbicms,'
      '  itm.itmaliqicms,'
      '  itm.itmicms,'
      '  itm.itmapuipi,'
      '  itm.csicodigo,'
      '  itm.ceicodigo,'
      '  itm.itmbipi,'
      '  itm.itmaliqipi,'
      '  itm.itmipi,'
      '  itm.cspcodigo,'
      '  itm.itmbpis,'
      '  itm.itmaliqpis,'
      '  itm.itmpis,'
      '  itm.itmquantpis,'
      '  itm.itmaliqpisvalor,'
      '  itm.csfcodigo,'
      '  itm.itmbcofins,'
      '  itm.itmaliqcofins,'
      '  itm.itmquantcofins,'
      '  itm.itmaliqcofinsvalor,'
      '  itm.itmcofins,'
      '  itm.pcccodigo,'
      '  itm.unicodigo,'
      '  itm.puncodigo,'
      '  itm.unicodigobase,'
      '  itm.itmcontendo,'
      '  itm.cfocfopdestinacao,'
      '  itm.itmoutras,'
      '  itm.itmseguro,'
      '  itm.itmfrete,'
      '  itm.itmcusto,'
      '  itm.itmtipodesc,'
      '  itm.itmpercdesc'
      'FROM itm'
      'WHERE itm.meschave = :meschave')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 100
    Top = 296
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
    end
    object itmitmitem: TIntegerField
      DisplayLabel = 'Nr. Item'
      FieldName = 'itmitem'
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
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
      Size = 3
    end
    object itmprocodigoori: TStringField
      DisplayLabel = 'Cod.Forn.'
      FieldName = 'procodigoori'
      Size = 30
    end
    object itmpronomeori: TStringField
      DisplayLabel = 'Nome do Produto para o Fornecedor'
      FieldName = 'pronomeori'
      Size = 80
    end
    object itmitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object itmitmquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itmquantidade'
      DisplayFormat = '#,###0.0000'
      EditFormat = '#,###0.0000'
    end
    object itmitmvalor: TFloatField
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00000'
      EditFormat = '#,##0.00000'
    end
    object itmitmdesconto: TFloatField
      FieldName = 'itmdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      FixedChar = True
      Size = 1
    end
    object itmtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object itmtoeidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 50
      Lookup = True
    end
    object itmcfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
    object itmitmbicm: TFloatField
      FieldName = 'itmbicm'
    end
    object itmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Size = 6
    end
    object itmitmicm: TFloatField
      FieldName = 'itmicm'
    end
    object itmitmbicms: TFloatField
      FieldName = 'itmbicms'
    end
    object itmitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
    end
    object itmitmicms: TFloatField
      FieldName = 'itmicms'
    end
    object itmitmapuipi: TStringField
      FieldName = 'itmapuipi'
      FixedChar = True
      Size = 1
    end
    object itmcsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
    end
    object itmceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmitmbipi: TFloatField
      FieldName = 'itmbipi'
    end
    object itmitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
    end
    object itmitmipi: TFloatField
      FieldName = 'itmipi'
    end
    object itmcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object itmitmbpis: TFloatField
      FieldName = 'itmbpis'
    end
    object itmitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmitmquantpis: TFloatField
      FieldName = 'itmquantpis'
    end
    object itmitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
    end
    object itmcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object itmitmbcofins: TFloatField
      FieldName = 'itmbcofins'
    end
    object itmitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
    end
    object itmitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
    end
    object itmitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
    end
    object itmitmcofins: TFloatField
      FieldName = 'itmcofins'
    end
    object itmpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 60
    end
    object itmunicodigo: TIntegerField
      FieldName = 'unicodigo'
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
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmcfocfopdestinacao: TStringField
      DisplayLabel = 'CFOP Destino'
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmunicodigobase: TIntegerField
      DisplayLabel = 'Un Base'
      FieldName = 'unicodigobase'
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
    object itmitmoutras: TFloatField
      FieldName = 'itmoutras'
    end
    object itmitmseguro: TFloatField
      FieldName = 'itmseguro'
    end
    object itmitmfrete: TFloatField
      FieldName = 'itmfrete'
    end
    object itmitmcusto: TFloatField
      FieldName = 'itmcusto'
    end
    object itmitmtipodesc: TIntegerField
      FieldName = 'itmtipodesc'
    end
    object itmitmpercdesc: TFloatField
      FieldName = 'itmpercdesc'
    end
    object itmitmtotalbru: TFloatField
      FieldKind = fkCalculated
      FieldName = 'itmtotalbru'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
      Calculated = True
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome, prosaldo from pro')
    Left = 444
    Top = 148
    object proprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object proprosaldo: TFloatField
      FieldName = 'prosaldo'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
  end
  object pun: TUniQuery
    SQL.Strings = (
      
        'Select puncodigo, punidentificacao,procodigo,pun.unicodigo,pun.t' +
        'uncodigo,punprecoav,punprecoap,punmultiplicador from pun')
    Left = 478
    Top = 148
    object punpuncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'puncodigo'
    end
    object punpunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Size = 30
    end
    object punprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object pununicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object puntuncodigo: TIntegerField
      FieldName = 'tuncodigo'
    end
    object punpunprecoav: TFloatField
      FieldName = 'punprecoav'
    end
    object punpunprecoap: TFloatField
      FieldName = 'punprecoap'
    end
    object punpunmultiplicador: TFloatField
      FieldName = 'punmultiplicador'
    end
  end
  object uni: TUniQuery
    SQL.Strings = (
      'select unicodigo, uninome, unisimbolo from uni')
    Left = 532
    Top = 256
    object uniunicodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'unicodigo'
    end
    object uniuninome: TStringField
      FieldName = 'uninome'
    end
    object uniunisimbolo: TStringField
      FieldName = 'unisimbolo'
      Size = 5
    end
  end
  object toe: TUniQuery
    SQL.Strings = (
      
        'select toecodigo, toeidentificacao, toecfopsaida, toeorigem, tte' +
        'codigo, ttmcodigo,ttocodigo from toe')
    Left = 440
    Top = 384
    object toetoecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 100
    end
    object toetoecfopsaida: TStringField
      FieldName = 'toecfopsaida'
      Required = True
      Size = 5
    end
    object toetoeorigem: TStringField
      FieldName = 'toeorigem'
      Size = 1
    end
    object toettecodigo: TIntegerField
      FieldName = 'ttecodigo'
    end
    object toettmcodigo: TIntegerField
      FieldName = 'ttmcodigo'
    end
    object toettocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
  end
end
