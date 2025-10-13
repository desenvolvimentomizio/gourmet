inherited frache: Tfrache
  Width = 1109
  ExplicitWidth = 1109
  inherited PlGeral: TPanel
    Width = 1109
    ExplicitWidth = 1109
    inherited PlBotoes: TPanel
      inherited SBBotoes: TScrollBox
        ParentColor = False
      end
    end
    inherited PlLista: TPanel
      Width = 965
      ExplicitWidth = 965
      inherited SplLista: TSplitter
        Width = 965
        ExplicitWidth = 965
      end
      inherited SpFilter: TSplitter
        Width = 965
        ExplicitWidth = 965
      end
      inherited PlRodaPe: TPanel
        Width = 965
        ExplicitWidth = 965
      end
      inherited PlFiltros: TPanel
        Width = 965
        ExplicitWidth = 965
      end
      inherited PlSelecao: TPanel
        Width = 965
        ExplicitWidth = 965
        inherited GBPlSelecao: TGroupBox
          Width = 961
          ExplicitWidth = 961
          inherited DBLista: TDBGrid
            Width = 854
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 965
        ExplicitWidth = 965
        inherited DBGLista: TDBGrid
          Width = 965
          Height = 375
          Columns = <
            item
              Expanded = False
              FieldName = 'chechave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chenome'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chedocumento'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chetelefone'
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
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chevencimento'
              Width = 80
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 375
          Width = 965
          Height = 45
          Visible = True
          ExplicitTop = 375
          ExplicitWidth = 965
          ExplicitHeight = 45
          object GBARegistrar: TGroupBox
            Left = 574
            Top = 1
            Width = 130
            Height = 43
            Align = alRight
            Caption = 'A Registrar R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            object PlARegistrar: TPanel
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
          object GBRegistrado: TGroupBox
            Left = 704
            Top = 1
            Width = 130
            Height = 43
            Align = alRight
            Caption = 'Registrado R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
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
          object GBDiferenca: TGroupBox
            Left = 834
            Top = 1
            Width = 130
            Height = 43
            Align = alRight
            Caption = 'Diferen'#231'a R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object PlDiferenca: TPanel
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
      Width = 1109
      ExplicitWidth = 1109
      inherited plid: TPanel
        Left = 659
        ExplicitLeft = 659
      end
      inherited PlSair: TPanel
        Left = 903
        ExplicitLeft = 903
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 288
    Top = 260
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
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
      '  etd.etdidentificacao'
      'FROM tche che, '
      '     ltc, '
      '     etd'
      'where che.chechave=ltc.chechave'
      'and che.etdcodigo=etd.etdcodigo'
      'AND ltc.dtlchave = :dtlchave')
    Left = 356
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtlchave'
        Value = nil
      end>
    object uqtabelachechave: TIntegerField
      DisplayLabel = 'Nr.Registro'
      FieldName = 'chechave'
    end
    object uqtabelacheemissao: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'cheemissao'
      EditMask = '!99/99/9999;1;_'
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
      DisplayLabel = 'Nr. Conta'
      FieldName = 'checonta'
      Size = 15
    end
    object uqtabelacheagencia: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'cheagencia'
      Size = 10
    end
    object uqtabelabcocodigo: TStringField
      DisplayLabel = 'Banco'
      FieldName = 'bcocodigo'
      Size = 3
    end
    object uqtabelachenome: TStringField
      DisplayLabel = 'Nome do Emitente do Cheque'
      FieldName = 'chenome'
      Size = 50
    end
    object uqtabelachedocumento: TStringField
      DisplayLabel = 'Nr. Doc. Emitente'
      FieldName = 'chedocumento'
      Size = 30
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
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'etdidentificacao'
      Size = 60
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object ltc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ltcchave,'
      '  chechave,'
      '  dtlchave,'
      '  schcodigo,'
      '  mdccodigo'
      'FROM ltc limit 0')
    Left = 362
    Top = 348
    object ltcltcchave: TIntegerField
      FieldName = 'ltcchave'
    end
    object ltcchechave: TIntegerField
      FieldName = 'chechave'
    end
    object ltcdtlchave: TIntegerField
      FieldName = 'dtlchave'
    end
    object ltcschcodigo: TIntegerField
      FieldName = 'schcodigo'
    end
    object ltcmdccodigo: TIntegerField
      FieldName = 'mdccodigo'
    end
  end
end
