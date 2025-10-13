inherited fprm: Tfprm
  ActiveControl = prmprecocompra
  Caption = 'Precifica'#231#227'o de Mercadoria'
  ClientHeight = 339
  ClientWidth = 964
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 310
    Width = 964
    inherited bconfirma: TBitBtn
      Left = 810
    end
    inherited bcancela: TBitBtn
      Left = 885
    end
    inherited bfechar: TBitBtn
      Left = 745
    end
  end
  inherited paginas: TPageControl
    Width = 964
    Height = 310
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 20
        Top = 23
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = prmcodigo
      end
      object Label2: TLabel
        Left = 20
        Top = 50
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial'
        FocusControl = flacodigo
      end
      object Label3: TLabel
        Left = 20
        Top = 77
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = procodigo
      end
      object Label4: TLabel
        Left = 20
        Top = 104
        Width = 82
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pre'#231'o de Compra'
        FocusControl = prmprecocompra
      end
      object Label5: TLabel
        Left = 251
        Top = 105
        Width = 118
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Margem de Lucro L'#237'quido'
        FocusControl = prmpercmargemlucro
      end
      object Label6: TLabel
        Left = 507
        Top = 104
        Width = 75
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pre'#231'o de Venda'
        FocusControl = prmprecovenda
      end
      object prmcodigo: TDBEdit
        Left = 145
        Top = 20
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prmcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flacodigo: TDBEdit
        Left = 145
        Top = 47
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flacodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object procodigo: TDBEdit
        Left = 145
        Top = 74
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'procodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 2
      end
      object prmprecocompra: TDBEdit
        Left = 145
        Top = 101
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prmprecocompra'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object prmpercmargemlucro: TDBEdit
        Left = 375
        Top = 102
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prmpercmargemlucro'
        DataSource = DSRegistro
        TabOrder = 4
        OnExit = prmpercmargemlucroExit
      end
      object prmprecovenda: TDBEdit
        Left = 588
        Top = 101
        Width = 80
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prmprecovenda'
        DataSource = DSRegistro
        TabOrder = 5
        OnExit = prmprecovendaExit
      end
      object PnlBoxDireita: TPanel
        Left = 706
        Top = 0
        Width = 250
        Height = 282
        CustomHint = BalloonHint
        Align = alRight
        BevelOuter = bvNone
        TabOrder = 6
        object GBIndices: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 16
          Width = 233
          Height = 208
          CustomHint = BalloonHint
          Caption = #205'ndices de Precifica'#231#227'o'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Padding.Left = 10
          Padding.Right = 10
          ParentFont = False
          TabOrder = 0
          object PnlIndices6: TPanel
            AlignWithMargins = True
            Left = 12
            Top = 175
            Width = 209
            Height = 25
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            Caption = 'Inadimpl'#234'ncia'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            object PnlInadimplencia: TPanel
              AlignWithMargins = True
              Left = 136
              Top = 3
              Width = 70
              Height = 19
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              CustomHint = BalloonHint
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = '0,00 %'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object PnlIndices5: TPanel
            AlignWithMargins = True
            Left = 12
            Top = 145
            Width = 209
            Height = 25
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            Caption = 'Taxa de Juros'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            object PnlTaxaJuros: TPanel
              AlignWithMargins = True
              Left = 136
              Top = 3
              Width = 70
              Height = 19
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              CustomHint = BalloonHint
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = '0,00 %'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object PnlIndices4: TPanel
            AlignWithMargins = True
            Left = 12
            Top = 115
            Width = 209
            Height = 25
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            Caption = 'Custo Operacional'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            object PnlCustoOperacional: TPanel
              AlignWithMargins = True
              Left = 136
              Top = 3
              Width = 70
              Height = 19
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              CustomHint = BalloonHint
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = '0,00 %'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object PnlIndices3: TPanel
            AlignWithMargins = True
            Left = 12
            Top = 85
            Width = 209
            Height = 25
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            Caption = 'Frete sobre Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            object PnlFreteVenda: TPanel
              AlignWithMargins = True
              Left = 136
              Top = 3
              Width = 70
              Height = 19
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              CustomHint = BalloonHint
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = '0,00 %'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object PnlIndices2: TPanel
            AlignWithMargins = True
            Left = 12
            Top = 55
            Width = 209
            Height = 25
            Margins.Left = 0
            Margins.Top = 5
            Margins.Right = 0
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            Caption = 'Comiss'#227'o sobre Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            object PnlComissaoVenda: TPanel
              AlignWithMargins = True
              Left = 136
              Top = 3
              Width = 70
              Height = 19
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              CustomHint = BalloonHint
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = '0,00 %'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object PnlIndices1: TPanel
            AlignWithMargins = True
            Left = 12
            Top = 25
            Width = 209
            Height = 25
            Margins.Left = 0
            Margins.Top = 10
            Margins.Right = 0
            Margins.Bottom = 0
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            Caption = 'Impostos sobre Venda'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 5
            object PnlImpostoVenda: TPanel
              AlignWithMargins = True
              Left = 136
              Top = 3
              Width = 70
              Height = 19
              Margins.Left = 2
              Margins.Top = 2
              Margins.Right = 2
              Margins.Bottom = 2
              CustomHint = BalloonHint
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              BorderWidth = 1
              Caption = '0,00 %'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
      object GBCustosProduto: TGroupBox
        Left = 3
        Top = 134
        Width = 681
        Height = 90
        CustomHint = BalloonHint
        Caption = 'Custos do Produto'
        TabOrder = 7
        object Label13: TLabel
          Left = 17
          Top = 32
          Width = 102
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Imposto sobre Venda'
          FocusControl = prmimpostovenda
        end
        object Label8: TLabel
          Left = 258
          Top = 32
          Width = 108
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Comiss'#227'o sobre Venda'
          FocusControl = prmcomissaovenda
        end
        object Label9: TLabel
          Left = 490
          Top = 32
          Width = 89
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Frete sobre Venda'
          FocusControl = prmfretevenda
        end
        object Label10: TLabel
          Left = 17
          Top = 59
          Width = 88
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Custo Operacional'
          FocusControl = prmcustooperacional
        end
        object Label11: TLabel
          Left = 298
          Top = 59
          Width = 68
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Taxa de Juros'
          FocusControl = prmtaxajuros
        end
        object Label12: TLabel
          Left = 472
          Top = 59
          Width = 107
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Taxa de Inadimpl'#234'ncia'
          FocusControl = prminadimplencia
        end
        object prmimpostovenda: TDBEdit
          Left = 142
          Top = 29
          Width = 80
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'prmimpostovenda'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 0
        end
        object prmcomissaovenda: TDBEdit
          Left = 372
          Top = 29
          Width = 80
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'prmcomissaovenda'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 1
        end
        object prmfretevenda: TDBEdit
          Left = 585
          Top = 29
          Width = 80
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'prmfretevenda'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 2
        end
        object prmcustooperacional: TDBEdit
          Left = 142
          Top = 56
          Width = 80
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'prmcustooperacional'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 3
        end
        object prmtaxajuros: TDBEdit
          Left = 372
          Top = 56
          Width = 80
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'prmtaxajuros'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 4
        end
        object prminadimplencia: TDBEdit
          Left = 585
          Top = 56
          Width = 80
          Height = 21
          CustomHint = BalloonHint
          TabStop = False
          DataField = 'prminadimplencia'
          DataSource = DSRegistro
          ReadOnly = True
          TabOrder = 5
        end
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 463
        Top = 240
        Width = 205
        Height = 25
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        Caption = 'Lucro L'#237'quido R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        object PnlLucroLiquido: TPanel
          AlignWithMargins = True
          Left = 125
          Top = 3
          Width = 77
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          CustomHint = BalloonHint
          Align = alRight
          Alignment = taRightJustify
          BevelOuter = bvNone
          BorderWidth = 1
          Caption = '0,00'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
      object Panel3: TPanel
        AlignWithMargins = True
        Left = 250
        Top = 240
        Width = 205
        Height = 25
        Margins.Left = 0
        Margins.Top = 5
        Margins.Right = 0
        Margins.Bottom = 0
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        Caption = 'Total dos Custos R$'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 9
        object PnlTotalCustos: TPanel
          AlignWithMargins = True
          Left = 125
          Top = 3
          Width = 77
          Height = 19
          Margins.Left = 2
          Margins.Top = 2
          Margins.Right = 2
          Margins.Bottom = 2
          CustomHint = BalloonHint
          Align = alRight
          Alignment = taRightJustify
          BorderWidth = 1
          Caption = '0,00'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 404
    Top = 576
  end
  inherited cfg: TUniQuery
    Left = 876
    Top = 492
  end
  inherited consulta: TUniQuery
    Left = 904
    Top = 420
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT prm.prmcodigo'
      '     , prm.flacodigo'
      '     , prm.procodigo'
      '     , prm.clbcodigo'
      '     , prm.prmprecocompra'
      '     , prm.prmpercmargemlucro'
      '     , prm.prmprecovenda'
      '     , prm.prmimpostovenda'
      '     , prm.prmcomissaovenda'
      '     , prm.prmfretevenda'
      '     , prm.prmcustooperacional'
      '     , prm.prmtaxajuros'
      '     , prm.prminadimplencia'
      '     , prm.prmregistro'
      '  FROM prm'
      ' WHERE prm.procodigo = :procodigo'
      '   AND prm.flacodigo = :flacodigo')
    Left = 404
    Top = 528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object registroprmcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'prmcodigo'
    end
    object registroflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
    end
    object registroflaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flaidentificacao'
      LookupDataSet = fla
      LookupKeyFields = 'flacodigo'
      LookupResultField = 'flaidentificacao'
      KeyFields = 'flacodigo'
      Size = 30
      Lookup = True
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 50
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
    end
    object registroprmprecocompra: TFloatField
      DisplayLabel = 'Pre'#231'o de Compra'
      FieldName = 'prmprecocompra'
      Required = True
      DisplayFormat = '##0.00000'
      EditFormat = '##0.00'
    end
    object registroprmpercmargemlucro: TFloatField
      DisplayLabel = 'Margem de Lucro L'#237'quido'
      FieldName = 'prmpercmargemlucro'
      Required = True
      DisplayFormat = '##0.00000'
      EditFormat = '##0.00000'
    end
    object registroprmprecovenda: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda'
      FieldName = 'prmprecovenda'
      Required = True
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroprmimpostovenda: TFloatField
      DisplayLabel = 'Imposto sobre Venda'
      FieldName = 'prmimpostovenda'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroprmcomissaovenda: TFloatField
      DisplayLabel = 'Comiss'#227'o sobre Venda'
      FieldName = 'prmcomissaovenda'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroprmfretevenda: TFloatField
      DisplayLabel = 'Frete sobre Venda'
      FieldName = 'prmfretevenda'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroprmcustooperacional: TFloatField
      DisplayLabel = 'Custo Operacional'
      FieldName = 'prmcustooperacional'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroprmtaxajuros: TFloatField
      DisplayLabel = 'Taxa de Juros'
      FieldName = 'prmtaxajuros'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
    object registroprminadimplencia: TFloatField
      DisplayLabel = 'Taxa de Inadimpl'#234'ncia'
      FieldName = 'prminadimplencia'
      DisplayFormat = '##0.00'
      EditFormat = '##0.00'
    end
  end
  inherited dcp: TUniQuery
    Left = 768
    Top = 516
  end
  inherited dtb: TUniQuery
    Left = 724
    Top = 516
  end
  inherited coa: TUniQuery
    Left = 688
    Top = 516
  end
  inherited pfr: TUniQuery
    Left = 1072
    Top = 444
  end
  inherited psf: TUniQuery
    Left = 1032
    Top = 444
  end
  inherited dcl: TUniQuery
    Left = 980
    Top = 448
  end
  inherited cau: TUniQuery
    Left = 1024
    Top = 504
  end
  inherited err: TUniQuery
    Left = 848
    Top = 580
  end
  inherited BalloonHint: TBalloonHint
    Left = 772
    Top = 624
  end
  inherited acoesfrm: TActionList
    Left = 844
    Top = 420
  end
  inherited cpg: TUniQuery
    Left = 684
    Top = 576
  end
  inherited cpc: TUniQuery
    Left = 685
    Top = 625
  end
  inherited ImgBusca: TPngImageList
    Left = 556
    Top = 504
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 1068
    Top = 508
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
    Left = 476
    Top = 488
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
  object pro: TUniQuery
    SQL.Strings = (
      'SELECT pro.procodigo'
      '     , pro.pronome'
      '  FROM pro')
    Left = 476
    Top = 584
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 60
    end
  end
  object fla: TUniQuery
    SQL.Strings = (
      'SELECT fla.flacodigo'
      '     , fla.flaidentificacao'
      '  FROM fla')
    Left = 476
    Top = 536
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 30
    end
  end
end
