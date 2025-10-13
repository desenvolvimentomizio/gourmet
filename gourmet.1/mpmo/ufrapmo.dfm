inherited frapmo: Tfrapmo
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 326
        Height = 10
        Visible = True
        ExplicitLeft = 0
        ExplicitTop = 544
        ExplicitHeight = 10
      end
      inherited PlRodaPe: TPanel
        Top = 336
        Height = 244
        Visible = True
        ExplicitTop = 336
        ExplicitHeight = 244
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 921
          Height = 244
          Align = alLeft
          BevelOuter = bvNone
          Caption = 'Panel1'
          TabOrder = 0
          object DBGridpmp: TDBGrid
            Left = 0
            Top = 0
            Width = 729
            Height = 244
            Align = alLeft
            DataSource = Dpmp
            DrawingStyle = gdsGradient
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick]
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGridpmpDrawColumnCell
            OnTitleClick = DBGridpmpTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'pmpchave'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'procodigo'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pronome'
                Width = 310
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pmpregistro'
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'pmpexclusao'
                Visible = True
              end>
          end
        end
      end
      inherited PnlGrid: TPanel
        Height = 197
        ExplicitHeight = 197
        inherited DBGLista: TDBGrid
          Height = 172
          Columns = <
            item
              Expanded = False
              FieldName = 'pmocodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pmoidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pmodatainicial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pmopercentualavista'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pmopercentualaprazo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pmodatafinal'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 172
          ExplicitTop = 172
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
    object ActRemoverDaPromocao: TAction
      Category = 'Produtos'
      Caption = 'Remover da Promo'#231#227'o'
      OnExecute = ActRemoverDaPromocaoExecute
    end
    object ActRemoverTodos: TAction
      Category = 'Produtos'
      Caption = 'Remover Todos'
      OnExecute = ActRemoverTodosExecute
    end
    object ActIncluirNaPromocao: TAction
      Category = 'Produtos'
      Caption = 'Incluir na Promo'#231#227'o'
      OnExecute = ActIncluirNaPromocaoExecute
    end
    object ActIncluirTodos: TAction
      Category = 'Produtos'
      Caption = 'Incluir Todos'
      OnExecute = ActIncluirTodosExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pmocodigo,'
      '  pmoidentificacao,'
      '  pmopercentualavista,'
      '  pmopercentualaprazo,'
      '  pmodatainicial,'
      '  pmodatafinal'
      'FROM pmo')
    Left = 500
    object uqtabelapmocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pmocodigo'
    end
    object uqtabelapmoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pmoidentificacao'
      Size = 50
    end
    object uqtabelapmopercentualavista: TFloatField
      DisplayLabel = '% A Vista'
      FieldName = 'pmopercentualavista'
      DisplayFormat = '#0.000'
    end
    object uqtabelapmopercentualaprazo: TFloatField
      DisplayLabel = '% A Prazo'
      FieldName = 'pmopercentualaprazo'
      DisplayFormat = '#0.000'
    end
    object uqtabelapmodatainicial: TDateField
      DisplayLabel = 'Inicio'
      FieldName = 'pmodatainicial'
    end
    object uqtabelapmodatafinal: TDateField
      DisplayLabel = 'Final'
      FieldName = 'pmodatafinal'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited MenuInstrucoes: TPopupMenu
    Left = 406
    Top = 293
  end
  object pmp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pmp.pmpchave,'
      '  pro.pronome,'
      '  pmp.pmocodigo,'
      '  pmp.procodigo,'
      '  pmp.pmpregistro,'
      '  pmp.clbregistro,'
      '  pmp.pmpexclusao,'
      '  pmp.clbexclusao'
      'FROM pmp'
      '  INNER JOIN pro'
      '    ON pmp.procodigo = pro.procodigo'
      'where pmp.pmocodigo=:pmocodigo ')
    Left = 600
    Top = 444
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pmocodigo'
        Value = nil
      end>
    object pmppmpchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'pmpchave'
    end
    object pmpprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object pmppronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 50
    end
    object pmppmpregistro: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'pmpregistro'
    end
    object pmppmpexclusao: TDateTimeField
      DisplayLabel = 'Sa'#237'da'
      FieldName = 'pmpexclusao'
    end
  end
  object Dpmp: TDataSource
    DataSet = pmp
    Left = 640
    Top = 444
  end
end
