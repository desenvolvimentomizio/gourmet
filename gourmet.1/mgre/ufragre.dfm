inherited fragre: Tfragre
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 422
        Height = 10
        Visible = True
        ExplicitTop = 374
        ExplicitHeight = 10
      end
      inherited PlRodaPe: TPanel
        Top = 432
        Height = 148
        Visible = True
        ExplicitTop = 432
        ExplicitHeight = 148
        object DBGridDRE: TDBGrid
          Left = 0
          Top = 0
          Width = 754
          Height = 148
          Align = alLeft
          BorderStyle = bsNone
          Color = clCream
          DataSource = Ddre
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          PopupMenu = MenuManutencao
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGridDREDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'drechave'
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
            end>
        end
      end
      inherited PnlGrid: TPanel
        Height = 293
        ExplicitHeight = 293
        inherited DBGLista: TDBGrid
          Height = 268
          Columns = <
            item
              Expanded = False
              FieldName = 'grecodigo'
              Width = 45
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'greposicao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'greidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 268
          ExplicitTop = 268
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
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 312
    Top = 260
  end
  inherited MenuManutencao: TPopupMenu
    Left = 776
    Top = 224
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gre.grecodigo,'
      '  gre.dmccodigo,'
      '  gre.greidentificacao,'
      '  gre.greposicao'
      'FROM gre '
      '  where gre.dmccodigo=:dmccodigo')
    Left = 316
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dmccodigo'
        Value = nil
      end>
    object uqtabelagrecodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'grecodigo'
    end
    object uqtabeladmccodigo: TIntegerField
      FieldName = 'dmccodigo'
    end
    object uqtabelagreidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Grupo'
      FieldName = 'greidentificacao'
      Size = 50
    end
    object uqtabelagreposicao: TIntegerField
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'greposicao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object dre: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dre.drechave,'
      '  dre.grecodigo, '
      ' dre.ccgcodigo,'
      
        ' CONCAT(ccg.ccgestrutural, '#39' '#39' ,ccg.ccgidentificacao) as ccgiden' +
        'tificacao'
      '  FROM dre'
      'INNER  JOIN ccg ON dre.ccgcodigo=ccg.ccgcodigo'
      '  where dre.grecodigo=:grecodigo')
    Left = 800
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'grecodigo'
        Value = nil
      end>
    object dredrechave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'drechave'
    end
    object dregrecodigo: TIntegerField
      FieldName = 'grecodigo'
    end
    object dreccgcodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'ccgcodigo'
    end
    object dreccgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Conta Gerencial'
      FieldName = 'ccgidentificacao'
      Size = 50
    end
  end
  object Ddre: TDataSource
    DataSet = dre
    Left = 896
    Top = 299
  end
end
