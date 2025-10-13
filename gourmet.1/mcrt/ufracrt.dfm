inherited fracrt: Tfracrt
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'crtcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'crtidentificacao'
              Width = 248
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'crtdescricao'
              Width = 349
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Controle de Regime Tribut'#225'rio'
      inherited plid: TPanel
        Caption = '03.08.20.002'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select crtcodigo,crtidentificacao,crtdescricao from crt')
    object uqtabelacrtcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'crtcodigo'
    end
    object uqtabelacrtidentificacao: TStringField
      DisplayLabel = 'Identificacao'
      FieldName = 'crtidentificacao'
      Size = 50
    end
    object uqtabelacrtdescricao: TStringField
      DisplayLabel = 'Descricao'
      FieldName = 'crtdescricao'
      Size = 1000
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
