inherited fracsp: Tfracsp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'cspcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cspidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'C'#243'digo da Situa'#231#227'o Tribut'#225'ria Referente PIS/PASEP'
    end
  end
  inherited uqtabela: TUniQuery
    ParamCheck = False
    SQL.Strings = (
      'select cspcodigo,cspidentificacao from csp')
    object uqtabelacspcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'cspcodigo'
      Size = 3
    end
    object uqtabelacspidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cspidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
