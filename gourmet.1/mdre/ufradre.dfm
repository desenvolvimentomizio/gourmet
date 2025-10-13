inherited fradre: Tfradre
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'drechave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dreposicao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grecodigo'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'greidentificacao'
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
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    object ActAgrupamentos: TAction [1]
      Category = 'Manuten'#231#227'o'
      Caption = 'Agrupamentos'
      OnExecute = ActAgrupamentosExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited DSTabela: TUniDataSource
    Top = 220
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dre.drechave,'
      '  dre.grecodigo, '
      '  gre.greidentificacao,'
      ' dre.ccgcodigo,'
      
        'if(dre.ccgcodigo<>'#39#39', CONCAT(ccg.ccgestrutural, '#39' '#39' ,ccg.ccgiden' +
        'tificacao),'#39'Somatorio'#39') as ccgidentificacao,'
      'dre.dreposicao'
      '  FROM dre'
      'LEFT JOIN ccg ON dre.ccgcodigo=ccg.ccgcodigo'
      'LEFT JOIN agr ON dre.agrchave=agr.agrchave'
      ''
      'INNER  JOIN gre ON dre.grecodigo=gre.grecodigo'
      'order by dre.dreposicao')
    Left = 220
    Top = 236
    object uqtabeladrechave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'drechave'
    end
    object uqtabelagrecodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'grecodigo'
    end
    object uqtabelagreidentificacao: TStringField
      DisplayLabel = 'Grupo do DRE'
      FieldName = 'greidentificacao'
      Size = 50
    end
    object uqtabelaccgcodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'ccgcodigo'
    end
    object uqtabelaccgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Conta Gerencial'
      FieldName = 'ccgidentificacao'
      Size = 50
    end
    object uqtabeladreposicao: TIntegerField
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'dreposicao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited FechaFiltro: TTimer
    Left = 278
    Top = 243
  end
end
