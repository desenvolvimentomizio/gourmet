inherited fravfe: Tfravfe
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 451
        Visible = True
        ExplicitTop = 445
      end
      inherited PlRodaPe: TPanel
        Top = 456
        Height = 124
        Visible = True
        ExplicitTop = 450
        ExplicitHeight = 124
        object listaOS: TDBGrid
          Left = 0
          Top = 24
          Width = 956
          Height = 100
          Align = alClient
          Color = clCream
          DataSource = DSorc
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = listaOSDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'orcchave'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcdataabert'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcgeral'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcdesconto'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orctotal'
              Width = 65
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'puoidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'stoidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'orcobs'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbvendedor'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbvendedorident'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'objidentificacao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'objmodelo'
              Width = 150
              Visible = True
            end>
        end
        object plbotoesitensEnt: TPanel
          Left = 0
          Top = 0
          Width = 956
          Height = 24
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
          TabOrder = 1
          object LbItensEnt: TLabel
            AlignWithMargins = True
            Left = 10
            Top = 0
            Width = 180
            Height = 24
            Margins.Left = 10
            Margins.Top = 0
            Margins.Right = 0
            Align = alLeft
            AutoSize = False
            Caption = 'Atendimentos Vinculados'
            Layout = tlCenter
          end
          object PlTotaisEnt: TPanel
            Left = 456
            Top = 0
            Width = 500
            Height = 24
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            Visible = False
            object PlVlrTotalEnt: TPanel
              AlignWithMargins = True
              Left = 215
              Top = 0
              Width = 185
              Height = 24
              Margins.Left = 0
              Margins.Top = 0
              Margins.Right = 100
              Margins.Bottom = 0
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              Caption = 'Total R$ 0,00'
              TabOrder = 0
            end
            object PlQtItensEnt: TPanel
              Left = 30
              Top = 0
              Width = 185
              Height = 24
              Align = alRight
              Alignment = taRightJustify
              BevelOuter = bvNone
              Caption = 'Itens: 0'
              TabOrder = 1
            end
          end
        end
      end
      inherited PnlGrid: TPanel
        Height = 322
        ExplicitHeight = 316
        object SplRodapeGrid: TSplitter [0]
          Left = 0
          Top = 151
          Width = 956
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          AutoSnap = False
          Beveled = True
        end
        inherited DBGLista: TDBGrid
          Height = 151
          Columns = <
            item
              Expanded = False
              FieldName = 'vfecodigo'
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
              FieldName = 'vfsidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vferegistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbabertura'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbabertident'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vfeencerramento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbencerramento'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbencerraident'
              Width = 120
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 156
          Height = 160
          Visible = True
          ExplicitTop = 156
          ExplicitHeight = 160
          object listaRemessa: TDBGrid
            Left = 1
            Top = 25
            Width = 954
            Height = 134
            Align = alClient
            Color = clCream
            DataSource = DSmes
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            ReadOnly = True
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = listaRemessaDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'meschave'
                Width = 50
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Width = 250
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mesemissao'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mesregistro'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mesvalor'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mesdesconto'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mestotal'
                Width = 70
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'mesnumero'
                Width = 65
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tdfcodigo'
                Width = 25
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'tdfidentificacao'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'toeidentificacao'
                Width = 200
                Visible = True
              end>
          end
          object plbotoesitens: TPanel
            Left = 1
            Top = 1
            Width = 954
            Height = 24
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
            TabOrder = 1
            object LbItensSai: TLabel
              AlignWithMargins = True
              Left = 10
              Top = 0
              Width = 180
              Height = 24
              Margins.Left = 10
              Margins.Top = 0
              Margins.Right = 0
              Align = alLeft
              AutoSize = False
              Caption = 'Remessas Geradas'
              Layout = tlCenter
            end
            object PlTotaisSai: TPanel
              Left = 454
              Top = 0
              Width = 500
              Height = 24
              Align = alRight
              BevelOuter = bvNone
              TabOrder = 0
              Visible = False
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
                Align = alRight
                Alignment = taRightJustify
                BevelOuter = bvNone
                Caption = 'Itens: 0'
                TabOrder = 1
              end
            end
          end
        end
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Category = 'Venda Externa'
      OnExecute = ActIncluirExecute
    end
    object ActEncerrar: TAction [1]
      Category = 'Venda Externa'
      Caption = 'Encerrar'
      OnExecute = ActEncerrarExecute
    end
    object ActIncluirRemessa: TAction [2]
      Category = 'Remessas'
      Caption = 'Incluir Remessa'
      OnExecute = ActIncluirRemessaExecute
    end
    object ActVincularOS: TAction [3]
      Category = 'Ordens de Servi'#231'o'
      Caption = 'Vincular'
      OnExecute = ActVincularOSExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 280
    Top = 188
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT vfe.vfecodigo'
      '     , vfe.clbcodigo'
      '     , clb.clbidentificacao'
      '     , vfe.trmcodigo'
      '     , vfe.clbabertura'
      '     , clba.clbidentificacao AS clbabertident'
      '     , vfe.vferegistro'
      '     , vfe.vfscodigo'
      '     , vfs.vfsidentificacao'
      '     , vfe.clbencerramento'
      '     , clbe.clbidentificacao AS clbencerraident'
      '     , vfe.vfeencerramento'
      'FROM vfe'
      '  INNER JOIN clb'
      '    ON vfe.clbcodigo = clb.clbcodigo'
      '  INNER JOIN clb clba'
      '    ON vfe.clbabertura = clba.clbcodigo'
      '  LEFT JOIN clb clbe'
      '    ON vfe.clbencerramento = clbe.clbcodigo'
      '  INNER JOIN vfs'
      '    ON vfe.vfscodigo = vfs.vfscodigo')
    Left = 228
    Top = 188
    object uqtabelavfecodigo: TIntegerField
      DisplayLabel = 'Processo'
      FieldName = 'vfecodigo'
    end
    object uqtabelaclbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Colaborador'
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object uqtabelavferegistro: TDateTimeField
      DisplayLabel = 'Data de Abertura'
      FieldName = 'vferegistro'
    end
    object uqtabelavfscodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Est'#225'gio'
      FieldName = 'vfscodigo'
    end
    object uqtabelavfsidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'vfsidentificacao'
    end
    object uqtabelavfeencerramento: TDateTimeField
      DisplayLabel = 'Data de Encerramento'
      FieldName = 'vfeencerramento'
    end
    object uqtabelaclbabertura: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio Abertura'
      FieldName = 'clbabertura'
    end
    object uqtabelaclbabertident: TStringField
      DisplayLabel = 'Usu'#225'rio Abertura'
      FieldName = 'clbabertident'
      Size = 30
    end
    object uqtabelaclbencerramento: TIntegerField
      DisplayLabel = 'C'#243'd. Usu'#225'rio Encerramento'
      FieldName = 'clbencerramento'
    end
    object uqtabelaclbencerraident: TStringField
      DisplayLabel = 'Usu'#225'rio Encerramento'
      FieldName = 'clbencerraident'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800AC0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object mes: TUniQuery
    SQL.Strings = (
      'SELECT vfm.vfecodigo'
      '     , mes.meschave'
      '     , mes.etdcodigo'
      '     , etd.etdidentificacao'
      '     , mes.mesemissao'
      '     , mes.mesregistro'
      '     , mes.tdfcodigo'
      '     , tdf.tdfidentificacao'
      '     , mes.sdecodigo'
      '     , sde.sdeidentificacao'
      '     , mes.mesnumero'
      '     , mes.mesvalor'
      '     , mes.mesdesconto'
      '     , mes.mestotal'
      '     , toe.toeidentificacao'
      'FROM mes'
      '  JOIN etd'
      '    ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN tdf'
      '    ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN sde'
      '    ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN vfm'
      '    ON mes.meschave = vfm.meschave'
      '  JOIN toe'
      '    ON mes.toecodigo = toe.toecodigo')
    MasterSource = DSTabela
    MasterFields = 'vfecodigo'
    DetailFields = 'vfecodigo'
    Left = 496
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vfecodigo'
        Value = nil
      end>
    object mesvfecodigo: TIntegerField
      FieldName = 'vfecodigo'
    end
    object mesmeschave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'meschave'
    end
    object mesetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object mesetdidentificacao: TStringField
      DisplayLabel = 'Entidade'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object mesmesemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'mesemissao'
    end
    object mesmesregistro: TDateField
      DisplayLabel = 'Registro'
      FieldName = 'mesregistro'
    end
    object mestdfcodigo: TStringField
      DisplayLabel = 'C'#243'd. Tipo Documento'
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object mestdfidentificacao: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'tdfidentificacao'
      Size = 50
    end
    object messdecodigo: TStringField
      DisplayLabel = 'C'#243'd. Situa'#231#227'o Documento'
      FieldName = 'sdecodigo'
      Size = 2
    end
    object messdeidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o Documento'
      FieldName = 'sdeidentificacao'
      Size = 50
    end
    object mesmesnumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'mesnumero'
    end
    object mesmesvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mesvalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object mesmesdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'mesdesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object mesmestotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object mestoeidentificacao: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toeidentificacao'
      Size = 100
    end
  end
  object DSmes: TUniDataSource
    DataSet = mes
    Left = 544
    Top = 369
  end
  object orc: TUniQuery
    SQL.Strings = (
      'SELECT vfo.vfocodigo'
      '     , vfo.vfecodigo'
      '     , orc.orcchave'
      '     , orc.etdcodigo'
      '     , etd.etdidentificacao'
      '     , orc.orcdataabert'
      '     , oTot.orcgeral'
      '     , oTot.orcdesconto'
      '     , oTot.orctotal'
      '     , orc.stocodigo'
      '     , sto.stoidentificacao'
      '     , orc.clbcodigo'
      '     , orc.moccodigo'
      '     , orc.orcnome'
      '     , orc.orctelefone'
      '     , orc.orcendereco'
      '     , orc.orcdescrpagto'
      '     , orc.puocodigo'
      '     , puo.puoidentificacao'
      '     , orc.edrcodigo'
      '     , clb.clbidentificacao'
      '     , orc.orcobs'
      '     , orc.clbvendedor'
      '     , c.clbidentificacao AS clbvendedorident'
      '     , obj.veicodigo'
      '     , obj.eqpcodigo'
      '     , obj.objidentificacao'
      '     , obj.objmodelo'
      'FROM vfo'
      '  INNER JOIN orc'
      '    ON vfo.orcchave = orc.orcchave'
      '  INNER JOIN v_orc_totais oTot'
      '    ON orc.orcchave = oTot.orcchave'
      '  INNER JOIN v_orc_etd etd'
      '    ON orc.orcchave = etd.orcchave'
      '  INNER JOIN sto'
      '    ON orc.stocodigo = sto.stocodigo'
      '  INNER JOIN puo'
      '    ON orc.puocodigo = puo.puocodigo'
      '  INNER JOIN clb'
      '    ON orc.clbcodigo = clb.clbcodigo'
      '  LEFT JOIN clb c'
      '    ON orc.clbvendedor = c.clbcodigo'
      '  LEFT JOIN v_vei_eqp obj'
      '    ON orc.orcchave = obj.orcchave'
      'WHERE orc.foacodigo = 2'
      'AND orc.stocodigo IN (3, 4)')
    MasterSource = DSTabela
    MasterFields = 'vfecodigo'
    DetailFields = 'vfecodigo'
    Left = 384
    Top = 498
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vfecodigo'
        Value = nil
      end>
    object orcvfecodigo: TIntegerField
      FieldName = 'vfecodigo'
    end
    object orcorcchave: TIntegerField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 8
      FieldName = 'orcchave'
      Required = True
    end
    object orcetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 6
      FieldName = 'etdcodigo'
      Required = True
    end
    object orcetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      DisplayWidth = 40
      FieldName = 'etdidentificacao'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object orcorcdataabert: TDateField
      DisplayLabel = 'Data'
      FieldName = 'orcdataabert'
      Required = True
    end
    object orcclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Visible = False
    end
    object orcclbidentificacao: TStringField
      DisplayLabel = 'Usu'#225'rio'
      DisplayWidth = 15
      FieldName = 'clbidentificacao'
      Size = 15
    end
    object orcorcnome: TStringField
      FieldName = 'orcnome'
      Visible = False
      Size = 50
    end
    object orcorctelefone: TStringField
      FieldName = 'orctelefone'
      Visible = False
    end
    object orcorcendereco: TStringField
      FieldName = 'orcendereco'
      Visible = False
      Size = 50
    end
    object orcorcdescrpagto: TStringField
      FieldName = 'orcdescrpagto'
      Visible = False
      Size = 250
    end
    object orcorcgeral: TFloatField
      DisplayLabel = 'Geral R$'
      FieldName = 'orcgeral'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorcdesconto: TFloatField
      DisplayLabel = 'Desc. R$'
      FieldName = 'orcdesconto'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcorctotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'orctotal'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object orcstoidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'stoidentificacao'
      Size = 30
    end
    object orcpuoidentificacao: TStringField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'puoidentificacao'
      Size = 30
    end
    object orcedrcodigo: TIntegerField
      FieldName = 'edrcodigo'
    end
    object orcstocodigo: TIntegerField
      FieldName = 'stocodigo'
    end
    object orcorcobs: TStringField
      DisplayLabel = 'Inf. Complementar'
      FieldName = 'orcobs'
      Size = 250
    end
    object orcclbvendedor: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'clbvendedor'
    end
    object orcclbvendedorident: TStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'clbvendedorident'
      Size = 30
    end
    object orcveicodigo: TIntegerField
      FieldName = 'veicodigo'
    end
    object orceqpcodigo: TIntegerField
      FieldName = 'eqpcodigo'
    end
    object orcobjidentificacao: TStringField
      DisplayLabel = 'Objeto'
      FieldName = 'objidentificacao'
      Size = 60
    end
    object orcobjmodelo: TStringField
      DisplayLabel = 'Modelo Objeto'
      FieldName = 'objmodelo'
      Size = 200
    end
  end
  object DSorc: TUniDataSource
    DataSet = orc
    Left = 432
    Top = 498
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgmsai.cfgcodigo'
      '     , cfgmsai.cfgidentificavendedor'
      '     , cfgmsai.cfgusaveiculo'
      '     , cfgmsai.cfgidentificaequip'
      'FROM cfgmsai')
    Left = 358
    Top = 184
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgidentificavendedor: TIntegerField
      FieldName = 'cfgidentificavendedor'
    end
    object cfgcfgusaveiculo: TIntegerField
      FieldName = 'cfgusaveiculo'
    end
    object cfgcfgidentificaequip: TIntegerField
      FieldName = 'cfgidentificaequip'
    end
  end
end
