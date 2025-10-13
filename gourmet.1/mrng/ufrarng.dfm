inherited frarng: Tfrarng
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 475
        Visible = True
        ExplicitTop = 469
      end
      inherited PlRodaPe: TPanel
        Top = 480
        Height = 100
        Visible = True
        ExplicitTop = 480
        ExplicitHeight = 100
        object DBGrid2: TDBGrid
          Left = 0
          Top = 20
          Width = 1034
          Height = 80
          TabStop = False
          Align = alClient
          BorderStyle = bsNone
          Color = clCream
          DataSource = DSrfiGer
          DrawingStyle = gdsGradient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -12
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid2DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'rfichave'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfinumero'
              Width = 110
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
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldocapital'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfimulta'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfijuros'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfidesconto'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfisaldogeral'
              Width = 80
              Visible = True
            end>
        end
        object Panel9: TPanel
          Left = 0
          Top = 0
          Width = 1034
          Height = 20
          Align = alTop
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderWidth = 2
          Caption = 'Parcelas Geradas'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 1
          object Panel10: TPanel
            Left = 912
            Top = 2
            Width = 120
            Height = 16
            Align = alRight
            BevelOuter = bvNone
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentColor = True
            ParentFont = False
            TabOrder = 0
          end
        end
      end
      inherited PnlGrid: TPanel
        Height = 346
        ExplicitHeight = 346
        object Splitter1: TSplitter [0]
          Left = 0
          Top = 201
          Width = 1034
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          AutoSnap = False
          Beveled = True
          ExplicitTop = 195
          ExplicitWidth = 956
        end
        inherited DBGLista: TDBGrid
          Height = 161
          Columns = <
            item
              Expanded = False
              FieldName = 'rngchave'
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
              FieldName = 'clbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rngregistro'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 206
          Height = 140
          Visible = True
          ExplicitTop = 206
          ExplicitHeight = 140
          object DBGrid1: TDBGrid
            Left = 1
            Top = 21
            Width = 1032
            Height = 118
            TabStop = False
            Align = alClient
            BorderStyle = bsNone
            Color = clCream
            DataSource = DSrfi
            DrawingStyle = gdsGradient
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ParentFont = False
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -12
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGrid1DrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'rfichave'
                Width = 60
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfinumero'
                Width = 110
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfiemissao'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfivencimento'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfibaixadocapital'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfimulta'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfijuros'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfidesconto'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'rfisaldogeral'
                Width = 80
                Visible = True
              end>
          end
          object Panel8: TPanel
            Left = 1
            Top = 1
            Width = 1032
            Height = 20
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'Parcelas Renegociadas'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
            object Panel11: TPanel
              Left = 910
              Top = 2
              Width = 120
              Height = 16
              Align = alRight
              BevelOuter = bvNone
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentColor = True
              ParentFont = False
              TabOrder = 0
            end
          end
        end
        inherited plSugestao: TPanel
          TabOrder = 3
        end
        object PlDetalhe: TPanel
          Left = 0
          Top = 161
          Width = 1034
          Height = 40
          Align = alBottom
          BevelOuter = bvNone
          BorderWidth = 1
          TabOrder = 2
          object GroupBox1: TGroupBox
            Left = 486
            Top = 1
            Width = 110
            Height = 38
            Align = alLeft
            Caption = ' TOTAL R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object PlTot: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox2: TGroupBox
            Left = 266
            Top = 1
            Width = 110
            Height = 38
            Align = alLeft
            Caption = ' Juros R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object PlJuros: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox7: TGroupBox
            Left = 156
            Top = 1
            Width = 110
            Height = 38
            Align = alLeft
            Caption = ' Multas R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object PlMultas: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox3: TGroupBox
            Left = 376
            Top = 1
            Width = 110
            Height = 38
            Align = alLeft
            Caption = ' Descontos R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            object PlDescont: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox4: TGroupBox
            Left = 46
            Top = 1
            Width = 110
            Height = 38
            Align = alLeft
            Caption = ' Principal R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object PlPrincipal: TPanel
              Left = 2
              Top = 16
              Width = 106
              Height = 20
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox6: TGroupBox
            Left = 1
            Top = 1
            Width = 45
            Height = 38
            Align = alLeft
            Caption = ' Qtde'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 5
            Visible = False
            object PlQtdeRest: TPanel
              Left = 2
              Top = 16
              Width = 41
              Height = 20
              Align = alClient
              BevelOuter = bvLowered
              Caption = '0'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -12
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
        end
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Category = 'Renegocia'#231#227'o'
      OnExecute = ActIncluirExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT r.rngchave'
      '     , r.etdcodigo'
      '     , e.etdidentificacao'
      '     , r.clbcodigo'
      '     , c.clbidentificacao'
      '     , r.ltechave'
      '     , r.rngregistro'
      'FROM rng r'
      '  JOIN etd e'
      '    ON r.etdcodigo = e.etdcodigo'
      '  JOIN clb c'
      '    ON r.clbcodigo = c.clbcodigo'
      '  JOIN tit t'
      '    ON r.titcodigo = t.titcodigo'
      'WHERE t.tfdcodigo = :tfdcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tfdcodigo'
        Value = nil
      end>
    object uqtabelarngchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rngchave'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'etdcodigo'
      Required = True
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Colaborador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object uqtabelaltechave: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'ltechave'
    end
    object uqtabelarngregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'rngregistro'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800780010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED001D1D1D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800272727000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A002A2A2A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD001C1C
      1C001C1C1C00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F006F6F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000282828000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000035353500000000000000
      0000000000000000000035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E100E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F000000000000000000000000000000000000000000000000006F6F
      6F000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD001313130013131300DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7001919190000000000000000001919
      1900F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      00000000000000000000E4E4E400070707000000000000000000000000000000
      000007070700E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB0010101000000000000000000000000000000000000000
      00000000000010101000DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00737373007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00737373009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFE7FF0000FFFFFFFFE7FF0000FFFFFE7FE7FF0000FFFFFC3FC3FF0000
      FE7FF81FC3FF0000FC3FF00F81FF0000F81FE007FF9F0000F00FC003FF0F0000
      FFFF8001FE070000FFFF0000FC030000FFFFFFFFF8010000FFFFFFFFF8010000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT vr.rfichave'
      '     , vr.rfinumero'
      '     , vr.rfiemissao'
      '     , vr.rfivencimento'
      '     , vr.rfibaixadocapital'
      '     , vr.rfidesconto'
      '     , vr.rfimulta'
      '     , vr.rfijuros'
      
        '     , (vr.rfibaixadocapital - vr.rfidesconto + vr.rfimulta + vr' +
        '.rfijuros) AS rfisaldogeral'
      'FROM v_rfi vr'
      '  JOIN (SELECT'
      '      m.rfichave'
      '    , r.titcodigo'
      '    FROM mfi m'
      '      JOIN mlt m1'
      '        ON m.mfichave = m1.mfichave'
      '      JOIN rng r'
      '        ON m1.ltechave = r.ltechave'
      '    WHERE r.rngchave = :rngchave'
      '    GROUP BY m.rfichave) tRng'
      '    ON vr.rfichave = tRng.rfichave'
      
        '    AND vr.titcodigo <> tRng.titcodigo -- Identifica as parcelas' +
        ' Renegociadas'
      '')
    Left = 371
    Top = 442
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rngchave'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'Nr. Doc.'
      FieldName = 'rfinumero'
    end
    object rfirfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object rfirfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object rfirfibaixadocapital: TFloatField
      DisplayLabel = 'Capital R$'
      FieldName = 'rfibaixadocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfirfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfisaldogeral: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfirfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfirfisaldogeral: TFloatField
      DisplayLabel = 'Total Geral R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object rfiGer: TUniQuery
    SQL.Strings = (
      'SELECT distinct vr.rfichave'
      '     , vr.rfinumero'
      '     , vr.rfiemissao'
      '     , vr.rfivencimento'
      '     , vr.rfisaldocapital'
      '     , vr.rfidesconto'
      '     , vr.rfimulta'
      '     , vr.rfijuros'
      '     , vr.rfisaldogeral'
      'FROM v_rfi vr'
      '  JOIN (SELECT'
      '      m.rfichave'
      '    , r.titcodigo'
      '    FROM mfi m'
      '      JOIN mlt m1'
      '        ON m.mfichave = m1.mfichave'
      '      JOIN rng r'
      '        ON m1.ltechave = r.ltechave'
      '    WHERE r.rngchave = :rngchave'
      '    GROUP BY m.rfichave) tRng'
      '    ON vr.rfichave = tRng.rfichave'
      
        '    AND vr.titcodigo = tRng.titcodigo -- Identifica as parcelas ' +
        'geradas'
      '')
    Left = 355
    Top = 474
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rngchave'
        Value = nil
      end>
    object rfiGerrfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object rfiGerrfinumero: TStringField
      DisplayLabel = 'Nr. Doc.'
      FieldName = 'rfinumero'
    end
    object rfiGerrfiemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'rfiemissao'
    end
    object rfiGerrfivencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'rfivencimento'
    end
    object rfiGerrfisaldocapital: TFloatField
      DisplayLabel = 'Capital R$'
      FieldName = 'rfisaldocapital'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfiGerrfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfiGerrfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfiGerrfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfiGerrfisaldogeral: TFloatField
      DisplayLabel = 'Saldo Geral R$'
      FieldName = 'rfisaldogeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object DSrfi: TUniDataSource
    DataSet = rfi
    Left = 356
    Top = 395
  end
  object DSrfiGer: TUniDataSource
    DataSet = rfiGer
    Left = 396
    Top = 475
  end
  object rfiTotais: TUniQuery
    SQL.Strings = (
      'SELECT SUM(vr.rfibaixadocapital) AS rfibaixadocapital'
      '     , SUM(vr.rfidesconto) AS rfidesconto'
      '     , SUM(vr.rfimulta) AS rfimulta'
      '     , SUM(vr.rfijuros) AS rfijuros'
      
        '     , SUM((vr.rfibaixadocapital - vr.rfidesconto + vr.rfimulta ' +
        '+ vr.rfijuros)) AS rfisaldogeral'
      'FROM v_rfi vr'
      '  JOIN (SELECT'
      '      m.rfichave'
      '    , r.titcodigo'
      '    FROM mfi m'
      '      JOIN mlt m1'
      '        ON m.mfichave = m1.mfichave'
      '      JOIN rng r'
      '        ON m1.ltechave = r.ltechave'
      '    WHERE r.rngchave = :rngchave'
      '    GROUP BY m.rfichave) tRng'
      '    ON vr.rfichave = tRng.rfichave'
      
        '    AND vr.titcodigo <> tRng.titcodigo -- Identifica as parcelas' +
        ' Renegociadas'
      '-- and vr.flacodigo=:flacodigo')
    Left = 576
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rngchave'
        Value = nil
      end>
    object rfiTotaisrfibaixadocapital: TFloatField
      DisplayLabel = 'Capital R$'
      FieldName = 'rfibaixadocapital'
    end
    object rfiTotaisrfimulta: TFloatField
      DisplayLabel = 'Multa R$'
      FieldName = 'rfimulta'
    end
    object rfiTotaisrfijuros: TFloatField
      DisplayLabel = 'Juros R$'
      FieldName = 'rfijuros'
    end
    object rfiTotaisrfidesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'rfidesconto'
    end
    object rfiTotaisrfisaldogeral: TFloatField
      DisplayLabel = 'Total Geral R$'
      FieldName = 'rfisaldogeral'
    end
  end
end
