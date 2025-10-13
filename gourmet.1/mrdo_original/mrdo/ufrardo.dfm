inherited frardo: Tfrardo
  Width = 1365
  Height = 664
  ExplicitWidth = 1365
  ExplicitHeight = 664
  inherited PlGeral: TPanel
    Width = 1365
    Height = 664
    ExplicitWidth = 1365
    ExplicitHeight = 664
    inherited SplBotoes: TSplitter
      Height = 644
      ExplicitHeight = 644
    end
    inherited PlBotoes: TPanel
      Height = 644
      ExplicitHeight = 644
      inherited ImageLogoBase: TImage
        Top = 565
        ExplicitTop = 565
      end
      inherited PlInfo: TPanel
        Top = 626
        ExplicitTop = 626
      end
      inherited SBBotoes: TScrollBox
        Height = 565
        ExplicitHeight = 565
        object DBGrid1: TDBGrid
          Left = 0
          Top = 445
          Width = 139
          Height = 120
          Align = alBottom
          DataSource = dorc
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Visible = False
        end
      end
    end
    inherited PlLista: TPanel
      Width = 1221
      Height = 644
      ExplicitWidth = 1221
      ExplicitHeight = 644
      inherited SplLista: TSplitter
        Top = 475
        Width = 1221
        Visible = True
        ExplicitTop = 451
        ExplicitWidth = 1221
      end
      inherited SpFilter: TSplitter
        Width = 1221
        ExplicitLeft = 1
        ExplicitTop = 76
        ExplicitWidth = 1034
      end
      inherited PlRodaPe: TPanel
        Top = 480
        Width = 1221
        Height = 164
        Visible = True
        ExplicitTop = 480
        ExplicitWidth = 1221
        ExplicitHeight = 164
        object listaitm: TDBGrid
          Left = 226
          Top = 0
          Width = 969
          Height = 164
          Align = alLeft
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
              FieldName = 'proncm'
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
            end
            item
              Expanded = False
              FieldName = 'cfocfop'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmaliqipi'
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toecodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cstcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cspcodigo'
              Visible = True
            end>
        end
        object pdetalhe: TPanel
          Left = 0
          Top = 0
          Width = 226
          Height = 164
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 2
          TabOrder = 1
          object Panel3: TPanel
            Left = 2
            Top = 2
            Width = 222
            Height = 20
            Align = alTop
            BevelOuter = bvLowered
            Caption = 'Finaliza'#231#227'o Financeira da Venda'
            Color = 4210816
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clYellow
            Font.Height = -12
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object listapor: TDBGrid
            Left = 2
            Top = 42
            Width = 222
            Height = 120
            Align = alClient
            Color = 14024703
            DataSource = Ddtl
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'ltechave'
                Title.Caption = 'Lote'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mdaidentificacao'
                Title.Caption = 'Modalidade'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'dtlvalor'
                Title.Caption = 'Valor R$'
                Width = 70
                Visible = True
              end>
          end
          object pvalordetalhe: TPanel
            Left = 2
            Top = 22
            Width = 222
            Height = 20
            Align = alTop
            Alignment = taRightJustify
            BevelOuter = bvLowered
            BorderWidth = 2
            Caption = 'Dinheiro R$ 0,00'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -15
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Visible = False
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 1221
        ExplicitWidth = 1221
        inherited PlBotaoFiltroEsp2: TPanel
          Enabled = True
          Visible = True
        end
      end
      inherited PlSelecao: TPanel
        Width = 1221
        ExplicitWidth = 1221
        inherited GBPlSelecao: TGroupBox
          Width = 1217
          ExplicitWidth = 1217
          inherited DBLista: TDBGrid
            Width = 1110
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1221
        Height = 346
        ExplicitWidth = 1221
        ExplicitHeight = 346
        inherited DBGLista: TDBGrid
          Width = 1221
          Height = 321
          Color = 14024703
          Columns = <
            item
              Expanded = False
              FieldName = 'meschave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesinclusao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdfidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesnumero'
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
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesdesconto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mestotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesregistro'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 321
          Width = 1221
          ExplicitTop = 321
          ExplicitWidth = 1221
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1365
      ExplicitWidth = 1365
      inherited plid: TPanel
        Left = 915
        ExplicitLeft = 915
      end
      inherited PlSair: TPanel
        Left = 1159
        ExplicitLeft = 1159
      end
    end
  end
  inherited acoes: TActionList
    Top = 284
    inherited ActIncluir: TAction
      Enabled = False
      Visible = False
    end
    inherited ActAlterar: TAction
      Enabled = False
      Visible = False
    end
    inherited ActExcluir: TAction
      Enabled = False
      Visible = False
    end
    inherited ActInstrucoes: TAction [9]
    end
    inherited ActConfiguracoes: TAction [10]
      Enabled = False
      Visible = False
    end
    inherited ActSair: TAction [11]
    end
    object ActImprimirComprovante: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Imprimir Comprovante'
      OnExecute = ActImprimirComprovanteExecute
    end
    object ActGerareImprimirNFCe: TAction
      Category = 'NFC-e Consumidor'
      Caption = 'Gerar Nota NFC-e'
      OnExecute = ActGerareImprimirNFCeExecute
    end
    object ActNFCeRefeicao: TAction
      Category = 'NFC-e Consumidor'
      Caption = 'Refei'#231#227'o'
      OnExecute = ActNFCeRefeicaoExecute
    end
    object ActNFCeIdentificada: TAction
      Category = 'NFC-e Consumidor'
      Caption = 'Identificada'
      OnExecute = ActNFCeIdentificadaExecute
    end
    object ActNFCeRefIdentif: TAction
      Category = 'NFC-e Consumidor'
      Caption = 'Refei'#231#227'o Identificada'
      OnExecute = ActNFCeRefIdentifExecute
    end
    object ActImprimirNFCe: TAction
      Category = 'NFC-e Consumidor'
      Caption = 'Imprimir'
      OnExecute = ActImprimirNFCeExecute
    end
    object ActImprimirVendaNFE: TAction
      Category = 'NFe Empresa'
      Caption = 'Gerar Nota NF-e'
      OnExecute = ActImprimirVendaNFEExecute
    end
    object ActRenviaremail: TAction
      Category = 'NFe Empresa'
      Caption = 'Enviar por email'
      OnExecute = ActRenviaremailExecute
    end
    object ActReimprimirNFE: TAction
      Category = 'NFe Empresa'
      Caption = 'imprimir'
      OnExecute = ActReimprimirNFEExecute
    end
    object ActAterarCliente: TAction
      Category = 'NFe Empresa'
      Caption = 'Aterar Cliente'
      OnExecute = ActAterarClienteExecute
    end
  end
  inherited MenuManutencao: TPopupMenu
    object Utilitrios1: TMenuItem [8]
      Caption = 'Utilit'#225'rios'
      object GerarasdePixeCartes1: TMenuItem
        Caption = 'Gerar as de Pix e Cart'#245'es'
        OnClick = GerarasdePixeCartes1Click
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT '
      '  mes.meschave, '
      '  IF((SELECT '
      '      COUNT(micchave) '
      '    FROM mic '
      
        '    WHERE mic.meschave = mes.meschave) > 0, CONCAT(etd.etdidenti' +
        'ficacao, '#39' '#39', (SELECT '
      '      idcnome '
      '    FROM idc, '
      '         mic '
      '    WHERE idc.idccodigo = mic.idccodigo '
      
        '    AND mic.meschave = mes.meschave)), etd.etdidentificacao) AS ' +
        'etdidentificacao, '
      '  sde.sdeidentificacao, '
      '  tdf.tdfidentificacao, '
      '  toe.toeidentificacao, '
      '  mes.mesemissao, '
      '  mes.mesnumero, '
      '  mes.etdcodigo, '
      '  mes.messerie, '
      '  meschavenfe, '
      '  mes.mesregistro, '
      '  mes.mesvalor, '
      '  mes.mesdesconto, '
      '  mes.mestotal, '
      '  mes.temcodigo, '
      '  mes.clbcodigo, '
      '  mes.trmcodigo, '
      '  mesprotocolo, '
      '  mes.sdecodigo, '
      '  mesdatanfe, '
      '  toeorigem, '
      '  mes.tdfcodigo, '
      '  toe.ttecodigo, '
      '  tte.tteidentificacao, '
      '  temidentificacao, '
      '  mesprodutos, '
      '  messervicos, '
      '  toe.ttocodigo, '
      '  mes.mespis, '
      '  mes.mescofins, '
      '  mes.mesipi, '
      '  mes.mesicm, '
      '  mes.mesicms, '
      '  mes.flacodigo, '
      '  mes.mesrefeicao,'
      
        '  (select orcchave from mor where mor.meschave=mes.meschave) orc' +
        'chave,'
      
        '  (select orctotalav from mor,orc where orc.orcchave=mor.orcchav' +
        'e and mor.meschave=mes.meschave) orctotalav,'
      
        '  (select orctotalap from mor,orc where orc.orcchave=mor.orcchav' +
        'e and mor.meschave=mes.meschave) orctotalap,'
      '  mes.mesinclusao'
      'FROM mes, '
      '     etd, '
      '     sde, '
      '     tdf, '
      '     toe, '
      '     tte, '
      '     tem '
      'WHERE (etd.etdcodigo = mes.etdcodigo '
      'AND mes.temcodigo = tem.temcodigo '
      'AND sde.sdecodigo = mes.sdecodigo '
      'AND tte.ttecodigo = toe.ttecodigo '
      'AND tdf.tdfcodigo = mes.tdfcodigo '
      'AND toe.toecodigo = mes.toecodigo '
      'AND toe.ttmcodigo = 0 '
      'AND toe.ttecodigo = 1 '
      'AND mes.tdfcodigo NOT IN ('#39'01'#39', '#39'2D'#39', '#39'AF'#39', '#39'RF'#39', '#39'CE'#39' ) '
      
        'AND IF(mes.sdecodigo = '#39'02'#39', NOT mes.tdfcodigo = '#39'00'#39', toe.ttmco' +
        'digo = 0)) '
      ''
      '-- Filtros')
    object uqtabelameschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object uqtabelamesemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'mesemissao'
      EditMask = '!99/99/0000;1;_'
    end
    object uqtabelatdfidentificacao: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'tdfidentificacao'
      Size = 50
    end
    object uqtabelamesnumero: TIntegerField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'mesnumero'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelamesvalor: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'mesvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'mesdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamestotal: TFloatField
      DisplayLabel = 'Total L'#237'quido R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelasdeidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio Documento'
      FieldName = 'sdeidentificacao'
      Required = True
      Size = 50
    end
    object uqtabelatoeidentificacao: TStringField
      DisplayLabel = 'Destina'#231#227'o'
      FieldName = 'toeidentificacao'
      Required = True
      Size = 50
    end
    object uqtabelamesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'Clb'
      FieldName = 'clbcodigo'
      Required = True
    end
    object uqtabelatrmcodigo: TIntegerField
      DisplayLabel = 'Trm'
      FieldName = 'trmcodigo'
      Required = True
    end
    object uqtabelamesprotocolo: TStringField
      FieldName = 'mesprotocolo'
      Size = 50
    end
    object uqtabelasdecodigo: TStringField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o'
      FieldName = 'sdecodigo'
      Size = 2
    end
    object uqtabelamesdatanfe: TDateField
      DisplayLabel = 'Data NFE'
      FieldName = 'mesdatanfe'
    end
    object uqtabelatemcodigo: TIntegerField
      DisplayLabel = 'Cod. Est'#225'gio'
      FieldName = 'temcodigo'
    end
    object uqtabelatemidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'temidentificacao'
    end
    object uqtabelatoeorigem: TStringField
      FieldName = 'toeorigem'
      Size = 1
    end
    object uqtabelatdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object uqtabelattecodigo: TIntegerField
      DisplayLabel = 'Cod. Tipo Mov.'
      FieldName = 'ttecodigo'
    end
    object uqtabelatteidentificacao: TStringField
      Tag = 999
      DisplayLabel = 'Tipo Mov.'
      FieldName = 'tteidentificacao'
      Size = 35
    end
    object uqtabelameschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 100
    end
    object uqtabelamesregistro: TDateField
      DisplayLabel = 'Registro'
      FieldName = 'mesregistro'
    end
    object uqtabelamesprodutos: TFloatField
      DisplayLabel = 'Produtos R$'
      FieldName = 'mesprodutos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesservicos: TFloatField
      DisplayLabel = 'Servi'#231'os R$'
      FieldName = 'messervicos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelattocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
    object uqtabelamespis: TFloatField
      DisplayLabel = 'PIS'
      FieldName = 'mespis'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamescofins: TFloatField
      DisplayLabel = 'Cofins'
      FieldName = 'mescofins'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesipi: TFloatField
      DisplayLabel = 'IPI'
      FieldName = 'mesipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesicm: TFloatField
      DisplayLabel = 'ICM'
      FieldName = 'mesicm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesicms: TFloatField
      DisplayLabel = 'ICM-Subst.'
      FieldName = 'mesicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object uqtabelamesrefeicao: TIntegerField
      FieldName = 'mesrefeicao'
    end
    object uqtabelaorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object uqtabelaorctotalap: TFloatField
      FieldName = 'orctotalap'
    end
    object uqtabelaorctotalav: TFloatField
      FieldName = 'orctotalav'
    end
    object uqtabelamesinclusao: TDateTimeField
      DisplayLabel = 'Data e Hora'
      FieldName = 'mesinclusao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited Dsfi: TUniDataSource
    Left = 280
    Top = 396
  end
  inherited sfi: TUniQuery
    Left = 316
    Top = 384
  end
  object orc: TUniQuery
    SQL.Strings = (
      'select  meschave from mes where  meschave=:meschave;')
    Left = 776
    Top = 349
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object orcmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object dorc: TUniDataSource
    DataSet = orc
    Left = 744
    Top = 349
  end
  object dtl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mda.mdaidentificacao,'
      '  dtl.dtlvalor,'
      '  rfm.rfmchave,'
      '  mes.meschave,'
      '  rfi.rfihistorico,'
      '  mes.flacodigo,'
      '  rfi.rfichave,'
      '  mfi.mfichave,'
      '  mes.mestotal,'
      '  dtl.dtlchave,'
      '  dtl.ltechave,'
      '  mlt.mltchave,'
      '  dtl.mdacodigo,'
      '  dtl.flacodigo AS dtlflacodigo,'
      '  rfm.flacodigo AS rfmflacodigo,'
      '  rfi.flacodigo AS rfiflacodigo,'
      '  mfi.flacodigo AS mfiflacodigo,'
      '  lte.flacodigo AS lteflacodigo,'
      '  mlt.flacodigo AS mltflacodigo'
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    AND rfm.flacodigo = mes.flacodigo'
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    AND rfi.flacodigo = mes.flacodigo'
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '    AND mfi.flacodigo = mes.flacodigo'
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      '    AND mes.flacodigo = mlt.flacodigo'
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      '    AND mlt.flacodigo = dtl.flacodigo'
      '  LEFT JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      '  LEFT JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      '    AND mes.flacodigo = lte.flacodigo'
      'WHERE rfi.tfdcodigo IN (2, 32)'
      'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo)'
      'AND mes.tdfcodigo<>'#39'RF'#39
      'AND mes.meschave = :meschave'
      '-- AND mes.flacodigo = :flacodigo'
      ''
      'GROUP BY dtl.mdacodigo')
    Options.DetailDelay = 50
    Left = 166
    Top = 552
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dtlmdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Size = 25
    end
    object dtldtlvalor: TFloatField
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object dtldtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object dtlrfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object dtlltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object dtldtlflacodigo: TIntegerField
      FieldName = 'dtlflacodigo'
    end
    object dtlrfiflacodigo: TIntegerField
      FieldName = 'rfiflacodigo'
    end
    object dtlrfmflacodigo: TIntegerField
      FieldName = 'rfmflacodigo'
    end
    object dtlrfmchave: TIntegerField
      FieldName = 'rfmchave'
    end
    object dtlmfiflacodigo: TIntegerField
      FieldName = 'mfiflacodigo'
    end
    object dtlmfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object dtllteflacodigo: TIntegerField
      FieldName = 'lteflacodigo'
    end
    object dtlrfichave: TIntegerField
      DisplayLabel = 'Chave Finan.'
      FieldName = 'rfichave'
    end
    object dtlmltflacodigo: TIntegerField
      FieldName = 'mltflacodigo'
    end
    object dtlmltchave: TIntegerField
      FieldName = 'mltchave'
    end
    object dtlmdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
  end
  object limite: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  IFNULL(etl.etllimitetotal, 0) AS etllimitetotal'
      'FROM etd'
      '  LEFT JOIN (SELECT'
      '      etdcodigo,'
      '      etllimitetotal'
      '    FROM etl) etl'
      '    ON etd.etdcodigo = etl.etdcodigo'
      'WHERE etd.etdcodigo = :etdcodigo')
    Left = 330
    Top = 487
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object limiteetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object limiteetllimitetotal: TFloatField
      FieldName = 'etllimitetotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object disponivel: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfi.etdcodigo,'
      '  SUM(rfi.rfisaldocapital) AS rfisaldocapital'
      'FROM v_rfi rfi'
      'WHERE rfi.tfdcodigo = 2'
      'AND rfi.srfcodigo NOT IN (2, 9)'
      'AND rfi.etdcodigo = :etdcodigo'
      'GROUP BY rfi.etdcodigo'
      'ORDER BY rfi.etdcodigo')
    Left = 396
    Top = 487
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object disponivelrfisaldocapital: TFloatField
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Ditm: TUniDataSource
    DataSet = itm
    Left = 944
    Top = 500
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
    Left = 908
    Top = 500
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
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT '
      '      cfg.cfgusagou,'
      '      cfgmgou.cfgmgouprorefeicao,'
      '      cfgservarqnfes'
      ''
      '     '
      '  FROM cfg, cfgmgou,cfgmsai, cfgmspd, cfgmnfe  '
      ''
      ' WHERE cfg.flacodigo = :flacodigo'
      'and cfg.cfgcodigo=cfgmgou.cfgcodigo'
      'and cfg.cfgcodigo=cfgmsai.cfgcodigo'
      'and cfg.cfgcodigo=cfgmspd.cfgcodigo'
      'and cfg.cfgcodigo=cfgmnfe.cfgcodigo')
    Left = 712
    Top = 189
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgusagou: TIntegerField
      FieldName = 'cfgusagou'
    end
    object cfgcfgmgouprorefeicao: TIntegerField
      FieldName = 'cfgmgouprorefeicao'
    end
    object cfgcfgservarqnfes: TStringField
      FieldName = 'cfgservarqnfes'
      Size = 200
    end
  end
  object refeicoes: TUniStoredProc
    StoredProcName = 'RegistraRefeicao'
    SQL.Strings = (
      
        'CALL RegistraRefeicao(:pFlaCodigo, :pTipoChave, :pChave, :pClbCo' +
        'digo, :pValor, :pLteChave, :pChamada, @pConfirma, @pMesChave); S' +
        'ELECT CAST(@pConfirma AS SIGNED) AS '#39'@pConfirma'#39', CAST(@pMesChav' +
        'e AS SIGNED) AS '#39'@pMesChave'#39)
    Options.ReturnParams = True
    Left = 648
    Top = 357
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pFlaCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pTipoChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pClbCodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftFloat
        Name = 'pValor'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pLteChave'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pChamada'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pConfirma'
        ParamType = ptOutput
        Value = nil
      end
      item
        DataType = ftInteger
        Name = 'pMesChave'
        ParamType = ptOutput
        Value = nil
      end>
    CommandStoredProcName = 'RegistraRefeicao'
  end
  object Ddtl: TDataSource
    DataSet = dtlmda
    Left = 291
    Top = 564
  end
  object dtlmda: TUniQuery
    SQL.Strings = (
      ''
      ''
      'SELECT DISTINCT'
      ''
      '    mda.mdaidentificacao,'
      '  ( dtl.dtlvalor) dtlvalor,'
      '  dtl.ltechave,'
      '   mda.mdacodigo'
      ''
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '    '
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '    '
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      ''
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      ''
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      ''
      '  INNER JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      '  INNER JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      ''
      'WHERE rfi.tfdcodigo IN (2, 32)'
      'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo)'
      'AND mes.tdfcodigo <> '#39'RF'#39
      '-- AND mes.mesrefeicao = 0'
      'AND mes.meschave = :meschave'
      '-- AND mes.flacodigo = :flacodigo'
      ''
      'UNION DISTINCT'
      ''
      ''
      'SELECT DISTINCT'
      ''
      '    mda.mdaidentificacao,'
      '  ( dtl.dtlvalor) dtlvalor,'
      '  dtl.ltechave,'
      '   mda.mdacodigo'
      ''
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      ''
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      ''
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      ''
      '  LEFT JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      ''
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      ''
      '  INNER JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      '  INNER JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      ''
      'WHERE rfi.tfdcodigo IN ( 2)'
      'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo)'
      'AND mes.tdfcodigo <> '#39'RF'#39
      '-- AND mes.mesrefeicao = 0'
      'AND rfi.tficodigo=10'
      'AND mes.meschave = :meschave'
      '-- AND mes.flacodigo = :flacodigo'
      ''
      '')
    Options.DetailDelay = 50
    Left = 440
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object IntegerField1: TIntegerField
      FieldName = 'ltechave'
    end
    object StringField1: TStringField
      FieldName = 'mdaidentificacao'
      Size = 25
    end
    object FloatField1: TFloatField
      FieldName = 'dtlvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object mic: TUniQuery
    SQL.Strings = (
      
        'select micchave, idccodigo, meschave from mic where mic.meschave' +
        '=:meschave')
    Left = 499
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object micmicchave: TIntegerField
      FieldName = 'micchave'
    end
    object micidccodigo: TIntegerField
      FieldName = 'idccodigo'
    end
    object micmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object oic: TUniQuery
    SQL.Strings = (
      
        'select oicchave, idccodigo, orcchave from oic where oic.orcchave' +
        '=:orcchave')
    Left = 552
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
    object oicoicchave: TIntegerField
      FieldName = 'oicchave'
    end
    object oicidccodigo: TIntegerField
      FieldName = 'idccodigo'
    end
    object oicorcchave: TIntegerField
      FieldName = 'orcchave'
    end
  end
end
