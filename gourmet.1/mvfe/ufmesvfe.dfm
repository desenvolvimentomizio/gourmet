inherited fmesvfe: Tfmesvfe
  ActiveControl = tdfcodigo
  Caption = 'Venda Fora do Estabelecimento - Remessa'
  ClientHeight = 646
  ClientWidth = 1084
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 617
    Width = 1084
    TabOrder = 1
    inherited bconfirma: TBitBtn
      Left = 930
    end
    inherited bcancela: TBitBtn
      Left = 1005
    end
    inherited bfechar: TBitBtn
      Left = 865
    end
  end
  inherited paginas: TPageControl
    Width = 1084
    Height = 617
    TabOrder = 0
    inherited Principal: TTabSheet
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
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
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
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o'
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
      object PlDetalhe: TPanel
        Left = 0
        Top = 183
        Width = 1076
        Height = 406
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 10
        Visible = False
        object plSaidas: TPanel
          Left = 4
          Top = 4
          Width = 1068
          Height = 398
          CustomHint = BalloonHint
          Align = alClient
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
              Caption = 'Itens de Remessa'
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
              Left = 566
              Top = 0
              Width = 500
              Height = 24
              CustomHint = BalloonHint
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 2
              object PlVlrTotalSai: TPanel
                AlignWithMargins = True
                Left = 215
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
                Left = 30
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
            end
          end
          object PlItens: TPanel
            Left = 1
            Top = 25
            Width = 1066
            Height = 372
            CustomHint = BalloonHint
            Align = alClient
            BevelOuter = bvNone
            TabOrder = 1
            object listaitens: TDBGrid
              Left = 0
              Top = 0
              Width = 1066
              Height = 372
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
        TabOrder = 4
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
        TabOrder = 5
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
        TabOrder = 6
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
        TabOrder = 7
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
        TabOrder = 8
        OnClick = bvalidarClick
      end
      object plTotais: TPanel
        Left = 3
        Top = 130
        Width = 930
        Height = 41
        CustomHint = BalloonHint
        BevelOuter = bvNone
        TabOrder = 9
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
          end
        end
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
      'FROM toe')
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
  object qCalculaTotais: TUniQuery
    SQL.Strings = (
      'SET @disable_triggers = 1;'
      ''
      '-- Ajusta o campo itmitem'
      'SET @Quantidade = NULL;'
      ''
      'UPDATE itm'
      'SET itm.itmitem = @Quantidade := IFNULL(@Quantidade, 0) + 1'
      'WHERE itm.meschave = :meschave;'
      ''
      ''
      '-- Totaliza os itens'
      'SET @TotalItens = ROUND(IFNULL((SELECT'
      '    SUM(itmtotal)'
      '  FROM itm'
      '  WHERE itm.meschave = :meschave), 0), 2);'
      ''
      ''
      '-- Atualiza mes com total dos itens'
      'UPDATE mes'
      'SET mes.mesprodutos = @TotalItens'
      '  , mes.mestotal = @TotalItens'
      '  , mes.mesvalor = @TotalItens'
      'WHERE mes.meschave = :meschave;'
      ''
      'SELECT @TotalItens;'
      ''
      'SET @disable_triggers = NULL;')
    Left = 81
    Top = 308
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object vfm: TUniQuery
    SQL.Strings = (
      'SELECT vfm.vfmcodigo'
      '     , vfm.vfecodigo'
      '     , vfm.meschave'
      'FROM vfm'
      'WHERE vfm.vfecodigo = :vfecodigo')
    Left = 369
    Top = 292
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vfecodigo'
        Value = nil
      end>
    object vfmvfecodigo: TIntegerField
      FieldName = 'vfecodigo'
    end
    object vfmmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
  object processaItm: TUniQuery
    SQL.Strings = (
      'SET @Item = 0;'
      'SET @MesChave = :meschave;'
      'SET @ToeCodigo = :toecodigo;'
      'SET @CFOP = (SELECT'
      '    toe.toecfopsaida'
      '  FROM toe'
      '  WHERE toe.toecodigo = @ToeCodigo);'
      'SET @CSTipi := '#39'49'#39';'
      'SET @CSTpis := '#39'98'#39';'
      'SET @CSTcofins := '#39'98'#39';'
      ''
      ''
      
        'INSERT INTO itm (itmchave, meschave, itmitem, procodigo, cstcodi' +
        'go, itmdesccomple, itmquantidade, itmvalor, itmdesconto, itmmovi' +
        'fisico, toecodigo, cfocfop, icmcodigo, itmbicm, itmaliqicm, itmi' +
        'cm, itmbicms, itmaliqicms, itmicms, itmapuipi, csicodigo, ceicod' +
        'igo, itmbipi, itmaliqipi, itmipi, cspcodigo, itmbpis, itmaliqpis' +
        ', itmquantpis, itmaliqpisvalor, itmpis, csfcodigo, itmbcofins, i' +
        'tmaliqcofins, itmquantcofins, itmaliqcofinsvalor, itmcofins, pcc' +
        'codigo, itmtotal, unicodigo, itmicmsvalor, puncodigo, procodigoo' +
        'ri, pronomeori, progtin, itmcontendo, cfocfopdestinacao, unicodi' +
        'gobase, itmcusto, itmtipodesc, itmfrete, itmseguro, itmoutras, i' +
        'tmsped, itmpercdesc, itmvlribpt, itmproservico, itminfadprod, it' +
        'mquanticontada)'
      '  SELECT @id'
      '       , @MesChave'
      '       , @Item := @Item + 1 AS itmitem'
      '       , itm.procodigo'
      '       , itm.cstcodigo'
      '       , itm.itmdesccomple'
      '       , itm.itmquantidade'
      '       , itm.itmvalor'
      '       , itm.itmdesconto'
      '       , itm.itmmovifisico'
      '       , @ToeCodigo'
      '       , @CFOP AS cfocfop'
      '       , itm.icmcodigo'
      '       , itm.itmbicm'
      '       , itm.itmaliqicm'
      '       , itm.itmicm'
      '       , itm.itmbicms'
      '       , itm.itmaliqicms'
      '       , itm.itmicms'
      '       , itm.itmapuipi'
      '       , @CSTipi AS csicodigo'
      '       , itm.ceicodigo'
      '       , itm.itmbipi'
      '       , itm.itmaliqipi'
      '       , itm.itmipi'
      '       , @CSTpis AS cspcodigo'
      '       , itm.itmbpis'
      '       , itm.itmaliqpis'
      '       , itm.itmquantpis'
      '       , itm.itmaliqpisvalor'
      '       , itm.itmpis'
      '       , @CSTcofins AS csfcodigo'
      '       , itm.itmbcofins'
      '       , itm.itmaliqcofins'
      '       , itm.itmquantcofins'
      '       , itm.itmaliqcofinsvalor'
      '       , itm.itmcofins'
      '       , itm.pcccodigo'
      '       , itm.itmtotal'
      '       , itm.unicodigo'
      '       , itm.itmicmsvalor'
      '       , itm.puncodigo'
      '       , itm.procodigoori'
      '       , itm.pronomeori'
      '       , itm.progtin'
      '       , itm.itmcontendo'
      '       , @CFOP AS cfocfopdestinacao'
      '       , itm.unicodigobase'
      '       , itm.itmcusto'
      '       , itm.itmtipodesc'
      '       , itm.itmfrete'
      '       , itm.itmseguro'
      '       , itm.itmoutras'
      '       , itm.itmsped'
      '       , itm.itmpercdesc'
      '       , itm.itmvlribpt'
      '       , itm.itmproservico'
      '       , itm.itminfadprod'
      '       , itm.itmquanticontada'
      '  FROM itm'
      '  WHERE itm.meschave IN (SELECT'
      '      mes.meschave'
      '    FROM mes'
      '      JOIN toe'
      '        ON mes.toecodigo = toe.toecodigo'
      '      JOIN vfm'
      '        ON mes.meschave = vfm.meschave'
      '    WHERE mes.sdecodigo IN ('#39'00'#39', '#39'01'#39')'
      '    AND toe.ttecodigo = 1'
      '    AND vfm.vfecodigo = :vfecodigo);')
    Left = 361
    Top = 444
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'toecodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vfecodigo'
        Value = nil
      end>
  end
  object processaSaldoItm: TUniQuery
    SQL.Strings = (
      'SET @disable_triggers = 1; -- Desabilita os gatilhos'
      ''
      'SET @MesChave = :meschave;'
      'SET @ToeCodigo = :toecodigo;'
      'SET @CFOP = (SELECT'
      '    toe.toecfopsaida'
      '  FROM toe'
      '  WHERE toe.toecodigo = @ToeCodigo);'
      '/* Sa'#237'da*/'
      'SET @CSTicms := '#39'900'#39';'
      'SET @CSTipi := '#39'99'#39';'
      'SET @CSTpis := '#39'49'#39';'
      'SET @CSTcofins := '#39'49'#39';'
      ''
      ''
      
        'INSERT INTO itm (itmchave, meschave, itmitem, procodigo, cstcodi' +
        'go, itmquantidade, itmvalor, itmdesconto, toecodigo, cfocfop, ic' +
        'mcodigo,'
      
        'csicodigo, cspcodigo, csfcodigo, pcccodigo, itmtotal, unicodigo,' +
        ' puncodigo, itmcontendo, cfocfopdestinacao, unicodigobase)'
      '  SELECT @id AS itmchave'
      '       , @MesChave AS meschave'
      '       , 0 AS itmitem'
      '       , itm.procodigo'
      '       , @CSTicms AS cstcodigo'
      
        '       , (SUM((itm.itmquantidade * itm.itmcontendo)) - IFNULL(ti' +
        'to.qtde, 0)) AS itmquantidade'
      '       , pun.punprecoav AS itmvalor'
      '       , 0 AS itmdesconto'
      '       , @ToeCodigo AS toecodigo'
      '       , @CFOP AS cfocfop'
      '       , itm.icmcodigo'
      '       , @CSTipi AS csicodigo'
      '       , @CSTpis AS cspcodigo'
      '       , @CSTcofins AS csfcodigo'
      '       , itm.pcccodigo'
      
        '       , ROUND(((SUM((itm.itmquantidade * itm.itmcontendo)) - IF' +
        'NULL(tito.qtde, 0)) * pun.punprecoav), 2) AS itmtotal'
      '       , pro.unicodigo'
      '       , pun.puncodigo'
      '       , pun.punmultiplicador AS itmcontendo'
      '       , @CFOP AS cfocfopdestinacao'
      '       , itm.unicodigobase'
      '  FROM itm'
      '    INNER JOIN pro'
      '      ON pro.procodigo = itm.procodigo'
      '    INNER JOIN uni'
      '      ON pro.unicodigo = uni.unicodigo'
      '    INNER JOIN pun'
      '      ON pro.procodigo = pun.procodigo'
      '      AND pro.unicodigo = pun.unicodigo'
      '    INNER JOIN mes'
      '      ON itm.meschave = mes.meschave'
      '    INNER JOIN toe'
      '      ON mes.toecodigo = toe.toecodigo'
      '    INNER JOIN vfm'
      '      ON mes.meschave = vfm.meschave'
      '    INNER JOIN vfe'
      '      ON vfm.vfecodigo = vfe.vfecodigo'
      '    LEFT JOIN (SELECT'
      '        vfo.vfecodigo'
      '      , ito.procodigo'
      '      , SUM((ito.itoquantidade * ito.itocontendo)) qtde'
      '      FROM ito'
      '        INNER JOIN vfo'
      '          ON ito.orcchave = vfo.orcchave'
      '      WHERE ito.stocodigo NOT IN (8, 88)'
      '      GROUP BY ito.procodigo'
      '             , vfo.vfecodigo) tito'
      '      ON tito.procodigo = itm.procodigo'
      '      AND vfe.vfecodigo = tito.vfecodigo'
      '  WHERE vfe.vfecodigo = :vfecodigo'
      '  AND toe.ttocodigo = 9'
      '  AND toe.ttecodigo = 1'
      '  GROUP BY itm.procodigo'
      '  HAVING itmquantidade > 0'
      '  ORDER BY pro.pronome;'
      ''
      'SET @disable_triggers = NULL;')
    Left = 457
    Top = 484
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'toecodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'vfecodigo'
        Value = nil
      end>
  end
  object saldoItm: TUniQuery
    SQL.Strings = (
      'SET @VfeCodAtual := :vfecodigo;'
      ''
      'SET @ClbCodigo := (SELECT'
      '    vfe.clbcodigo'
      '  FROM vfe'
      '  WHERE vfe.vfecodigo = @VfeCodAtual);'
      ''
      'SET @VfeCodigo = (SELECT'
      '    vfe.vfecodigo'
      '  FROM vfe'
      '  WHERE vfe.clbcodigo = @ClbCodigo'
      '  AND vfe.vfscodigo = 2 -- Processo encerrado'
      
        '  AND vfe.vfecodigo <> @VfeCodAtual -- Diferente do processo atu' +
        'al'
      '  ORDER BY vfe.vfecodigo DESC LIMIT 1);'
      ''
      ''
      'SELECT vfe.vfecodigo'
      '     , itm.procodigo'
      
        '     , (SUM((itm.itmquantidade * itm.itmcontendo)) - IFNULL(tito' +
        '.qtde, 0)) AS itmquantidade'
      'FROM itm'
      '  INNER JOIN pro'
      '    ON pro.procodigo = itm.procodigo'
      '  INNER JOIN mes'
      '    ON itm.meschave = mes.meschave'
      '  INNER JOIN toe'
      '    ON mes.toecodigo = toe.toecodigo'
      '  INNER JOIN vfm'
      '    ON mes.meschave = vfm.meschave'
      '  INNER JOIN vfe'
      '    ON vfm.vfecodigo = vfe.vfecodigo'
      '  LEFT JOIN (SELECT'
      '      vfo.vfecodigo'
      '    , ito.procodigo'
      '    , SUM((ito.itoquantidade * ito.itocontendo)) qtde'
      '    FROM ito'
      '      INNER JOIN vfo'
      '        ON ito.orcchave = vfo.orcchave'
      '    WHERE ito.stocodigo NOT IN (8, 88)'
      '    GROUP BY ito.procodigo'
      '           , vfo.vfecodigo) tito'
      '    ON tito.procodigo = itm.procodigo'
      '    AND vfe.vfecodigo = tito.vfecodigo'
      'WHERE vfe.vfecodigo = @VfeCodigo'
      'AND vfe.vfscodigo = 2 -- Processo Encerrado'
      'AND toe.ttocodigo = 9 -- Venda Externa'
      'AND toe.ttecodigo = 1 -- Sa'#237'da'
      'GROUP BY itm.procodigo'
      'HAVING itmquantidade > 0')
    Left = 457
    Top = 420
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vfecodigo'
        Value = nil
      end>
    object saldoItmvfecodigo: TIntegerField
      FieldName = 'vfecodigo'
    end
  end
end
