inherited fracfp: Tfracfp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'cfpCodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfpmascara'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfpgrupo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Configura'#231#227'o do Plano de Contas Gerencial'
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
      
        'select cfpcodigo,cfpmascara,cggcodigo,cedidentificacao,cfpidenti' +
        'ficacao from cfp, ced where cfp.cedcodigo=ced.cedcodigo')
    object uqtabelacfpCodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cfpCodigo'
    end
    object uqtabelacfpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cfpidentificacao'
      Size = 35
    end
    object uqtabelacfpmascara: TStringField
      DisplayLabel = 'Mascara'
      FieldName = 'cfpmascara'
      Size = 50
    end
    object uqtabelacggcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'cggcodigo'
    end
    object uqtabelacedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'cedidentificacao'
      Size = 15
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
