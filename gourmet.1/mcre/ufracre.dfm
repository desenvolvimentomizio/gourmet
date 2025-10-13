inherited fracre: Tfracre
  Width = 1443
  Height = 632
  ExplicitWidth = 1443
  ExplicitHeight = 632
  inherited PlGeral: TPanel
    Width = 1443
    Height = 632
    ExplicitWidth = 1443
    ExplicitHeight = 632
    inherited SplBotoes: TSplitter
      Height = 612
      ExplicitHeight = 606
    end
    inherited PlBotoes: TPanel
      Height = 612
      ExplicitHeight = 612
      inherited ImageLogoBase: TImage
        Top = 533
        ExplicitTop = 527
      end
      inherited PlInfo: TPanel
        Top = 594
        ExplicitTop = 594
      end
      inherited SBBotoes: TScrollBox
        Height = 533
        ExplicitHeight = 533
      end
    end
    inherited PlLista: TPanel
      Width = 1299
      Height = 612
      ExplicitWidth = 1299
      ExplicitHeight = 612
      inherited SplLista: TSplitter
        Top = 456
        Width = 1299
        ExplicitTop = 450
        ExplicitWidth = 1299
      end
      inherited SpFilter: TSplitter
        Width = 1299
        ExplicitWidth = 1299
      end
      inherited PlRodaPe: TPanel
        Top = 461
        Width = 1299
        ExplicitTop = 461
        ExplicitWidth = 1299
        inherited plDetalhes: TPanel
          Left = 721
          ExplicitLeft = 721
          inherited DBGListaMfi: TDBGrid
            Columns = <
              item
                Expanded = False
                FieldName = 'mfichave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mfidata'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mfihistorico'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'mfivalor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tmfidentificacao'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'flacodigo'
                Visible = True
              end>
          end
        end
        inherited plEstorno: TPanel
          Left = 1117
          ExplicitLeft = 1117
        end
        object PlItens: TPanel
          Left = 0
          Top = 0
          Width = 721
          Height = 151
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 2
          object listaitm: TDBGrid
            Left = 2
            Top = 22
            Width = 717
            Height = 127
            Align = alClient
            BorderStyle = bsNone
            Color = clCream
            DataSource = Ditm
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            PopupMenu = MenuManutencao
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'itmchave'
                Width = 55
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmitem'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'procodigo'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pronome'
                Width = 192
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unisimbolo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmvalor'
                Title.Caption = 'Vlr Unit.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmquantidade'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotal'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmdesconto'
                Title.Caption = 'Desc.'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotalliq'
                Title.Caption = 'Total Liquido'
                Visible = True
              end>
          end
          object plTituloItensDetalhe: TPanel
            Left = 2
            Top = 2
            Width = 717
            Height = 20
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            Caption = '          Itens de Vendas'
            Color = 4210816
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object btOcultaExibeDetalhe: TSpeedButton
              Left = 1
              Top = 1
              Width = 17
              Height = 18
              Align = alLeft
              Caption = '<'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              OnClick = btOcultaExibeDetalheClick
              ExplicitLeft = 696
              ExplicitTop = 4
            end
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 1299
        ExplicitWidth = 1299
        inherited PlEdTextoBusca: TPanel
          inherited GrBTextoProcurar: TGroupBox
            inherited PlGbEdtBusca: TPanel
              inherited edbusca: TEdit
                Color = 11206655
              end
            end
          end
        end
        inherited PlBotaoFiltroEsp2: TPanel
          Enabled = True
        end
      end
      inherited PlSelecao: TPanel
        Width = 1299
        ExplicitWidth = 1299
        inherited GBPlSelecao: TGroupBox
          Width = 1295
          ExplicitWidth = 1295
          inherited DBLista: TDBGrid
            Width = 1188
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1299
        Height = 327
        ExplicitWidth = 1299
        ExplicitHeight = 327
        inherited DBGLista: TDBGrid
          Width = 1299
          Height = 255
          Columns = <
            item
              Expanded = False
              FieldName = 'titcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfichave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'srfidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 186
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tfiidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bconome'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'caridentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfiemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfinumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidtultbaixa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidias'
              Width = 58
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfivalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfibaixadocapital'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldocapital'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfimulta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfijuros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldogeral'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfihistorico'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidtprevisao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'meschave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rngchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bolnossonumero'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfibaixatotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flasigla'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfiprevisao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbvendedor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rdcnrauto'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 282
          Width = 1299
          Visible = True
          ExplicitTop = 282
          ExplicitWidth = 1299
          inherited PlDetalhe: TPanel
            Width = 1295
            ExplicitWidth = 1295
          end
        end
        inherited plSugestao: TPanel
          TabOrder = 3
        end
        object plEtdInfo: TPanel
          Left = 0
          Top = 255
          Width = 1299
          Height = 27
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 2
          object Panel1: TPanel
            Left = 2
            Top = 2
            Width = 879
            Height = 23
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvLowered
            BorderWidth = 3
            Caption = 'Nome Fantasia/Apelido:'
            Color = clCream
            ParentBackground = False
            TabOrder = 0
            object etdapelido: TDBText
              Left = 123
              Top = 4
              Width = 236
              Height = 15
              Align = alRight
              DataField = 'etdapelido'
              DataSource = Detd
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object edrendereco: TDBText
              Left = 359
              Top = 4
              Width = 352
              Height = 15
              Align = alRight
              DataField = 'edrendereco'
              DataSource = Dedr
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
            object etftelefone: TDBText
              Left = 711
              Top = 4
              Width = 164
              Height = 15
              Align = alRight
              DataField = 'etftelefone'
              DataSource = Detf
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
            end
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1443
      ExplicitWidth = 1443
      inherited plid: TPanel
        Left = 993
        Caption = '02.02.15.005-01'
        ExplicitLeft = 993
      end
      inherited PlSair: TPanel
        Left = 1237
        ExplicitLeft = 1237
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    object ActVencimento: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Vencimento'
      OnExecute = ActVencimentoExecute
    end
    inherited ActCancelar: TAction
      Enabled = True
      OnExecute = ActCancelarExecute
    end
    object ActRecebimento: TAction [8]
      Category = 'Movimenta'#231#227'o'
      Caption = 'Recebimento'
      OnExecute = ActRecebimentoExecute
    end
    object ActEstorno: TAction [9]
      Category = 'Movimenta'#231#227'o'
      Caption = 'Estorno'
      OnExecute = ActEstornoExecute
    end
    object ActDetalhes: TAction [10]
      Category = 'Movimenta'#231#227'o'
      Caption = 'Detalhes'
      OnExecute = ActDetalhesExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 376
    Top = 180
  end
  inherited MenuManutencao: TPopupMenu
    object mUtiliatarios: TMenuItem
      Caption = 'Utiliatarios'
      object AjustaFilial1: TMenuItem
        Caption = 'Ajusta Filial'
        OnClick = AjustaFilial1Click
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT distinct rfi.rfichave'
      '     , etd.etdcodigo'
      '     , rfi.tfdcodigo'
      '     , rfi.flacodigo'
      '     , rfi.tficodigo'
      '     , rfi.bcocodigo'
      '     , rfi.carcodigo'
      '     , rfi.rfiemissao'
      '     , rfi.rfivencimento'
      '     , rfi.rfinumero'
      '     , rfi.rfivalor'
      '     , rfi.rfihistorico'
      '     , rfi.srfidentificacao'
      '     , rfi.srfcodigo'
      '     , rfi.frrcodigo'
      '     , rfi.rfipercmesmora'
      '     , rfi.rfirepetir'
      '     , rfi.rfiprevisao'
      '     , rfi.rfivalorparcela'
      '     , rfi.moecodigo'
      '     , rfi.rfidatadesc'
      '     , rfi.rfivalodesc'
      '     , rfi.rfidatamulta'
      '     , rfi.rfipercmulta'
      '     , rfi.rfivalomulta'
      '     , rfi.etdidentificacao'
      '     , rfi.tfiidentificacao'
      '     , rfi.caridentificacao'
      '     , rfi.rfidtultbaixa'
      '     , rfi.rfidias'
      '     , rfi.rfibaixadocapital'
      '     , rfi.rfisaldocapital'
      '     , rfi.rfijuros'
      '     , rfi.rfimulta'
      '     , rfi.rfidesconto'
      '     , rfi.rfisaldogeral'
      '     , rfi.rfimoradia'
      '     , rfi.bconome'
      '     , rfi.titcodigo'
      '     , rfi.rfidtprevisao'
      '     , mor.meschave'
      '     , rfi.rngchave'
      
        '     , (SELECT bolnossonumero from bol b where b.sblcodigo<>9 an' +
        'd b.rfichave=rfi.rfichave) bolnossonumero'
      
        '     , if (rfi.srfcodigo=1 OR rfi.srfcodigo=2,  rfi.rfibaixadoca' +
        'pital+rfi.rfijuros+rfi.rfimulta-rfi.rfidesconto,0) as rfibaixato' +
        'tal'
      '     , rfi.flasigla'
      '     , rfi.tngcodigo'
      '     , mor.orcchave'
      '     , mes.clbvendedor as clbvendedor'
      '     , rfi.rfiinclusao'
      '     , rfi.rdcnrauto'
      ''
      ''
      'FROM v_rfi rfi'
      '     INNER join etd on rfi.etdcodigo=etd.etdcodigo'
      ''
      
        '     left join rfm on rfi.rfichave=rfm.rfichave -- and rfi.flaco' +
        'digo=rfm.flacodigo'
      
        '     left join mor on rfm.meschave=mor.meschave -- and rfi.flaco' +
        'digo=mor.flacodigo '
      '     left join mes on rfm.meschave=mes.meschave '
      ''
      'WHERE rfi.tfdcodigo = :tfdcodigo'
      
        'AND rfi.flacodigo in (select flacodigo from fcb where clbcodigo=' +
        ':clbcodigo )')
    Left = 320
    Top = 180
    inherited uqtabelarfibaixatotal: TFloatField
      DisplayLabel = 'Total Recebido R$'
    end
    object uqtabelaorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object uqtabelaclbvendedor: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'clbvendedor'
    end
    object uqtabelarfiinclusao: TDateTimeField
      FieldName = 'rfiinclusao'
    end
    object uqtabelardcnrauto: TStringField
      DisplayLabel = 'Nr. Autoriza'#231#227'o'
      FieldName = 'rdcnrauto'
    end
  end
  inherited cpg: TUniQuery
    Left = 260
    Top = 264
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 373
    Top = 289
  end
  inherited MenuRelatorios: TPopupMenu
    Left = 474
    Top = 260
  end
  inherited DSSugestao: TDataSource
    Left = 156
    Top = 244
  end
  inherited lou: TUniQuery
    Top = 312
  end
  inherited ColorDialog: TColorDialog
    Top = 341
  end
  inherited ImageList1: TImageList
    Left = 664
    Top = 317
  end
  inherited mfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mfi.mfichave,'
      '  mfihistorico,'
      '  mfivalor,'
      '  tmfidentificacao,'
      '  cedidentificacao,'
      '  mfidata,'
      '  tmf.cedcodigo,'
      '  mfi.tmfcodigo,'
      '  mfi.flacodigo'
      'FROM mfi'
      '  JOIN tmf'
      '    ON mfi.tmfcodigo = tmf.tmfcodigo'
      '  JOIN ced'
      '    ON tmf.cedcodigo = ced.cedcodigo'
      'WHERE (SELECT'
      '    m1.mfichave'
      '  FROM mlt m1'
      '    JOIN lte l'
      '      ON (m1.ltechave = l.ltechave)'
      '      AND l.ltesituacao = 1'
      '  WHERE m1.mfichave = mfi.mfichave) IS NULL'
      'AND rfichave = :rfichave'
      'ORDER BY mfichave, mfi.tmfcodigo, mfivalor DESC, mfidata')
    Left = 748
    Top = 348
    object mfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  inherited Dmfi: TUniDataSource
    Left = 772
    Top = 268
  end
  inherited uqTotais: TUniQuery
    Left = 427
    Top = 307
  end
  object edr: TUniQuery
    SQL.Strings = (
      'SELECT'
      
        '  concat(edr.edrrua,'#39', '#39',edr.edrnumero, '#39' '#39',edr.edrbairro) as ed' +
        'rendereco'
      'FROM edr'
      'where etdcodigo=:etdcodigo and'
      'tedcodigo=1')
    Left = 952
    Top = 272
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object edredrendereco: TStringField
      FieldName = 'edrendereco'
      Size = 150
    end
  end
  object Dedr: TDataSource
    DataSet = edr
    Left = 987
    Top = 267
  end
  object etf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etf.etftelefone'
      'FROM etf'
      'where etdcodigo=:etdcodigo and'
      'ttfcodigo=1')
    Left = 1104
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etfetftelefone: TStringField
      FieldName = 'etftelefone'
      EditMask = '!\(99\)0000-0000;0;_'
    end
  end
  object Detf: TDataSource
    DataSet = etf
    Left = 1147
    Top = 267
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdapelido'
      'FROM etd'
      'where etdcodigo=:etdcodigo')
    Left = 1032
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etdetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 50
    end
  end
  object Detd: TDataSource
    DataSet = etd
    Left = 1067
    Top = 307
  end
  object mfirfi: TUniQuery
    SQL.Strings = (
      
        'select mfichave,flacodigo,mfivalor,mfidata from mfi where rficha' +
        've=:rfichave')
    Left = 1024
    Top = 521
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object mfirfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfiflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mfirfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object mfirfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
  end
  object Dmfirfi: TDataSource
    DataSet = mfirfi
    Left = 1096
    Top = 521
  end
  object Ditm: TUniDataSource
    DataSet = itm
    Left = 624
    Top = 548
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.meschave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '    , IF(imv.vrpcodigo > 0'
      '        , (SELECT vv.pronome'
      '            FROM v_vrp vv'
      '            WHERE vv.vrpcodigo = imv.vrpcodigo) '
      '        , IF(tImc.clbidentificacao IS NOT NULL'
      '           , CONCAT(pro.pronome, '#39' - '#39', tImc.clbidentificacao)'
      '           , pro.pronome))            AS pronome'
      ' --    , pro.pronome'
      '     , uni.unisimbolo'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmdesconto'
      '     , itm.itmtotal'
      '     , (itm.itmtotal - itm.itmdesconto) AS itmtotalliq'
      '     , itm.cfocfop'
      '     , itm.itmaliqipi'
      '     , itm.toecodigo'
      '     , pro.proncm'
      '     , itm.cstcodigo'
      '     , itm.cspcodigo'
      '     , itm.itmpis'
      '     , itm.itmcofins'
      '  FROM      itm'
      '  LEFT JOIN imv ON itm.itmchave  = imv.itmchave  '
      '  JOIN      pro ON itm.procodigo = pro.procodigo'
      '  JOIN      pun ON itm.puncodigo = pun.puncodigo'
      '  JOIN      uni ON pun.unicodigo = uni.unicodigo'
      '  '
      '  -- Identifica o T'#233'cnico da OS'
      '  LEFT JOIN (SELECT i.itmchave'
      '                  , c.clbidentificacao'
      '               FROM imc i'
      '               JOIN clb c ON i.clbcodigo = c.clbcodigo '
      
        '                AND c.fnccodigo = 5) tImc ON itm.itmchave = tImc' +
        '.itmchave  '
      ' '
      ' WHERE itm.meschave = :meschave and itm.flacodigo=:flacodigo')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Options.DetailDelay = 40
    Left = 588
    Top = 548
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'itmchave'
      ReadOnly = True
    end
    object itmmeschave: TIntegerField
      FieldName = 'meschave'
      ReadOnly = True
      Required = True
    end
    object itmitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
      ReadOnly = True
      Required = True
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      ReadOnly = True
      Required = True
    end
    object itmpronome: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Produto / Servi'#231'o'
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object itmunisimbolo: TStringField
      DisplayLabel = 'UN'
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      FixedChar = True
      Size = 6
    end
    object itmitmvalor: TFloatField
      DisplayLabel = 'Vlr Unit R$'
      FieldName = 'itmvalor'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmquantidade: TFloatField
      DisplayLabel = 'Quant.'
      FieldName = 'itmquantidade'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'itmdesconto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmtotal: TFloatField
      DisplayLabel = 'Total Item R$'
      FieldName = 'itmtotal'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmcfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      ReadOnly = True
      Required = True
      Size = 5
    end
    object itmitmaliqipi: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'itmaliqipi'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object itmitmtotalliq: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'itmtotalliq'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmtoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
    end
    object itmproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Size = 8
    end
    object itmcstcodigo: TStringField
      DisplayLabel = 'CST'
      FieldName = 'cstcodigo'
      Size = 4
    end
    object itmcspcodigo: TStringField
      DisplayLabel = 'CSP'
      FieldName = 'cspcodigo'
      Size = 4
    end
    object itmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmitmcofins: TFloatField
      FieldName = 'itmcofins'
    end
  end
  object titcan: TUniQuery
    Left = 1064
    Top = 381
  end
end
