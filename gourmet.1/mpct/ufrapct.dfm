inherited frapct: Tfrapct
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'pctchave'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pctidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flacodigo'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flaidentificacao'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'togorigctacre'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'togidentificacaocre'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'togorigctadeb'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'togidentificacaodeb'
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
      '  pct.pctchave,'
      '  pct.tdgcodigo,'
      '  tdg.tdgidentificacao,'
      '  pct.flacodigo,'
      '  fla.flaidentificacao,'
      '  pct.pctidentificacao,'
      '  pct.togorigctacre,'
      '  pct.togorigctadeb,'
      '  tog_deb.togidentificacao AS togidentificacaodeb,'
      '  tog_cre.togidentificacao AS togidentificacaocre'
      'FROM pct'
      '  INNER JOIN tdg'
      '    ON pct.tdgcodigo = tdg.tdgcodigo'
      '  INNER JOIN fla'
      '    ON pct.flacodigo = fla.flacodigo'
      '  LEFT JOIN tog tog_cre'
      '    ON pct.togorigctacre = tog_cre.togcodigo'
      '  LEFT JOIN tog tog_deb'
      '    ON pct.togorigctadeb = tog_deb.togcodigo'
      '    where pct.tdgcodigo=:tdgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tdgcodigo'
        Value = nil
      end>
    object uqtabelapctchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'pctchave'
    end
    object uqtabelapctidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pctidentificacao'
      Size = 50
    end
    object uqtabelaflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
    end
    object uqtabelaflaidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Filial'
      FieldName = 'flaidentificacao'
      Size = 35
    end
    object uqtabelatdgcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tdgcodigo'
    end
    object uqtabelatdgidentificacao: TStringField
      DisplayLabel = 'Evento para Contabiliza'#231#227'o'
      FieldName = 'tdgidentificacao'
      Size = 50
    end
    object uqtabelatogorigctadeb: TIntegerField
      DisplayLabel = 'Origem D'#233'bito'
      FieldName = 'togorigctadeb'
    end
    object uqtabelatogidentificacaodeb: TStringField
      DisplayLabel = 'Nome do Campo a D'#233'bito'
      FieldName = 'togidentificacaodeb'
      Size = 35
    end
    object uqtabelatogorigctacre: TIntegerField
      DisplayLabel = 'Origem Cr'#233'dito'
      FieldName = 'togorigctacre'
    end
    object uqtabelatogidentificacaocre: TStringField
      DisplayLabel = 'Nome do Campo a Cr'#233'dito'
      FieldName = 'togidentificacaocre'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
