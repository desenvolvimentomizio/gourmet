inherited fraevf: Tfraevf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PlFiltros: TPanel
        inherited PlEdTextoBusca: TPanel
          inherited GrBTextoProcurar: TGroupBox
            inherited PlGbEdtBusca: TPanel
              inherited edbusca: TEdit
                Color = 11206655
              end
            end
          end
        end
      end
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'evfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evfidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tevidentificacao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedidentificacao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgidentificacao'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'senidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rbccodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evfresumida'
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
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  evf.evfcodigo,'
      '  evf.pcgcodigo,'
      '  evf.evfidentificacao,'
      '  evf.tevcodigo,'
      '  evf.cedcodigo,'
      
        '  concat(pcg.pcgestrutural,'#39' - '#39'+  pcg.pcgidentificacao) as pcgi' +
        'dentificacao,'
      '  tev.tevidentificacao,'
      '  ced.cedidentificacao,'
      '  evf.evfpelocco,'
      '  sen.senidentificacao,'
      '  evf.rbccodigo,'
      '  evf.evfresumida'
      'FROM evf'
      '  LEFT JOIN pcg'
      '    ON evf.pcgcodigo = pcg.pcgcodigo'
      '  INNER JOIN tev'
      '    ON evf.tevcodigo = tev.tevcodigo'
      '  INNER JOIN ced'
      '    ON evf.cedcodigo = ced.cedcodigo'
      ' INNER JOIN sen'
      '    ON evf.evfpelocco = sen.sencodigo'
      'where '
      '  evf.evfcodigo not in (select cfgevfpagto from cfgmflh)')
    object uqtabelaevfcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'evfcodigo'
    end
    object uqtabelaevfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Evento'
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object uqtabelatevcodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tevcodigo'
    end
    object uqtabelacedcodigo: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'cedcodigo'
    end
    object uqtabelapcgcodigo: TIntegerField
      DisplayLabel = 'Conta Gerencial'
      FieldName = 'pcgcodigo'
    end
    object uqtabelapcgidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Conta Gerencial'
      FieldName = 'pcgidentificacao'
      Size = 150
    end
    object uqtabelatevidentificacao: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 15
      FieldName = 'tevidentificacao'
      Size = 15
    end
    object uqtabelacedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'cedidentificacao'
      Size = 15
    end
    object uqtabelasenidentificacao: TStringField
      DisplayLabel = 'Conta Corrente'
      FieldName = 'senidentificacao'
      Size = 5
    end
    object uqtabelarbccodigo: TIntegerField
      DisplayLabel = 'R'#250'brica'
      FieldName = 'rbccodigo'
    end
    object uqtabelaevfresumida: TStringField
      DisplayLabel = 'Ident. Resumida'
      FieldName = 'evfresumida'
      Size = 15
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
