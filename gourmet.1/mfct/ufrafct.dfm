inherited frafct: Tfrafct
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'fctchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctaidentificacao'
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
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  fct.fctchave,'
      '  fct.ctacodigo,'
      '  cta.ctaidentificacao'
      'FROM fct'
      '  INNER JOIN cta'
      '    ON fct.ctacodigo = cta.ctacodigo')
    object uqtabelafctchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'fctchave'
    end
    object uqtabelactacodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ctacodigo'
    end
    object uqtabelactaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'ctaidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  inherited rel: TUniQuery
    Left = 432
    Top = 328
  end
end
