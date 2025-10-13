inherited framcg: Tframcg
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Height = 374
          Columns = <
            item
              Expanded = False
              FieldName = 'mcgchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccgcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ccgidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mcgcompetencia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mcgdata'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mcgvalor'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 374
          Height = 46
          Visible = True
          ExplicitTop = 374
          ExplicitHeight = 46
          object GroupBox2: TGroupBox
            Left = 773
            Top = 1
            Width = 130
            Height = 44
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
              Height = 26
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
            Left = 643
            Top = 1
            Width = 130
            Height = 44
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
              Height = 26
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
            Left = 903
            Top = 1
            Width = 130
            Height = 44
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
              Height = 26
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
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mcg.mcgchave,'
      '  mcg.ccgcodigo,'
      '  ccg.ccgidentificacao,'
      '  mcg.mcgvalor,'
      '  mcg.mcgdata,'
      '  mcg.mcgcompetencia'
      
        'FROM mcg, ccg WHERE mcg.ccgcodigo=ccg.ccgcodigo and mcgchaveorig' +
        'em=:mcgchaveorigem and rfichave=:rfichave'
      ''
      ''
      '-- filtros')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mcgchaveorigem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object uqtabelamcgchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mcgchave'
    end
    object uqtabelaccgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ccgcodigo'
    end
    object uqtabelaccgidentificacao: TStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'ccgidentificacao'
      Size = 50
    end
    object uqtabelamcgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mcgvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelamcgdata: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'mcgdata'
    end
    object uqtabelamcgcompetencia: TStringField
      DisplayLabel = 'Competencia'
      FieldName = 'mcgcompetencia'
      Size = 10
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
