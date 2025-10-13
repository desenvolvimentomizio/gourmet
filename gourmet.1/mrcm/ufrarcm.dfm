inherited frarcm: Tfrarcm
  Height = 708
  ExplicitHeight = 708
  inherited PlGeral: TPanel
    Height = 708
    inherited SplBotoes: TSplitter
      Height = 688
    end
    inherited PlBotoes: TPanel
      Height = 688
      inherited ImageLogoBase: TImage
        Top = 609
      end
      inherited PlInfo: TPanel
        Top = 670
      end
      inherited SBBotoes: TScrollBox
        Height = 609
      end
    end
    inherited PlLista: TPanel
      Height = 688
      inherited SplLista: TSplitter
        Top = 543
        Visible = True
        ExplicitTop = 429
      end
      inherited PlRodaPe: TPanel
        Top = 548
        Height = 140
        Visible = True
        ExplicitLeft = 0
        ExplicitTop = 440
        ExplicitHeight = 140
        object plbotoesitensEnt: TPanel
          Left = 0
          Top = 0
          Width = 1034
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
            Align = alLeft
            AutoSize = False
            Caption = 'Itens de Entrada'
            Layout = tlCenter
          end
          object PlTotaisEnt: TPanel
            Left = 534
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
        object listaitensEnt: TDBGrid
          Left = 0
          Top = 24
          Width = 1034
          Height = 116
          Align = alClient
          DataSource = DSitmEnt
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
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
      inherited PnlGrid: TPanel
        Height = 414
        ExplicitHeight = 306
        object SplRodapeGrid: TSplitter [0]
          Left = 0
          Top = 269
          Width = 1034
          Height = 5
          Cursor = crVSplit
          Align = alBottom
          AutoSnap = False
          Beveled = True
          ExplicitTop = 155
          ExplicitWidth = 956
        end
        inherited DBGLista: TDBGrid
          Height = 269
          Columns = <
            item
              Expanded = False
              FieldName = 'meschave'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Width = 52
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
              FieldName = 'ttoidentificacao'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mestotal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mesnumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'messerie'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temcodigo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'temidentificacao'
              Width = 80
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
              Width = 180
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdecodigo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sdeidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'toeidentificacao'
              Width = 250
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 274
          Height = 140
          Visible = True
          ExplicitTop = 166
          ExplicitHeight = 140
          object plbotoesitens: TPanel
            Left = 1
            Top = 1
            Width = 1032
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
              Align = alLeft
              AutoSize = False
              Caption = 'Itens de Sa'#237'da'
              Layout = tlCenter
            end
            object PlTotaisSai: TPanel
              Left = 532
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
          object listaitens: TDBGrid
            Left = 1
            Top = 25
            Width = 1032
            Height = 114
            Align = alClient
            DataSource = DSitm
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
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      Category = 'Reclassifica'#231#227'o'
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      Category = 'Reclassifica'#231#227'o'
      Enabled = False
      Visible = False
      OnExecute = ActAlterarExecute
    end
    inherited ActExcluir: TAction
      Category = 'Reclassifica'#231#227'o'
      Enabled = True
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT mes.meschave'
      '     , mes.etdcodigo'
      '     , etd.etdidentificacao'
      '     , mes.mesemissao'
      '     , mes.mesregistro'
      '     , mes.tdfcodigo'
      '     , tdf.tdfidentificacao'
      '     , mes.sdecodigo'
      '     , sde.sdeidentificacao'
      '     , mes.messerie'
      '     , mes.mesnumero'
      '     , mes.mesvalor'
      '     , mes.mestotal'
      '     , mes.clbcodigo'
      '     , clb.clbidentificacao'
      '     , mes.temcodigo'
      '     , tem.temidentificacao'
      '     , toe.toeidentificacao'
      '     , tto.ttoidentificacao'
      '     , mes.meschaverecla'
      'FROM mes'
      '  JOIN toe'
      '    ON mes.toecodigo = toe.toecodigo'
      '  JOIN tto'
      '    ON toe.ttocodigo = tto.ttocodigo'
      '  JOIN etd'
      '    ON mes.etdcodigo = etd.etdcodigo'
      '  JOIN tdf'
      '    ON mes.tdfcodigo = tdf.tdfcodigo'
      '  JOIN sde'
      '    ON mes.sdecodigo = sde.sdecodigo'
      '  JOIN clb'
      '    ON mes.clbcodigo = clb.clbcodigo'
      '  JOIN tem'
      '    ON mes.temcodigo = tem.temcodigo'
      'WHERE toe.ttocodigo = 8 -- Reclassifica'#231#227'o'
      'AND toe.ttecodigo = 1 -- Sa'#237'das')
    object uqtabelameschave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'meschave'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Entidade'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Entidade'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object uqtabelamesemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'mesemissao'
    end
    object uqtabelamesregistro: TDateField
      DisplayLabel = 'Registro'
      FieldName = 'mesregistro'
    end
    object uqtabelatdfcodigo: TStringField
      DisplayLabel = 'C'#243'd. Tipo Doc.'
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object uqtabelatdfidentificacao: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'tdfidentificacao'
      Size = 50
    end
    object uqtabelasdecodigo: TStringField
      DisplayLabel = 'C'#243'd. Sit. Doc.'
      FieldName = 'sdecodigo'
      Size = 2
    end
    object uqtabelasdeidentificacao: TStringField
      DisplayLabel = 'Situa'#231#227'o Documento'
      FieldName = 'sdeidentificacao'
      Size = 50
    end
    object uqtabelamesserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'messerie'
      Size = 5
    end
    object uqtabelamesnumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'mesnumero'
    end
    object uqtabelamestotal: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mestotal'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
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
    object uqtabelatemcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Est'#225'gio'
      FieldName = 'temcodigo'
    end
    object uqtabelatemidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'temidentificacao'
      Size = 50
    end
    object uqtabelatoeidentificacao: TStringField
      DisplayLabel = 'Opera'#231#227'o'
      FieldName = 'toeidentificacao'
      Size = 100
    end
    object uqtabelattoidentificacao: TStringField
      DisplayLabel = 'Tipo Opera'#231#227'o'
      FieldName = 'ttoidentificacao'
      Size = 50
    end
    object uqtabelameschaverecla: TIntegerField
      FieldName = 'meschaverecla'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800F40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
  object itm: TUniQuery
    KeyFields = 'meschave'
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.meschave'
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
      '    ON pro.unicodigo = unib.unicodigo')
    MasterSource = DSTabela
    MasterFields = 'meschave'
    DetailFields = 'meschave'
    Constraints = <>
    Left = 456
    Top = 387
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object itmitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object itmmeschave: TIntegerField
      FieldName = 'meschave'
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
    Left = 512
    Top = 387
  end
  object itmEnt: TUniQuery
    SQL.Strings = (
      'SELECT itm.itmchave'
      '     , itm.meschave'
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
      '    ON pro.unicodigo = unib.unicodigo')
    MasterSource = DSTabela
    MasterFields = 'meschaverecla'
    DetailFields = 'meschave'
    Constraints = <>
    Left = 456
    Top = 483
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschaverecla'
        Value = nil
      end>
    object itmEntitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object itmEntmeschave: TIntegerField
      FieldName = 'meschave'
    end
    object itmEntitmitem: TIntegerField
      DisplayLabel = 'Item'
      FieldName = 'itmitem'
    end
    object itmEntprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
    end
    object itmEntpronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object itmEntitmquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'itmquantidade'
    end
    object itmEntitmvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object itmEntitmdesconto: TFloatField
      DisplayLabel = 'Desconto R$'
      FieldName = 'itmdesconto'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object itmEntitmtotal: TFloatField
      DisplayLabel = 'Total R$'
      FieldName = 'itmtotal'
      DisplayFormat = '#,###,##0.00'
      EditFormat = '#,###,##0.00'
    end
    object itmEntunisimbolo: TStringField
      DisplayLabel = 'Un.'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object itmEntitmcontendo: TFloatField
      DisplayLabel = 'Contendo'
      FieldName = 'itmcontendo'
    end
    object itmEntunisimbolobase: TStringField
      DisplayLabel = 'Un. Base'
      FieldName = 'unisimbolobase'
      Size = 6
    end
  end
  object DSitmEnt: TUniDataSource
    DataSet = itmEnt
    Left = 512
    Top = 483
  end
end
