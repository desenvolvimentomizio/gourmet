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
  object RadioButton1: TRadioButton [1]
    Left = 312
    Top = 176
    Width = 113
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 1
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
end
