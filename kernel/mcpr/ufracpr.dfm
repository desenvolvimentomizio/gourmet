inherited fracpr: Tfracpr
  Width = 1421
  Height = 797
  Color = 7105644
  ParentBackground = False
  ParentColor = False
  ExplicitWidth = 1421
  ExplicitHeight = 797
  inherited PlGeral: TPanel
    Width = 1421
    Height = 797
    ExplicitWidth = 1421
    ExplicitHeight = 797
    inherited SplBotoes: TSplitter
      Height = 777
      ExplicitHeight = 777
    end
    inherited PlBotoes: TPanel
      Height = 777
      Color = clWhite
      ExplicitHeight = 777
      inherited ImageLogoBase: TImage
        Top = 693
        ExplicitTop = 693
      end
      inherited PlInfo: TPanel
        Top = 757
        BevelOuter = bvNone
        Font.Color = clBlack
        ExplicitTop = 757
      end
      inherited SBBotoes: TScrollBox
        Height = 693
        ExplicitHeight = 693
      end
    end
    inherited PlLista: TPanel
      Width = 1277
      Height = 777
      Color = clSilver
      ParentBackground = False
      ExplicitWidth = 1277
      ExplicitHeight = 777
      inherited SplLista: TSplitter
        Top = 515
        Width = 1277
        Visible = True
        ExplicitTop = 515
        ExplicitWidth = 1277
      end
      inherited SpFilter: TSplitter
        Width = 1277
        ExplicitWidth = 1277
      end
      inherited PlRodaPe: TPanel
        Top = 520
        Width = 1277
        Height = 257
        Visible = True
        ExplicitTop = 520
        ExplicitWidth = 1277
        ExplicitHeight = 257
        object PlResumoItens: TPanel
          Left = 0
          Top = 229
          Width = 1277
          Height = 28
          Margins.Left = 4
          Margins.Top = 4
          Margins.Right = 4
          Margins.Bottom = 4
          Align = alBottom
          BevelOuter = bvNone
          Color = clSilver
          ParentBackground = False
          PopupMenu = MenuManutencao
          TabOrder = 0
          object plQtdItens: TPanel
            AlignWithMargins = True
            Left = 3
            Top = 3
            Width = 130
            Height = 22
            Align = alLeft
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Color = 4473924
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object plBrutoItens: TPanel
            AlignWithMargins = True
            Left = 139
            Top = 3
            Width = 180
            Height = 22
            Align = alLeft
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Color = 4473924
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
          object plDescontoItens: TPanel
            AlignWithMargins = True
            Left = 325
            Top = 3
            Width = 180
            Height = 22
            Align = alLeft
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Color = 4473924
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
          end
          object plLiquidoItens: TPanel
            AlignWithMargins = True
            Left = 511
            Top = 3
            Width = 200
            Height = 22
            Align = alLeft
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Color = 4473924
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 3
          end
        end
        object listaitm: TDBGrid
          Left = 0
          Top = 0
          Width = 1277
          Height = 229
          Align = alClient
          BorderStyle = bsNone
          Color = clCream
          DataSource = Ditm
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = MenuManutencao
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = listaitmDrawColumnCell
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
              Width = 345
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
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
              FieldName = 'itmcontendo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmquantidadeitens'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmdesconto'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmtotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmcusto'
              Title.Caption = 'Custo Total R$'
              Width = 80
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
              FieldName = 'itmipi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toecodigo'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfocfopdestinacao'
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
            end
            item
              Expanded = False
              FieldName = 'itmvaloritem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'itmicms'
              Visible = True
            end>
        end
      end
      inherited PlFiltros: TPanel
        Width = 1277
        ExplicitWidth = 1277
        inherited PlEdTextoBusca: TPanel
          inherited GrBTextoProcurar: TGroupBox
            inherited PlGbEdtBusca: TPanel
              inherited edbusca: TEdit
                Color = 11206655
              end
            end
          end
        end
        inherited PlBotaoFiltro: TPanel
          Color = clSilver
          ParentBackground = False
        end
        inherited PlBotaoFiltroEsp2: TPanel
          Enabled = True
          inherited gbFiltroPorDatas: TGroupBox
            ParentBackground = False
            ParentColor = False
            inherited plDataFinal: TPanel
              Font.Color = clWhite
            end
            inherited plDataInicial: TPanel
              Font.Color = clWhite
            end
          end
        end
        inherited PlBotaoFiltroEsp: TScrollBox
          Width = 150
          ExplicitWidth = 150
        end
      end
      inherited PlSelecao: TPanel
        Width = 1277
        ExplicitWidth = 1277
        inherited GBPlSelecao: TGroupBox
          Width = 1273
          ExplicitWidth = 1273
          inherited DBLista: TDBGrid
            Width = 1166
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1277
        Height = 386
        ExplicitWidth = 1277
        ExplicitHeight = 386
        inherited DBGLista: TDBGrid
          Width = 1277
          Height = 302
          DrawingStyle = gdsThemed
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
              FieldName = 'mesregistro'
              Title.Caption = 'Dt.Registro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toeidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tdfidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdeidentificacao'
              Title.Caption = 'Sit.Documento'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'messerie'
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
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesvalor'
              Title.Caption = 'Total L'#237'quido R$'
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
              Title.Caption = 'Total R$'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toecfopsaida'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesfrete'
              Title.Caption = 'Frete R$'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesipi'
              Title.Caption = 'IPI R$'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesicms'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 74
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 302
          Width = 1277
          Height = 84
          BevelOuter = bvNone
          ParentBackground = False
          Visible = True
          ExplicitTop = 302
          ExplicitWidth = 1277
          ExplicitHeight = 84
          object pltotais: TPanel
            Left = 0
            Top = 52
            Width = 1277
            Height = 32
            Align = alBottom
            Color = clSilver
            ParentBackground = False
            TabOrder = 0
            object PltotalBruto: TPanel
              AlignWithMargins = True
              Left = 4
              Top = 4
              Width = 210
              Height = 24
              Align = alLeft
              Alignment = taRightJustify
              BevelOuter = bvNone
              Caption = 'Total L'#237'quido: '
              Color = 4473924
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
              object PlValortotalBruto: TPanel
                AlignWithMargins = True
                Left = 3
                Top = 3
                Width = 210
                Height = 18
                Align = alLeft
                Alignment = taRightJustify
                BevelOuter = bvNone
                BorderWidth = 2
                Caption = 'Total Bruto: '
                Font.Charset = EASTEUROPE_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentColor = True
                ParentFont = False
                TabOrder = 0
              end
            end
            object Pltotaldescontos: TPanel
              AlignWithMargins = True
              Left = 220
              Top = 4
              Width = 210
              Height = 24
              Align = alLeft
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = 'Total Descontos: '
              Color = 4473924
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
            end
            object PlTotalCancelado: TPanel
              AlignWithMargins = True
              Left = 436
              Top = 4
              Width = 210
              Height = 24
              Align = alLeft
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = 'Total Cancelados: '
              Color = 4473924
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 2
            end
            object Plvalortotalliquido: TPanel
              AlignWithMargins = True
              Left = 652
              Top = 4
              Width = 210
              Height = 24
              Align = alLeft
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 2
              Caption = 'Total L'#237'quido: '
              Color = 4473924
              Font.Charset = EASTEUROPE_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 3
            end
          end
          object DBGridTom: TDBGrid
            Left = 0
            Top = 0
            Width = 646
            Height = 52
            Align = alLeft
            DataSource = Dtom
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                FieldName = 'tofidentificacao'
                Width = 600
                Visible = True
              end>
          end
        end
        inherited plSugestao: TPanel
          inherited pbotoes: TPanel
            inherited psituacao: TPanel
              Color = 4473924
            end
          end
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1421
      Color = clBlack
      ExplicitWidth = 1421
      inherited plid: TPanel
        Left = 993
        Caption = '03-03-000'
        ExplicitLeft = 993
      end
      inherited PlSair: TPanel
        Left = 1237
        ExplicitLeft = 1237
      end
    end
  end
  inherited acoes: TActionList
    Left = 356
    Top = 244
    inherited ActIncluir: TAction
      Category = 'Entradas'
      OnExecute = ActIncluirExecute
    end
    object ActImportarNFE: TAction [1]
      Category = 'Entradas'
      Caption = 'Importar NFE'
      ImageIndex = 8
      OnExecute = ActImportarNFEExecute
    end
    object ActPrecificacao: TAction [2]
      Category = 'Entradas'
      Caption = 'Precifica'#231#227'o'
      Enabled = False
      Visible = False
      OnExecute = ActPrecificacaoExecute
    end
    object ActRegistraCPA: TAction [3]
      Category = 'Entradas'
      Caption = 'Registra Contas a Pagar'
      OnExecute = ActRegistraCPAExecute
    end
    object ActTransferencia: TAction [4]
      Category = 'Entradas'
      Caption = 'Transfer'#234'ncia'
      OnExecute = ActTransferenciaExecute
    end
    inherited ActAlterar: TAction
      Category = 'Entradas'
      OnExecute = ActAlterarExecute
    end
    inherited ActExcluir: TAction
      Category = 'Entradas'
      Caption = 'Cancelar'
    end
    inherited ActFiltrar: TAction [7]
      Category = 'Entradas'
    end
    inherited ActAtualizar: TAction [8]
      Category = 'Entradas'
    end
    inherited ActPesquisar: TAction [9]
      Category = 'Entradas'
    end
    object ActVerificarCFOP: TAction [10]
      Category = 'Utilit'#225'rios'
      Caption = 'Verificar CFOP'
      OnExecute = ActVerificarCFOPExecute
    end
    object ActGerarEtiquetas: TAction [11]
      Category = 'Utilit'#225'rios'
      Caption = 'Gerar Etiquetas'
      OnExecute = ActGerarEtiquetasExecute
    end
    inherited ActRelatorios: TAction [12]
      Category = 'Utilit'#225'rios'
    end
    inherited ActVerFiltros: TAction [13]
    end
    inherited ActConfiguracoes: TAction
      Category = 'Utilit'#225'rios'
    end
    object ActChaveXML: TAction [16]
      Category = 'Utilit'#225'rios'
      Caption = 'Chave XML'
      OnExecute = ActChaveXMLExecute
    end
    object ActGerarMDFe: TAction [17]
      Category = 'MDFes'
      Caption = 'Gerar MDFe'
      OnExecute = ActGerarMDFeExecute
    end
    object ActImprimirMDFe: TAction [18]
      Category = 'MDFes'
      Caption = 'Imprimir MDFe'
      OnExecute = ActImprimirMDFeExecute
    end
    inherited ActSair: TAction
      Category = 'Utilit'#225'rios'
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 300
    Top = 276
  end
  inherited MenuManutencao: TPopupMenu
    object mUtilitarios: TMenuItem [7]
      Caption = 'Utilit'#225'rios'
      object mAjustarCFOpItens: TMenuItem
        Caption = 'Ajustar CFOP do Itens'
        OnClick = mAjustarCFOpItensClick
      end
      object mnAjustarRegimeTributario: TMenuItem
        Caption = 'Ajustar Regime Tribut'#225'rio'
        OnClick = mnAjustarRegimeTributarioClick
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT mes.meschave'
      '     , etd.etdidentificacao'
      '     , sde.sdeidentificacao'
      '     , tdf.tdfidentificacao'
      '     , toe.toeidentificacao'
      '     , mes.mesemissao'
      '     , mes.mesnumero'
      '     , mes.etdcodigo'
      '     , mes.messerie'
      '     , tem.temidentificacao'
      '     , mes.tdfcodigo'
      '     , mes.mesvalor'
      '     , mes.mesdesconto'
      '     , mes.mestotal'
      '     , mes.temcodigo'
      '     , mes.mesregistro'
      '     , mes.mesprotocolo'
      '     , mes.sdecodigo'
      '     , mesdatanfe'
      '     , toe.ttocodigo'
      '     , mes.mesregistro'
      '     , mes.mesreclassicacao'
      '     , mes.toecodigo'
      '     , toe.toecfopsaida'
      '     , mes.mesipi'
      '     , mes.mesfrete'
      '     , mes.meschavenfe'
      '     , mes.mesicms'
      '     , clbidentificacao'
      ''
      '  FROM mes'
      ' INNER JOIN etd ON mes.etdcodigo = etd.etdcodigo'
      ' INNER JOIN sde ON mes.sdecodigo = sde.sdecodigo'
      ' INNER JOIN tdf ON mes.tdfcodigo = tdf.tdfcodigo'
      ' INNER JOIN toe ON mes.toecodigo = toe.toecodigo'
      ' INNER JOIN tem ON mes.temcodigo = tem.temcodigo'
      ' INNER JOIN clb ON mes.clbcodigo = clb.clbcodigo'
      ' WHERE toe.ttecodigo = 0 and toe.ttocodigo in (1,3,4,7,8)'
      ' -- Filtros'
      '')
    Left = 308
    Top = 208
    object uqtabelameschave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'meschave'
    end
    object uqtabelamesregistro: TDateField
      DisplayLabel = 'Registro'
      FieldName = 'mesregistro'
      EditMask = '!99/99/0000;1;_'
    end
    object uqtabelamesemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'mesemissao'
      EditMask = '!99/99/0000;1;_'
    end
    object uqtabelatdfidentificacao: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'tdfidentificacao'
      Size = 30
    end
    object uqtabelamesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 4
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
      DisplayLabel = 'Fornecedor'
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
      DisplayLabel = 'Sit. Documento'
      FieldName = 'sdeidentificacao'
      Required = True
      Size = 50
    end
    object uqtabelatoeidentificacao: TStringField
      DisplayLabel = 'Tipo do Movimenta'#231#227'o'
      FieldName = 'toeidentificacao'
      Required = True
      Size = 100
    end
    object uqtabelamesprotocolo: TStringField
      FieldName = 'mesprotocolo'
      Size = 50
    end
    object uqtabelasdecodigo: TStringField
      DisplayLabel = 'S.D.'
      FieldName = 'sdecodigo'
      Size = 2
    end
    object uqtabelatemcodigo: TIntegerField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'temcodigo'
    end
    object uqtabelamesdatanfe: TDateField
      FieldName = 'mesdatanfe'
    end
    object uqtabelatemidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'temidentificacao'
      Size = 35
    end
    object uqtabelatdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 3
    end
    object uqtabelattocodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'ttocodigo'
    end
    object uqtabelamesreclassicacao: TIntegerField
      FieldName = 'mesreclassicacao'
    end
    object uqtabelatoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object uqtabelatoecfopsaida: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'toecfopsaida'
      Size = 10
    end
    object uqtabelamesfrete: TFloatField
      DisplayLabel = 'R$ Frete'
      FieldName = 'mesfrete'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamesipi: TFloatField
      DisplayLabel = 'R$ IPI'
      FieldName = 'mesipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelameschavenfe: TStringField
      FieldName = 'meschavenfe'
      Size = 200
    end
    object uqtabelamesicms: TCurrencyField
      DisplayLabel = 'ICMS Subst R$'
      FieldName = 'mesicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbidentificacao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited fmd: TUniQuery
    Top = 235
  end
  inherited Dfmd: TDataSource
    Left = 800
  end
  inherited DSSugestao: TDataSource
    Left = 156
    Top = 228
  end
  inherited ImageList1: TImageList
    Left = 752
    Top = 373
  end
  inherited XMLDocument1: TXMLDocument
    Left = 760
    Top = 165
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT pro.pronome'
      '     , itm.itmchave'
      '     , itm.meschave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '     , uni.unisimbolo'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmcontendo * itm.itmquantidade itmquantidadeitens'
      '     , itm.itmcontendo'
      '     , (itm.itmvalor) /itm.itmcontendo itmvaloritem'
      '     , (itm.itmdesconto ) AS itmdesconto'
      
        '     , (itm.itmvalor * itm.itmquantidade)+itmipi+itmicms-itmdesc' +
        'onto      AS itmcusto'
      '     , itm.itmtotal'
      '     , itm.cfocfop'
      '     , itm.itmaliqipi'
      '     , itm.toecodigo'
      '     , itm.cfocfopdestinacao'
      '     , itm.cstcodigo '
      '     , itm.cspcodigo '
      '     , itm.itmipi'
      '     , itm.puncodigo'
      '     , itm.itmicms'
      ''
      '  FROM itm'
      ' INNER JOIN pro ON itm.procodigo = pro.procodigo'
      ' INNER JOIN pun ON itm.puncodigo = pun.puncodigo'
      ' INNER JOIN uni ON pun.unicodigo = uni.unicodigo'
      ' WHERE itm.meschave = :meschave'
      ' GROUP BY itm.itmchave')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 264
    Top = 580
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
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
      Size = 3
    end
    object itmitmvalor: TFloatField
      DisplayLabel = 'Vlr Item R$'
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
    object itmitmcusto: TFloatField
      DisplayLabel = 'Total Geral'
      FieldName = 'itmcusto'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmtoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
    end
    object itmcfocfopdestinacao: TStringField
      DisplayLabel = 'Destina'#231#227'o'
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmcstcodigo: TStringField
      DisplayLabel = 'CST'
      FieldName = 'cstcodigo'
      Size = 4
    end
    object itmcspcodigo: TStringField
      DisplayLabel = 'PIS'
      FieldName = 'cspcodigo'
      Size = 4
    end
    object itmitmipi: TFloatField
      DisplayLabel = 'R$ IPI'
      FieldName = 'itmipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object itmitmvaloritem: TFloatField
      DisplayLabel = 'Vlr Unit R$'
      FieldName = 'itmvaloritem'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object itmitmquantidadeitens: TFloatField
      DisplayLabel = 'Tot. Estoque'
      FieldName = 'itmquantidadeitens'
      DisplayFormat = '#,##0.0'
      EditFormat = '#,##0.0'
    end
    object itmitmicms: TCurrencyField
      DisplayLabel = 'ICMS Subst'
      FieldName = 'itmicms'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Ditm: TUniDataSource
    DataSet = itm
    Left = 308
    Top = 580
  end
  object Dcfg: TUniDataSource
    DataSet = cfg
    Left = 816
    Top = 236
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  fla.etdcodigo,'
      '  cfgment.cfgtoetransentflainte,'
      '  cfgment.cfgtoetransentflafora,'
      '  cfg.cfgusafla,'
      '  cfgmsai.etirelcodigo,'
      '  cfgmsai.metcodigo'
      'FROM cfg,'
      '     cfgment,'
      '     cfgmsai,'
      '     fla'
      'WHERE fla.flacodigo = cfg.flacodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND fla.flacodigo = :flacodigo'
      ''
      ''
      '')
    Left = 936
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object cfgcfgtoetransentflainte: TIntegerField
      FieldName = 'cfgtoetransentflainte'
    end
    object cfgcfgtoetransentflafora: TIntegerField
      FieldName = 'cfgtoetransentflafora'
    end
    object cfgcfgusafla: TIntegerField
      FieldName = 'cfgusafla'
    end
    object cfgetirelcodigo: TStringField
      FieldName = 'etirelcodigo'
    end
    object cfgmetcodigo: TIntegerField
      FieldName = 'metcodigo'
    end
  end
  object etd: TUniQuery
    Left = 488
    Top = 380
  end
  object ete: TUniQuery
    Left = 696
    Top = 292
    object eteeteemail: TStringField
      FieldName = 'eteemail'
      Size = 200
    end
    object eteetecodigo: TIntegerField
      FieldName = 'etecodigo'
    end
  end
  object dtm: TUniQuery
    SQL.Strings = (
      
        'select dtmchave, dtmplaca,dtmvolumes, dtmpesobruto, dtmpesoliq, ' +
        'meschave,dtm.etdcodigo,ufssigla,edrrua, cddnome,ufssigla,edrinsc' +
        'est,etddoc1,etdidentificacao, dtmespecie,dtmmarcas,cdd.ufscodigo'
      'from dtm, etd, edr, cdd, ufs '
      '    where'
      '    dtm.etdcodigo=etd.etdcodigo and '
      '    etd.etdcodigo=edr.etdcodigo and '
      '    edr.cddcodigo=cdd.cddcodigo and '
      '    cdd.ufscodigo=ufs.ufscodigo and '
      '    edr.tedcodigo='#39'1'#39' and dtm.meschave=:meschave')
    Left = 732
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dtmdtmchave: TIntegerField
      FieldName = 'dtmchave'
    end
    object dtmdtmplaca: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'dtmplaca'
      Required = True
      Size = 10
    end
    object dtmdtmvolumes: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'dtmvolumes'
      Required = True
    end
    object dtmdtmpesobruto: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'dtmpesobruto'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object dtmdtmpesoliq: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'dtmpesoliq'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object dtmmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object dtmetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object dtmufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object dtmedrrua: TStringField
      FieldName = 'edrrua'
      Size = 50
    end
    object dtmcddnome: TStringField
      FieldName = 'cddnome'
      Size = 50
    end
    object dtmufssigla: TStringField
      DisplayLabel = 'UF Placa'
      FieldName = 'ufssigla'
      ReadOnly = True
      Required = True
      Size = 3
    end
    object dtmetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object dtmetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object dtmdtmespecie: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'dtmespecie'
      Size = 50
    end
    object dtmdtmmarcas: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'dtmmarcas'
      Size = 50
    end
    object dtmedrinscest: TStringField
      FieldName = 'edrinscest'
    end
  end
  object tto: TUniQuery
    SQL.Strings = (
      'SELECT ttocodigo'
      '     , ttoidentificacao'
      'FROM tto'
      'WHERE ttocodigo IN (1, 3, 4, 5, 6, 8);')
    Left = 632
    Top = 380
    object ttottocodigo: TIntegerField
      FieldName = 'ttocodigo'
    end
    object ttottoidentificacao: TStringField
      FieldName = 'ttoidentificacao'
      Size = 35
    end
  end
  object uqTotais: TUniQuery
    SQL.Strings = (
      
        'SELECT SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), mes.mesvalor+mes.m' +
        'esfrete+mes.mesipi, 0))    AS mesvalor'
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), mes.mesdesconto, 0' +
        ')) AS mesdeconto'
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'00'#39', '#39'01'#39'), mes.mestotal, 0)) ' +
        '   AS mestotal'
      
        '     , SUM(IF(mes.sdecodigo  IN ('#39'02'#39', '#39'03'#39'), mes.mestotal, 0)) ' +
        '   AS mestotalcancelado'
      '     , SUM(IF((mes.sdecodigo IN ('#39'00'#39', '#39'01'#39')) '
      '          AND (mes.tdfcodigo IN ('#39'2D'#39', '#39'55'#39', '#39'65'#39'))'
      
        '          AND (mes.temcodigo IN (5, 9)), mes.mestotal, 0))      ' +
        '   AS mestotalnf'
      '  FROM mes'
      ' INNER JOIN etd ON mes.etdcodigo = etd.etdcodigo'
      ' INNER JOIN sde ON mes.sdecodigo = sde.sdecodigo'
      ' INNER JOIN tdf ON mes.tdfcodigo = tdf.tdfcodigo'
      ' INNER JOIN toe ON mes.toecodigo = toe.toecodigo'
      ' INNER JOIN tem ON mes.temcodigo = tem.temcodigo'
      ' WHERE toe.ttecodigo = 0 and toe.ttocodigo not in (2,8)'
      ' -- Filtros')
    Left = 328
    Top = 427
    object uqTotaismesvalor: TFloatField
      FieldName = 'mesvalor'
    end
    object uqTotaismesdeconto: TFloatField
      FieldName = 'mesdeconto'
    end
    object uqTotaismestotal: TFloatField
      FieldName = 'mestotal'
    end
    object uqTotaismestotalcancelado: TFloatField
      FieldName = 'mestotalcancelado'
    end
    object uqTotaismestotalnf: TFloatField
      FieldName = 'mestotalnf'
    end
  end
  object uqItmTotais: TUniQuery
    SQL.Strings = (
      'SELECT itm.meschave'
      '     , COUNT(itm.itmchave)                 AS itmitens'
      '     , SUM(itm.itmtotal)+SUM(itm.itmdesconto)   AS itmtotal'
      '     , SUM(itm.itmdesconto)                AS itmdesconto'
      
        '     , SUM((itm.itmtotal+itm.itmipi+itm.itmfrete) ) AS itmtotall' +
        'iq'
      '  FROM itm'
      ' INNER JOIN pro ON itm.procodigo = pro.procodigo'
      ' INNER JOIN pun ON itm.puncodigo = pun.puncodigo'
      ' INNER JOIN uni ON pun.unicodigo = uni.unicodigo'
      ' WHERE itm.meschave = :meschave')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Options.DetailDelay = 40
    AfterOpen = uqItmTotaisAfterOpen
    AfterRefresh = uqItmTotaisAfterRefresh
    Left = 400
    Top = 598
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object uqItmTotaismeschave: TIntegerField
      FieldName = 'meschave'
    end
    object uqItmTotaisitmitens: TIntegerField
      FieldName = 'itmitens'
    end
    object uqItmTotaisitmtotal: TFloatField
      FieldName = 'itmtotal'
    end
    object uqItmTotaisitmdesconto: TFloatField
      FieldName = 'itmdesconto'
    end
    object uqItmTotaisitmtotalliq: TFloatField
      FieldName = 'itmtotalliq'
    end
  end
  object mesdtf: TUniQuery
    Left = 512
    Top = 590
  end
  object itmdtf: TUniQuery
    Left = 512
    Top = 646
  end
  object mesfla: TUniQuery
    Left = 560
    Top = 590
  end
  object itmfla: TUniQuery
    Left = 560
    Top = 646
  end
  object dtf: TUniQuery
    SQL.Strings = (
      
        'select dtfchave, meschave, dtfmeschave from dtf where dtfmeschav' +
        'e =:meschave')
    Left = 704
    Top = 590
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object eti: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  eti.etichave,'
      '  eti.clbcodigo,'
      '  eti.trmcodigo,'
      '  eti.puncodigo,'
      '  eti.eetcodigo,'
      '  eti.etiquanti,'
      '  eti.etiemissao,'
      '  eti.vrpcodigo,'
      '  eti.relcodigo,'
      '  eti.mitcodigo'
      'FROM eti limit 0')
    Left = 668
    Top = 376
    object etietichave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'etichave'
    end
    object eticlbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object etitrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object etipuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object etieetcodigo: TIntegerField
      FieldName = 'eetcodigo'
    end
    object etietiquanti: TIntegerField
      FieldName = 'etiquanti'
    end
    object etietiemissao: TDateTimeField
      FieldName = 'etiemissao'
    end
    object etivrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object etirelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
    object etimitcodigo: TIntegerField
      FieldName = 'mitcodigo'
    end
  end
  object imv: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  imvchave,'
      '  itmchave,'
      '  vrpcodigo,'
      '  imvquantidade,'
      '  ttecodigo'
      'FROM imv where itmchave=:itmchave')
    Left = 216
    Top = 584
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end>
    object imvimvchave: TIntegerField
      FieldName = 'imvchave'
    end
    object imvitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object imvvrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object imvimvquantidade: TFloatField
      FieldName = 'imvquantidade'
    end
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, cstcodigo from pro where procodigo=:procodigo')
    Left = 760
    Top = 585
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object procstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
  end
  object tom: TUniQuery
    SQL.Strings = (
      
        'select tomchave, tom.tofcodigo, tofidentificacao, meschave from ' +
        'tom,tof where tom.tofcodigo=tof.tofcodigo and meschave=:meschave')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Options.DetailDelay = 40
    Left = 228
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object tomtomchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'tomchave'
      Required = True
    end
    object tomtofcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tofcodigo'
      Required = True
    end
    object tommeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object tomtofidentificacao: TStringField
      DisplayLabel = 'Observa'#231#245'es'
      FieldName = 'tofidentificacao'
      Size = 350
    end
  end
  object Dtom: TUniDataSource
    DataSet = tom
    Left = 200
    Top = 384
  end
  object mae: TUniQuery
    SQL.Strings = (
      'select maechave from mae where meschavenfe=:meschavenfe')
    Left = 872
    Top = 197
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschavenfe'
        Value = nil
      end>
    object maemaechave: TIntegerField
      FieldName = 'maechave'
    end
  end
  object mit: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mit.mitcodigo,'
      '  mit.mitidentificacao,'
      '  tip.tipcodigo'
      'FROM mit'
      '  INNER JOIN tip'
      '    ON mit.tipcodigo = tip.tipcodigo'
      '  WHERE tip.tipcodigo IN (5,7)')
    Left = 861
    Top = 596
    object mitmitcodigo: TIntegerField
      FieldName = 'mitcodigo'
    end
    object mitmitidentificacao: TStringField
      FieldName = 'mitidentificacao'
      Size = 35
    end
  end
  object ajustacusto: TUniQuery
    Left = 872
    Top = 373
  end
end
