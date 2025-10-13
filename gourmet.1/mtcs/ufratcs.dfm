inherited fratcs: Tfratcs
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tcscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcsidentificacao'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = ' Tipos de Conta de Consumo'
      inherited plid: TPanel
        Caption = '03.08.18.002'
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'select tcscodigo,tcsidentificacao from tcs')
    Left = 32
    Top = 240
    object uqtabelatcscodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tcscodigo'
      Size = 1
    end
    object uqtabelatcsidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tcsidentificacao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
