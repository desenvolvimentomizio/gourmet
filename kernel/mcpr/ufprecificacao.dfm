inherited fprecificacao: Tfprecificacao
  ActiveControl = rpmfrete
  Caption = 'Precifica'#231#227'o'
  ClientHeight = 653
  ClientWidth = 1049
  ExplicitWidth = 1065
  ExplicitHeight = 692
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 624
    Width = 1049
    ExplicitTop = 624
    ExplicitWidth = 1424
    inherited bconfirma: TBitBtn
      Left = 895
      ExplicitLeft = 1270
    end
    inherited bcancela: TBitBtn
      Left = 970
      ExplicitLeft = 1345
    end
    inherited bfechar: TBitBtn
      Left = 830
      ExplicitLeft = 1205
    end
  end
  inherited paginas: TPageControl
    Width = 1049
    Height = 624
    ExplicitWidth = 1424
    ExplicitHeight = 624
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1416
      ExplicitHeight = 596
      object pltopo: TPanel
        AlignWithMargins = True
        Left = 3
        Top = 3
        Width = 1035
        Height = 110
        CustomHint = BalloonHint
        Align = alTop
        TabOrder = 0
        DesignSize = (
          1035
          110)
        object Label1: TLabel
          Left = 8
          Top = 9
          Width = 40
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Registro'
          FocusControl = rpmchave
        end
        object Label2: TLabel
          Left = 200
          Top = 9
          Width = 84
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Valor do Frete R$'
          FocusControl = rpmfrete
        end
        object Label3: TLabel
          Left = 383
          Top = 9
          Width = 121
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Substitui'#231#227'o tribut'#225'ria R$'
          FocusControl = rpmsubstituicao
        end
        object Label4: TLabel
          Left = 599
          Top = 9
          Width = 98
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Outras Despesas R$'
          FocusControl = rpmoutras
        end
        object Label5: TLabel
          Left = 0
          Top = 93
          Width = 57
          Height = 13
          CustomHint = BalloonHint
          AutoSize = False
          Caption = 'C'#243'digo'
          Color = 14220999
          FocusControl = DBEdit1
          ParentColor = False
          Transparent = False
        end
        object Label6: TLabel
          Left = 49
          Top = 93
          Width = 336
          Height = 13
          CustomHint = BalloonHint
          AutoSize = False
          Caption = 'Nome do Produto'
          Color = 14220999
          FocusControl = DBEdit2
          ParentColor = False
          Transparent = False
        end
        object Label20: TLabel
          Left = 201
          Top = 36
          Width = 122
          Height = 13
          CustomHint = BalloonHint
          Caption = '% Impostos Sobre Venda'
          FocusControl = DBEdit15
        end
        object Label21: TLabel
          Left = 651
          Top = 36
          Width = 113
          Height = 13
          CustomHint = BalloonHint
          Caption = '% de custo operacional'
          FocusControl = DBEdit16
        end
        object Label14: TLabel
          Left = 435
          Top = 78
          Width = 271
          Height = 13
          CustomHint = BalloonHint
          Alignment = taCenter
          AutoSize = False
          Caption = 'Dados da Nota de Compra'
          Color = 16764315
          FocusControl = DBEdit11
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label25: TLabel
          Left = 435
          Top = 92
          Width = 67
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Valor Nota R$.'
          Color = 16764315
          FocusControl = DBEdit18
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label11: TLabel
          Left = 504
          Top = 92
          Width = 50
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Frete R$'
          Color = 16764315
          FocusControl = DBEdit8
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label12: TLabel
          Left = 555
          Top = 92
          Width = 50
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'ICM ST R$'
          Color = 16764315
          FocusControl = DBEdit9
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label13: TLabel
          Left = 606
          Top = 92
          Width = 50
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'IPI R$'
          Color = 16764315
          FocusControl = DBEdit10
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label26: TLabel
          Left = 657
          Top = 92
          Width = 49
          Height = 13
          CustomHint = BalloonHint
          AutoSize = False
          Caption = 'Outras R$'
          Color = 16764315
          FocusControl = DBEdit19
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label19: TLabel
          Left = 708
          Top = 92
          Width = 65
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Novo Custo'
          Color = 10469119
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label7: TLabel
          Left = 781
          Top = 92
          Width = 64
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pre'#231'o R$'
          Color = 8454143
          FocusControl = prmprecovenda
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label10: TLabel
          Left = 853
          Top = 92
          Width = 77
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Margem'
          Color = 8454143
          FocusControl = prmcoeficiente
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label15: TLabel
          Left = 936
          Top = 76
          Width = 70
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Margem'
          FocusControl = DBEdit12
        end
        object Label16: TLabel
          Left = 383
          Top = 93
          Width = 34
          Height = 13
          CustomHint = BalloonHint
          AutoSize = False
          Caption = 'CFOP'
          Color = 14220999
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label8: TLabel
          Left = 708
          Top = 78
          Width = 65
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Custo Anterior'
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label17: TLabel
          Left = 780
          Top = 78
          Width = 65
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Pre'#231'o Anterior'
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label18: TLabel
          Left = 853
          Top = 78
          Width = 77
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'Margem Anterior'
          Color = 14145495
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          Transparent = False
        end
        object Label22: TLabel
          Left = 936
          Top = 92
          Width = 70
          Height = 13
          CustomHint = BalloonHint
          Alignment = taRightJustify
          AutoSize = False
          Caption = 'L'#237'quida'
          FocusControl = DBEdit12
        end
        object rpmchave: TDBEdit
          Left = 88
          Top = 6
          Width = 49
          Height = 21
          CustomHint = BalloonHint
          DataField = 'rpmchave'
          DataSource = DSRegistro
          TabOrder = 0
        end
        object rpmfrete: TDBEdit
          Left = 290
          Top = 6
          Width = 87
          Height = 21
          CustomHint = BalloonHint
          DataField = 'rpmfrete'
          DataSource = DSRegistro
          TabOrder = 1
        end
        object rpmsubstituicao: TDBEdit
          Left = 510
          Top = 6
          Width = 83
          Height = 21
          CustomHint = BalloonHint
          DataField = 'rpmsubstituicao'
          DataSource = DSRegistro
          TabOrder = 2
        end
        object rpmoutras: TDBEdit
          Left = 703
          Top = 6
          Width = 116
          Height = 21
          CustomHint = BalloonHint
          DataField = 'rpmoutras'
          DataSource = DSRegistro
          TabOrder = 3
        end
        object btDistribuir: TButton
          AlignWithMargins = True
          Left = 851
          Top = 6
          Width = 173
          Height = 21
          Margins.Left = 10
          Margins.Top = 5
          Margins.Right = 5
          Margins.Bottom = 10
          CustomHint = BalloonHint
          Anchors = [akTop, akRight]
          Caption = 'Distribuir valores nos itens'
          TabOrder = 4
          OnClick = btDistribuirClick
          ExplicitLeft = 1226
        end
        object DBEdit15: TDBEdit
          Left = 329
          Top = 33
          Width = 48
          Height = 21
          CustomHint = BalloonHint
          DataField = 'iprimpostovenda'
          DataSource = DataSource1
          TabOrder = 5
        end
        object DBEdit16: TDBEdit
          Left = 770
          Top = 33
          Width = 49
          Height = 21
          CustomHint = BalloonHint
          DataField = 'iprcustooperacional'
          DataSource = DataSource1
          TabOrder = 6
        end
      end
      object DBCtrlGrid1: TDBCtrlGrid
        Left = 0
        Top = 116
        Width = 1041
        Height = 480
        CustomHint = BalloonHint
        Align = alClient
        DataSource = DSFDItens
        PanelHeight = 53
        PanelWidth = 1024
        TabOrder = 1
        RowCount = 9
        ExplicitLeft = 3
        ExplicitTop = 114
        ExplicitHeight = 482
        object DBEdit1: TDBEdit
          Left = 3
          Top = 1
          Width = 47
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'procodigo'
          DataSource = DSFDItens
          ReadOnly = True
          TabOrder = 0
        end
        object DBEdit2: TDBEdit
          Left = 52
          Top = 1
          Width = 298
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'pronome'
          DataSource = DSFDItens
          ReadOnly = True
          TabOrder = 1
        end
        object DBEdit3: TDBEdit
          Left = 356
          Top = 1
          Width = 24
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'unisimbolo'
          DataSource = DSFDItens
          ReadOnly = True
          TabOrder = 2
        end
        object prmprecovenda: TDBEdit
          Left = 784
          Top = 24
          Width = 64
          Height = 21
          CustomHint = BalloonHint
          Color = 8454143
          DataField = 'prmprecovenda'
          DataSource = DSFDItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnKeyUp = prmprecovendaKeyUp
        end
        object prmcoeficiente: TDBEdit
          Left = 854
          Top = 24
          Width = 79
          Height = 21
          CustomHint = BalloonHint
          Color = 8454143
          DataField = 'prmcoeficiente'
          DataSource = DSFDItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 4
          OnKeyUp = prmcoeficienteKeyUp
        end
        object DBEdit8: TDBEdit
          Left = 507
          Top = 24
          Width = 50
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          Color = 16764315
          DataField = 'prmfretecompra'
          DataSource = DSFDItens
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit9: TDBEdit
          Left = 558
          Top = 24
          Width = 50
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          Color = 16764315
          DataField = 'prmicmST'
          DataSource = DSFDItens
          ReadOnly = True
          TabOrder = 6
        end
        object DBEdit10: TDBEdit
          Left = 609
          Top = 24
          Width = 50
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          Color = 16764315
          DataField = 'prmipi'
          DataSource = DSFDItens
          ReadOnly = True
          TabOrder = 7
        end
        object DBEdit11: TDBEdit
          Left = 713
          Top = 24
          Width = 63
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          Color = 10469119
          DataField = 'prmcustocompra'
          DataSource = DSFDItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 8
        end
        object DBEdit12: TDBEdit
          Left = 942
          Top = 24
          Width = 67
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          Color = 19946
          DataField = 'prmpercmargemlucro'
          DataSource = DSFDItens
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          ReadOnly = True
          TabOrder = 9
        end
        object DBEdit18: TDBEdit
          Left = 438
          Top = 24
          Width = 67
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          Color = 16764315
          DataField = 'prmprecocompra'
          DataSource = DSFDItens
          ReadOnly = True
          TabOrder = 10
        end
        object DBEdit19: TDBEdit
          Left = 660
          Top = 24
          Width = 49
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          Color = 16764315
          DataField = 'prmoutras'
          DataSource = DSFDItens
          ReadOnly = True
          TabOrder = 11
        end
        object DBEdit21: TDBEdit
          Left = 386
          Top = 1
          Width = 34
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'prmcfop'
          DataSource = DSFDItens
          ReadOnly = True
          TabOrder = 12
        end
        object Panel2: TPanel
          Left = 438
          Top = -2
          Width = 498
          Height = 22
          Margins.Top = 1
          Margins.Bottom = 1
          CustomHint = BalloonHint
          BevelOuter = bvNone
          Color = 14145495
          ParentBackground = False
          TabOrder = 13
          object Label9: TLabel
            Left = 24
            Top = 5
            Width = 233
            Height = 14
            CustomHint = BalloonHint
            Alignment = taRightJustify
            AutoSize = False
            Caption = 'Dados atuais do produto ->'
            Color = 14145495
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
          end
          object DBEdit5: TDBEdit
            AlignWithMargins = True
            Left = 416
            Top = 3
            Width = 79
            Height = 19
            Margins.Bottom = 0
            CustomHint = BalloonHint
            TabStop = False
            Align = alRight
            Color = 14145495
            DataField = 'prmmargematual'
            DataSource = DSFDItens
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
          end
          object DBEdit6: TDBEdit
            AlignWithMargins = True
            Left = 346
            Top = 3
            Width = 64
            Height = 19
            Margins.Bottom = 0
            CustomHint = BalloonHint
            TabStop = False
            Align = alRight
            Color = 14145495
            DataField = 'punprecoav'
            DataSource = DSFDItens
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 1
            ExplicitLeft = 345
          end
          object DBEdit23: TDBEdit
            AlignWithMargins = True
            Left = 274
            Top = 3
            Width = 66
            Height = 19
            Margins.Bottom = 0
            CustomHint = BalloonHint
            TabStop = False
            Align = alRight
            Color = 14145495
            DataField = 'prmcusto'
            DataSource = DSFDItens
            Enabled = False
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            ReadOnly = True
            TabOrder = 2
          end
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 596
    Top = 328
  end
  inherited cfg: TUniQuery
    Left = 676
    Top = 396
  end
  inherited consulta: TUniQuery
    Left = 768
    Top = 340
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rpmchave,'
      '  meschave,'
      '  clbcodigo,'
      '  rpmfrete,'
      '  rpmoutras,'
      '  rpmsubstituicao'
      '  FROM'
      '  rpm where rpmchave=:rpmchave')
    Left = 988
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rpmchave'
        Value = nil
      end>
    object registrorpmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'rpmchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrorpmfrete: TFloatField
      FieldName = 'rpmfrete'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrorpmoutras: TFloatField
      FieldName = 'rpmoutras'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrorpmsubstituicao: TFloatField
      FieldName = 'rpmsubstituicao'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited pfr: TUniQuery
    Left = 560
    Top = 228
  end
  inherited psf: TUniQuery
    Left = 496
    Top = 196
  end
  inherited dcl: TUniQuery
    Left = 524
    Top = 208
  end
  inherited err: TUniQuery
    Left = 480
    Top = 276
  end
  inherited acoesfrm: TActionList
    Left = 468
    Top = 444
  end
  inherited ImgBusca: TPngImageList
    Left = 308
    Top = 216
    Bitmap = {}
  end
  object FDitens: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 740
    Top = 216
    object FDitensrpmchave: TIntegerField
      FieldName = 'rpmchave'
    end
    object FDitensitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object FDitensprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
      Required = True
    end
    object FDitenspronome: TStringField
      DisplayLabel = 'Nome do Produto'
      FieldName = 'pronome'
      Size = 50
    end
    object FDitenspuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object FDitensunisimbolo: TStringField
      DisplayLabel = 'Un'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object FDitensprmprecocompra: TFloatField
      DisplayLabel = 'Pre'#231'o Nota R$'
      FieldName = 'prmprecocompra'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmpercmargemlucro: TFloatField
      DisplayLabel = '% Margem'
      FieldName = 'prmpercmargemlucro'
      Required = True
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object FDitensprmprecovenda: TFloatField
      DisplayLabel = 'Valor de Venda R$'
      FieldName = 'prmprecovenda'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmimpostovenda: TFloatField
      DisplayLabel = 'Impostos R$'
      FieldName = 'prmimpostovenda'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmcomissaovenda: TFloatField
      FieldName = 'prmcomissaovenda'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmfretevenda: TFloatField
      FieldName = 'prmfretevenda'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmcustooperacional: TFloatField
      FieldName = 'prmcustooperacional'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmtaxajuros: TFloatField
      FieldName = 'prmtaxajuros'
      Required = True
    end
    object FDitensprminadimplencia: TFloatField
      FieldName = 'prminadimplencia'
      Required = True
    end
    object FDitensprmicmcompra: TFloatField
      DisplayLabel = 'ICM Compra R$'
      FieldName = 'prmicmcompra'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmicmvenda: TFloatField
      DisplayLabel = 'ICM Venda R$'
      FieldName = 'prmicmvenda'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmipi: TFloatField
      DisplayLabel = 'IPI R$'
      FieldName = 'prmipi'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmicmST: TFloatField
      DisplayLabel = 'ICM ST R$'
      FieldName = 'prmicmST'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object FDitensprmfretecompra: TFloatField
      DisplayLabel = 'Frete R$'
      FieldName = 'prmfretecompra'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object FDitensprmoutras: TFloatField
      DisplayLabel = 'Outras R$'
      FieldName = 'prmoutras'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.000'
    end
    object FDitensprmcustocompra: TFloatField
      DisplayLabel = 'Custo R$'
      FieldName = 'prmcustocompra'
      DisplayFormat = '#,##0.000'
      EditFormat = '#,##0.00'
    end
    object FDitensprmcoeficiente: TFloatField
      DisplayLabel = 'COEFICIENTE'
      FieldName = 'prmcoeficiente'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object FDitensprmlucro: TFloatField
      DisplayLabel = 'Lucro Item  R$'
      FieldName = 'prmlucro'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitenspunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o Atual'
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensprmmargematual: TFloatField
      DisplayLabel = 'Margem Atual'
      FieldName = 'prmmargematual'
      DisplayFormat = '#0.000'
      EditFormat = '#0.000'
    end
    object FDitensprmdificm: TFloatField
      FieldName = 'prmdificm'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensitmaliqicm: TFloatField
      FieldName = 'itmaliqicm'
    end
    object FDitensprmcfop: TStringField
      FieldName = 'prmcfop'
      Size = 5
    end
    object FDitensprmcusto: TFloatField
      FieldName = 'prmcusto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object FDitensitmcfop: TStringField
      FieldName = 'itmcfop'
      Size = 5
    end
  end
  object DSFDItens: TUniDataSource
    DataSet = FDitens
    OnDataChange = DSRegistroDataChange
    Left = 284
    Top = 400
  end
  object ipr: TUniQuery
    SQL.Strings = (
      'SELECT ipr.iprcodigo'
      '     , ipr.flacodigo'
      '     , ipr.iprimpostovenda'
      '     , ipr.iprcomissaovenda'
      '     , ipr.iprcustooperacional'
      '     , ipr.iprfretevendas'
      '     , ipr.iprtaxajuros'
      '     , ipr.iprinadimplenciaclientes'
      '  FROM ipr'
      ' WHERE ipr.flacodigo = :flacodigo')
    Left = 1052
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object ipriprcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'iprcodigo'
    end
    object iprflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
    end
    object ipriprimpostovenda: TFloatField
      DisplayLabel = 'Impostos Sobre Venda'
      FieldName = 'iprimpostovenda'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object ipriprcomissaovenda: TFloatField
      DisplayLabel = 'Comiss'#227'o Sobre Venda'
      FieldName = 'iprcomissaovenda'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object ipriprcustooperacional: TFloatField
      DisplayLabel = 'Custo Operacional'
      FieldName = 'iprcustooperacional'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object ipriprfretevendas: TFloatField
      DisplayLabel = 'Frete Sobre Vendas'
      FieldName = 'iprfretevendas'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object ipriprtaxajuros: TFloatField
      DisplayLabel = 'Taxa de Juros Mensal'
      FieldName = 'iprtaxajuros'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object ipriprinadimplenciaclientes: TFloatField
      DisplayLabel = 'Taxa de Inadimpl'#234'ncia'
      FieldName = 'iprinadimplenciaclientes'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
  end
  object prm: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  prmcodigo,'
      '  rpmchave,'
      '  flacodigo,'
      '  itmchave,'
      '  procodigo,'
      '  puncodigo,'
      '  prmprecocompra,'
      '  prmpercmargemlucro,'
      '  prmprecovenda,'
      '  prmimpostovenda,'
      '  prmcomissaovenda,'
      '  prmfretevenda,'
      '  prmcustooperacional,'
      '  prmtaxajuros,'
      '  prminadimplencia,'
      '  prmicmcompra,'
      '  prmicmvenda,'
      '  prmipi,'
      '  prmicmST,'
      '  prmfretecompra,'
      '  prmoutras,'
      '  prmregistro,'
      '  clbcodigo'
      '  FROM'
      'prm where rpmchave=:rpmchave')
    Left = 908
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rpmchave'
        Value = nil
      end>
  end
  object DataSource1: TDataSource
    DataSet = ipr
    Left = 616
    Top = 312
  end
end
