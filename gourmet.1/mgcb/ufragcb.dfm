inherited fragcb: Tfragcb
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 419
        Visible = True
      end
      inherited PlRodaPe: TPanel
        Top = 424
        Height = 150
        Visible = True
        object DBGrfi: TDBGrid
          Left = 0
          Top = 0
          Width = 956
          Height = 105
          Align = alClient
          Color = clCream
          DataSource = DSrfi
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrfiDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'rfichave'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfinumero'
              Width = 80
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
              FieldName = 'srfidentificacao'
              Width = 120
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
              Width = 30
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldocapital'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfijuros'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfimulta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidesconto'
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
              Width = 200
              Visible = True
            end>
        end
        object Panel1: TPanel
          Left = 0
          Top = 105
          Width = 956
          Height = 45
          Align = alBottom
          TabOrder = 1
          object GroupBox6: TGroupBox
            AlignWithMargins = True
            Left = 51
            Top = 1
            Width = 45
            Height = 43
            Margins.Left = 50
            Margins.Top = 0
            Margins.Right = 0
            Margins.Bottom = 0
            Align = alLeft
            Caption = ' Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object PlQtdeParce: TPanel
              AlignWithMargins = True
              Left = 2
              Top = 19
              Width = 41
              Height = 22
              Margins.Left = 0
              Margins.Right = 0
              Margins.Bottom = 0
              Align = alClient
              BevelOuter = bvLowered
              Caption = '0'
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
          object GroupBox4: TGroupBox
            Left = 96
            Top = 1
            Width = 110
            Height = 43
            Align = alLeft
            Caption = 'Saldo Capital R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object PlPrincipal: TPanel
              AlignWithMargins = True
              Left = 7
              Top = 19
              Width = 96
              Height = 22
              Margins.Left = 5
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
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
          object GroupBox3: TGroupBox
            Left = 426
            Top = 1
            Width = 110
            Height = 43
            Align = alLeft
            Caption = ' Descontos R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object PlDescont: TPanel
              AlignWithMargins = True
              Left = 7
              Top = 19
              Width = 96
              Height = 22
              Margins.Left = 5
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
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
          object GroupBox7: TGroupBox
            Left = 206
            Top = 1
            Width = 110
            Height = 43
            Align = alLeft
            Caption = ' Multas R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object PlMultas: TPanel
              AlignWithMargins = True
              Left = 7
              Top = 19
              Width = 96
              Height = 22
              Margins.Left = 5
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
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
          object GroupBox2: TGroupBox
            Left = 316
            Top = 1
            Width = 110
            Height = 43
            Align = alLeft
            Caption = ' Juros R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object PlJuros: TPanel
              AlignWithMargins = True
              Left = 7
              Top = 19
              Width = 96
              Height = 22
              Margins.Left = 5
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
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
          object GroupBox5: TGroupBox
            Left = 536
            Top = 1
            Width = 110
            Height = 43
            Align = alLeft
            Caption = 'Saldo R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            object PlTot: TPanel
              AlignWithMargins = True
              Left = 7
              Top = 19
              Width = 96
              Height = 22
              Margins.Left = 5
              Margins.Right = 5
              Margins.Bottom = 0
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
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
        end
      end
      inherited PnlGrid: TPanel
        Height = 290
        inherited DBGLista: TDBGrid
          Height = 225
          Columns = <
            item
              Expanded = False
              FieldName = 'gcbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gcbemissao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 150
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
              Width = 280
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gcbcontato'
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gcbprevisao'
              Width = 70
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 225
          Height = 65
          BevelOuter = bvNone
          Visible = True
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 956
            Height = 65
            Align = alClient
            Caption = 'Observa'#231#245'es'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object gcbobservacao: TDBMemo
              Left = 2
              Top = 16
              Width = 952
              Height = 47
              TabStop = False
              Align = alClient
              Color = clWhite
              DataField = 'gcbobservacao'
              DataSource = DSTabela
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 360
    Top = 116
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gcb.gcbcodigo,'
      '  gcb.etdcodigo,'
      '  etd.etdidentificacao,'
      '  gcb.clbcodigo,'
      '  clb.clbidentificacao,'
      '  gcb.gcbcontato,'
      '  gcb.gcbemissao,'
      '  gcb.gcbprevisao,'
      '  gcb.gcbobservacao'
      'FROM gcb'
      '  JOIN etd'
      '    ON gcb.etdcodigo = etd.etdcodigo'
      '  JOIN clb'
      '    ON gcb.clbcodigo = clb.clbcodigo')
    Top = 108
    object uqtabelagcbcodigo: TIntegerField
      DisplayLabel = 'Cobran'#231'a'
      FieldName = 'gcbcodigo'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'Cod.'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Colab.'
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object uqtabelagcbcontato: TStringField
      DisplayLabel = 'Contato'
      FieldName = 'gcbcontato'
      Size = 60
    end
    object uqtabelagcbemissao: TDateField
      DisplayLabel = 'Data'
      FieldName = 'gcbemissao'
    end
    object uqtabelagcbprevisao: TDateField
      DisplayLabel = 'Previs'#227'o'
      FieldName = 'gcbprevisao'
    end
    object uqtabelagcbobservacao: TStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'gcbobservacao'
      Size = 1000
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rfi.rfichave,'
      '  rfi.etdcodigo,'
      '  rfi.tfdcodigo,'
      '  rfi.flacodigo,'
      '  rfi.tficodigo,'
      '  rfi.bcocodigo,'
      '  rfi.carcodigo,'
      '  rfi.rfiemissao,'
      '  rfi.rfivencimento,'
      '  rfi.rfinumero,'
      '  rfi.rfivalor,'
      '  rfi.rfihistorico,'
      '  rfi.srfidentificacao,'
      '  rfi.srfcodigo,'
      '  rfi.frrcodigo,'
      '  rfi.rfipercmesmora,'
      '  rfi.rfirepetir,'
      '  rfi.rfiprevisao,'
      '  rfi.rfivalorparcela,'
      '  rfi.moecodigo,'
      '  rfi.rfidatadesc,'
      '  rfi.rfivalodesc,'
      '  rfi.rfidatamulta,'
      '  rfi.rfipercmulta,'
      '  rfi.rfivalomulta,'
      '  rfi.etdidentificacao,'
      '  rfi.tfiidentificacao,'
      '  rfi.caridentificacao,'
      '  rfi.rfidtultbaixa,'
      '  rfi.rfidias,'
      '  rfi.rfibaixadocapital,'
      '  rfi.rfisaldocapital,'
      '  rfi.rfijuros,'
      '  rfi.rfimulta,'
      '  rfi.rfidesconto,'
      '  rfi.rfisaldogeral,'
      '  rfi.rfimoradia,'
      '  rfi.bconome,'
      '  rfi.titcodigo,'
      '  gcp.gcbcodigo'
      'FROM v_rfi rfi'
      '  JOIN gcp'
      '    ON rfi.rfichave = gcp.rfichave'
      'WHERE rfi.tfdcodigo = 2'
      'AND gcp.gcbcodigo = :gcbcodigo'
      'ORDER BY rfi.rfivencimento, rfi.rfinumero')
    AfterOpen = rfiAfterOpen
    AfterClose = rfiAfterClose
    Left = 432
    Top = 431
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'gcbcodigo'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object rfirfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object rfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'rfinumero'
    end
    object rfirfivalor: TFloatField
      DisplayLabel = 'Capital R$'
      FieldName = 'rfivalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Size = 150
    end
    object rfisrfidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'srfidentificacao'
      Size = 30
    end
    object rfirfidtultbaixa: TDateField
      DisplayLabel = #218'ltima Baixa'
      FieldName = 'rfidtultbaixa'
    end
    object rfirfidias: TIntegerField
      DisplayLabel = 'Dias'
      FieldName = 'rfidias'
    end
    object rfirfibaixadocapital: TFloatField
      DisplayLabel = 'Bx. Capital R$'
      FieldName = 'rfibaixadocapital'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfisaldocapital: TFloatField
      DisplayLabel = 'Saldo Capital R$'
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfirfisaldogeral: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object rfigcbcodigo: TIntegerField
      FieldName = 'gcbcodigo'
    end
  end
  object DSrfi: TUniDataSource
    DataSet = rfi
    Left = 432
    Top = 479
  end
end
