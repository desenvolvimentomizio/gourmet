inherited fracch: Tfracch
  Width = 1241
  ExplicitWidth = 1241
  inherited PlGeral: TPanel
    Width = 1241
    ExplicitWidth = 1241
    inherited PlLista: TPanel
      Width = 1097
      ExplicitWidth = 1097
      inherited SplLista: TSplitter
        Top = 480
        Width = 1097
        ExplicitTop = 432
        ExplicitWidth = 1097
      end
      inherited SpFilter: TSplitter
        Width = 1097
        ExplicitWidth = 1097
      end
      inherited PlRodaPe: TPanel
        Top = 485
        Width = 1097
        Height = 95
        Visible = True
        ExplicitTop = 485
        ExplicitWidth = 1097
        ExplicitHeight = 95
      end
      inherited PlFiltros: TPanel
        Width = 1097
        ExplicitWidth = 1097
      end
      inherited PlSelecao: TPanel
        Width = 1097
        ExplicitWidth = 1097
        inherited GBPlSelecao: TGroupBox
          Width = 1093
          ExplicitWidth = 1093
          inherited DBLista: TDBGrid
            Width = 986
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1097
        Height = 351
        ExplicitWidth = 1097
        ExplicitHeight = 351
        inherited DBGLista: TDBGrid
          Width = 1097
          Height = 306
          Columns = <
            item
              Expanded = False
              FieldName = 'chechave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctaidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chenome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chedocumento'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chetelefone'
              Width = 90
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bcocodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cheagencia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'checonta'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chenumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chevalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chevencimento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'schidentificacao'
              Width = 100
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 306
          Width = 1097
          Height = 45
          Visible = True
          ExplicitTop = 306
          ExplicitWidth = 1097
          ExplicitHeight = 45
          object GroupBox3: TGroupBox
            Left = 966
            Top = 1
            Width = 130
            Height = 43
            Align = alRight
            Caption = 'Total R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object PlRegistrado: TPanel
              Left = 2
              Top = 16
              Width = 126
              Height = 25
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentBackground = False
              ParentFont = False
              TabOrder = 0
            end
          end
          object GroupBox1: TGroupBox
            Left = 836
            Top = 1
            Width = 130
            Height = 43
            Align = alRight
            Caption = 'Pendentes R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            object PlPendentes: TPanel
              Left = 2
              Top = 16
              Width = 126
              Height = 25
              Align = alClient
              Alignment = taRightJustify
              BevelOuter = bvLowered
              Caption = '0,00'
              Color = 12615680
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWhite
              Font.Height = -15
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
    inherited PlTitulo: TPanel
      Width = 1241
      ExplicitWidth = 1241
      inherited plid: TPanel
        Left = 816
        Caption = '02.02.14.002-01'
        ExplicitLeft = 816
      end
      inherited PlSair: TPanel
        Left = 1035
        ExplicitLeft = 1035
      end
    end
  end
  inherited acoes: TActionList
    object ActLiquidar: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Liquidar'
      OnExecute = ActLiquidarExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 272
    Top = 236
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  che.chechave,'
      '  che.cheemissao,'
      '  che.chevencimento,'
      '  che.chenumero,'
      '  che.checonta,'
      '  che.cheagencia,'
      '  che.bcocodigo,'
      '  che.chenome,'
      '  che.chedocumento,'
      '  che.chetelefone,'
      '  che.chevalor,'
      '  ltc.schcodigo,'
      '  sch.schidentificacao,'
      '  ltc.ltcchave,'
      '  mdc.mdccodigo,'
      '  mdc.mdcidentificacao,'
      '  cta.ctacodigo,'
      '  cta.ctaidentificacao,'
      '  cco.ccochave'
      'FROM ltc'
      '  INNER JOIN che'
      '    ON ltc.chechave = che.chechave'
      '  INNER JOIN sch'
      '    ON ltc.schcodigo = sch.schcodigo'
      '  INNER JOIN dtl'
      '    ON ltc.dtlchave = dtl.dtlchave'
      '  INNER JOIN clt'
      '    ON dtl.ltechave = clt.ltechave'
      '  INNER JOIN cco'
      '    ON clt.ccochave = cco.ccochave'
      '  INNER JOIN cta'
      '    ON cco.ctacodigo = cta.ctacodigo'
      '  INNER JOIN mdc'
      '    ON ltc.mdccodigo = mdc.mdccodigo'
      'WHERE cco.ctacodigo NOT IN (SELECT ctacodigo FROM tch)'
      '  and '
      '/*Situa'#231#227'o atual do cheque*/'
      '(ltc.ltcchave, ltc.schcodigo) = (SELECT'
      '    l.ltcchave,'
      '    l.schcodigo'
      '  FROM ltc l'
      '  WHERE l.chechave = che.chechave'
      '  ORDER BY l.ltcchave DESC LIMIT 1) AND'
      
        '/*Traz apenas movimenta'#231#227'o do '#250'ltimo registro na conta corrente ' +
        '*/'
      'clt.cltchave = (SELECT'
      '    c.cltchave'
      '  FROM clt c'
      '  WHERE c.ltechave = dtl.ltechave '
      '  ORDER BY c.cltchave DESC LIMIT 1)')
    Left = 348
    Top = 272
    object uqtabelachechave: TIntegerField
      DisplayLabel = 'Nr. Registro'
      FieldName = 'chechave'
    end
    object uqtabelacheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
    end
    object uqtabelachevencimento: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'chevencimento'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelachenumero: TStringField
      DisplayLabel = 'Nr. Cheque'
      FieldName = 'chenumero'
      Size = 10
    end
    object uqtabelacheconta: TStringField
      DisplayLabel = 'Conta do Cheque'
      FieldName = 'checonta'
      Size = 10
    end
    object uqtabelacheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia do Cheque'
      FieldName = 'cheagencia'
      Size = 15
    end
    object uqtabelabcocodigo: TStringField
      DisplayLabel = 'Bco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object uqtabelachenome: TStringField
      DisplayLabel = 'Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object uqtabelachedocumento: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'chedocumento'
    end
    object uqtabelachetelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'chetelefone'
    end
    object uqtabelachevalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'chevalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
    object uqtabelaschidentificacao: TStringField
      Tag = 999
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'schidentificacao'
      Size = 30
    end
    object uqtabelaltcchave: TIntegerField
      FieldName = 'ltcchave'
    end
    object uqtabelactacodigo: TIntegerField
      DisplayLabel = 'Cta.'
      FieldName = 'ctacodigo'
    end
    object uqtabelactaidentificacao: TStringField
      DisplayLabel = 'Conta Corrente Atual'
      FieldName = 'ctaidentificacao'
      Size = 50
    end
    object uqtabelaccochave: TIntegerField
      FieldName = 'ccochave'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800A40010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
end
