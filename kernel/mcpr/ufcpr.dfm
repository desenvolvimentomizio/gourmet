inherited fcpr: Tfcpr
  ActiveControl = chavenfe
  Caption = 'Compra'
  ClientHeight = 763
  ClientWidth = 1453
  ExplicitWidth = 1469
  ExplicitHeight = 802
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 734
    Width = 1453
    ExplicitTop = 734
    ExplicitWidth = 1453
    inherited bconfirma: TBitBtn
      Left = 1299
      ExplicitLeft = 1299
    end
    inherited bcancela: TBitBtn
      Left = 1374
      ExplicitLeft = 1374
    end
    inherited bfechar: TBitBtn
      Left = 1234
      ExplicitLeft = 1234
    end
    object procodigo: TDBEdit
      Tag = 8
      Left = 395
      Top = 6
      Width = 121
      Height = 21
      CustomHint = BalloonHint
      DataField = 'procodigo'
      DataSource = Dvitm
      TabOrder = 4
      Visible = False
    end
    object vtoecodigo: TDBEdit
      Left = 572
      Top = 6
      Width = 121
      Height = 21
      CustomHint = BalloonHint
      TabStop = False
      DataField = 'toecodigo'
      DataSource = Dvitm
      TabOrder = 5
      Visible = False
    end
  end
  inherited paginas: TPageControl
    Width = 1453
    Height = 734
    ExplicitWidth = 1453
    ExplicitHeight = 734
    inherited Principal: TTabSheet
      ExplicitWidth = 1445
      ExplicitHeight = 706
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 1445
        Height = 165
        CustomHint = BalloonHint
        Align = alTop
        Shape = bsSpacer
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
      object Label10: TLabel
        Left = 205
        Top = 6
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave de acesso'
      end
      object Label6: TLabel
        Left = 8
        Top = 33
        Width = 55
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fornecedor'
        FocusControl = etdcodigo
      end
      object Label2: TLabel
        Left = 613
        Top = 33
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Documento'
      end
      object Label3: TLabel
        Left = 8
        Top = 113
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Emiss'#227'o'
        FocusControl = mesemissao
      end
      object Label4: TLabel
        Left = 253
        Top = 112
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Entrada'
        FocusControl = mesregistro
      end
      object Label9: TLabel
        Left = 459
        Top = 114
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'S'#233'rie da Nota'
        FocusControl = messerie
      end
      object Label5: TLabel
        Left = 581
        Top = 114
        Width = 109
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero do Documento'
      end
      object Label7: TLabel
        Left = 8
        Top = 87
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o'
        FocusControl = toecodigo
      end
      object ufssiglaetd_old: TDBText
        Left = 840
        Top = 87
        Width = 35
        Height = 17
        CustomHint = BalloonHint
        DataField = 'ufssigla'
        DataSource = Dufs
      end
      object ufssiglacfg: TDBText
        Left = 695
        Top = 88
        Width = 35
        Height = 17
        CustomHint = BalloonHint
        DataField = 'ufssigla'
        DataSource = Dcfg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object ufssiglaetd: TLabel
        Left = 791
        Top = 89
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        AutoSize = False
      end
      object Label8: TLabel
        Left = 7
        Top = 142
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Respons'#225'vel pelo Frete'
        FocusControl = refcodigo
      end
      object Label11: TLabel
        Left = 469
        Top = 141
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pagamento'
        FocusControl = tfpcodigo
      end
      object Label12: TLabel
        Left = 749
        Top = 87
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado de Origem'
        FocusControl = tfpcodigo
      end
      object Label13: TLabel
        Left = 602
        Top = 87
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado de Destino'
        FocusControl = tfpcodigo
      end
      object Label14: TLabel
        Left = 8
        Top = 61
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CNPJ / CPF'
        FocusControl = etdcodigo
      end
      object Label15: TLabel
        Left = 365
        Top = 60
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Inscri'#231#227'o Estadual'
      end
      object lbmesreclassicacao: TLabel
        Left = 608
        Top = 8
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Para Reclassifica'#231#227'o'
      end
      object meschave: TDBEdit
        Left = 136
        Top = 3
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meschave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object meschavenfe: TDBEdit
        Left = 298
        Top = 3
        Width = 305
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = clWhite
        DataField = 'meschavenfe'
        DataSource = DSRegistro
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        TabOrder = 2
      end
      object btnimportarnfe: TButton
        Left = 795
        Top = 3
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Importar NFE'
        TabOrder = 3
        OnClick = btnimportarnfeClick
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = etdcodigoExit
      end
      object mesemissao: TDBEdit
        Left = 136
        Top = 111
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'mesemissao'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 6
      end
      object mesregistro: TDBEdit
        Left = 338
        Top = 109
        Width = 102
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mesregistro'
        DataSource = DSRegistro
        TabOrder = 7
        OnExit = mesregistroExit
      end
      object messerie: TDBEdit
        Left = 530
        Top = 111
        Width = 38
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'messerie'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 8
      end
      object toecodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        Color = 14286847
        DataField = 'toecodigo'
        DataSource = DSRegistro
        TabOrder = 5
        OnEnter = toecodigoEnter
        OnExit = toecodigoExit
      end
      object PlResumo: TPanel
        Left = 0
        Top = 165
        Width = 1445
        Height = 40
        CustomHint = BalloonHint
        Align = alTop
        BevelOuter = bvLowered
        ParentBackground = False
        TabOrder = 12
        object PlLinha1: TPanel
          Left = 1
          Top = 1
          Width = 435
          Height = 38
          CustomHint = BalloonHint
          Align = alLeft
          BevelOuter = bvNone
          TabOrder = 0
          object GBBaseICM: TGroupBox
            Left = 0
            Top = 0
            Width = 83
            Height = 38
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' Base ICMS R$ '
            TabOrder = 0
            object mesbicm: TDBEdit
              Left = 2
              Top = 15
              Width = 79
              Height = 21
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mesbicm'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
            end
          end
          object GBValorICM: TGroupBox
            Left = 83
            Top = 0
            Width = 68
            Height = 38
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' ICMS R$ '
            TabOrder = 1
            object mesicm: TDBEdit
              Left = 2
              Top = 15
              Width = 64
              Height = 21
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mesicm'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
            end
          end
          object GBBaseICMST: TGroupBox
            Left = 151
            Top = 0
            Width = 84
            Height = 38
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' Base ICMS ST '
            TabOrder = 2
            object mesbicms: TDBEdit
              Left = 2
              Top = 15
              Width = 80
              Height = 21
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mesbicms'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
            end
          end
          object GBValorICMST: TGroupBox
            Left = 235
            Top = 0
            Width = 79
            Height = 38
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' ICMS ST R$ '
            TabOrder = 3
            object mesicms: TDBEdit
              Left = 2
              Top = 15
              Width = 75
              Height = 21
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mesicms'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
            end
          end
          object GBTotalBruto: TGroupBox
            Left = 314
            Top = 0
            Width = 117
            Height = 38
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
              Width = 113
              Height = 21
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mesvalor'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
            end
          end
        end
        object Panel1: TPanel
          Left = 436
          Top = 1
          Width = 613
          Height = 38
          CustomHint = BalloonHint
          Align = alLeft
          TabOrder = 1
          object GBDesconto: TGroupBox
            Left = 1
            Top = 1
            Width = 63
            Height = 36
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' Desc. R$ '
            TabOrder = 0
            object mesdesconto: TDBEdit
              Left = 2
              Top = 15
              Width = 59
              Height = 19
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mesdesconto'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
              ExplicitHeight = 21
            end
          end
          object GBFrete: TGroupBox
            Left = 64
            Top = 1
            Width = 62
            Height = 36
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' Frete R$ '
            TabOrder = 1
            object mesfrete: TDBEdit
              Left = 2
              Top = 15
              Width = 58
              Height = 19
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mesfrete'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
              ExplicitHeight = 21
            end
          end
          object GBSeguro: TGroupBox
            Left = 126
            Top = 1
            Width = 65
            Height = 36
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' Seguro R$ '
            TabOrder = 2
            object messeguro: TDBEdit
              Left = 2
              Top = 15
              Width = 61
              Height = 19
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'messeguro'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
              ExplicitHeight = 21
            end
          end
          object GBOutras: TGroupBox
            Left = 191
            Top = 1
            Width = 65
            Height = 36
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' Outras  R$ '
            TabOrder = 3
            object mesoutras: TDBEdit
              Left = 2
              Top = 15
              Width = 61
              Height = 19
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mesoutras'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
              ExplicitHeight = 21
            end
          end
          object GBIPI: TGroupBox
            Left = 256
            Top = 1
            Width = 59
            Height = 36
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' IPI R$ '
            TabOrder = 4
            object mesipi: TDBEdit
              Left = 2
              Top = 15
              Width = 55
              Height = 19
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mesipi'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
              ExplicitHeight = 21
            end
          end
          object GBTotalLiquido: TGroupBox
            Left = 315
            Top = 1
            Width = 108
            Height = 36
            CustomHint = BalloonHint
            Align = alLeft
            Caption = 'Total da Nota R$  '
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object mestotal: TDBEdit
              Left = 2
              Top = 15
              Width = 104
              Height = 19
              CustomHint = BalloonHint
              Align = alClient
              Ctl3D = True
              DataField = 'mestotal'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
              ExplicitHeight = 21
            end
          end
          object bvalidar: TButton
            Left = 535
            Top = 5
            Width = 74
            Height = 32
            CustomHint = BalloonHint
            Caption = 'Validar'
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 6
            Visible = False
            OnClick = bvalidarClick
          end
          object GroupBox2: TGroupBox
            Left = 423
            Top = 1
            Width = 106
            Height = 36
            CustomHint = BalloonHint
            Align = alLeft
            Caption = ' Outros Custos  R$ '
            TabOrder = 7
            object mesoutroscustos: TDBEdit
              Left = 2
              Top = 15
              Width = 102
              Height = 19
              CustomHint = BalloonHint
              TabStop = False
              Align = alClient
              Ctl3D = True
              DataField = 'mesoutroscustos'
              DataSource = DSRegistro
              ParentCtl3D = False
              TabOrder = 0
              OnChange = mescalculatotal
              ExplicitHeight = 21
            end
          end
        end
      end
      object mesnumero: TDBEdit
        Left = 696
        Top = 111
        Width = 71
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'mesnumero'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 9
      end
      object refcodigo: TDBEdit
        Left = 136
        Top = 138
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'refcodigo'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object tfpcodigo: TDBEdit
        Left = 530
        Top = 138
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tfpcodigo'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object PlDetalhe: TPanel
        Left = 0
        Top = 205
        Width = 1445
        Height = 501
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 13
        object PlItens: TPanel
          Left = 4
          Top = 4
          Width = 1437
          Height = 493
          CustomHint = BalloonHint
          Align = alClient
          TabOrder = 0
          object PlObs: TPanel
            Left = 1
            Top = 421
            Width = 1435
            Height = 71
            CustomHint = BalloonHint
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object PlObsdetalhe: TPanel
              Left = 0
              Top = 0
              Width = 1435
              Height = 71
              CustomHint = BalloonHint
              Align = alClient
              TabOrder = 0
              object GroupBox1: TGroupBox
                Left = 966
                Top = 1
                Width = 468
                Height = 69
                CustomHint = BalloonHint
                Align = alRight
                Caption = ' Complemento da Observa'#231#227'o'
                TabOrder = 0
                object tomobs: TDBMemo
                  Left = 2
                  Top = 15
                  Width = 464
                  Height = 52
                  CustomHint = BalloonHint
                  Align = alClient
                  DataField = 'tomobs'
                  DataSource = Dtom
                  ReadOnly = True
                  TabOrder = 0
                end
              end
              object GBObs: TGroupBox
                Left = 1
                Top = 1
                Width = 965
                Height = 69
                CustomHint = BalloonHint
                Align = alClient
                Caption = ' Registros de Observa'#231#245'es '
                TabOrder = 1
                object listaobs: TDBGrid
                  Left = 2
                  Top = 15
                  Width = 961
                  Height = 52
                  CustomHint = BalloonHint
                  Align = alClient
                  DataSource = Dtom
                  Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                  TabOrder = 0
                  TitleFont.Charset = DEFAULT_CHARSET
                  TitleFont.Color = clWindowText
                  TitleFont.Height = -11
                  TitleFont.Name = 'Tahoma'
                  TitleFont.Style = []
                  Columns = <
                    item
                      Expanded = False
                      FieldName = 'tofidentificacao'
                      Width = 680
                      Visible = True
                    end>
                end
              end
            end
          end
          object listaitens: TDBGrid
            Left = 1
            Top = 1
            Width = 1435
            Height = 420
            CustomHint = BalloonHint
            Align = alClient
            DataSource = Dvitm
            Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnColEnter = listaitensColEnter
            OnColExit = listaitensColExit
            OnDrawColumnCell = listaitensDrawColumnCell
            OnEnter = listaitensEnter
            OnKeyDown = listaitensKeyDown
            OnKeyPress = listaitensKeyPress
            OnKeyUp = listaitensKeyUp
            OnMouseDown = listaitensMouseDown
            Columns = <
              item
                Expanded = False
                FieldName = 'itmitem'
                ReadOnly = True
                Title.Caption = 'Item'
                Width = 30
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'procodigoori'
                ReadOnly = True
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pronomeori'
                ReadOnly = True
                Width = 300
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cfocfop'
                ReadOnly = True
                Title.Caption = 'CFOP Ori'
                Width = 55
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
                ReadOnly = True
                Width = 182
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'toecodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cfocfopdestinacao'
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'unisimbolo'
                ReadOnly = True
                Title.Caption = 'Unid.'
                Width = 42
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmquantidade'
                ReadOnly = True
                Width = 49
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmvalor'
                ReadOnly = True
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotal'
                ReadOnly = True
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
                FieldName = 'itmqtdcalculada'
                ReadOnly = True
                Visible = True
              end>
          end
        end
      end
      object chavenfe: TEdit
        Left = 297
        Top = 3
        Width = 305
        Height = 21
        CustomHint = BalloonHint
        Color = clYellow
        TabOrder = 1
        OnChange = chavenfeChange
        OnKeyPress = chavenfeKeyPress
      end
      object plinsc: TPanel
        Left = 458
        Top = 57
        Width = 145
        Height = 22
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Color = 16767152
        ParentBackground = False
        TabOrder = 14
      end
      object pletddoc1: TPanel
        Left = 136
        Top = 57
        Width = 145
        Height = 22
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Color = 16767152
        ParentBackground = False
        TabOrder = 15
      end
      object pletdidentificacao: TPanel
        Left = 223
        Top = 30
        Width = 380
        Height = 22
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Color = 16767152
        ParentBackground = False
        TabOrder = 16
      end
      object PlTedcodigo: TPanel
        Left = 280
        Top = 57
        Width = 25
        Height = 22
        CustomHint = BalloonHint
        Caption = '0'
        TabOrder = 17
      end
      object tdfcodigo: TDBEdit
        Left = 711
        Top = 30
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'tdfcodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 18
      end
      object mesreclassicacao: TDBEdit
        Left = 711
        Top = 3
        Width = 19
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mesreclassicacao'
        DataSource = DSRegistro
        TabOrder = 19
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '03-03-001'
  end
  inherited DSRegistro: TUniDataSource
    Left = 260
    Top = 276
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ufs.ufssigla,'
      '  etd.etddoc1,'
      '  cfgment.cfgprouso,'
      '  cfgmnfe.cfgobs1,'
      '  cfgmnfe.cfgobs2,'
      '  cfgmnfe.cfgobs3,'
      '  cfgmnfe.cfgobs4,'
      '  cfgmcfg.cfgetdempresa,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgmnfe.cfgnumecertif,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgment.cfgtoeusofora,'
      '  cfgment.cfgtoeusointe,'
      '  cfgment.cfgajustacusto,'
      '  cfgment.cfgcadastrapro,'
      '  cfgmnfe.cfgcertificadoa1,'
      '  cfgmnfe.cfgsenhacertificadoa1,'
      '  cfgmsai.cfgproinativsaldozero,'
      '  cfgment.cfgimpfatura,'
      '   cfgtributacaoimendes'
      ''
      'FROM cfgmcfg,'
      '     ufs,'
      '     etd,'
      '     cfgmnfe,'
      '     cfgment,'
      '     cfgmsai,'
      '     edr,'
      '     cfg'
      'WHERE ufs.ufscodigo = edr.ufscodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1'
      'AND cfg.flacodigo = :flacodigo')
    Left = 500
    Top = 596
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
    object cfgcfgprouso: TIntegerField
      FieldName = 'cfgprouso'
      ReadOnly = True
      Required = True
    end
    object cfgcfgobs1: TIntegerField
      FieldName = 'cfgobs1'
    end
    object cfgcfgobs2: TIntegerField
      FieldName = 'cfgobs2'
    end
    object cfgcfgobs3: TIntegerField
      FieldName = 'cfgobs3'
    end
    object cfgcfgobs4: TIntegerField
      FieldName = 'cfgobs4'
    end
    object cfgcfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      Size = 50
    end
    object cfgcfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      Size = 10
    end
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgcfgtoeusofora: TIntegerField
      FieldName = 'cfgtoeusofora'
    end
    object cfgcfgtoeusointe: TIntegerField
      FieldName = 'cfgtoeusointe'
    end
    object cfgcfgcadastrapro: TIntegerField
      FieldName = 'cfgcadastrapro'
    end
    object cfgcfgcertificadoa1: TBlobField
      FieldName = 'cfgcertificadoa1'
    end
    object cfgcfgsenhacertificadoa1: TStringField
      FieldName = 'cfgsenhacertificadoa1'
      Size = 50
    end
    object cfgcfgajustacusto: TIntegerField
      FieldName = 'cfgajustacusto'
    end
    object cfgcfgproinativsaldozero: TIntegerField
      FieldName = 'cfgproinativsaldozero'
    end
    object cfgcfgimpfatura: TIntegerField
      FieldName = 'cfgimpfatura'
    end
    object cfgcfgtributacaoimendes: TIntegerField
      FieldName = 'cfgtributacaoimendes'
    end
  end
  inherited consulta: TUniQuery
    Left = 428
    Top = 588
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  meschave,'
      '  etdcodigo,'
      '  mesemissao,'
      '  mesregistro,'
      '  tdfcodigo,'
      '  sdecodigo,'
      '  messerie,'
      '  mesnumero,'
      '  meschavenfe,'
      '  toecodigo,'
      '  mesvalor,'
      '  tfpcodigo,'
      '  mesdesconto,'
      '  mestotal,'
      '  refcodigo,'
      '  mesfrete,'
      '  messeguro,'
      '  mesoutras,'
      '  mesbicm,'
      '  mesicm,'
      '  mesbicms,'
      '  mesicms,'
      '  trfcodigo,'
      '  meschavenfe,'
      '  mesipi,'
      '  mespis,'
      '  mescofins,'
      '  mespiss,'
      '  mescofinss,'
      '  clbcodigo,'
      '  trmcodigo,'
      '  temcodigo,'
      '  mesobs,'
      '  mesreclassicacao,'
      '  flacodigo,'
      '  mesoutroscustos'
      'FROM mes'
      'WHERE meschave = :meschave')
    Left = 192
    Top = 272
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
    object registroetdidentificacao: TStringField
      DisplayWidth = 40
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
      DisplayWidth = 2
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
      Size = 30
      Lookup = True
    end
    object registrosdecodigo: TStringField
      FieldName = 'sdecodigo'
      Required = True
      Size = 2
    end
    object registromesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object registromesnumero: TIntegerField
      FieldName = 'mesnumero'
    end
    object registromeschavenfe: TStringField
      FieldName = 'meschavenfe'
      Required = True
      Size = 100
    end
    object registrotoecodigo: TIntegerField
      FieldName = 'toecodigo'
      Required = True
    end
    object registrotoeidentificacao: TStringField
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 45
      Lookup = True
    end
    object registrotfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object registrotfpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tfpidentificacao'
      LookupDataSet = tfp
      LookupKeyFields = 'tfpcodigo'
      LookupResultField = 'tfpidentificacao'
      KeyFields = 'tfpcodigo'
      Size = 30
      Lookup = True
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
    object registromestotal: TFloatField
      FieldName = 'mestotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrorefcodigo: TIntegerField
      DisplayLabel = 'Respons'#225'vel pelo Frete'
      FieldName = 'refcodigo'
      Required = True
    end
    object registrorefidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'refidentificacao'
      LookupDataSet = ref
      LookupKeyFields = 'refcodigo'
      LookupResultField = 'refidentificacao'
      KeyFields = 'refcodigo'
      Size = 30
      Lookup = True
    end
    object registromesfrete: TFloatField
      FieldName = 'mesfrete'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
    object registrotrfcodigo: TStringField
      FieldName = 'trfcodigo'
      Size = 1
    end
    object registrotemcodigo: TIntegerField
      FieldName = 'temcodigo'
    end
    object registroetddoc1: TStringField
      FieldKind = fkLookup
      FieldName = 'etddoc1'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etddoc1'
      KeyFields = 'etdcodigo'
      Lookup = True
    end
    object registromesreclassicacao: TIntegerField
      FieldName = 'mesreclassicacao'
      Required = True
    end
    object registrosenmesreclassificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'senmesreclassificacao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'mesreclassicacao'
      Size = 5
      Lookup = True
    end
    object registroflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object registromesoutroscustos: TFloatField
      DisplayLabel = 'Outros Custos'
      FieldName = 'mesoutroscustos'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited dcp: TUniQuery
    Left = 384
    Top = 580
  end
  inherited dtb: TUniQuery
    Left = 348
    Top = 580
  end
  inherited coa: TUniQuery
    Left = 312
    Top = 580
  end
  inherited pfr: TUniQuery
    AfterInsert = pfrAfterInsert
    Left = 564
    Top = 592
  end
  inherited psf: TUniQuery
    Left = 612
    Top = 592
  end
  inherited dcl: TUniQuery
    Left = 1088
    Top = 132
  end
  object Dcfg: TUniDataSource [14]
    DataSet = cfg
    Left = 604
    Top = 504
  end
  object buscapro: TUniQuery [15]
    Left = 176
    Top = 572
  end
  object Dbuscapro: TUniDataSource [16]
    DataSet = buscapro
    Left = 124
    Top = 572
  end
  object probusca: TUniQuery [17]
    SQL.Strings = (
      'select procodigo, pronome from pro order by pronome')
    Left = 176
    Top = 620
    object probuscaprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object probuscapronome: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'pronome'
      Size = 150
    end
  end
  object Dvitm: TUniDataSource [18]
    DataSet = itm
    Left = 444
    Top = 348
  end
  object itm: TUniQuery [19]
    SQL.Strings = (
      'select * from itm where itm.meschave= :meschave')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    AfterInsert = itmAfterInsert
    BeforeDelete = itmBeforeDelete
    OnCalcFields = itmCalcFields
    Left = 480
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Item'
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
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmitmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toecodigo'
    end
    object itmtoeidentificacao: TStringField
      DisplayLabel = 'Destina'#231#227'o'
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
      DisplayLabel = 'CFOP Origem'
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
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
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
      DisplayLabel = 'Unid.'
      FieldName = 'unicodigo'
      Required = True
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
      DisplayLabel = 'Un.Base'
      FieldName = 'unicodigobase'
      Required = True
    end
    object itmitmfrete: TFloatField
      FieldName = 'itmfrete'
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
    object itmitmoutras: TFloatField
      FieldName = 'itmoutras'
    end
    object itmitmseguro: TFloatField
      FieldName = 'itmseguro'
    end
    object itmitmoutroscustos: TFloatField
      FieldName = 'itmoutroscustos'
    end
    object itmitmqtdcalculada: TFloatField
      DisplayLabel = 'Tot.Estoque'
      FieldKind = fkCalculated
      FieldName = 'itmqtdcalculada'
      Calculated = True
    end
    object itmtdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 3
    end
  end
  object Detd: TUniDataSource [20]
    DataSet = etd
    Left = 992
    Top = 40
  end
  object etd: TUniQuery [21]
    SQL.Strings = (
      'select * from etd')
    Left = 992
    Top = 84
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object etdetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 35
    end
    object etdetddeletar: TIntegerField
      FieldName = 'etddeletar'
      Required = True
    end
    object etdtpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      Required = True
    end
    object etdetddatacad: TDateField
      FieldName = 'etddatacad'
    end
    object etdetddataalt: TDateField
      FieldName = 'etddataalt'
    end
    object etdetddoc1: TStringField
      FieldName = 'etddoc1'
    end
  end
  object etv: TUniQuery [22]
    SQL.Strings = (
      'select * from etv')
    MasterSource = DSRegistro
    MasterFields = 'etdcodigo'
    DetailFields = 'etdcodigo'
    Left = 1028
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etvetvcodigo: TIntegerField
      FieldName = 'etvcodigo'
    end
    object etvetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object etvtvicodigo: TIntegerField
      FieldName = 'tvicodigo'
      Required = True
    end
    object etvetddoc1: TStringField
      FieldName = 'etddoc1'
    end
  end
  object ete: TUniQuery [23]
    SQL.Strings = (
      'select * from ete')
    MasterSource = DSRegistro
    MasterFields = 'etdcodigo'
    DetailFields = 'etdcodigo'
    Left = 1024
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object eteetecodigo: TIntegerField
      FieldName = 'etecodigo'
    end
    object eteetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object eteeteemail: TStringField
      FieldName = 'eteemail'
      Size = 100
    end
    object eteetecontato: TStringField
      FieldName = 'etecontato'
    end
    object eteetedepartamento: TStringField
      FieldName = 'etedepartamento'
    end
  end
  object edr: TUniQuery [24]
    SQL.Strings = (
      'select * from edr')
    Left = 1056
    Top = 40
    object edredrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object edrtedcodigo: TIntegerField
      FieldName = 'tedcodigo'
      Required = True
    end
    object edretdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object edredrrua: TStringField
      FieldName = 'edrrua'
      Required = True
      Size = 50
    end
    object edredrnumero: TStringField
      FieldName = 'edrnumero'
      Required = True
      Size = 10
    end
    object edredrcxpostal: TStringField
      FieldName = 'edrcxpostal'
      Size = 10
    end
    object edredrcomple: TStringField
      FieldName = 'edrcomple'
      Size = 50
    end
    object edredrbairro: TStringField
      FieldName = 'edrbairro'
      Required = True
    end
    object edrcddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object edredrinscest: TStringField
      FieldName = 'edrinscest'
      Required = True
    end
    object edredrcep: TStringField
      FieldName = 'edrcep'
      Required = True
      Size = 10
    end
    object edrufscodigo: TStringField
      FieldName = 'ufscodigo'
      Size = 10
    end
  end
  object etf: TUniQuery [25]
    SQL.Strings = (
      'select * from etf')
    MasterSource = DSRegistro
    MasterFields = 'etdcodigo'
    DetailFields = 'etdcodigo'
    Left = 1056
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etfetfcodigo: TIntegerField
      FieldName = 'etfcodigo'
    end
    object etfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etfttfcodigo: TIntegerField
      FieldName = 'ttfcodigo'
      Required = True
    end
    object etfetftelefone: TStringField
      FieldName = 'etftelefone'
      Required = True
    end
    object etfetfcontato: TStringField
      FieldName = 'etfcontato'
    end
    object etfetfdepartamento: TStringField
      FieldName = 'etfdepartamento'
    end
  end
  object mfi: TUniQuery [26]
    SQL.Strings = (
      'select * from mfi')
    Left = 968
    Top = 292
    object mfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfichave: TIntegerField
      FieldName = 'rfichave'
      Required = True
    end
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
      Required = True
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
      Required = True
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
      Required = True
    end
    object mfimfihistorico: TStringField
      FieldName = 'mfihistorico'
      Size = 100
    end
  end
  object pro: TUniQuery [27]
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 996
    Top = 292
    object proprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
  end
  object pun: TUniQuery [28]
    SQL.Strings = (
      'select * from pun where puncodigo=:puncodigo')
    Left = 1024
    Top = 292
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'puncodigo'
        Value = nil
      end>
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
    object punpunbase: TFloatField
      FieldName = 'punbase'
    end
  end
  object icm: TUniQuery [29]
    SQL.Strings = (
      'select * from icm')
    Left = 980
    Top = 468
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
  object uni: TUniQuery [30]
    SQL.Strings = (
      'select unicodigo, unisimbolo,uninome from uni')
    Left = 852
    Top = 452
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
  object spd: TUniQuery [31]
    SQL.Strings = (
      'select * from spd where spdativo=1')
    Left = 760
    Top = 376
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
    object spdspddatabalanco: TDateField
      DisplayLabel = 'Data Balan'#231'o'
      FieldName = 'spddatabalanco'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object spdpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 30
    end
    object spdspdativo: TIntegerField
      FieldName = 'spdativo'
      Required = True
    end
  end
  object toe: TUniQuery [32]
    SQL.Strings = (
      
        'select toecodigo, toeidentificacao,  toecfopsaida,toeorigem,ttec' +
        'odigo, ttmcodigo,ttocodigo  from toe')
    Left = 316
    Top = 436
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
      Size = 2
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
  object tdf: TUniQuery [33]
    SQL.Strings = (
      'select tdfcodigo, tdfidentificacao from tdf')
    Left = 348
    Top = 436
    object tdftdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object tdftdfidentificacao: TStringField
      FieldName = 'tdfidentificacao'
      Size = 30
    end
  end
  object ufs: TUniQuery [34]
    SQL.Strings = (
      'Select ufs.ufssigla, edr.tedcodigo, etd.etdcodigo'
      'From cdd Inner Join'
      '  ufs On ufs.ufscodigo = cdd.ufscodigo Inner Join'
      '  edr On cdd.cddcodigo = edr.cddcodigo Inner Join'
      '  etd On etd.etdcodigo = edr.etdcodigo'
      'Where edr.tedcodigo = 1 and etd.etdcodigo=:etdcodigo')
    Left = 380
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object ufsufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
    object ufstedcodigo: TIntegerField
      FieldName = 'tedcodigo'
      ReadOnly = True
      Required = True
    end
    object ufsetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
    end
  end
  object acoes: TActionList [35]
    Left = 632
    Top = 364
    object ActIncluir: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Incluir'
      Enabled = False
      ImageIndex = 4
      ShortCut = 45
    end
    object ActAlterar: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Alterar'
      Enabled = False
      ImageIndex = 0
      ShortCut = 16429
    end
    object ActExcluir: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Excluir'
      Enabled = False
      ImageIndex = 2
      ShortCut = 46
    end
    object ActObsIncluir: TAction
      Category = 'Observa'#231#245'es'
      Caption = 'Incluir'
      Enabled = False
    end
    object ActObsAlterar: TAction
      Category = 'Observa'#231#245'es'
      Caption = 'Alterar'
      Enabled = False
    end
    object ActObsExcluir: TAction
      Category = 'Observa'#231#245'es'
      Caption = 'Excluir'
      Enabled = False
    end
  end
  object dtm: TUniQuery [36]
    SQL.Strings = (
      'select * from dtm')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 328
    Top = 280
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
      FieldName = 'dtmplaca'
      Required = True
      Size = 10
    end
    object dtmdtmvolumes: TFloatField
      FieldName = 'dtmvolumes'
      Required = True
    end
    object dtmdtmpesobruto: TFloatField
      FieldName = 'dtmpesobruto'
      Required = True
    end
    object dtmdtmpesoliq: TFloatField
      FieldName = 'dtmpesoliq'
      Required = True
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
  end
  object ref: TUniQuery [37]
    SQL.Strings = (
      'select refcodigo, refidentificacao from ref')
    Left = 840
    Top = 356
    object refrefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object refrefidentificacao: TStringField
      FieldName = 'refidentificacao'
      Size = 30
    end
  end
  object tfp: TUniQuery [38]
    SQL.Strings = (
      'select tfpcodigo, tfpidentificacao from tfp')
    Left = 896
    Top = 420
    object tfptfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object tfptfpidentificacao: TStringField
      FieldName = 'tfpidentificacao'
      Size = 30
    end
  end
  object tom: TUniQuery [39]
    SQL.Strings = (
      
        'select tomchave, tom.tofcodigo, tofidentificacao, tom.meschave, ' +
        'tomobs from tom,tof where tom.tofcodigo=tof.tofcodigo')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 1148
    Top = 76
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
    object tomtomobs: TStringField
      FieldName = 'tomobs'
      Size = 200
    end
  end
  object tof: TUniQuery [40]
    SQL.Strings = (
      'select tofcodigo, tofidentificacao from tof')
    Left = 1036
    Top = 156
    object toftofcodigo: TIntegerField
      FieldName = 'tofcodigo'
    end
    object toftofidentificacao: TStringField
      FieldName = 'tofidentificacao'
      Required = True
      Size = 350
    end
  end
  object Dtom: TUniDataSource [41]
    DataSet = tom
    Left = 748
    Top = 580
  end
  object Dufs: TUniDataSource [42]
    DataSet = ufs
    Left = 412
    Top = 432
  end
  object DataSource1: TUniDataSource [43]
    DataSet = edr
    Left = 696
    Top = 396
  end
  inherited err: TUniQuery
    Left = 648
    Top = 344
  end
  inherited BalloonHint: TBalloonHint
    Left = 876
    Top = 356
  end
  inherited ImgBusca: TPngImageList
    Left = 972
    Top = 128
  end
  inherited dau: TUniQuery
    Left = 1052
    Top = 404
  end
  object ConsultaPun: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  puncodigo,'
      '  punmultiplicador,'
      '  tuncodigo,'
      '  punidentificacao,'
      '  unicodigo'
      'FROM pun'
      'WHERE unicodigo = :unicodigo'
      'AND procodigo = :procodigo'
      'AND punmultiplicador=:punmultiplicador')
    Left = 448
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'unicodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'punmultiplicador'
        Value = nil
      end>
  end
  object DeletaRFI: TUniQuery
    SQL.Strings = (
      'DELETE'
      '  FROM tit'
      ' USING tit'
      ' INNER JOIN rfi ON tit.titcodigo = rfi.titcodigo'
      ' INNER JOIN rfm ON rfi.rfichave = rfm.rfichave'
      ' WHERE rfm.meschave = :meschave;'
      ''
      ''
      'DELETE'
      '  FROM rfi'
      ' USING rfi'
      ' INNER JOIN rfm ON rfi.rfichave = rfm.rfichave'
      ' WHERE rfm.meschave = :meschave;')
    Left = 192
    Top = 393
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 895
    Top = 73
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.SSLLib = libWinCrypt
    Configuracoes.Geral.SSLCryptLib = cryWinCrypt
    Configuracoes.Geral.SSLHttpLib = httpWinHttp
    Configuracoes.Geral.SSLXmlSignLib = xsLibXml2
    Configuracoes.Geral.FormatoAlerta = 'TAG:%TAGNIVEL% ID:%ID%/%TAG%(%DESCRICAO%) - %MSG%.'
    Configuracoes.Geral.VersaoQRCode = veqr000
    Configuracoes.Arquivos.OrdenacaoPath = <>
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.QuebradeLinha = '|'
    Configuracoes.RespTec.IdCSRT = 0
    Left = 536
    Top = 417
  end
  object cfgnfe: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  /*Principal*/'
      '  cfgmcfg.cfgcodigo,'
      '  cfgmcfg.cfgetdempresa,'
      ''
      '  /*Entradas*/'
      '  cfgment.cfgprouso,'
      '  cfgment.cfgtoeusofora,'
      '  cfgment.cfgtoeusointe,'
      ''
      '  /*Sa'#237'das*/'
      '  cfgmsai.cfgtoecuffora,'
      '  cfgmsai.cfgtoecufinte,'
      ''
      '  /*Emiss'#227'o NFe*/'
      '  cfgmnfe.cfgviasnfe,'
      '  cfgmnfe.cfgnumeronfe,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgmnfe.cfgnumeronfce,'
      '  cfgmnfe.cfgserienfce,'
      '  cfgmnfe.cfgobs1,'
      '  cfgmnfe.cfgobs2,'
      '  cfgmnfe.cfgobs3,'
      '  cfgmnfe.cfgobs4,'
      '  cfgmnfe.cfgdescrinfe,'
      '  cfgmnfe.cfgnumecertif,'
      '  cfgmnfe.cfgsenhacertificado,'
      ''
      '  cfgmnfe.cfgcertificadoa1,'
      '  cfgmnfe.cfgsenhacertificadoa1,'
      ''
      '  cfgmnfe.cfgmodonfe,'
      '  cfgmnfe.cfgtextoemail,'
      ''
      '  /*Email*/'
      '  cfgmnfe.cfgemailnfe,'
      '  cfgmnfe.cfgemailservidornfe,'
      '  cfgmnfe.cfgemailsenhanfe,'
      '  cfgmnfe.cfgmailportnfe,'
      '  cfgmnfe.cfgemailusatls,'
      '  cfgmnfe.cfgversao,'
      '  cfgmnfe.cfgcestativo,'
      ''
      '  /*SPED*/'
      '  cfgmcfg.crtcodigo,'
      '  cfgmspd.cfgcstterceiros,'
      ''
      '  /*Dados da Empresa*/'
      '  etd.etdapelido,'
      '  etd.etdidentificacao,'
      '  etd.etddoc1,'
      ''
      '  edr.ufscodigo,'
      '  edr.cddcodigo,'
      '  edr.edrinscest,'
      '  edr.edrrua,'
      '  edr.edrnumero,'
      '  edr.edrbairro,'
      '  edr.edrcep,'
      '  cdd.cddnome,'
      '  ufs.ufssigla,'
      ''
      '  etf.etftelefone,'
      '  '
      '  /*Box-e - Dom'#237'nio Sistemas*/'
      '  ctd.ctdboxedominio,'
      '  cfgmensagempdv,'
      '  cfgtrmimpfis1,'
      '  cfgtrmimpfis2,'
      '  cfgtrmtef1,'
      '  cfgtrmtef2,'
      '  cfgimpnfe1,'
      '  cfgimpnfe2,'
      '  cfgimpnfc1,'
      '  cfgimpnfc2,'
      '  cfgimpnfc3,'
      '  cfgservarqnfes,'
      '  cfg.cfgusanfc'
      'FROM cfgmcfg,'
      '     ufs,'
      '     etd,'
      '     cfgmnfe,'
      '     cfgment,'
      '     edr,'
      '     cfg,'
      '     cfgmspd,'
      '     etf,'
      '     cdd,'
      '     cfgmsai,'
      '     ctd'
      'WHERE cfg.cfgcodigo = ctd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      'AND ufs.ufscodigo = edr.ufscodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND etd.etdcodigo = etf.etdcodigo'
      'AND etf.ttfcodigo = 1'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo'
      'AND cfg.flacodigo = :flacodigo')
    Left = 80
    Top = 417
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgnfecfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
      Required = True
    end
    object cfgnfecfgmensagempdv: TStringField
      FieldName = 'cfgmensagempdv'
      Size = 50
    end
    object cfgnfecfgtrmimpfis1: TIntegerField
      FieldName = 'cfgtrmimpfis1'
      Required = True
    end
    object cfgnfecfgtrmimpfis2: TIntegerField
      FieldName = 'cfgtrmimpfis2'
      Required = True
    end
    object cfgnfecfgtrmtef1: TIntegerField
      FieldName = 'cfgtrmtef1'
      Required = True
    end
    object cfgnfecfgtrmtef2: TIntegerField
      FieldName = 'cfgtrmtef2'
      Required = True
    end
    object cfgnfecfgimpnfe1: TIntegerField
      FieldName = 'cfgimpnfe1'
      Required = True
    end
    object cfgnfecfgimpnfe2: TIntegerField
      FieldName = 'cfgimpnfe2'
      Required = True
    end
    object cfgnfecfgimpnfc1: TIntegerField
      FieldName = 'cfgimpnfc1'
      Required = True
    end
    object cfgnfecfgimpnfc2: TIntegerField
      FieldName = 'cfgimpnfc2'
      Required = True
    end
    object cfgnfecfgimpnfc3: TIntegerField
      FieldName = 'cfgimpnfc3'
      Required = True
    end
    object cfgnfecfgservarqnfes: TStringField
      FieldName = 'cfgservarqnfes'
      Size = 100
    end
    object cfgnfecfgnumecertif: TStringField
      FieldName = 'cfgnumecertif'
      Size = 100
    end
    object cfgnfecfgsenhacertificado: TStringField
      FieldName = 'cfgsenhacertificado'
      Size = 50
    end
    object cfgnfecfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
    object cfgnfecfgprouso: TIntegerField
      FieldName = 'cfgprouso'
      Required = True
    end
    object cfgnfecfgtoeusofora: TIntegerField
      FieldName = 'cfgtoeusofora'
      Required = True
    end
    object cfgnfecfgtoeusointe: TIntegerField
      FieldName = 'cfgtoeusointe'
      Required = True
    end
    object cfgnfecfgtoecuffora: TIntegerField
      FieldName = 'cfgtoecuffora'
    end
    object cfgnfecfgtoecufinte: TIntegerField
      FieldName = 'cfgtoecufinte'
    end
    object cfgnfecfgviasnfe: TIntegerField
      FieldName = 'cfgviasnfe'
      Required = True
    end
    object cfgnfecfgnumeronfe: TIntegerField
      FieldName = 'cfgnumeronfe'
      Required = True
    end
    object cfgnfecfgserienfe: TStringField
      FieldName = 'cfgserienfe'
      Size = 5
    end
    object cfgnfecfgobs1: TIntegerField
      FieldName = 'cfgobs1'
      Required = True
    end
    object cfgnfecfgobs2: TIntegerField
      FieldName = 'cfgobs2'
      Required = True
    end
    object cfgnfecfgobs3: TIntegerField
      FieldName = 'cfgobs3'
      Required = True
    end
    object cfgnfecfgobs4: TIntegerField
      FieldName = 'cfgobs4'
      Required = True
    end
    object cfgnfecfgdescrinfe: TIntegerField
      FieldName = 'cfgdescrinfe'
      Required = True
    end
    object cfgnfecfgemailnfe: TStringField
      FieldName = 'cfgemailnfe'
      Size = 50
    end
    object cfgnfecfgemailservidornfe: TStringField
      FieldName = 'cfgemailservidornfe'
      Size = 50
    end
    object cfgnfecfgemailsenhanfe: TStringField
      FieldName = 'cfgemailsenhanfe'
      Size = 50
    end
    object cfgnfecfgmailportnfe: TStringField
      FieldName = 'cfgmailportnfe'
      Required = True
      Size = 5
    end
    object cfgnfecfgemailusatls: TIntegerField
      FieldName = 'cfgemailusatls'
      Required = True
    end
    object cfgnfecrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
      Required = True
    end
    object cfgnfecfgcstterceiros: TStringField
      FieldName = 'cfgcstterceiros'
      Size = 3
    end
    object cfgnfeetdapelido: TStringField
      FieldName = 'etdapelido'
      Size = 100
    end
    object cfgnfeetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
    object cfgnfeetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object cfgnfeufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object cfgnfecddcodigo: TStringField
      FieldName = 'cddcodigo'
      Required = True
      Size = 10
    end
    object cfgnfeedrinscest: TStringField
      FieldName = 'edrinscest'
      Required = True
    end
    object cfgnfeedrrua: TStringField
      FieldName = 'edrrua'
      Required = True
      Size = 50
    end
    object cfgnfeedrnumero: TStringField
      FieldName = 'edrnumero'
      Required = True
      Size = 10
    end
    object cfgnfeedrbairro: TStringField
      FieldName = 'edrbairro'
      Required = True
      Size = 60
    end
    object cfgnfeedrcep: TStringField
      FieldName = 'edrcep'
      Required = True
      Size = 10
    end
    object cfgnfecddnome: TStringField
      FieldName = 'cddnome'
      Required = True
      Size = 50
    end
    object cfgnfeufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
    object cfgnfeetftelefone: TStringField
      FieldName = 'etftelefone'
      Required = True
    end
    object cfgnfectdboxedominio: TStringField
      FieldName = 'ctdboxedominio'
      Size = 200
    end
    object cfgnfecfgmodonfe: TIntegerField
      FieldName = 'cfgmodonfe'
    end
    object cfgnfecfgversao: TStringField
      FieldName = 'cfgversao'
      Size = 15
    end
    object cfgnfecfgcestativo: TIntegerField
      FieldName = 'cfgcestativo'
    end
    object cfgnfecfgtextoemail: TStringField
      FieldName = 'cfgtextoemail'
      Size = 250
    end
    object cfgnfecfgcertificadoa1: TBlobField
      FieldName = 'cfgcertificadoa1'
    end
    object cfgnfecfgsenhacertificadoa1: TStringField
      FieldName = 'cfgsenhacertificadoa1'
      Size = 50
    end
  end
  object saldo: TUniQuery
    Left = 472
    Top = 432
  end
  object clb: TUniQuery
    SQL.Strings = (
      'select clbsalvasaldo from clb where clbcodigo=:clbcodigo')
    Left = 600
    Top = 500
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object clbclbsalvasaldo: TIntegerField
      FieldName = 'clbsalvasaldo'
    end
  end
  object dfe: TUniQuery
    SQL.Strings = (
      'select dfenfexml from dfe where dfechaveacesso=:dfechaveacesso')
    Left = 852
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dfechaveacesso'
        Value = nil
      end>
    object dfedfenfexml: TBlobField
      FieldName = 'dfenfexml'
    end
  end
  object puncusto: TUniQuery
    SQL.Strings = (
      'select * from pun where procodigo=:procodigo')
    Left = 1136
    Top = 313
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object puncustopuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object puncustoprocodigo: TIntegerField
      FieldName = 'procodigo'
      Required = True
    end
    object puncustounicodigo: TIntegerField
      FieldName = 'unicodigo'
      Required = True
    end
    object puncustopunidentificacao: TStringField
      FieldName = 'punidentificacao'
      Required = True
      Size = 30
    end
    object puncustounicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object puncustopunmultiplicador: TFloatField
      FieldName = 'punmultiplicador'
      Required = True
    end
    object puncustopunquantidade: TFloatField
      FieldName = 'punquantidade'
      Required = True
    end
    object puncustopunprecoav: TFloatField
      FieldName = 'punprecoav'
      Required = True
    end
    object puncustopunprecoap: TFloatField
      FieldName = 'punprecoap'
      Required = True
    end
    object puncustopuncusto: TFloatField
      FieldName = 'puncusto'
      Required = True
    end
    object puncustopunmargem: TFloatField
      FieldName = 'punmargem'
      Required = True
    end
    object puncustopunpesobruto: TFloatField
      FieldName = 'punpesobruto'
      Required = True
    end
    object puncustopunpesoliq: TFloatField
      FieldName = 'punpesoliq'
      Required = True
    end
    object puncustodgrcodigo: TIntegerField
      FieldName = 'dgrcodigo'
      Required = True
    end
    object puncustopunbarra: TStringField
      FieldName = 'punbarra'
      Size = 50
    end
    object puncustotuncodigo: TIntegerField
      FieldName = 'tuncodigo'
    end
    object puncustopununitrib: TIntegerField
      FieldName = 'pununitrib'
    end
    object puncustopunqtdtrib: TFloatField
      FieldName = 'punqtdtrib'
    end
    object puncustopunbase: TFloatField
      FieldName = 'punbase'
    end
  end
end
