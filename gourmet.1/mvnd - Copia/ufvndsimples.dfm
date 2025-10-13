inherited fvndsimples: Tfvndsimples
  ActiveControl = etdcodigo
  Caption = 'Sa'#237'da'
  ClientHeight = 741
  ClientWidth = 1170
  ExplicitWidth = 1186
  ExplicitHeight = 780
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 712
    Width = 1170
    ExplicitTop = 712
    ExplicitWidth = 1170
    inherited bconfirma: TBitBtn
      Left = 1016
      ExplicitLeft = 1016
    end
    inherited bcancela: TBitBtn
      Left = 1091
      ExplicitLeft = 1091
    end
    inherited bfechar: TBitBtn
      Left = 951
      ExplicitLeft = 951
    end
    object procodigo: TDBEdit
      Tag = 8
      Left = 718
      Top = 2
      Width = 121
      Height = 21
      CustomHint = BalloonHint
      DataField = 'procodigo'
      DataSource = Dvitm
      TabOrder = 4
      Visible = False
    end
    object mostra: TProgressBar
      Left = 120
      Top = 6
      Width = 577
      Height = 17
      CustomHint = BalloonHint
      TabOrder = 5
      Visible = False
    end
  end
  inherited paginas: TPageControl
    Width = 1170
    Height = 712
    ExplicitWidth = 1170
    ExplicitHeight = 712
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1162
      ExplicitHeight = 684
      object Bvregistro: TBevel
        Left = 0
        Top = 0
        Width = 1162
        Height = 221
        CustomHint = BalloonHint
        Align = alTop
        Shape = bsBottomLine
        Style = bsRaised
        ExplicitTop = 1
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
      object Label6: TLabel
        Left = 8
        Top = 33
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente'
        FocusControl = etdcodigo
      end
      object Label2: TLabel
        Left = 594
        Top = 33
        Width = 92
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Documento'
        FocusControl = tdfcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 142
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Emiss'#227'o'
        FocusControl = mesemissao
      end
      object Label4: TLabel
        Left = 234
        Top = 142
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de Entrada'
        FocusControl = mesregistro
      end
      object Label9: TLabel
        Left = 661
        Top = 115
        Width = 24
        Height = 13
        CustomHint = BalloonHint
        Caption = 'S'#233'rie'
        FocusControl = messerie
      end
      object Label5: TLabel
        Left = 761
        Top = 115
        Width = 37
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'mero'
        FocusControl = mesnumero
      end
      object Label12: TLabel
        Left = 600
        Top = 88
        Width = 85
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado de Origem'
      end
      object Label13: TLabel
        Left = 748
        Top = 87
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado de Destino'
      end
      object Label11: TLabel
        Left = 738
        Top = 142
        Width = 102
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Forma de Pagamento'
        FocusControl = tfpcodigo
      end
      object Label8: TLabel
        Left = 425
        Top = 142
        Width = 113
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Respons'#225'vel pelo Frete'
        FocusControl = refcodigo
      end
      object SpDetalhe: TSplitter
        Left = 0
        Top = 221
        Width = 1162
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alTop
      end
      object Label10: TLabel
        Left = 8
        Top = 87
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CNPJ / CPF'
      end
      object Label14: TLabel
        Left = 363
        Top = 88
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Inscr. Estadual'
      end
      object Label7: TLabel
        Left = 8
        Top = 115
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Opera'#231#227'o'
        FocusControl = toecodigo
      end
      object Label23: TLabel
        Left = 8
        Top = 60
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Endere'#231'o'
        FocusControl = edritem
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
      object etdcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 59
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnEnter = etdcodigoEnter
        OnExit = etdcodigoExit
      end
      object tdfcodigo: TDBEdit
        Left = 692
        Top = 30
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        Color = 16767152
        DataField = 'tdfcodigo'
        DataSource = DSRegistro
        TabOrder = 7
        OnEnter = tdfcodigoEnter
      end
      object mesemissao: TDBEdit
        Left = 136
        Top = 139
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mesemissao'
        DataSource = DSRegistro
        TabOrder = 12
        OnExit = mesemissaoExit
      end
      object mesregistro: TDBEdit
        Left = 318
        Top = 139
        Width = 81
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mesregistro'
        DataSource = DSRegistro
        TabOrder = 13
        OnExit = mesregistroExit
      end
      object messerie: TDBEdit
        Left = 692
        Top = 112
        Width = 31
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'messerie'
        DataSource = DSRegistro
        TabOrder = 10
      end
      object mesnumero: TDBEdit
        Left = 804
        Top = 112
        Width = 71
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        Color = 16767152
        DataField = 'mesnumero'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object PlDetalhe: TPanel
        Left = 0
        Top = 224
        Width = 1162
        Height = 460
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        BorderWidth = 4
        TabOrder = 31
        object PlItens: TPanel
          Left = 4
          Top = 28
          Width = 1154
          Height = 428
          CustomHint = BalloonHint
          Align = alClient
          TabOrder = 0
          object PlObs: TPanel
            Left = 1
            Top = 317
            Width = 1152
            Height = 110
            CustomHint = BalloonHint
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 0
            object PlObsdetalhe: TPanel
              Left = 0
              Top = 0
              Width = 1152
              Height = 110
              CustomHint = BalloonHint
              Align = alClient
              TabOrder = 0
              object PGDetalhes: TPageControl
                Left = 1
                Top = 1
                Width = 1150
                Height = 108
                CustomHint = BalloonHint
                ActivePage = dadostransporte
                Align = alClient
                TabOrder = 0
                object observacoes: TTabSheet
                  CustomHint = BalloonHint
                  Caption = 'Observa'#231#245'es'
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object GBObs: TGroupBox
                    Left = 0
                    Top = 24
                    Width = 1142
                    Height = 56
                    CustomHint = BalloonHint
                    Align = alClient
                    Caption = ' Registros de Observa'#231#245'es '
                    TabOrder = 0
                    object listaobs: TDBGrid
                      Left = 2
                      Top = 15
                      Width = 1138
                      Height = 39
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
                  object Panel2: TPanel
                    Left = 0
                    Top = 0
                    Width = 1142
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
                    TabOrder = 1
                    object bActObsIncluir: TBitBtn
                      Left = 1
                      Top = 1
                      Width = 64
                      Height = 22
                      CustomHint = BalloonHint
                      Action = ActObsIncluir
                      Align = alLeft
                      Caption = 'Incluir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                    end
                    object bActObsAlterar: TBitBtn
                      Left = 65
                      Top = 1
                      Width = 64
                      Height = 22
                      CustomHint = BalloonHint
                      Action = ActObsAlterar
                      Align = alLeft
                      Caption = 'Alterar'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 1
                    end
                    object bActObsExcluir: TBitBtn
                      Left = 129
                      Top = 1
                      Width = 64
                      Height = 22
                      CustomHint = BalloonHint
                      Action = ActObsExcluir
                      Align = alLeft
                      Caption = 'Excluir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 2
                    end
                  end
                end
                object dadostransporte: TTabSheet
                  CustomHint = BalloonHint
                  Caption = 'Dados de Transporte'
                  ImageIndex = 1
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object Label15: TLabel
                    Left = 17
                    Top = 33
                    Width = 69
                    Height = 13
                    CustomHint = BalloonHint
                    Caption = 'Transportador'
                    FocusControl = etdcodigotrans
                  end
                  object Label16: TLabel
                    Left = 650
                    Top = 33
                    Width = 33
                    Height = 13
                    CustomHint = BalloonHint
                    Caption = 'Estado'
                    FocusControl = etdcodigotrans
                  end
                  object Label17: TLabel
                    Left = 766
                    Top = 33
                    Width = 25
                    Height = 13
                    CustomHint = BalloonHint
                    Caption = 'Placa'
                    FocusControl = dtmplaca
                  end
                  object Label18: TLabel
                    Left = 772
                    Top = 60
                    Width = 59
                    Height = 13
                    CustomHint = BalloonHint
                    Caption = 'Peso L'#237'quido'
                    FocusControl = dtmpesoliq
                  end
                  object Label19: TLabel
                    Left = 631
                    Top = 60
                    Width = 52
                    Height = 13
                    CustomHint = BalloonHint
                    Caption = 'Peso Bruto'
                    FocusControl = dtmpesobruto
                  end
                  object Label20: TLabel
                    Left = 413
                    Top = 60
                    Width = 29
                    Height = 13
                    CustomHint = BalloonHint
                    Caption = 'Marca'
                    FocusControl = dtmmarcas
                  end
                  object Label21: TLabel
                    Left = 235
                    Top = 60
                    Width = 36
                    Height = 13
                    CustomHint = BalloonHint
                    Caption = 'Esp'#233'cie'
                    FocusControl = dtmespecie
                  end
                  object Label22: TLabel
                    Left = 17
                    Top = 60
                    Width = 113
                    Height = 13
                    CustomHint = BalloonHint
                    Caption = 'Quantidade de Volumes'
                    FocusControl = dtmvolumes
                  end
                  object Panel7: TPanel
                    Left = 0
                    Top = 0
                    Width = 1142
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
                    object bbActDtmIncluir: TBitBtn
                      Left = 1
                      Top = 1
                      Width = 64
                      Height = 22
                      CustomHint = BalloonHint
                      Action = ActDtmIncluir
                      Align = alLeft
                      Caption = 'Incluir'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clWindowText
                      Font.Height = -11
                      Font.Name = 'Tahoma'
                      Font.Style = []
                      ParentFont = False
                      TabOrder = 0
                    end
                    object bActDtmExcluir: TBitBtn
                      Left = 65
                      Top = 1
                      Width = 64
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
                      TabOrder = 1
                      OnClick = bActDtmExcluirClick
                    end
                  end
                  object etdcodigotrans: TDBEdit
                    Left = 145
                    Top = 30
                    Width = 69
                    Height = 21
                    CustomHint = BalloonHint
                    TabStop = False
                    Color = 16767152
                    DataField = 'etdcodigo'
                    DataSource = Ddtm
                    ReadOnly = True
                    TabOrder = 1
                    OnExit = etdcodigotransExit
                  end
                  object etdidentificacao: TDBEdit
                    Left = 220
                    Top = 30
                    Width = 395
                    Height = 21
                    CustomHint = BalloonHint
                    TabStop = False
                    Color = 16767152
                    DataField = 'etdidentificacao'
                    DataSource = Ddtm
                    ReadOnly = True
                    TabOrder = 2
                    OnExit = etdcodigotransExit
                  end
                  object ufssigla: TDBEdit
                    Left = 696
                    Top = 30
                    Width = 32
                    Height = 21
                    CustomHint = BalloonHint
                    TabStop = False
                    Color = 16767152
                    DataField = 'ufssigla'
                    DataSource = Ddtm
                    ReadOnly = True
                    TabOrder = 3
                    OnExit = etdcodigotransExit
                  end
                  object dtmplaca: TDBEdit
                    Left = 799
                    Top = 30
                    Width = 73
                    Height = 21
                    CustomHint = BalloonHint
                    TabStop = False
                    Color = 16767152
                    DataField = 'dtmplaca'
                    DataSource = Ddtm
                    ReadOnly = True
                    TabOrder = 4
                    OnExit = etdcodigotransExit
                  end
                  object dtmpesoliq: TDBEdit
                    Left = 837
                    Top = 57
                    Width = 64
                    Height = 21
                    CustomHint = BalloonHint
                    TabStop = False
                    Color = 16767152
                    DataField = 'dtmpesoliq'
                    DataSource = Ddtm
                    ReadOnly = True
                    TabOrder = 5
                    OnExit = etdcodigotransExit
                  end
                  object dtmpesobruto: TDBEdit
                    Left = 696
                    Top = 57
                    Width = 64
                    Height = 21
                    CustomHint = BalloonHint
                    TabStop = False
                    Color = 16767152
                    DataField = 'dtmpesobruto'
                    DataSource = Ddtm
                    ReadOnly = True
                    TabOrder = 6
                    OnExit = etdcodigotransExit
                  end
                  object dtmmarcas: TDBEdit
                    Left = 448
                    Top = 57
                    Width = 174
                    Height = 21
                    CustomHint = BalloonHint
                    TabStop = False
                    Color = 16767152
                    DataField = 'dtmmarcas'
                    DataSource = Ddtm
                    ReadOnly = True
                    TabOrder = 7
                    OnExit = etdcodigotransExit
                  end
                  object dtmespecie: TDBEdit
                    Left = 277
                    Top = 57
                    Width = 128
                    Height = 21
                    CustomHint = BalloonHint
                    TabStop = False
                    Color = 16767152
                    DataField = 'dtmespecie'
                    DataSource = Ddtm
                    ReadOnly = True
                    TabOrder = 8
                    OnExit = etdcodigotransExit
                  end
                  object dtmvolumes: TDBEdit
                    Left = 145
                    Top = 57
                    Width = 69
                    Height = 21
                    CustomHint = BalloonHint
                    TabStop = False
                    Color = 16767152
                    DataField = 'dtmvolumes'
                    DataSource = Ddtm
                    ReadOnly = True
                    TabOrder = 9
                    OnExit = etdcodigotransExit
                  end
                end
                object TSDocumentoRef: TTabSheet
                  CustomHint = BalloonHint
                  Caption = 'Documento Referenciado'
                  ImageIndex = 2
                  ExplicitLeft = 0
                  ExplicitTop = 0
                  ExplicitWidth = 0
                  ExplicitHeight = 0
                  object Panel1: TPanel
                    Left = 0
                    Top = 0
                    Width = 1142
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
                    object bDFRAlterar: TBitBtn
                      Left = 65
                      Top = 1
                      Width = 64
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
                      TabOrder = 0
                      OnClick = bDFRAlterarClick
                    end
                    object bDRFIncluir: TBitBtn
                      Left = 1
                      Top = 1
                      Width = 64
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
                      TabOrder = 1
                      OnClick = bDRFIncluirClick
                    end
                    object bDRFExcluir: TBitBtn
                      Left = 129
                      Top = 1
                      Width = 64
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
                      OnClick = bDRFExcluirClick
                    end
                  end
                  object DBGrid1: TDBGrid
                    Left = 0
                    Top = 24
                    Width = 1142
                    Height = 56
                    CustomHint = BalloonHint
                    Align = alClient
                    DataSource = DSdfr
                    DrawingStyle = gdsGradient
                    Options = [dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
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
                        FieldName = 'tdfidentificacao'
                        Width = 200
                        Visible = True
                      end
                      item
                        Expanded = False
                        FieldName = 'dfrdocumento'
                        Visible = True
                      end>
                  end
                end
              end
            end
          end
          object listaitens: TDBGrid
            Left = 1
            Top = 1
            Width = 1152
            Height = 316
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
                FieldName = 'cfocfop'
                Title.Caption = 'CFOP'
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
                Width = 182
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'toeidentificacao'
                Title.Caption = 'Destina'#231#227'o'
                Width = 230
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
                FieldName = 'itmvalor'
                Title.Caption = 'Valor'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotal'
                Title.Caption = 'Total'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmdesconto'
                Title.Caption = 'Desc. R$'
                Width = 68
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmtotalbru'
                Title.Caption = 'Total Liq.'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmaliqipi'
                Title.Caption = '% IPI'
                Width = 35
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'itmipi'
                Title.Caption = 'Vlr IPI R$'
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
                Width = 45
                Visible = True
              end>
          end
        end
        object plbotoesitens: TPanel
          Left = 4
          Top = 4
          Width = 1154
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
          TabOrder = 1
          object BActIncluir: TBitBtn
            Left = 1
            Top = 1
            Width = 46
            Height = 22
            CustomHint = BalloonHint
            Action = ActIncluir
            Align = alLeft
            Caption = 'Incluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object BActAlterar: TBitBtn
            Left = 47
            Top = 1
            Width = 46
            Height = 22
            CustomHint = BalloonHint
            Action = ActAlterar
            Align = alLeft
            Caption = 'Alterar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object BActEcluir: TBitBtn
            Left = 93
            Top = 1
            Width = 46
            Height = 22
            CustomHint = BalloonHint
            Action = ActExcluir
            Align = alLeft
            Caption = 'Excluir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object bdescontonoitem: TBitBtn
            Left = 139
            Top = 1
            Width = 97
            Height = 22
            CustomHint = BalloonHint
            Action = ActDescontoNoItem
            Align = alLeft
            Caption = 'Desconto No Item'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object bdescontogeral: TBitBtn
            Left = 236
            Top = 1
            Width = 84
            Height = 22
            CustomHint = BalloonHint
            Action = ActDescontoNoTotal
            Align = alLeft
            Caption = 'Desconto Total'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
          object bimportaritens: TBitBtn
            Left = 376
            Top = 1
            Width = 82
            Height = 22
            CustomHint = BalloonHint
            Action = ActImportarItens
            Align = alLeft
            Caption = 'Importar Itens'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
          end
          object bactAFaturar: TBitBtn
            Left = 320
            Top = 1
            Width = 56
            Height = 22
            CustomHint = BalloonHint
            Action = ActAFaturar
            Align = alLeft
            Caption = 'A Faturar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 6
            Visible = False
          end
          object plTotalServicos: TPanel
            Left = 612
            Top = 1
            Width = 149
            Height = 22
            CustomHint = BalloonHint
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 1
            Caption = ' Servi'#231'os R$'
            Color = 5356845
            ParentBackground = False
            TabOrder = 7
            object plValTotServicos: TPanel
              Left = 76
              Top = 1
              Width = 72
              Height = 20
              CustomHint = BalloonHint
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              Caption = '0,00'
              Color = 5356845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object plTotalProdutos: TPanel
            Left = 458
            Top = 1
            Width = 154
            Height = 22
            CustomHint = BalloonHint
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 1
            Caption = '  Produtos R$'
            Color = 5356845
            ParentBackground = False
            TabOrder = 8
            object plValTotProdutos: TPanel
              Left = 81
              Top = 1
              Width = 72
              Height = 20
              CustomHint = BalloonHint
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              Caption = '0,00'
              Color = 5356845
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object plImortaAtendimento: TPanel
            Left = 761
            Top = 1
            Width = 250
            Height = 22
            CustomHint = BalloonHint
            Align = alLeft
            Alignment = taLeftJustify
            BevelOuter = bvNone
            Caption = ' Atend. Nr:'
            Color = 5356845
            ParentBackground = False
            TabOrder = 9
            object btImportaOracmento: TButton
              Left = 124
              Top = 0
              Width = 58
              Height = 22
              CustomHint = BalloonHint
              Align = alRight
              Caption = 'Refaturar'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
              OnClick = btImportaOracmentoClick
            end
            object edOrcChave: TEdit
              Left = 64
              Top = 0
              Width = 60
              Height = 22
              CustomHint = BalloonHint
              Align = alRight
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clMaroon
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              OnKeyPress = edOrcChaveKeyPress
              ExplicitHeight = 21
            end
            object btClonarItens: TButton
              Left = 182
              Top = 0
              Width = 68
              Height = 22
              CustomHint = BalloonHint
              Align = alRight
              Caption = 'Clonar Itens'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
              Visible = False
              OnClick = btClonarItensClick
            end
          end
          object btAVista: TButton
            Left = 1011
            Top = 1
            Width = 55
            Height = 22
            CustomHint = BalloonHint
            Align = alLeft
            Caption = 'A Vista'
            TabOrder = 10
            OnClick = btAVistaClick
          end
          object btAPrazo: TButton
            Left = 1066
            Top = 1
            Width = 55
            Height = 22
            CustomHint = BalloonHint
            Align = alLeft
            Caption = 'A Prazo'
            TabOrder = 11
            OnClick = btAPrazoClick
          end
        end
      end
      object refcodigo: TDBEdit
        Left = 545
        Top = 139
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'refcodigo'
        DataSource = DSRegistro
        TabOrder = 14
      end
      object tfpcodigo: TDBEdit
        Left = 846
        Top = 139
        Width = 29
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tfpcodigo'
        DataSource = DSRegistro
        TabOrder = 15
        OnEnter = tfpcodigoEnter
      end
      object pletddoc1: TPanel
        Left = 136
        Top = 84
        Width = 145
        Height = 22
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Color = 16767152
        ParentBackground = False
        TabOrder = 2
      end
      object PlTedcodigo: TPanel
        Left = 280
        Top = 84
        Width = 25
        Height = 22
        CustomHint = BalloonHint
        Caption = '0'
        TabOrder = 3
      end
      object plinsc: TPanel
        Left = 441
        Top = 84
        Width = 133
        Height = 22
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        Color = 16767152
        ParentBackground = False
        TabOrder = 4
      end
      object toecodigo: TDBEdit
        Left = 136
        Top = 112
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'toecodigo'
        DataSource = DSRegistro
        TabOrder = 9
        OnEnter = toecodigoEnter
        OnExit = toecodigoExit
      end
      object Panel5: TPanel
        Left = 691
        Top = 83
        Width = 32
        Height = 22
        CustomHint = BalloonHint
        BevelOuter = bvLowered
        Color = 16767152
        ParentBackground = False
        TabOrder = 5
        object ufssiglaetd: TDBText
          Left = 1
          Top = 4
          Width = 30
          Height = 17
          CustomHint = BalloonHint
          Align = alBottom
          Alignment = taCenter
          DataField = 'ufssigla'
          DataSource = Dufs
        end
      end
      object Panel6: TPanel
        Left = 843
        Top = 83
        Width = 32
        Height = 22
        CustomHint = BalloonHint
        BevelOuter = bvLowered
        Color = 16767152
        ParentBackground = False
        TabOrder = 6
        object ufssiglacfg: TDBText
          Left = 1
          Top = 4
          Width = 30
          Height = 17
          CustomHint = BalloonHint
          Align = alBottom
          Alignment = taCenter
          DataField = 'ufssigla'
          DataSource = Dcfg
        end
      end
      object GBTotalBruto: TGroupBox
        Left = 350
        Top = 168
        Width = 131
        Height = 38
        CustomHint = BalloonHint
        Caption = ' Total Produtos R$ '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 16
        object mesvalor: TDBEdit
          Left = 2
          Top = 15
          Width = 127
          Height = 21
          CustomHint = BalloonHint
          Align = alClient
          Ctl3D = True
          DataField = 'mesvalor'
          DataSource = DSRegistro
          ParentCtl3D = False
          TabOrder = 0
          OnExit = mesvalorExit
        end
      end
      object GBValorICMST: TGroupBox
        Left = 268
        Top = 168
        Width = 82
        Height = 38
        CustomHint = BalloonHint
        Caption = ' ICMS ST R$ '
        TabOrder = 17
        object mesicms: TDBEdit
          Left = 2
          Top = 15
          Width = 78
          Height = 21
          CustomHint = BalloonHint
          Align = alClient
          Ctl3D = True
          DataField = 'mesicms'
          DataSource = DSRegistro
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object GBBaseICMST: TGroupBox
        Left = 168
        Top = 168
        Width = 100
        Height = 38
        CustomHint = BalloonHint
        Caption = ' Base ICMS ST R$ '
        TabOrder = 18
        object mesbicms: TDBEdit
          Left = 2
          Top = 15
          Width = 96
          Height = 21
          CustomHint = BalloonHint
          Align = alClient
          Ctl3D = True
          DataField = 'mesbicms'
          DataSource = DSRegistro
          ParentCtl3D = False
          TabOrder = 0
          OnExit = mesbicmsExit
        end
      end
      object GBValorICM: TGroupBox
        Left = 90
        Top = 168
        Width = 78
        Height = 38
        CustomHint = BalloonHint
        Caption = ' ICMS R$ '
        TabOrder = 19
        object mesicm: TDBEdit
          Left = 2
          Top = 15
          Width = 74
          Height = 21
          CustomHint = BalloonHint
          Align = alClient
          Ctl3D = True
          DataField = 'mesicm'
          DataSource = DSRegistro
          ParentCtl3D = False
          TabOrder = 0
          OnExit = mesicmExit
        end
      end
      object GBBaseICM: TGroupBox
        Left = 4
        Top = 168
        Width = 90
        Height = 38
        CustomHint = BalloonHint
        Caption = ' Base ICMS R$ '
        TabOrder = 20
        object mesbicm: TDBEdit
          Left = 2
          Top = 15
          Width = 86
          Height = 21
          CustomHint = BalloonHint
          Align = alClient
          Ctl3D = True
          DataField = 'mesbicm'
          DataSource = DSRegistro
          ParentCtl3D = False
          TabOrder = 0
          OnExit = mesbicmExit
        end
      end
      object GBDesconto: TGroupBox
        Left = 492
        Top = 168
        Width = 70
        Height = 38
        CustomHint = BalloonHint
        Caption = ' Desc. R$ '
        TabOrder = 21
        object mesdesconto: TDBEdit
          Left = 2
          Top = 15
          Width = 66
          Height = 21
          CustomHint = BalloonHint
          Align = alClient
          Ctl3D = True
          DataField = 'mesdesconto'
          DataSource = DSRegistro
          ParentCtl3D = False
          TabOrder = 0
          OnExit = mesdescontoExit
        end
      end
      object GBFrete: TGroupBox
        Left = 558
        Top = 168
        Width = 70
        Height = 38
        CustomHint = BalloonHint
        Caption = ' Frete R$ '
        TabOrder = 22
      end
      object GBSeguro: TGroupBox
        Left = 628
        Top = 168
        Width = 65
        Height = 38
        CustomHint = BalloonHint
        Caption = ' Seguro R$ '
        TabOrder = 24
      end
      object GBOutras: TGroupBox
        Left = 693
        Top = 168
        Width = 65
        Height = 38
        CustomHint = BalloonHint
        Caption = ' Outras  R$ '
        TabOrder = 26
      end
      object GBIPI: TGroupBox
        Left = 758
        Top = 168
        Width = 60
        Height = 38
        CustomHint = BalloonHint
        Caption = ' IPI R$ '
        TabOrder = 28
        object mesipi: TDBEdit
          Left = 2
          Top = 15
          Width = 56
          Height = 21
          CustomHint = BalloonHint
          Align = alClient
          Ctl3D = True
          DataField = 'mesipi'
          DataSource = DSRegistro
          ParentCtl3D = False
          TabOrder = 0
          OnExit = mesipiExit
        end
      end
      object GBTotalLiquido: TGroupBox
        Left = 818
        Top = 168
        Width = 106
        Height = 38
        CustomHint = BalloonHint
        Caption = 'Total da Nota R$  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 29
        object mestotal: TDBEdit
          Left = 2
          Top = 15
          Width = 102
          Height = 21
          CustomHint = BalloonHint
          Align = alClient
          Ctl3D = True
          DataField = 'mestotal'
          DataSource = DSRegistro
          ParentCtl3D = False
          TabOrder = 0
        end
      end
      object bvalidar: TButton
        Left = 947
        Top = 183
        Width = 45
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 30
        Visible = False
        OnClick = bvalidarClick
      end
      object mesfrete: TDBEdit
        Left = 559
        Top = 183
        Width = 66
        Height = 21
        CustomHint = BalloonHint
        Ctl3D = True
        DataField = 'mesfrete'
        DataSource = DSRegistro
        ParentCtl3D = False
        TabOrder = 23
        OnExit = mesfreteExit
      end
      object messeguro: TDBEdit
        Left = 630
        Top = 183
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        Ctl3D = True
        DataField = 'messeguro'
        DataSource = DSRegistro
        ParentCtl3D = False
        TabOrder = 25
      end
      object mesoutras: TDBEdit
        Left = 695
        Top = 183
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        Ctl3D = True
        DataField = 'mesoutras'
        DataSource = DSRegistro
        ParentCtl3D = False
        TabOrder = 27
        OnExit = mesoutrasExit
      end
      object edritem: TDBEdit
        Left = 136
        Top = 57
        Width = 32
        Height = 21
        CustomHint = BalloonHint
        DataField = 'edritem'
        DataSource = DSRegistro
        TabOrder = 8
        OnEnter = edritemEnter
        OnExit = edritemExit
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.04.09.001-04'
  end
  inherited DSRegistro: TUniDataSource
    Top = 284
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ufs.ufssigla,'
      '  etd.etddoc1,'
      ''
      '  cfgmcfg.cfgetdempresa,'
      '  cfgmcfg.crtcodigo,'
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
      '  cfgment.cfgtoeusointe'
      'FROM cfgmcfg,'
      '     ufs,'
      '     etd,'
      '     cfgmnfe,'
      '     cfgment,'
      '     edr,'
      '     cfg'
      'WHERE ufs.ufscodigo = edr.ufscodigo AND'
      'cfg.cfgcodigo = cfgmcfg.cfgcodigo AND'
      'cfg.cfgcodigo = cfgment.cfgcodigo AND'
      'cfg.cfgcodigo = cfgmnfe.cfgcodigo AND'
      'etd.etdcodigo = cfgmcfg.cfgetdempresa AND'
      'etd.etdcodigo = edr.etdcodigo AND'
      'edr.tedcodigo = 1')
    Left = 256
    Top = 396
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
    object cfgcrtcodigo: TIntegerField
      FieldName = 'crtcodigo'
    end
  end
  inherited consulta: TUniQuery
    Left = 284
    Top = 336
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
    Left = 200
    Top = 328
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
      DisplayWidth = 45
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 45
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
      DisplayLabel = 'Tipo de Documento'
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object registrotdfidentificacao: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'tdfidentificacao'
      LookupDataSet = tdf
      LookupKeyFields = 'tdfcodigo'
      LookupResultField = 'tdfidentificacao'
      KeyFields = 'tdfcodigo'
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
    object registrotoeidentificacao: TStringField
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'toeidentificacao'
      LookupDataSet = toe
      LookupKeyFields = 'toecodigo'
      LookupResultField = 'toeidentificacao'
      KeyFields = 'toecodigo'
      Size = 50
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
    object registrotfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
      Required = True
    end
    object registrotfpidentificacao: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'tfpidentificacao'
      LookupDataSet = tfp
      LookupKeyFields = 'tfpcodigo'
      LookupResultField = 'tfpidentificacao'
      KeyFields = 'tfpcodigo'
      Size = 10
      Lookup = True
    end
    object registrorefcodigo: TIntegerField
      FieldName = 'refcodigo'
      Required = True
    end
    object registrorefidentificacao: TStringField
      DisplayWidth = 10
      FieldKind = fkLookup
      FieldName = 'refidentificacao'
      LookupDataSet = ref
      LookupKeyFields = 'refcodigo'
      LookupResultField = 'refidentificacao'
      KeyFields = 'refcodigo'
      Size = 10
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
    object registroedrrua: TStringField
      FieldKind = fkLookup
      FieldName = 'edrrua'
      LookupDataSet = edr
      LookupKeyFields = 'edritem'
      LookupResultField = 'edrrua'
      KeyFields = 'edritem'
      Size = 60
      Lookup = True
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
  inherited dcp: TUniQuery
    Left = 428
    Top = 65528
  end
  inherited dtb: TUniQuery
    Left = 348
    Top = 65532
  end
  inherited coa: TUniQuery
    Left = 608
    Top = 65516
  end
  inherited pfr: TUniQuery
    Left = 228
    Top = 452
  end
  inherited psf: TUniQuery
    Left = 228
    Top = 396
  end
  inherited dcl: TUniQuery
    Left = 412
    Top = 388
  end
  object Detd: TUniDataSource [14]
    DataSet = etd
    Left = 992
    Top = 28
  end
  object etv: TUniQuery [15]
    SQL.Strings = (
      'select * from etv')
    MasterSource = DSRegistro
    MasterFields = 'etdcodigo'
    DetailFields = 'etdcodigo'
    Left = 1028
    Top = 28
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
  end
  object edr: TUniQuery [16]
    SQL.Strings = (
      'select * from edr')
    Left = 1056
    Top = 28
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
    object edredritem: TIntegerField
      FieldName = 'edritem'
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
  end
  object mfi: TUniQuery [17]
    SQL.Strings = (
      'select * from mfi')
    Left = 1092
    Top = 40
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
  object pro: TUniQuery [18]
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 1124
    Top = 40
    object proprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
  end
  object pun: TUniQuery [19]
    SQL.Strings = (
      'select * from pun')
    Left = 1128
    Top = 88
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
  end
  object etd: TUniQuery [20]
    SQL.Strings = (
      'select * from etd')
    Left = 992
    Top = 72
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
  object ete: TUniQuery [21]
    SQL.Strings = (
      'select * from ete')
    MasterSource = DSRegistro
    MasterFields = 'etdcodigo'
    DetailFields = 'etdcodigo'
    Left = 1024
    Top = 72
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
  object etf: TUniQuery [22]
    SQL.Strings = (
      'select * from etf')
    MasterSource = DSRegistro
    MasterFields = 'etdcodigo'
    DetailFields = 'etdcodigo'
    Left = 1056
    Top = 72
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
  object Dbuscapro: TUniDataSource [23]
    DataSet = buscapro
    Left = 744
    Top = 308
  end
  object buscapro: TUniQuery [24]
    Left = 600
    Top = 348
  end
  object probusca: TUniQuery [25]
    SQL.Strings = (
      'select procodigo, pronome from pro order by pronome')
    Left = 744
    Top = 408
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
  object Dcfg: TUniDataSource [26]
    DataSet = cfg
    Left = 812
    Top = 384
  end
  object toe: TUniQuery [27]
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
  object tdf: TUniQuery [28]
    SQL.Strings = (
      'select tdfcodigo, tdfidentificacao from tdf')
    Left = 472
    Top = 372
    object tdftdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object tdftdfidentificacao: TStringField
      FieldName = 'tdfidentificacao'
      Size = 30
    end
  end
  object ufs: TUniQuery [29]
    SQL.Strings = (
      'Select ufs.ufssigla, edr.tedcodigo, etd.etdcodigo'
      'From cdd Inner Join'
      '  ufs On ufs.ufscodigo = cdd.ufscodigo Inner Join'
      '  edr On cdd.cddcodigo = edr.cddcodigo Inner Join'
      '  etd On etd.etdcodigo = edr.etdcodigo'
      'Where edr.tedcodigo = 1  and'
      'etd.etdcodigo=:etdcodigo')
    Left = 528
    Top = 376
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
  object Dtom: TUniDataSource [30]
    DataSet = tom
    Left = 405
    Top = 536
  end
  object tom: TUniQuery [31]
    SQL.Strings = (
      'SELECT tom.tomchave'
      '     , tom.tofcodigo'
      '     , tof.tofidentificacao'
      '     , tom.meschave'
      'FROM tom'
      '  JOIN tof'
      '    ON tom.tofcodigo = tof.tofcodigo'
      '  LEFT JOIN cfgmnfe'
      '    ON (tof.tofcodigo = cfgmnfe.cfgobs1'
      '    OR tof.tofcodigo = cfgmnfe.cfgobs2'
      '    OR tof.tofcodigo = cfgmnfe.cfgobs3'
      '    OR tof.tofcodigo = cfgmnfe.cfgobs4)'
      'WHERE cfgmnfe.cfgcodigo IS NULL')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 404
    Top = 488
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
  object MenuObs: TPopupMenu [32]
    Left = 616
    Top = 416
    object Incluir2: TMenuItem
    end
    object Excluir2: TMenuItem
    end
  end
  object MenuItens: TPopupMenu [33]
    Left = 896
    Top = 456
    object Incluir1: TMenuItem
    end
    object Alterar1: TMenuItem
    end
    object Excluir1: TMenuItem
    end
  end
  object rfm: TUniQuery [34]
    SQL.Strings = (
      'select * from rfm')
    Left = 940
    Top = 96
    object rfmrfmchave: TIntegerField
      FieldName = 'rfmchave'
    end
    object rfmrfichave: TIntegerField
      FieldName = 'rfichave'
      Required = True
    end
    object rfmmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
  end
  object rfi: TUniQuery [35]
    SQL.Strings = (
      'select * from rfi')
    Left = 940
    Top = 36
    object rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object rfietdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object rfirfitipo: TStringField
      FieldName = 'rfitipo'
      Required = True
      FixedChar = True
      Size = 1
    end
    object rfitficodigo: TIntegerField
      FieldName = 'tficodigo'
      Required = True
    end
    object rfibcocodigo: TStringField
      FieldName = 'bcocodigo'
      Required = True
      Size = 3
    end
    object rficarcodigo: TIntegerField
      FieldName = 'carcodigo'
      Required = True
    end
    object rfirfiemissao: TDateField
      FieldName = 'rfiemissao'
      Required = True
    end
    object rfirfivencimento: TDateField
      FieldName = 'rfivencimento'
      Required = True
    end
    object rfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      FieldName = 'rfivalor'
    end
    object rfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 150
    end
  end
  object ftr: TUniQuery [36]
    SQL.Strings = (
      'select * from ftr')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 812
    Top = 65524
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object ftrftrchave: TIntegerField
      FieldName = 'ftrchave'
    end
    object ftrftremitente: TStringField
      FieldName = 'ftremitente'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ftrmeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object ftrtficodigo: TIntegerField
      FieldName = 'tficodigo'
      Required = True
    end
    object ftrftrdescricao: TStringField
      FieldName = 'ftrdescricao'
      Size = 100
    end
    object ftrftrnumero: TStringField
      FieldName = 'ftrnumero'
    end
    object ftrftrparcelas: TIntegerField
      FieldName = 'ftrparcelas'
      Required = True
    end
    object ftrftrtotal: TFloatField
      FieldName = 'ftrtotal'
      Required = True
    end
    object ftrrfichave: TIntegerField
      FieldName = 'rfichave'
      Required = True
    end
  end
  object uni: TUniQuery [37]
    SQL.Strings = (
      'select unicodigo, unisimbolo,uninome from uni')
    Left = 764
    Top = 65532
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
  object icm: TUniQuery [38]
    SQL.Strings = (
      'select * from icm')
    Left = 676
    Top = 65532
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
  object Dvitm: TUniDataSource [39]
    DataSet = itm
    Left = 300
    Top = 508
  end
  object itm: TUniQuery [40]
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
    BeforeOpen = itmBeforeOpen
    OnCalcFields = itmCalcFields
    Left = 300
    Top = 456
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
    end
    object itmitmipi: TFloatField
      FieldName = 'itmipi'
      Required = True
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
  object acoes: TActionList [41]
    OnExecute = acoesExecute
    Left = 352
    Top = 304
    object ActIncluir: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Incluir'
      ImageIndex = 4
      ShortCut = 45
      OnExecute = ActIncluirExecute
    end
    object ActImportarItens: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Importar Itens'
      OnExecute = ActImportarItensExecute
    end
    object ActAFaturar: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'A Faturar'
    end
    object ActAlterar: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Alterar'
      ImageIndex = 0
      ShortCut = 16429
      OnExecute = ActAlterarExecute
    end
    object ActExcluir: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Excluir'
      ImageIndex = 2
      ShortCut = 46
      OnExecute = ActExcluirExecute
    end
    object ActDescontoNoItem: TAction
      Category = 'Descontos'
      Caption = 'Desconto No Item'
      OnExecute = ActDescontoNoItemExecute
    end
    object ActDescontoNoTotal: TAction
      Category = 'Descontos'
      Caption = 'Desconto Total'
      OnExecute = ActDescontoNoTotalExecute
    end
    object ActObsIncluir: TAction
      Category = 'Observa'#231#245'es'
      Caption = 'Incluir'
      OnExecute = ActObsIncluirExecute
    end
    object ActObsAlterar: TAction
      Category = 'Observa'#231#245'es'
      Caption = 'Alterar'
      OnExecute = ActObsAlterarExecute
    end
    object ActObsExcluir: TAction
      Category = 'Observa'#231#245'es'
      Caption = 'Excluir'
      OnExecute = ActObsExcluirExecute
    end
    object ActDtmIncluir: TAction
      Category = 'Transporte'
      Caption = 'Incluir'
      OnExecute = ActDtmIncluirExecute
    end
    object ActDtmExcluir: TAction
      Category = 'Transporte'
      Caption = 'Excluir'
      OnExecute = ActDtmExcluirExecute
    end
  end
  object dtm: TUniQuery [42]
    SQL.Strings = (
      'SELECT dtm.dtmchave'
      '     , dtm.dtmplaca'
      '     , dtm.dtmvolumes'
      '     , dtm.dtmpesobruto'
      '     , dtm.dtmpesoliq'
      '     , dtm.meschave'
      '     , dtm.etdcodigo'
      '     , edr.edrrua'
      '     , cdd.cddnome'
      '     , ufs.ufssigla'
      '     , edr.edrinscest'
      '     , etd.etddoc1'
      '     , etd.etdidentificacao'
      '     , dtm.dtmespecie'
      '     , dtm.dtmmarcas'
      '     , cdd.ufscodigo'
      '  FROM dtm'
      ' INNER JOIN etd ON dtm.etdcodigo = etd.etdcodigo'
      ' INNER JOIN edr ON etd.etdcodigo = edr.etdcodigo'
      '               AND edr.tedcodigo = 1 -- Endere'#231'o Principal'
      ' INNER JOIN cdd ON edr.cddcodigo = cdd.cddcodigo'
      ' INNER JOIN ufs ON cdd.ufscodigo = ufs.ufscodigo')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 840
    Top = 524
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
      EditMask = '!LLL-9999;0;_'
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
  object ref: TUniQuery [43]
    SQL.Strings = (
      'select refcodigo, refidentificacao from ref')
    Left = 664
    Top = 328
    object refrefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object refrefidentificacao: TStringField
      FieldName = 'refidentificacao'
      Size = 30
    end
  end
  object tfp: TUniQuery [44]
    SQL.Strings = (
      'select tfpcodigo, tfpidentificacao from tfp')
    Left = 800
    Top = 440
    object tfptfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object tfptfpidentificacao: TStringField
      FieldName = 'tfpidentificacao'
      Size = 30
    end
  end
  object Dufs: TUniDataSource [45]
    DataSet = ufs
    Left = 528
    Top = 424
  end
  object ACBrValidador: TACBrValidador [46]
    IgnorarChar = './-'
    Left = 876
    Top = 4
  end
  object spd: TUniQuery [47]
    SQL.Strings = (
      'select * from spd where spdativo=1')
    Left = 692
    Top = 476
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
  object Ddtm: TUniDataSource [48]
    DataSet = dtm
    Left = 808
    Top = 528
  end
  inherited err: TUniQuery
    Left = 616
    Top = 468
  end
  inherited BalloonHint: TBalloonHint
    Left = 88
    Top = 356
  end
  inherited ImgBusca: TPngImageList
    Left = 532
    Top = 65528
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 676
    Top = 396
  end
  object OpenDialog: TOpenDialog
    Left = 912
    Top = 384
  end
  object iitm: TUniQuery
    SQL.Strings = (
      
        'select itmchave,meschave,itmitem,procodigo,cstcodigo,itmdesccomp' +
        'le,itmquantidade,'
      
        'itmvalor,itmdesconto,itmmovifisico,toecodigo,cfocfop,itmbicm,icm' +
        'codigo,itmaliqicm,itmicm,'
      
        'itmbicms,itmaliqicms,itmicms,itmapuipi,csicodigo,ceicodigo,itmbi' +
        'pi,itmaliqipi,itmipi,puncodigo,itmcontendo,'
      
        'cspcodigo,itmbpis,itmaliqpis,itmquantpis,itmaliqpisvalor,itmpis,' +
        'csfcodigo,itmbcofins,itmaliqcofins,unicodigobase,cfocfopdestinac' +
        'ao,'
      
        'itmquantcofins,itmaliqcofinsvalor,itmcofins,pcccodigo,itmtotal,u' +
        'nicodigo from itm where meschave=:meschave')
    Left = 560
    Top = 504
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object iitmmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object iitmitmitem: TIntegerField
      FieldName = 'itmitem'
    end
    object iitmprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object iitmitmquantidade: TFloatField
      FieldName = 'itmquantidade'
    end
    object iitmitmvalor: TFloatField
      FieldName = 'itmvalor'
    end
    object iitmitmdesconto: TFloatField
      FieldName = 'itmdesconto'
    end
    object iitmitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
    end
    object iitmitmicms: TFloatField
      FieldName = 'itmicms'
    end
    object iitmitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
    end
    object iitmitmipi: TFloatField
      FieldName = 'itmipi'
    end
    object iitmitmbicm: TFloatField
      FieldName = 'itmbicm'
    end
    object iitmitmbicms: TFloatField
      FieldName = 'itmbicms'
    end
    object iitmcstcodigo: TStringField
      FieldName = 'cstcodigo'
      Size = 3
    end
    object iitmicmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object iitmtoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object iitmitmtotal: TFloatField
      FieldName = 'itmtotal'
    end
    object iitmitmcontendo: TFloatField
      FieldName = 'itmcontendo'
    end
    object iitmunicodigo: TIntegerField
      FieldName = 'unicodigo'
    end
    object iitmitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Size = 5
    end
    object iitmitmicm: TFloatField
      FieldName = 'itmicm'
    end
    object iitmcsicodigo: TStringField
      FieldName = 'csicodigo'
      Size = 2
    end
    object iitmitmcofins: TFloatField
      FieldName = 'itmcofins'
    end
    object iitmitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
    end
    object iitmitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
    end
    object iitmitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
    end
    object iitmitmbcofins: TFloatField
      FieldName = 'itmbcofins'
    end
    object iitmcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Size = 3
    end
    object iitmitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object iitmitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
    end
    object iitmitmquantpis: TFloatField
      FieldName = 'itmquantpis'
    end
    object iitmitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
    end
    object iitmitmbpis: TFloatField
      FieldName = 'itmbpis'
    end
    object iitmcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Size = 3
    end
    object iitmpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Size = 50
    end
    object iitmcfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
    object iitmpuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object iitmunicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object iitmitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      Size = 1
    end
    object iitmitmapuipi: TStringField
      FieldName = 'itmapuipi'
      Size = 1
    end
    object iitmceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 3
    end
    object iitmcfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
  end
  object itmfat: TUniQuery
    SQL.Strings = (
      'select * from itm where meschave=:meschave')
    Left = 976
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmfatitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'itmchave'
    end
    object itmfatmeschave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'meschave'
      Required = True
    end
    object itmfatitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
      Required = True
    end
    object itmfatprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object itmfatunicodigo: TIntegerField
      DisplayLabel = 'Unidade de Compra'
      FieldName = 'unicodigo'
      Required = True
    end
    object itmfatcstcodigo: TStringField
      DisplayLabel = 'C'#243'digo CST'
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object itmfatitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object itmfatitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmfatitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfatitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfatitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmfattoecodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object itmfatcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object itmfatitmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfaticmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmfatitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmfatitmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfatitmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfatitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmfatitmicms: TFloatField
      DisplayLabel = 'Percentual ICMS Subst R$'
      FieldName = 'itmicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfatitmapuipi: TStringField
      FieldName = 'itmapuipi'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmfatcsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object itmfatceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmfatitmbipi: TFloatField
      FieldName = 'itmbipi'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfatpuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
    object itmfatitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmfatitmipi: TFloatField
      DisplayLabel = 'Percentual de IPI'
      FieldName = 'itmipi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmfatcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmfatitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmfatitmbpis: TFloatField
      FieldName = 'itmbpis'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfatitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmfatitmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmfatitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmfatcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmfatitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfatitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmfatitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmfatitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmfatitmcofins: TFloatField
      FieldName = 'itmcofins'
      Required = True
    end
    object itmfatpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object itmfatitmtotal: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmfatunicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object itmfatcfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmfatitmcontendo: TFloatField
      FieldName = 'itmcontendo'
    end
  end
  object itmref: TUniQuery
    SQL.Strings = (
      'select * from itm where meschave=:meschave')
    AfterInsert = itmrefAfterInsert
    Left = 1024
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmrefitmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'itmchave'
    end
    object itmrefmeschave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'meschave'
      Required = True
    end
    object itmrefitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
      Required = True
    end
    object itmrefprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo do Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object itmrefunicodigo: TIntegerField
      DisplayLabel = 'Unidade de Compra'
      FieldName = 'unicodigo'
      Required = True
    end
    object itmrefcstcodigo: TStringField
      DisplayLabel = 'C'#243'digo CST'
      FieldName = 'cstcodigo'
      Required = True
      Size = 3
    end
    object itmrefitmdesccomple: TStringField
      FieldName = 'itmdesccomple'
      Size = 250
    end
    object itmrefitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmrefitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmrefitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmrefitmmovifisico: TStringField
      FieldName = 'itmmovifisico'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmreftoecodigo: TIntegerField
      DisplayLabel = 'Tipo de Opera'#231#227'o'
      FieldName = 'toecodigo'
      Required = True
    end
    object itmrefcfocfop: TStringField
      FieldName = 'cfocfop'
      Required = True
      Size = 5
    end
    object itmrefitmbicm: TFloatField
      FieldName = 'itmbicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmreficmcodigo: TStringField
      FieldName = 'icmcodigo'
      Size = 3
    end
    object itmrefitmaliqicm: TStringField
      FieldName = 'itmaliqicm'
      Required = True
      Size = 6
    end
    object itmrefitmicm: TFloatField
      FieldName = 'itmicm'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmrefitmbicms: TFloatField
      FieldName = 'itmbicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmrefitmaliqicms: TFloatField
      FieldName = 'itmaliqicms'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmrefitmicms: TFloatField
      DisplayLabel = 'Percentual ICMS Subst R$'
      FieldName = 'itmicms'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmrefitmapuipi: TStringField
      FieldName = 'itmapuipi'
      Required = True
      FixedChar = True
      Size = 1
    end
    object itmrefcsicodigo: TStringField
      FieldName = 'csicodigo'
      Required = True
      Size = 2
    end
    object itmrefceicodigo: TStringField
      FieldName = 'ceicodigo'
      Size = 5
    end
    object itmrefitmbipi: TFloatField
      FieldName = 'itmbipi'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmrefpuncodigo: TIntegerField
      FieldName = 'puncodigo'
      Required = True
    end
    object itmrefitmaliqipi: TFloatField
      FieldName = 'itmaliqipi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmrefitmipi: TFloatField
      DisplayLabel = 'Percentual de IPI'
      FieldName = 'itmipi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object itmrefcspcodigo: TStringField
      FieldName = 'cspcodigo'
      Required = True
      Size = 3
    end
    object itmrefitmpis: TFloatField
      FieldName = 'itmpis'
    end
    object itmrefitmbpis: TFloatField
      FieldName = 'itmbpis'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmrefitmaliqpis: TFloatField
      FieldName = 'itmaliqpis'
      Required = True
    end
    object itmrefitmquantpis: TFloatField
      FieldName = 'itmquantpis'
      Required = True
    end
    object itmrefitmaliqpisvalor: TFloatField
      FieldName = 'itmaliqpisvalor'
      Required = True
    end
    object itmrefcsfcodigo: TStringField
      FieldName = 'csfcodigo'
      Required = True
      Size = 3
    end
    object itmrefitmbcofins: TFloatField
      FieldName = 'itmbcofins'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmrefitmaliqcofins: TFloatField
      FieldName = 'itmaliqcofins'
      Required = True
    end
    object itmrefitmquantcofins: TFloatField
      FieldName = 'itmquantcofins'
      Required = True
    end
    object itmrefitmaliqcofinsvalor: TFloatField
      FieldName = 'itmaliqcofinsvalor'
      Required = True
    end
    object itmrefitmcofins: TFloatField
      FieldName = 'itmcofins'
      Required = True
    end
    object itmrefpcccodigo: TStringField
      FieldName = 'pcccodigo'
      Required = True
      Size = 60
    end
    object itmrefitmtotal: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmtotal'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object itmrefunicodigobase: TIntegerField
      FieldName = 'unicodigobase'
    end
    object itmrefcfocfopdestinacao: TStringField
      FieldName = 'cfocfopdestinacao'
      Size = 5
    end
    object itmrefitmcontendo: TFloatField
      FieldName = 'itmcontendo'
    end
  end
  object qTotaisItens: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itm.meschave,'
      '  itmquantidade,'
      '  SUM(itm.itmvalor) AS valor,'
      '  SUM(itm.itmdesconto) AS desconto,'
      '  SUM(itm.itmtotal) AS totalItens,'
      '  SUM(itm.itmfrete) AS frete,'
      '  SUM(itm.itmseguro) AS seguro,'
      '  SUM(itm.itmoutras) AS outras,'
      '  SUM(itm.itmbicm) AS bicm,'
      '  SUM(itm.itmicm) AS icm,'
      '  SUM(itm.itmbicms) AS bicms,'
      '  SUM(itm.itmicms) AS icms,'
      '  SUM(itm.itmipi) AS ipi,'
      
        '  SUM(itm.itmtotal - itm.itmdesconto + itm.itmfrete + itm.itmout' +
        'ras + itm.itmseguro + itm.itmicms + itm.itmipi) AS totalGeral'
      'FROM itm'
      'WHERE meschave = :meschave'
      'GROUP BY itm.meschave')
    Left = 88
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object USQLCalcDescAV: TUniSQL
    SQL.Strings = (
      'SET @MesChave = :meschave;'
      'SET @Desconto = :Desconto;'
      ''
      'SET @disable_triggers = 1;'
      ''
      'SET @Total = (SELECT'
      '    SUM(itmtotal)'
      '  FROM itm,'
      '       pro'
      '  WHERE itm.procodigo = pro.procodigo'
      '  AND pro.tpocodigo <> 9'
      '  AND meschave = @MesChave);'
      ''
      ''
      'UPDATE itm, pro'
      'SET itmdesconto = ROUND((@Desconto * (itmtotal / @Total)), 2),'
      '    itm.itmpercdesc = (itm.itmdesconto / itm.itmtotal) * 100,'
      '    itm.itmtipodesc = 1'
      'WHERE itm.procodigo = pro.procodigo'
      'AND pro.tpocodigo <> 9'
      'AND meschave = @MesChave;'
      ''
      ''
      
        '/*Trata Diferen#231a de valor definido para desconto e valor cal' +
        'cul +'
      'ado*/'
      'SET @DifDesconto = @Desconto - (SELECT'
      '    ROUND(SUM(itmdesconto), 2)'
      '  FROM itm'
      '  WHERE meschave = @MesChave);'
      ''
      '/*Identifica item de maior percentual*/'
      'SET @ChaveMaiorPerc = (SELECT'
      '    itmchave'
      '  FROM itm'
      '  WHERE meschave = @MesChave'
      '  ORDER BY (itmtotal / @Total) DESC LIMIT 1);'
      ''
      ''
      'UPDATE itm, pro'
      'SET itmdesconto = (itmdesconto + @DifDesconto),'
      '    itm.itmpercdesc = (itm.itmdesconto / itm.itmtotal) * 100'
      'WHERE itm.procodigo = pro.procodigo'
      'AND pro.tpocodigo <> 9'
      'AND itmchave = @ChaveMaiorPerc;'
      ''
      'SET @disable_triggers = NULL;')
    Left = 432
    Top = 308
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'Desconto'
        Value = nil
      end>
  end
  object dfr: TUniQuery
    SQL.Strings = (
      'SELECT dfr.dfrchave'
      '     , dfr.meschave'
      '     , tDfr.dfrdocumento'
      '     , tdf.tdfidentificacao'
      'FROM dfr'
      '  JOIN tdf'
      '    ON dfr.tdfcodigo = tdf.tdfcodigo'
      '  JOIN (SELECT'
      '      d.dfrchave'
      
        '    , IF(IFNULL(d.dfrchavenfe, '#39#39') <> '#39#39', CONCAT('#39'Chave: '#39', d.df' +
        'rchavenfe), CONCAT('#39'N'#250'mero: '#39', d.dfrnumero, '#39' - S'#233'rie: '#39', d.dfrs' +
        'erie, '#39' - Emiss'#227'o: '#39', DATE_FORMAT(d.dfremissao, '#39'%d/%m/%Y'#39'))) AS' +
        ' dfrdocumento'
      '    FROM dfr d) tDfr'
      '    ON dfr.dfrchave = tDfr.dfrchave')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 454
    Top = 650
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dfrdfrchave: TIntegerField
      FieldName = 'dfrchave'
    end
    object dfrdfrdocumento: TStringField
      FieldName = 'dfrdocumento'
      Size = 60
    end
    object dfrtdfidentificacao: TStringField
      FieldName = 'tdfidentificacao'
      Size = 50
    end
  end
  object DSdfr: TUniDataSource
    DataSet = dfr
    Left = 502
    Top = 650
  end
  object tomcfg: TUniQuery
    SQL.Strings = (
      'SELECT tom.tomchave'
      '     , tom.tofcodigo'
      '     , cfgmnfe.cfgcodigo'
      'FROM tom'
      '  LEFT JOIN cfgmnfe'
      '    ON (tom.tofcodigo = cfgmnfe.cfgobs1'
      '    OR tom.tofcodigo = cfgmnfe.cfgobs2'
      '    OR tom.tofcodigo = cfgmnfe.cfgobs3'
      '    OR tom.tofcodigo = cfgmnfe.cfgobs4)'
      'HAVING (cfgmnfe.cfgcodigo)')
    MasterSource = DSRegistro
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Left = 484
    Top = 496
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object tomcfgtomchave: TIntegerField
      FieldName = 'tomchave'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tofcodigo'
      Required = True
    end
  end
  object mor: TUniQuery
    SQL.Strings = (
      'select meschave from mor where orcchave=:orcchave')
    Left = 952
    Top = 532
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orcchave'
        Value = nil
      end>
  end
  object mesimp: TUniQuery
    SQL.Strings = (
      
        'select meschave, tdfcodigo, etdcodigo from mes where meschave=:m' +
        'eschave')
    Left = 1000
    Top = 532
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mesimpmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object mesimptdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 3
    end
    object mesimpetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  object itmimp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  itmchave,'
      '  meschave,'
      '  itmitem,'
      '  procodigo,'
      '  cstcodigo,'
      '  itmdesccomple,'
      '  itmquantidade,'
      '  itmvalor,'
      '  itmdesconto,'
      '  itmmovifisico,'
      '  toecodigo,'
      '  cfocfop,'
      '  icmcodigo,'
      '  itmbicm,'
      '  itmaliqicm,'
      '  itmicm,'
      '  itmbicms,'
      '  itmaliqicms,'
      '  itmicms,'
      '  itmapuipi,'
      '  csicodigo,'
      '  ceicodigo,'
      '  itmbipi,'
      '  itmaliqipi,'
      '  itmipi,'
      '  cspcodigo,'
      '  itmbpis,'
      '  itmaliqpis,'
      '  itmquantpis,'
      '  itmaliqpisvalor,'
      '  itmpis,'
      '  csfcodigo,'
      '  itmbcofins,'
      '  itmaliqcofins,'
      '  itmquantcofins,'
      '  itmaliqcofinsvalor,'
      '  itmcofins,'
      '  pcccodigo,'
      '  itmtotal,'
      '  unicodigo,'
      '  itmicmsvalor,'
      '  puncodigo,'
      '  procodigoori,'
      '  pronomeori,'
      '  progtin,'
      '  itmcontendo,'
      '  cfocfopdestinacao,'
      '  unicodigobase,'
      '  itmcusto,'
      '  itmtipodesc,'
      '  itmfrete,'
      '  itmseguro,'
      '  itmoutras,'
      '  itmsped,'
      '  itmpercdesc,'
      '  itmvlribpt,'
      '  itmproservico,'
      '  itminfadprod,'
      '  itmquanticontada,'
      '  flacodigo,'
      '  tdfcodigo'
      'FROM itm where meschave=:meschave')
    Left = 1048
    Top = 532
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object mesrfa: TVirtualTable
    Left = 1016
    Top = 452
    Data = {04000000000000000000}
    object mesrfameschave: TIntegerField
      FieldName = 'meschave'
    end
    object mesrfarfatipo: TIntegerField
      FieldName = 'rfatipo'
    end
  end
  object dtl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mda.mdaidentificacao,'
      '  dtl.dtlvalor,'
      '  dtl.mdacodigo,'
      '  mes.meschave,'
      '  rfi.rfihistorico,'
      '  dtl.dtlchave,'
      '  dtl.ltechave'
      'FROM rfm'
      '  INNER JOIN mes'
      '    ON rfm.meschave = mes.meschave'
      '  INNER JOIN rfi'
      '    ON rfm.rfichave = rfi.rfichave'
      '  INNER JOIN mfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '  INNER JOIN mlt'
      '    ON mlt.mfichave = mfi.mfichave'
      '  INNER JOIN dtl'
      '    ON dtl.ltechave = mlt.ltechave'
      '  INNER JOIN mda'
      '    ON dtl.mdacodigo = mda.mdacodigo'
      'WHERE rfi.tfdcodigo IN (2, 32)'
      'AND IF(rfi.tfdcodigo = 2, mfi.tmfcodigo = 2, mfi.tmfcodigo)'
      'AND mes.meschave = :meschave'
      'GROUP BY dtl.dtlchave')
    Left = 1088
    Top = 540
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
  end
  object otp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  otpchave,'
      '  toecodigo,'
      '  tpocodigo,'
      '  cfocfop'
      'FROM otp where toecodigo=:toecodigo')
    Left = 880
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'toecodigo'
        Value = nil
      end>
    object otpotpchave: TIntegerField
      FieldName = 'otpchave'
    end
    object otptoecodigo: TIntegerField
      FieldName = 'toecodigo'
    end
    object otptpocodigo: TIntegerField
      FieldName = 'tpocodigo'
    end
    object otpcfocfop: TStringField
      FieldName = 'cfocfop'
      Size = 5
    end
  end
end
