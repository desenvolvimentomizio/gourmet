inherited fractz: Tfractz
  Width = 1054
  ExplicitWidth = 1054
  inherited PlGeral: TPanel
    Width = 1054
    ExplicitWidth = 1054
    inherited PlLista: TPanel
      Width = 910
      ExplicitWidth = 910
      inherited SplLista: TSplitter
        Width = 910
        ExplicitWidth = 910
      end
      inherited SpFilter: TSplitter
        Width = 910
        ExplicitWidth = 910
      end
      inherited PlRodaPe: TPanel
        Width = 910
        ExplicitWidth = 910
      end
      inherited PlFiltros: TPanel
        Width = 910
        ExplicitWidth = 910
      end
      inherited PlSelecao: TPanel
        Width = 910
        ExplicitWidth = 910
        inherited GBPlSelecao: TGroupBox
          Width = 906
          ExplicitWidth = 906
          inherited DBLista: TDBGrid
            Width = 799
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 910
        ExplicitWidth = 910
        inherited DBGLista: TDBGrid
          Width = 910
          Height = 375
          Columns = <
            item
              Expanded = False
              FieldName = 'rmgchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgidentificacao'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rmgvalor'
              Width = 75
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 375
          Width = 910
          Height = 45
          Visible = True
          ExplicitTop = 375
          ExplicitWidth = 910
          ExplicitHeight = 45
          object GroupBox2: TGroupBox
            Left = 1
            Top = 1
            Width = 130
            Height = 43
            Align = alLeft
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
          object GroupBox3: TGroupBox
            Left = 281
            Top = 1
            Width = 157
            Height = 43
            Align = alRight
            Caption = 'Registrado a Cr'#233'dito R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
            Visible = False
            object PlRegistradoCre: TPanel
              Left = 2
              Top = 16
              Width = 153
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
          object GroupBox7: TGroupBox
            Left = 752
            Top = 1
            Width = 157
            Height = 43
            Align = alRight
            Caption = 'Diferen'#231'a  a D'#233'bito R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
            object PlDiferencaDeb: TPanel
              Left = 2
              Top = 16
              Width = 153
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
            Left = 595
            Top = 1
            Width = 157
            Height = 43
            Align = alRight
            Caption = 'Registrado a D'#233'bito R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
            Visible = False
            object PlRegistradoDeb: TPanel
              Left = 2
              Top = 16
              Width = 153
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
          object GroupBox4: TGroupBox
            Left = 438
            Top = 1
            Width = 157
            Height = 43
            Align = alRight
            Caption = 'Diferen'#231'a  a Cr'#233'dito R$'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
            object PlDiferencaCre: TPanel
              Left = 2
              Top = 16
              Width = 153
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
      Width = 1054
      ExplicitWidth = 1054
      inherited plid: TPanel
        Left = 674
        ExplicitLeft = 674
      end
      inherited PlSair: TPanel
        Left = 893
        ExplicitLeft = 893
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
    inherited ActPesquisar: TAction
      Enabled = False
    end
    inherited ActRelatorios: TAction
      Enabled = False
    end
    inherited ActConfiguracoes: TAction
      Enabled = False
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 288
    Top = 268
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mlg.ltechave,'
      '  mlg.mlgdata,'
      '  rmg.rmgchave,'
      '  mlg.mlgchave,'
      '  mlg.clbcodigo,'
      '  rmg.phgcodigo,'
      '  rmg.rmgdata,'
      '  rmg.rmgvalor,'
      '  rmg.rmgcomplemento,'
      '  rmg.pcgcodigo,'
      '  rmg.cedcodigo,'
      '  rmg.rmgcompetencia,'
      '  rmg.rmginclusao,'
      '  rmg.rmgtipo,'
      '  phg.phgidentificacao,'
      
        '  concat(pcg.pcgidentificacao, '#39' - '#39', pcg.pcgestrutural) AS pcgi' +
        'dentificacao,'
      '  ced.cedidentificacao'
      'FROM rmg'
      '  INNER JOIN mlg'
      '    ON rmg.mlgchave = mlg.mlgchave'
      '  INNER JOIN phg'
      '    ON rmg.phgcodigo = phg.phgcodigo'
      '  LEFT JOIN pcg '
      '    ON rmg.pcgcodigo = pcg.pcgcodigo'
      '  LEFT JOIN ced '
      '    ON rmg.cedcodigo = ced.cedcodigo'
      '  where mlg.ltechave=:ltechave')
    Left = 332
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ltechave'
        Value = nil
      end>
    object uqtabelarmgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'rmgchave'
    end
    object uqtabelamlgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mlgchave'
    end
    object uqtabelapcgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcgcodigo'
    end
    object uqtabelapcgidentificacao: TStringField
      DisplayLabel = 'Conta a Cont'#225'bil'
      FieldName = 'pcgidentificacao'
      Size = 150
    end
    object uqtabelacedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object uqtabelacedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      DisplayWidth = 35
      FieldName = 'cedidentificacao'
      Size = 35
    end
    object uqtabelarmgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rmgvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object pct: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tdg.tfdcodigo,'
      '  tdg.tdgcodigo,'
      '  pct.togorigctacre,'
      '  pct.togorigctadeb,'
      '  pct.pcthistpadrao,'
      '  pct.pctcampoval,'
      '  pct.pctcampohis,'
      '  tog_cre.togcampo as togcampo_cre,'
      '  tog_cre.togtabela as togtabela_cre,'
      '  tog_deb.togcampo AS togcampo_deb,'
      '  tog_deb.togtabela AS togtabela_deb'
      'FROM pct'
      '  INNER JOIN tog tog_cre'
      '    ON pct.togorigctacre = tog_cre.togcodigo'
      '  INNER JOIN tog tog_deb'
      '    ON pct.togorigctadeb = tog_deb.togcodigo'
      '  INNER JOIN tdg'
      '    ON pct.tdgcodigo = tdg.tdgcodigo'
      '    where tdg.tfdcodigo=:tfdcodigo;')
    Left = 656
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tfdcodigo'
        Value = nil
      end>
  end
end
