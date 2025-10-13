inherited frcm: Tfrcm
  ActiveControl = tdfcodigo
  Caption = 'Reclassifica'#231#227'o de Mercadorias'
  ClientHeight = 655
  ClientWidth = 1084
  ExplicitWidth = 1100
  ExplicitHeight = 694
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 626
    Width = 1084
    TabOrder = 1
    ExplicitTop = 626
    ExplicitWidth = 1084
    inherited bconfirma: TBitBtn
      Left = 930
      ExplicitLeft = 930
    end
    inherited bcancela: TBitBtn
      Left = 1005
      ExplicitLeft = 1005
    end
    inherited bfechar: TBitBtn
      Left = 865
      ExplicitLeft = 865
    end
  end
  inherited paginas: TPageControl
    Width = 1084
    Height = 626
    TabOrder = 0
    ExplicitWidth = 1084
    ExplicitHeight = 626
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1076
      ExplicitHeight = 598
      object Bvregistro: TBevel
        Left = 0
        Top = 0
        Width = 1076
        Height = 180
        CustomHint = BalloonHint
        Align = alTop
        Constraints.MinHeight = 180
        Shape = bsBottomLine
        Style = bsRaised
      end
      object SpDetalhe: TSplitter
        Left = 0
        Top = 180
        Width = 1076
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alTop
      end
      object Label1: TLabel
        Left = 10
        Top = 18
        Width = 60
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave Sa'#237'da'
        FocusControl = meschave
      end
      object Label2: TLabel
        Left = 10
        Top = 45
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Entidade'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 10
        Top = 99
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Emiss'#227'o'
        FocusControl = mesemissao
      end
      object Label4: TLabel
        Left = 230
        Top = 99
        Width = 81
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Registro'
        FocusControl = mesregistro
      end
      object Label5: TLabel
        Left = 534
        Top = 45
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Documento'
        FocusControl = tdfcodigo
      end
      object Label6: TLabel
        Left = 10
        Top = 72
        Width = 91
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o de Sa'#237'da'
        FocusControl = toecodigo
      end
      object Label9: TLabel
        Left = 430
        Top = 99
        Width = 102
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Forma de Pagamento'
        FocusControl = tfpcodigo
      end
      object Label10: TLabel
        Left = 749
        Top = 99
        Width = 90
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Respons'#225'vel Frete'
        FocusControl = refcodigo
      end
      object Label7: TLabel
        Left = 524
        Top = 72
        Width = 103
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o de Entrada'
        FocusControl = toecodigoEnt
      end
      object PlDetalhe: TPanel
        Left = 0
        Top = 183
        Width = 1076
        Height = 415
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 11
        Visible = False
        object plSaidas: TPanel
          Left = 4
          Top = 4
          Width = 1068
          Height = 200
          CustomHint = BalloonHint
          Align = alTop
          Caption = 'plSaidas'
          TabOrder = 0
          object plbotoesitens: TPanel
            Left = 1
            Top = 1
            Width = 1066
            Height = 24
            CustomHint = BalloonHint
            Align = alTop
            BevelOuter = bvNone
            Color = 5356845
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object LbItensSai: TLabel
              AlignWithMargins = True
              Left = 10
              Top = 0
              Width = 120
              Height = 24
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 0
              CustomHint = BalloonHint
              Align = alLeft
              AutoSize = False
              Caption = 'Itens de Sa'#237'da'
              Layout = tlCenter
            end
            object BActIncluir: TBitBtn
              Left = 130
              Top = 0
              Width = 64
              Height = 24
              Margins.Left = 130
              Margins.Top = 0
              Margins.Right = 0
              Margins.Bottom = 0
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
            object BActEcluir: TBitBtn
              Left = 194
              Top = 0
              Width = 64
              Height = 24
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = BActEcluirClick
            end
            object PlTotaisSai: TPanel
              Left = 366
              Top = 0
              Width = 700
              Height = 24
              CustomHint = BalloonHint
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object PlVlrTotalSai: TPanel
                AlignWithMargins = True
                Left = 415
                Top = 0
                Width = 185
                Height = 24
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 100
                Margins.Bottom = 0
                CustomHint = BalloonHint
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Total R$ 0,00'
                TabOrder = 0
              end
              object PlQtItensSai: TPanel
                Left = 45
                Top = 0
                Width = 185
                Height = 24
                CustomHint = BalloonHint
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Itens: 0'
                TabOrder = 1
              end
              object PlQtdSai: TPanel
                Left = 230
                Top = 0
                Width = 185
                Height = 24
                CustomHint = BalloonHint
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Quantidade: 0'
                TabOrder = 2
              end
            end
            object btImportar: TBitBtn
              Left = 258
              Top = 0
              Width = 64
              Height = 24
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Importar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
              OnClick = btImportarClick
            end
          end
          object PlItens: TPanel
            Left = 1
            Top = 25
            Width = 1066
            Height = 174
            CustomHint = BalloonHint
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object listaitens: TDBGrid
              Left = 0
              Top = 0
              Width = 1066
              Height = 174
              CustomHint = BalloonHint
              Align = alClient
              DataSource = DSitm
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
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
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'procodigo'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pronome'
                  Width = 400
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
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'itmvalor'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'itmdesconto'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'itmtotal'
                  Width = 70
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
                  Visible = True
                end>
            end
          end
        end
        object plEntradas: TPanel
          Left = 4
          Top = 204
          Width = 1068
          Height = 200
          CustomHint = BalloonHint
          Align = alTop
          Caption = 'plEntradas'
          TabOrder = 1
          object plbotoesitensEnt: TPanel
            Left = 1
            Top = 1
            Width = 1066
            Height = 24
            CustomHint = BalloonHint
            Align = alTop
            BevelOuter = bvNone
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
            object LbItensEnt: TLabel
              AlignWithMargins = True
              Left = 10
              Top = 0
              Width = 120
              Height = 24
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 0
              CustomHint = BalloonHint
              Align = alLeft
              AutoSize = False
              Caption = 'Itens de Entrada'
              Layout = tlCenter
            end
            object bActIncluirEnt: TBitBtn
              Left = 130
              Top = 0
              Width = 64
              Height = 24
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
              OnClick = bActIncluirEntClick
            end
            object bActExcluirEnt: TBitBtn
              Left = 194
              Top = 0
              Width = 64
              Height = 24
              CustomHint = BalloonHint
              Align = alLeft
              Caption = 'Excluir'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = bActExcluirEntClick
            end
            object PlTotaisEnt: TPanel
              Left = 366
              Top = 0
              Width = 700
              Height = 24
              CustomHint = BalloonHint
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object PlVlrTotalEnt: TPanel
                AlignWithMargins = True
                Left = 415
                Top = 0
                Width = 185
                Height = 24
                Margins.Left = 0
                Margins.Top = 0
                Margins.Right = 100
                Margins.Bottom = 0
                CustomHint = BalloonHint
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Total R$ 0,00'
                TabOrder = 0
              end
              object PlQtItensEnt: TPanel
                Left = 45
                Top = 0
                Width = 185
                Height = 24
                CustomHint = BalloonHint
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Itens: 0'
                TabOrder = 1
              end
              object PlQtdEnt: TPanel
                Left = 230
                Top = 0
                Width = 185
                Height = 24
                CustomHint = BalloonHint
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Quantidade: 0'
                TabOrder = 2
              end
            end
          end
          object PlItensEnt: TPanel
            Left = 1
            Top = 25
            Width = 1066
            Height = 174
            CustomHint = BalloonHint
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object listaitensEnt: TDBGrid
              Left = 0
              Top = 0
              Width = 1066
              Height = 174
              CustomHint = BalloonHint
              Align = alClient
              DataSource = DSitmEnt
              Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'Tahoma'
              TitleFont.Style = []
              OnDrawColumnCell = listaitensEntDrawColumnCell
              Columns = <
                item
                  Expanded = False
                  FieldName = 'itmitem'
                  Width = 40
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'procodigo'
                  Width = 60
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'pronome'
                  Width = 400
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
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'itmvalor'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'itmdesconto'
                  Width = 70
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'itmtotal'
                  Width = 70
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
                  Visible = True
                end>
            end
          end
        end
      end
      object meschave: TDBEdit
        Left = 115
        Top = 15
        Width = 70
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meschave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object etdcodigo: TDBEdit
        Left = 115
        Top = 42
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object mesemissao: TDBEdit
        Left = 115
        Top = 96
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'mesemissao'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 5
      end
      object mesregistro: TDBEdit
        Left = 317
        Top = 96
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'mesregistro'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 6
      end
      object tdfcodigo: TDBEdit
        Left = 632
        Top = 42
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tdfcodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnEnter = tdfcodigoEnter
      end
      object toecodigo: TDBEdit
        Left = 115
        Top = 69
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toecodigo'
        DataSource = DSRegistro
        TabOrder = 3
        OnEnter = toecodigoEnter
      end
      object tfpcodigo: TDBEdit
        Left = 538
        Top = 96
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'tfpcodigo'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 7
      end
      object refcodigo: TDBEdit
        Left = 845
        Top = 96
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'refcodigo'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 8
      end
      object bvalidar: TButton
        Left = 939
        Top = 146
        Width = 80
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Validar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
        OnClick = bvalidarClick
      end
      object plTotais: TPanel
        Left = 3
        Top = 130
        Width = 930
        Height = 41
        CustomHint = BalloonHint
        BevelOuter = bvNone
        TabOrder = 10
        object GBBaseICM: TGroupBox
          Left = 0
          Top = 0
          Width = 100
          Height = 41
          CustomHint = BalloonHint
          Align = alLeft
          Caption = ' Base ICMS R$ '
          TabOrder = 0
          object mesbicm: TDBEdit
            Left = 2
            Top = 15
            Width = 96
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mesbicm'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBValorICM: TGroupBox
          Left = 100
          Top = 0
          Width = 70
          Height = 41
          CustomHint = BalloonHint
          Align = alLeft
          Caption = ' ICMS R$ '
          TabOrder = 1
          object mesicm: TDBEdit
            Left = 2
            Top = 15
            Width = 66
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mesicm'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBBaseICMST: TGroupBox
          Left = 170
          Top = 0
          Width = 100
          Height = 41
          CustomHint = BalloonHint
          Align = alLeft
          Caption = ' Base ICMS ST R$ '
          TabOrder = 2
          object mesbicms: TDBEdit
            Left = 2
            Top = 15
            Width = 96
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mesbicms'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBValorICMST: TGroupBox
          Left = 270
          Top = 0
          Width = 70
          Height = 41
          CustomHint = BalloonHint
          Align = alLeft
          Caption = ' ICMS ST R$ '
          TabOrder = 3
          object mesicms: TDBEdit
            Left = 2
            Top = 15
            Width = 66
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mesicms'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBTotalBruto: TGroupBox
          Left = 340
          Top = 0
          Width = 120
          Height = 41
          CustomHint = BalloonHint
          Align = alLeft
          Caption = ' Total Produtos R$ '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          object mesvalor: TDBEdit
            Left = 2
            Top = 15
            Width = 116
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mesvalor'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBDesconto: TGroupBox
          Left = 485
          Top = 0
          Width = 65
          Height = 41
          CustomHint = BalloonHint
          Align = alRight
          Caption = ' Desc. R$ '
          TabOrder = 5
          object mesdesconto: TDBEdit
            Left = 2
            Top = 15
            Width = 61
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mesdesconto'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBFrete: TGroupBox
          Left = 550
          Top = 0
          Width = 65
          Height = 41
          CustomHint = BalloonHint
          Align = alRight
          Caption = ' Frete R$ '
          TabOrder = 6
          object mesfrete: TDBEdit
            Left = 2
            Top = 15
            Width = 61
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mesfrete'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBSeguro: TGroupBox
          Left = 615
          Top = 0
          Width = 65
          Height = 41
          CustomHint = BalloonHint
          Align = alRight
          Caption = ' Seguro R$ '
          TabOrder = 7
          object messeguro: TDBEdit
            Left = 2
            Top = 15
            Width = 61
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'messeguro'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBOutras: TGroupBox
          Left = 680
          Top = 0
          Width = 65
          Height = 41
          CustomHint = BalloonHint
          Align = alRight
          Caption = ' Outras  R$ '
          TabOrder = 8
          object mesoutras: TDBEdit
            Left = 2
            Top = 15
            Width = 61
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mesoutras'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBIPI: TGroupBox
          Left = 745
          Top = 0
          Width = 65
          Height = 41
          CustomHint = BalloonHint
          Align = alRight
          Caption = ' IPI R$ '
          TabOrder = 9
          object mesipi: TDBEdit
            Left = 2
            Top = 15
            Width = 61
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mesipi'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
        object GBTotalLiquido: TGroupBox
          Left = 810
          Top = 0
          Width = 120
          Height = 41
          CustomHint = BalloonHint
          Align = alRight
          Caption = 'Total da Nota R$  '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 10
          object mestotal: TDBEdit
            Left = 2
            Top = 15
            Width = 116
            Height = 24
            CustomHint = BalloonHint
            TabStop = False
            Align = alClient
            Ctl3D = True
            DataField = 'mestotal'
            DataSource = DSRegistro
            ParentCtl3D = False
            ReadOnly = True
            TabOrder = 0
            ExplicitHeight = 21
          end
        end
      end
      object toecodigoEnt: TDBEdit
        Left = 633
        Top = 69
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toecodigo'
        DataSource = DSRegistroEnt
        TabOrder = 4
        OnEnter = toecodigoEntEnter
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 260
    Top = 256
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfg.cfgcodigo'
      '     , cfg.cfgdatapadrao'
      '     , cfgmcfg.cfgetdempresa'
      '     , edr.edritem'
      '     , cfgmnfe.cfgserienfe'
      'FROM cfg'
      '  JOIN cfgmcfg'
      '    ON cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      '  JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo'
      '  JOIN edr'
      '    ON etd.etdcodigo = edr.etdcodigo'
      '    AND edr.tedcodigo = 1'
      '  JOIN cfgmnfe'
      '    ON cfg.cfgcodigo = cfgmnfe.cfgcodigo')
    Left = 700
    Top = 284
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgdatapadrao: TDateField
      FieldName = 'cfgdatapadrao'
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgedritem: TIntegerField
      FieldName = 'edritem'
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      Size = 5
    end
  end
  inherited consulta: TUniQuery
    Left = 584
    Top = 348
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT mes.meschave'
      '     , mes.etdcodigo'
      '     , mes.mesemissao'
      '     , mes.mesregistro'
      '     , mes.tdfcodigo'
      '     , mes.sdecodigo'
      '     , mes.messerie'
      '     , mes.mesnumero'
      '     , mes.toecodigo'
      '     , mes.mesvalor'
      '     , mes.mesdesconto'
      '     , mes.mesprodutos'
      '     , mes.messervicos'
      '     , mes.mestotal'
      '     , mes.tfpcodigo'
      '     , mes.refcodigo'
      '     , mes.trfcodigo'
      '     , mes.clbcodigo'
      '     , mes.trmcodigo'
      '     , mes.temcodigo'
      '     , mes.edritem'
      '     , mes.mesfrete'
      '     , mes.messeguro'
      '     , mes.mesoutras'
      '     , mes.mesbicm'
      '     , mes.mesicm'
      '     , mes.mesbicms'
      '     , mes.mesicms'
      '     , mes.mesipi'
      
        '     , mes.meschaverecla -- Chave da mes de entrada por Reclassi' +
        'fica'#231#227'o'
      'FROM mes'
      'WHERE mes.meschave = :meschave')
    Left = 204
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registromeschave: TIntegerField
      DisplayLabel = 'Chave Sa'#237'da'
      FieldName = 'meschave'
    end
    object registrotoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o de Sa'#237'da'
      FieldName = 'toecodigo'
      Required = True
    end
    object registrotoeidentificacao: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 40
      Lookup = True
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 40
      Lookup = True
    end
    object registromesemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'mesemissao'
    end
    object registromesregistro: TDateField
      DisplayLabel = 'Data de Registro'
      FieldName = 'mesregistro'
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
      Size = 40
      Lookup = True
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
      DisplayLabel = 'N'#250'mero'
      FieldName = 'mesnumero'
    end
    object registromesvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mesvalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromesdesconto: TFloatField
      FieldName = 'mesdesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromesprodutos: TFloatField
      FieldName = 'mesprodutos'
    end
    object registromesservicos: TFloatField
      FieldName = 'messervicos'
    end
    object registromestotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registrotfpcodigo: TIntegerField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'tfpcodigo'
    end
    object registrotfpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tfpidentificacao'
      LookupDataSet = tfp
      LookupKeyFields = 'tfpcodigo'
      LookupResultField = 'tfpidentificacao'
      KeyFields = 'tfpcodigo'
      Size = 16
      Lookup = True
    end
    object registrorefcodigo: TIntegerField
      DisplayLabel = 'Respons'#225'vel Frete'
      FieldName = 'refcodigo'
    end
    object registrorefidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'refidentificacao'
      LookupDataSet = ref
      LookupKeyFields = 'refcodigo'
      LookupResultField = 'refidentificacao'
      KeyFields = 'refcodigo'
      Size = 16
      Lookup = True
    end
    object registrotrfcodigo: TStringField
      FieldName = 'trfcodigo'
      Size = 1
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object registrotemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object registroedritem: TIntegerField
      FieldName = 'edritem'
    end
    object registromesfrete: TFloatField
      FieldName = 'mesfrete'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromesseguro: TFloatField
      FieldName = 'messeguro'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromesoutras: TFloatField
      FieldName = 'mesoutras'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromesbicm: TFloatField
      FieldName = 'mesbicm'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromesicm: TFloatField
      FieldName = 'mesicm'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromesbicms: TFloatField
      FieldName = 'mesbicms'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromesicms: TFloatField
      FieldName = 'mesicms'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromesipi: TFloatField
      FieldName = 'mesipi'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registromeschaverecla: TIntegerField
      FieldName = 'meschaverecla'
    end
  end
  inherited dcp: TUniQuery
    Left = 1000
    Top = 292
  end
  inherited dtb: TUniQuery
    Left = 964
    Top = 292
  end
  inherited coa: TUniQuery
    Left = 928
    Top = 292
  end
  inherited pfr: TUniQuery
    Left = 784
    Top = 260
  end
  inherited psf: TUniQuery
    Left = 784
    Top = 308
  end
  inherited dcl: TUniQuery
    Left = 700
    Top = 360
  end
  inherited cau: TUniQuery
    Left = 736
    Top = 360
  end
  inherited err: TUniQuery
    Left = 784
    Top = 364
  end
  inherited BalloonHint: TBalloonHint
    Left = 996
    Top = 480
  end
  inherited acoesfrm: TActionList
    Left = 628
    Top = 284
  end
  inherited cpg: TUniQuery
    Left = 828
    Top = 264
  end
  inherited cpc: TUniQuery
    Left = 829
    Top = 313
  end
  object etd: TUniQuery [19]
    SQL.Strings = (
      'SELECT etd.etdcodigo'
      '     , etd.etdidentificacao'
      'FROM etd')
    Constraints = <>
    Left = 184
    Top = 309
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
  end
  object tdf: TUniQuery [20]
    SQL.Strings = (
      'SELECT tdf.tdfcodigo'
      '     , tdf.tdfidentificacao'
      'FROM tdf'
      'WHERE tdf.tdfcodigo IN ('#39'00'#39', '#39'PE'#39')')
    Constraints = <>
    Left = 224
    Top = 309
    object tdftdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object tdftdfidentificacao: TStringField
      FieldName = 'tdfidentificacao'
      Size = 50
    end
  end
  object toe: TUniQuery [21]
    SQL.Strings = (
      'SELECT toe.toecodigo'
      '     , toe.toeidentificacao'
      '     , toe.toecfopsaida'
      '     , toe.ttocodigo'
      '     , toe.ttecodigo'
      'FROM toe'
      'WHERE toe.ttocodigo = 8')
    Constraints = <>
    Left = 264
    Top = 309
    object toetoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object toetoeidentificacao: TStringField
      FieldName = 'toeidentificacao'
      Size = 100
    end
    object toetoecfopsaida: TStringField
      FieldName = 'toecfopsaida'
      Size = 5
    end
  end
  object tfp: TUniQuery [22]
    SQL.Strings = (
      'SELECT tfp.tfpcodigo'
      '     , tfp.tfpidentificacao'
      'FROM tfp')
    Constraints = <>
    Left = 200
    Top = 365
    object tfptfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object tfptfpidentificacao: TStringField
      FieldName = 'tfpidentificacao'
      Size = 30
    end
  end
  object ref: TUniQuery [23]
    SQL.Strings = (
      'SELECT ref.refcodigo'
      '     , ref.refidentificacao'
      'FROM ref')
    Constraints = <>
    Left = 248
    Top = 365
    object refrefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object refrefidentificacao: TStringField
      FieldName = 'refidentificacao'
      Size = 30
    end
  end
  object registroEnt: TUniQuery [24]
    SQL.Strings = (
      'SELECT mes.meschave'
      '     , mes.etdcodigo'
      '     , mes.mesemissao'
      '     , mes.mesregistro'
      '     , mes.tdfcodigo'
      '     , mes.sdecodigo'
      '     , mes.messerie'
      '     , mes.mesnumero'
      '     , mes.toecodigo'
      '     , mes.mesvalor'
      '     , mes.mesdesconto'
      '     , mes.mesprodutos'
      '     , mes.messervicos'
      '     , mes.mestotal'
      '     , mes.tfpcodigo'
      '     , mes.refcodigo'
      '     , mes.trfcodigo'
      '     , mes.clbcodigo'
      '     , mes.trmcodigo'
      '     , mes.temcodigo'
      '     , mes.edritem'
      '     , mes.mesfrete'
      '     , mes.messeguro'
      '     , mes.mesoutras'
      '     , mes.mesbicm'
      '     , mes.mesicm'
      '     , mes.mesbicms'
      '     , mes.mesicms'
      '     , mes.mesipi'
      'FROM mes'
      'WHERE mes.meschave = :meschave')
    Constraints = <>
    Left = 340
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registroEntmeschave: TIntegerField
      DisplayLabel = 'Chave Sa'#237'da'
      FieldName = 'meschave'
    end
    object registroEnttoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o de Sa'#237'da'
      FieldName = 'toecodigo'
      Required = True
    end
    object registroEnttoeidentificacao: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 40
      Lookup = True
    end
    object registroEntetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
    end
    object registroEntetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 45
      Lookup = True
    end
    object registroEntmesemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'mesemissao'
    end
    object registroEntmesregistro: TDateField
      DisplayLabel = 'Data de registro'
      FieldName = 'mesregistro'
    end
    object registroEnttdfcodigo: TStringField
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object registroEnttdfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tdfidentificacao'
      LookupDataSet = tdf
      LookupKeyFields = 'tdfcodigo'
      LookupResultField = 'tdfidentificacao'
      KeyFields = 'tdfcodigo'
      Size = 30
      Lookup = True
    end
    object registroEntsdecodigo: TStringField
      FieldName = 'sdecodigo'
      Size = 2
    end
    object registroEntmesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object registroEntmesnumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'mesnumero'
    end
    object registroEntmesvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mesvalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEntmesdesconto: TFloatField
      FieldName = 'mesdesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEntmesprodutos: TFloatField
      FieldName = 'mesprodutos'
    end
    object registroEntmesservicos: TFloatField
      FieldName = 'messervicos'
    end
    object registroEntmestotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEnttfpcodigo: TIntegerField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'tfpcodigo'
    end
    object registroEnttfpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tfpidentificacao'
      LookupDataSet = tfp
      LookupKeyFields = 'tfpcodigo'
      LookupResultField = 'tfpidentificacao'
      KeyFields = 'tfpcodigo'
      Size = 15
      Lookup = True
    end
    object registroEntrefcodigo: TIntegerField
      DisplayLabel = 'Respos'#225'vel Frete'
      FieldName = 'refcodigo'
    end
    object registroEntrefidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'refidentificacao'
      LookupDataSet = ref
      LookupKeyFields = 'refcodigo'
      LookupResultField = 'refidentificacao'
      KeyFields = 'refcodigo'
      Size = 15
      Lookup = True
    end
    object registroEnttrfcodigo: TStringField
      FieldName = 'trfcodigo'
      Size = 1
    end
    object registroEntclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroEnttrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object registroEnttemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object registroEntedritem: TIntegerField
      FieldName = 'edritem'
    end
    object registroEntmesfrete: TFloatField
      FieldName = 'mesfrete'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEntmesseguro: TFloatField
      FieldName = 'messeguro'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEntmesoutras: TFloatField
      FieldName = 'mesoutras'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEntmesbicm: TFloatField
      FieldName = 'mesbicm'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEntmesicm: TFloatField
      FieldName = 'mesicm'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEntmesbicms: TFloatField
      FieldName = 'mesbicms'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEntmesicms: TFloatField
      FieldName = 'mesicms'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroEntmesipi: TFloatField
      FieldName = 'mesipi'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
  end
  object DSRegistroEnt: TUniDataSource [25]
    DataSet = registroEnt
    Left = 408
    Top = 280
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object itm: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '     , pro.pronome'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmdesconto'
      '     , itm.itmtotal'
      '     , uni.unisimbolo'
      '     , itm.itmcontendo'
      '     , unib.unisimbolo AS unisimbolobase'
      'FROM itm'
      '  JOIN pro'
      '    ON itm.procodigo = pro.procodigo'
      '  JOIN pun'
      '    ON itm.puncodigo = pun.puncodigo'
      '  JOIN uni'
      '    ON pun.unicodigo = uni.unicodigo'
      '  JOIN uni unib'
      '    ON pro.unicodigo = unib.unicodigo'
      'WHERE itm.meschave = :meschave')
    Constraints = <>
    Left = 344
    Top = 355
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object itmitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
    end
    object itmprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object itmpronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object itmitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
    end
    object itmitmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object itmitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object itmitmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object itmunisimbolo: TStringField
      DisplayLabel = 'Un.'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object itmitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
    end
    object itmunisimbolobase: TStringField
      DisplayLabel = 'Un. Base'
      FieldName = 'unisimbolobase'
      Size = 6
    end
  end
  object DSitm: TUniDataSource
    DataSet = itm
    Left = 400
    Top = 355
  end
  object itmEnt: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '     , pro.pronome'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmdesconto'
      '     , itm.itmtotal'
      '     , uni.unisimbolo'
      '     , itm.itmcontendo'
      '     , unib.unisimbolo AS unisimbolobase'
      'FROM itm'
      '  JOIN pro'
      '    ON itm.procodigo = pro.procodigo'
      '  JOIN pun'
      '    ON itm.puncodigo = pun.puncodigo'
      '  JOIN uni'
      '    ON pun.unicodigo = uni.unicodigo'
      '  JOIN uni unib'
      '    ON pro.unicodigo = unib.unicodigo'
      'WHERE itm.meschave = :meschave')
    Constraints = <>
    Left = 344
    Top = 459
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object IntegerField1: TIntegerField
      FieldName = 'itmchave'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object StringField1: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object FloatField3: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object FloatField4: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object StringField2: TStringField
      DisplayLabel = 'Un.'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object FloatField5: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
    end
    object StringField3: TStringField
      DisplayLabel = 'Un. Base'
      FieldName = 'unisimbolobase'
      Size = 6
    end
  end
  object DSitmEnt: TUniDataSource
    DataSet = itmEnt
    Left = 400
    Top = 459
  end
  object qCalculaTotais: TUniQuery
    SQL.Strings = (
      'SET @disable_triggers = 1;'
      ''
      '-- Ajusta o campo itmitem'
      'SET @Item = NULL;'
      ''
      'UPDATE itm'
      'SET itm.itmitem = @Item := IFNULL(@Item, 0) + 1'
      'WHERE itm.meschave = :meschave;'
      ''
      ''
      '-- Totaliza os itens'
      'SELECT ROUND(SUM(itmtotal), 2) AS itmtotal'
      
        '     , SUM((itm.itmquantidade * itm.itmcontendo)) AS itmquantida' +
        'de'
      'FROM itm'
      'WHERE itm.meschave = :meschave INTO @TotalItens, @QtdItens;'
      ''
      'SET @TotalItens = IFNULL(@TotalItens, 0);'
      'SET @QtdItens = IFNULL(@QtdItens, 0);'
      ''
      '-- Atualiza mes com total dos itens'
      'UPDATE mes'
      'SET mes.mesprodutos = @TotalItens'
      '  , mes.mestotal = @TotalItens'
      '  , mes.mesvalor = @TotalItens'
      'WHERE mes.meschave = :meschave;'
      ''
      'SELECT @TotalItens'
      '     , @QtdItens;'
      ''
      'SET @disable_triggers = NULL;')
    Constraints = <>
    Left = 81
    Top = 308
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object qPunCusto: TUniQuery
    SQL.Strings = (
      'UPDATE pun'
      '  JOIN itm ON pun.procodigo = itm.procodigo'
      'SET pun.puncusto = itm.itmcusto * pun.punmultiplicador'
      'WHERE itm.meschave = :meschave;')
    Constraints = <>
    Left = 481
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object itmImp: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.meschave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '     , itm.cstcodigo'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmdesconto'
      '     , itm.toecodigo'
      '     , itm.cfocfop'
      '     , itm.icmcodigo'
      '     , itm.csicodigo'
      '     , itm.cspcodigo'
      '     , itm.csfcodigo'
      '     , itm.pcccodigo'
      '     , itm.itmtotal'
      '     , itm.unicodigo'
      '     , itm.puncodigo'
      '     , itm.itmcontendo'
      '     , itm.cfocfopdestinacao'
      '     , itm.unicodigobase'
      '     , itm.itmcusto'
      'FROM itm'
      'WHERE itm.itmchave = :itmchave')
    Constraints = <>
    Left = 484
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'itmchave'
        Value = nil
      end>
    object registroitmchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'itmchave'
    end
    object IntegerField4: TIntegerField
      FieldName = 'meschave'
    end
    object registroitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object registrocstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object registroitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
    end
    object registroitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,###,##0.00000'
      EditFormat = '#,###,##0.00000'
    end
    object registroitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object registroitmtotal: TFloatField
      DisplayLabel = 'Total do Item R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object IntegerField5: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object registrocfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object registroicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object registrocsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
    end
    object registrocspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object registrocsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object registropcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 60
    end
    object registrounicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object registropuncodigo: TIntegerField
      DisplayLabel = 'Embalagem'
      FieldName = 'puncodigo'
      Required = True
    end
    object registroitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
    end
    object registrocfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object registrounicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object registroitmcusto: TFloatField
      FieldName = 'itmcusto'
    end
  end
  object itmDes: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.meschave'
      '     , itm.itmitem'
      '     , itm.procodigo'
      '     , itm.cstcodigo'
      '     , itm.itmquantidade'
      '     , itm.itmvalor'
      '     , itm.itmdesconto'
      '     , itm.toecodigo'
      '     , itm.cfocfop'
      '     , itm.icmcodigo'
      '     , itm.csicodigo'
      '     , itm.cspcodigo'
      '     , itm.csfcodigo'
      '     , itm.pcccodigo'
      '     , itm.itmtotal'
      '     , itm.unicodigo'
      '     , itm.puncodigo'
      '     , itm.itmcontendo'
      '     , itm.cfocfopdestinacao'
      '     , itm.unicodigobase'
      '     , itm.itmcusto'
      'FROM itm limit 0')
    Constraints = <>
    Left = 529
    Top = 300
    object itmDesitmchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'itmchave'
    end
    object itmDesmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object itmDesitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
    end
    object itmDesprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object itmDescstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object itmDesitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
    end
    object itmDesitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,###,##0.00000'
      EditFormat = '#,###,##0.00000'
    end
    object itmDesitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object itmDesitmtotal: TFloatField
      DisplayLabel = 'Total do Item R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object itmDestoecodigo: TIntegerField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object itmDescfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object itmDesicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmDescsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
    end
    object itmDescspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object itmDescsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object itmDespcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 60
    end
    object itmDesunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object itmDespuncodigo: TIntegerField
      DisplayLabel = 'Embalagem'
      FieldName = 'puncodigo'
      Required = True
    end
    object itmDesitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
    end
    object itmDescfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmDesunicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object itmDesitmcusto: TFloatField
      FieldName = 'itmcusto'
    end
  end
  object itmAImportar: TUniQuery
    Constraints = <>
    Left = 553
    Top = 484
  end
end
