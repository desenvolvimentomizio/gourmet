inherited frainf: Tfrainf
  Width = 1334
  Height = 748
  ExplicitWidth = 1334
  ExplicitHeight = 748
  inherited PlGeral: TPanel
    Width = 1334
    Height = 748
    ExplicitWidth = 1334
    ExplicitHeight = 748
    inherited SplBotoes: TSplitter
      Height = 728
      ExplicitHeight = 728
    end
    inherited PlBotoes: TPanel
      Height = 728
      ExplicitHeight = 728
      inherited ImageLogoBase: TImage
        Top = 649
        ExplicitTop = 649
      end
      inherited PlInfo: TPanel
        Top = 710
        ExplicitTop = 710
      end
      inherited SBBotoes: TScrollBox
        Height = 649
        ExplicitHeight = 649
      end
    end
    inherited PlLista: TPanel
      Width = 1190
      Height = 728
      ExplicitWidth = 1190
      ExplicitHeight = 728
      inherited SplLista: TSplitter
        Top = 697
        Width = 1190
        ExplicitTop = 697
        ExplicitWidth = 815
      end
      inherited SpFilter: TSplitter
        Width = 1190
        ExplicitWidth = 815
      end
      inherited PlRodaPe: TPanel
        Top = 702
        Width = 1190
        ExplicitTop = 702
        ExplicitWidth = 980
      end
      inherited PlFiltros: TPanel
        Width = 1190
        ExplicitWidth = 1190
        inherited PlBotaoFiltroEsp3: TScrollBox
          TabOrder = 6
        end
        object gbDataCadastro: TGroupBox
          AlignWithMargins = True
          Left = 1064
          Top = 3
          Width = 123
          Height = 45
          Align = alRight
          Caption = ' Data do Cadastro: '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 5
          object pldatacadastro: TPanel
            Left = 2
            Top = 23
            Width = 119
            Height = 20
            Align = alBottom
            BevelOuter = bvLowered
            Caption = '00/00/0000'
            Color = 8454143
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clGreen
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            ExplicitWidth = 106
          end
        end
      end
      inherited PlSelecao: TPanel
        Width = 1190
        ExplicitWidth = 980
        inherited GBPlSelecao: TGroupBox
          Width = 1186
          ExplicitWidth = 976
          inherited DBLista: TDBGrid
            Width = 1079
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1190
        Height = 568
        Caption = ''
        ExplicitWidth = 980
        ExplicitHeight = 568
        inherited DBGLista: TDBGrid
          Width = 1190
          Height = 262
          Columns = <
            item
              Expanded = False
              FieldName = 'rfichave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'parcelas'
              Title.Caption = 'N'#250'mero Parc.'
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
              FieldName = 'rfivalor'
              Title.Caption = 'Valor R$'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'Dias'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'SaldoJurosMora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DataUltBaixa'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfibaixatotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'srfidentificacao'
              Width = 100
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 382
          Width = 1190
          Height = 186
          Visible = True
          ExplicitTop = 382
          ExplicitWidth = 980
          ExplicitHeight = 186
          object plResumo: TPanel
            Left = 823
            Top = 1
            Width = 366
            Height = 184
            Align = alRight
            TabOrder = 0
            ExplicitLeft = 613
            object gbVencido: TGroupBox
              Left = 8
              Top = 3
              Width = 113
              Height = 38
              Caption = ' VENCIDO R$ '
              TabOrder = 0
              object plVencido: TPanel
                Left = 2
                Top = 16
                Width = 109
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbDescontos: TGroupBox
              Left = 127
              Top = 3
              Width = 90
              Height = 38
              Caption = ' Descontos R$ '
              TabOrder = 1
              object plDescontos: TPanel
                Left = 2
                Top = 16
                Width = 86
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbTotalComJuros: TGroupBox
              Left = 223
              Top = 3
              Width = 131
              Height = 38
              Caption = ' TOT. COM JUROS R$ '
              TabOrder = 2
              object plTotalComJuros: TPanel
                Left = 2
                Top = 16
                Width = 127
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbTotalJaPago: TGroupBox
              Left = 8
              Top = 47
              Width = 113
              Height = 38
              Caption = ' Total J'#225' Pago R$'
              TabOrder = 3
              object plTotalJaPago: TPanel
                Left = 2
                Top = 16
                Width = 109
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbJuros: TGroupBox
              Left = 127
              Top = 47
              Width = 90
              Height = 38
              Caption = 'Juros Pago R$ '
              TabOrder = 4
              object plJuros: TPanel
                Left = 2
                Top = 16
                Width = 86
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbTotalEmAberto: TGroupBox
              Left = 223
              Top = 47
              Width = 131
              Height = 38
              Caption = ' TOTAL EM ABERTO R$ '
              TabOrder = 5
              object plTotalEmAberto: TPanel
                Left = 2
                Top = 16
                Width = 127
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clNavy
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbClienteDesde: TGroupBox
              Left = 8
              Top = 91
              Width = 113
              Height = 38
              Caption = ' Cliente desde: '
              TabOrder = 6
              object plClienteDesde: TPanel
                Left = 2
                Top = 16
                Width = 109
                Height = 20
                Align = alBottom
                BevelOuter = bvLowered
                Caption = '00/00/0000'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbAtrazoMedio: TGroupBox
              Left = 127
              Top = 91
              Width = 90
              Height = 38
              Caption = ' Atrazo M'#233'dio  '
              TabOrder = 7
              object plAtrazoMedio: TPanel
                Left = 2
                Top = 16
                Width = 86
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clRed
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbTotalTitulos: TGroupBox
              Left = 223
              Top = 91
              Width = 131
              Height = 38
              Caption = ' TOTAL DE T'#205'TULOS R$ '
              TabOrder = 8
              object plTotalTitulos: TPanel
                Left = 2
                Top = 16
                Width = 127
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbUltimaCompra: TGroupBox
              Left = 8
              Top = 135
              Width = 113
              Height = 38
              Caption = ' '#218'ltima Compra:  '
              TabOrder = 9
              object plUltimaCompra: TPanel
                Left = 2
                Top = 16
                Width = 109
                Height = 20
                Align = alBottom
                BevelOuter = bvLowered
                Caption = '00/00/0000'
                Color = clWhite
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbLimiteTotal: TGroupBox
              Left = 127
              Top = 135
              Width = 90
              Height = 38
              Caption = ' Limite Total R$ '
              TabOrder = 10
              object plLimiteTotal: TPanel
                Left = 2
                Top = 16
                Width = 86
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clYellow
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object gbLimiteDisponivel: TGroupBox
              Left = 223
              Top = 135
              Width = 131
              Height = 38
              Caption = ' Limite Dispon'#237'vel R$ '
              TabOrder = 11
              object plLimiteDisponivel: TPanel
                Left = 2
                Top = 16
                Width = 127
                Height = 20
                Align = alBottom
                Alignment = taRightJustify
                BevelOuter = bvLowered
                Caption = '0,00'
                Color = clYellow
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object plGrupoItens: TPanel
            Left = 1
            Top = 1
            Width = 612
            Height = 184
            Align = alClient
            TabOrder = 1
            ExplicitWidth = 402
            object plItens: TPanel
              Left = 1
              Top = 21
              Width = 610
              Height = 162
              Align = alClient
              TabOrder = 0
              ExplicitWidth = 400
              object listaitm: TDBGrid
                Left = 1
                Top = 25
                Width = 608
                Height = 136
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
                    FieldName = 'procodigo'
                    Width = 50
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'pronome'
                    Width = 130
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'unisimbolo'
                    Width = 20
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'itmquantidade'
                    Width = 35
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'itmvalor'
                    Title.Caption = 'Vlr Unit.'
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
              object plMes: TPanel
                Left = 1
                Top = 1
                Width = 608
                Height = 24
                Align = alTop
                TabOrder = 1
                ExplicitWidth = 398
                object Label1: TLabel
                  Left = 4
                  Top = 4
                  Width = 52
                  Height = 13
                  Caption = 'Nr. Venda:'
                end
                object Label2: TLabel
                  Left = 137
                  Top = 4
                  Width = 30
                  Height = 13
                  Caption = 'Data: '
                end
                object Label3: TLabel
                  Left = 258
                  Top = 4
                  Width = 66
                  Height = 13
                  Caption = 'Colaborador: '
                end
                object meschave: TDBText
                  Left = 59
                  Top = 4
                  Width = 65
                  Height = 17
                  DataField = 'meschave'
                  DataSource = Dmes
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object mesregistro: TDBText
                  Left = 167
                  Top = 4
                  Width = 79
                  Height = 17
                  DataField = 'mesregistro'
                  DataSource = Dmes
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object clbidentificacao: TDBText
                  Left = 326
                  Top = 4
                  Width = 114
                  Height = 17
                  DataField = 'clbidentificacao'
                  DataSource = Dmes
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'Tahoma'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
              end
            end
            object plTituloItens: TPanel
              Left = 1
              Top = 1
              Width = 610
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvLowered
              Caption = '         Itens da Venda Selecionada'
              Color = 4210816
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clYellow
              Font.Height = -12
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 1
              ExplicitWidth = 400
            end
          end
          object pdetalhe: TPanel
            Left = 613
            Top = 1
            Width = 210
            Height = 184
            Align = alRight
            BevelOuter = bvNone
            BorderWidth = 2
            TabOrder = 2
            ExplicitLeft = 403
            object plTituloFinaliazdores: TPanel
              Left = 2
              Top = 2
              Width = 206
              Height = 20
              Align = alTop
              Alignment = taLeftJustify
              BevelOuter = bvLowered
              Caption = '          Finaliza'#231#227'o Financeira'
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
              Width = 206
              Height = 140
              Align = alClient
              Color = 13303780
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
                  FieldName = 'mdaidentificacao'
                  Title.Caption = 'Modalidade'
                  Width = 90
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
              Width = 206
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
        inherited plSugestao: TPanel
          Left = 47
          Width = 259
          ExplicitLeft = 47
          ExplicitWidth = 259
          inherited DBGSugestao: TDBGrid
            Width = 257
          end
          inherited pbotoes: TPanel
            Width = 257
            ExplicitWidth = 257
            inherited bConfirmaSelecao: TBitBtn
              Left = 103
              ExplicitLeft = 103
            end
            inherited bCancelaSelecao: TBitBtn
              Left = 178
              ExplicitLeft = 178
            end
          end
        end
        object DBGridcco: TDBGrid
          Left = 0
          Top = 262
          Width = 1190
          Height = 120
          Align = alBottom
          Color = 13500157
          DataSource = Dcco
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 3
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'ccochave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccoemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccovencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccohistorico'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccovalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cconatureza'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1334
      ExplicitWidth = 1124
      inherited plid: TPanel
        Left = 884
        ExplicitLeft = 674
      end
      inherited PlSair: TPanel
        Left = 1128
        ExplicitLeft = 918
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      ''
      ''
      ''
      ' SELECT'
      '  rfi.rfichave,'
      '  rfi.rfinumero,'
      
        ' IF ((SELECT mes.mestotal FROM rfm, mes WHERE rfm.meschave=mes.m' +
        'eschave  and rfm.rfichave=rfi.rfichave GROUP BY mes.meschave lim' +
        'it 1)=rfi.rfivalor AND rfi.rfinumero='#39'Venda a Vista'#39', '#39'Venda a V' +
        'ista'#39',IF ((SELECT mes.mestotal FROM rfm, mes WHERE rfm.meschave=' +
        'mes.meschave  and rfm.rfichave=rfi.rfichave GROUP BY mes.meschav' +
        'e limit 1 )<>rfi.rfivalor AND rfi.rfinumero='#39'Venda a Vista'#39','#39'Ent' +
        'rada'#39', rfi.rfinumero) ) AS parcelas,'
      '  rfi.tfdcodigo,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfivalor,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` IN (1, 2, 99)), `mfi`.`mfivalor`, 0)' +
        ') AS `RegistroCapital`,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` IN (11, 21)), `mfi`.`mfivalor`, 0)) ' +
        'AS `PagamentosCapital`,'
      
        '  (SUM(IF((`mfi`.`tmfcodigo` IN (1, 2, 99)), `mfi`.`mfivalor`, 0' +
        ')) - SUM(IF((`mfi`.`tmfcodigo` IN (11, 21)), `mfi`.`mfivalor`, 0' +
        '))) AS `SaldoCapital`,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` IN (3, 33)), `mfi`.`mfivalor`, 0)) A' +
        'S `RegistroJurosMora`,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` IN (12, 22)), `mfi`.`mfivalor`, 0)) ' +
        'AS `PgtosJurosMora`,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` = 50), `mfi`.`mfivalor`, 0)) AS `Dis' +
        'pensaJurosMora`,'
      
        '  ((SUM(IF((`mfi`.`tmfcodigo` IN (3, 33)), `mfi`.`mfivalor`, 0))' +
        ' - SUM(IF((`mfi`.`tmfcodigo` IN (12, 22)), `mfi`.`mfivalor`, 0))' +
        ') - SUM(IF((`mfi`.`tmfcodigo` = 50), `mfi`.`mfivalor`, 0))) AS `' +
        'SaldoJurosMora`,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` IN (8, 88)), `mfi`.`mfivalor`, 0)) A' +
        'S `RegistroMulta`,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` IN (13, 23)), `mfi`.`mfivalor`, 0)) ' +
        'AS `PgtosMulta`,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` = 51), `mfi`.`mfivalor`, 0)) AS `Dis' +
        'pensaMulta`,'
      
        '  ((SUM(IF((`mfi`.`tmfcodigo` IN (8, 88)), `mfi`.`mfivalor`, 0))' +
        ' - SUM(IF((`mfi`.`tmfcodigo` IN (13, 23)), `mfi`.`mfivalor`, 0))' +
        ') - SUM(IF((`mfi`.`tmfcodigo` = 51), `mfi`.`mfivalor`, 0))) AS `' +
        'SaldoMulta`,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` IN (4, 44)), `mfi`.`mfivalor`, 0)) A' +
        'S `RegistroDesconto`,'
      
        '  MAX(IF((`mfi`.`tmfcodigo` IN (1, 2, 99)), NULL, `mfi`.`mfidata' +
        '`)) AS `DataUltBaixa`,'
      ''
      ''
      '  IF(`rfi`.`srfcodigo` = 0, TO_DAYS((SELECT'
      '      `cfg`.`cfgdatapadrao`'
      
        '    FROM `cfg` LIMIT 1)) - TO_DAYS(`rfi`.`rfivencimento`), IF((`' +
        'rfi`.`srfcodigo` IN (2, 3)), (TO_DAYS(`rfi`.`rfivencimento`) - T' +
        'O_DAYS(MAX(IF((`mfi`.`tmfcodigo` IN (1, 2, 99)), NULL, `mfi`.`mf' +
        'idata`)))), IF((IFNULL(MAX(IF((`mfi`.`tmfcodigo` IN (1, 2, 99)),' +
        ' NULL, `mfi`.`mfidata`)), 0) <= `rfi`.`rfivencimento`), (TO_DAYS' +
        '((SELECT'
      '      `cfg`.`cfgdatapadrao`'
      
        '    FROM `cfg` LIMIT 1)) - TO_DAYS(`rfi`.`rfivencimento`)), (TO_' +
        'DAYS((SELECT'
      '      `cfg`.`cfgdatapadrao`'
      
        '    FROM `cfg` LIMIT 1)) - TO_DAYS(MAX(IF((`mfi`.`tmfcodigo` IN ' +
        '(1, 2, 99)), NULL, `mfi`.`mfidata`)))))) * -1) AS `Dias`,'
      ''
      ''
      '  `mfi`.`flacodigo` AS `flacodigo`,'
      
        '  SUM(IF((`mfi`.`tmfcodigo` IN (11, 21)), `mfi`.`mfivalor`, 0)) ' +
        '+ SUM(IF((`mfi`.`tmfcodigo` IN (13, 23)), `mfi`.`mfivalor`, 0)) ' +
        '+ SUM(IF((`mfi`.`tmfcodigo` IN (12, 22)), `mfi`.`mfivalor`, 0)) ' +
        'AS rfibaixatotal,'
      '  (SELECT'
      '      srfidentificacao'
      '    FROM srf'
      '    WHERE srf.srfcodigo = rfi.srfcodigo) AS srfidentificacao,'
      '  rfi.srfcodigo'
      'FROM (`mfi`'
      '  JOIN `rfi`'
      
        '    ON (((`mfi`.`rfichave` = `rfi`.`rfichave`)  AND (`rfi`.`srfc' +
        'odigo` <> 9)'
      '    AND (`rfi`.`flacodigo` = `mfi`.`flacodigo`)'
      '    AND (`rfi`.`tfdcodigo` IN (1, 2, 32))))'
      '    AND etdcodigo = :etdcodigo)'
      ''
      'WHERE ISNULL((SELECT'
      '    `mlt`.`mltchave`'
      '  FROM (`mlt`'
      '    JOIN `lte`'
      '      ON (((`mlt`.`ltechave` = `lte`.`ltechave`)'
      '      AND (`lte`.`ltesituacao` = 1))))'
      '  WHERE (`mlt`.`mfichave` = `mfi`.`mfichave`)))'
      'GROUP BY `mfi`.`rfichave`'
      'ORDER BY `mfi`.`rfichave`'
      '')
    IndexFieldNames = 'rfichave'
    Left = 300
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object uqtabelarfichave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'rfichave'
    end
    object uqtabelarfinumero: TStringField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'rfinumero'
    end
    object uqtabelarfiemissao: TDateField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'rfiemissao'
      Required = True
    end
    object uqtabelarfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
      Required = True
    end
    object uqtabelarfivalor: TFloatField
      DisplayLabel = 'R$ Valor'
      FieldName = 'rfivalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaRegistroCapital: TFloatField
      FieldName = 'RegistroCapital'
      ReadOnly = True
    end
    object uqtabelaPagamentosCapital: TFloatField
      FieldName = 'PagamentosCapital'
      ReadOnly = True
    end
    object uqtabelaSaldoCapital: TFloatField
      FieldName = 'SaldoCapital'
      ReadOnly = True
    end
    object uqtabelaRegistroJurosMora: TFloatField
      FieldName = 'RegistroJurosMora'
      ReadOnly = True
    end
    object uqtabelaPgtosJurosMora: TFloatField
      FieldName = 'PgtosJurosMora'
      ReadOnly = True
    end
    object uqtabelaDispensaJurosMora: TFloatField
      FieldName = 'DispensaJurosMora'
      ReadOnly = True
    end
    object uqtabelaSaldoJurosMora: TFloatField
      DisplayLabel = 'Juros Recebidos'
      FieldName = 'SaldoJurosMora'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaRegistroMulta: TFloatField
      FieldName = 'RegistroMulta'
      ReadOnly = True
    end
    object uqtabelaPgtosMulta: TFloatField
      FieldName = 'PgtosMulta'
      ReadOnly = True
    end
    object uqtabelaDispensaMulta: TFloatField
      FieldName = 'DispensaMulta'
      ReadOnly = True
    end
    object uqtabelaSaldoMulta: TFloatField
      FieldName = 'SaldoMulta'
      ReadOnly = True
    end
    object uqtabelaRegistroDesconto: TFloatField
      FieldName = 'RegistroDesconto'
      ReadOnly = True
    end
    object uqtabelaDias: TIntegerField
      FieldName = 'Dias'
      ReadOnly = True
    end
    object uqtabelaflacodigo: TIntegerField
      FieldName = 'flacodigo'
      ReadOnly = True
      Required = True
    end
    object uqtabelarfibaixatotal: TFloatField
      DisplayLabel = 'Baixa Total'
      FieldName = 'rfibaixatotal'
      ReadOnly = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelasrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      ReadOnly = True
      Size = 30
    end
    object uqtabelasrfcodigo: TIntegerField
      FieldName = 'srfcodigo'
    end
    object uqtabelaDataUltBaixa: TDateField
      DisplayLabel = #218'ltima Baixa'
      FieldName = 'DataUltBaixa'
    end
    object uqtabelaparcelas: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'parcelas'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 293
    Top = 321
  end
  inherited Dsfi: TUniDataSource
    Left = 224
    Top = 436
  end
  inherited sfi: TUniQuery
    Left = 284
    Top = 440
  end
  object etl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etdcodigo,'
      '  etllimitetotal'
      ''
      'FROM etl'
      '  where etdcodigo=:etdcodigo')
    Left = 728
    Top = 323
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etletdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etletllimitetotal: TFloatField
      FieldName = 'etllimitetotal'
    end
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgdtinictb'
      '     , cfgdtfinctb'
      '     , cfg.cfgusabol'
      '     , cfg.cfgdatapadrao'
      'FROM cfg')
    Left = 324
    Top = 268
    object cfgcfgdtinictb: TDateField
      FieldName = 'cfgdtinictb'
    end
    object cfgcfgdtfinctb: TDateField
      FieldName = 'cfgdtfinctb'
    end
    object cfgcfgusabol: TIntegerField
      FieldName = 'cfgusabol'
    end
    object cfgcfgdatapadrao: TDateField
      FieldName = 'cfgdatapadrao'
    end
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.meschave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '     , IF(imv.vrpcodigo > 0'
      '         , (SELECT vv.pronome'
      '              FROM v_vrp vv'
      '             WHERE vv.vrpcodigo = imv.vrpcodigo) '
      '         , IF(tImc.clbidentificacao IS NOT NULL'
      '             , CONCAT(pro.pronome, '#39' - '#39', tImc.clbidentificacao)'
      '             , pro.pronome))            AS pronome'
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
      '  FROM      itm'
      '  LEFT JOIN imv ON itm.itmchave  = imv.itmchave'
      '  JOIN      pro ON itm.procodigo = pro.procodigo'
      '  JOIN      pun ON itm.puncodigo = pun.puncodigo'
      '  JOIN      uni ON pun.unicodigo = uni.unicodigo'
      '  '
      '  -- Identifica o T'#233'cnico da OS'
      '  LEFT JOIN (SELECT i.itmchave'
      '                  , c.clbidentificacao'
      '               FROM imc i'
      '               JOIN clb c ON i.clbcodigo = c.clbcodigo'
      
        '                AND c.fnccodigo = 5) tImc ON itm.itmchave = tImc' +
        '.itmchave'
      ' '
      ' WHERE itm.meschave = :meschave')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Options.DetailDelay = 40
    Left = 452
    Top = 476
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
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
  end
  object Ditm: TUniDataSource
    DataSet = itm
    Left = 520
    Top = 452
  end
  object rfm: TUniQuery
    SQL.Strings = (
      
        'select rfmchave, meschave, rfichave from rfm where rfichave=:rfi' +
        'chave')
    Left = 200
    Top = 314
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object rfmrfmchave: TIntegerField
      FieldName = 'rfmchave'
    end
    object rfmmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object rfmrfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  meschave,'
      '  mesregistro,'
      '  clbidentificacao'
      'FROM mes,'
      '     clb'
      'WHERE mes.clbcodigo = clb.clbcodigo'
      'AND meschave = :meschave')
    Left = 346
    Top = 337
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mesmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object mesmesregistro: TDateField
      FieldName = 'mesregistro'
    end
    object mesclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 25
    end
  end
  object Dmes: TDataSource
    DataSet = mes
    Left = 386
    Top = 337
  end
  object Ddtl: TDataSource
    DataSet = dtl
    Left = 668
    Top = 419
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
      'AND mes.meschave = :meschave'
      'AND mes.flacodigo = :flacodigo'
      ''
      'GROUP BY dtl.mdacodigo')
    Options.DetailDelay = 50
    Left = 612
    Top = 416
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
  object cco: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ccochave,'
      '  ccoemissao,'
      '  ccovencimento,'
      '  ccohistorico,'
      '  ccovalor,'
      '  IF (cedcodigo=0,'#39'D'#39','#39'C'#39') cconatureza '
      'FROM cco where etdcodigo=:etdcodigo')
    Left = 792
    Top = 437
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object ccoccochave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'ccochave'
    end
    object ccoccoemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'ccoemissao'
    end
    object ccoccovencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'ccovencimento'
    end
    object ccoccohistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'ccohistorico'
      Size = 250
    end
    object ccoccovalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'ccovalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object ccocconatureza: TStringField
      DisplayLabel = 'T'
      FieldName = 'cconatureza'
      Size = 3
    end
  end
  object Dcco: TDataSource
    DataSet = cco
    Left = 840
    Top = 445
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etdcodigo,'
      '  etddatacad'
      'from etd'
      'where etdcodigo=:etdcodigo')
    Left = 928
    Top = 301
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetddatacad: TDateField
      FieldName = 'etddatacad'
    end
  end
end
