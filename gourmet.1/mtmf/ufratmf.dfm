inherited fratmf: Tfratmf
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tmfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tmfidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cedidentificacao'
              Title.Caption = 'Identifica'#231#227'o'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Tipo de Movimento Financeiro'
      inherited plid: TPanel
        Caption = '06-15-001'
      end
    end
  end
  inherited DSTabela: tunidatasource
    Left = 284
    Top = 248
  end
  inherited uqtabela: tuniquery
    SQL.Strings = (
      
        'select tmfcodigo,tmfidentificacao,cedidentificacao from tmf,ced ' +
        'where tmf.cedcodigo=ced.cedcodigo')
    Left = 336
    Top = 256
    object uqtabelatbmcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tmfcodigo'
    end
    object uqtabelatmfidentificacao: TStringField
      DisplayLabel = 'Identificac'#227'o'
      FieldName = 'tmfidentificacao'
      Size = 35
    end
    object uqtabelacedidentificacao: TStringField
      FieldName = 'cedidentificacao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
