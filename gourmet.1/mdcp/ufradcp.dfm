inherited fradcp: Tfradcp
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'dcpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dcpcampo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dcpdescricao'
              Width = 222
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dcpspedfiscal'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Descri'#231#227'o de Campo'
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
      'select dcpcodigo,dcpcampo,dcpdescricao,dcpspedfiscal from dcp')
    object uqtabeladcpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'dcpcodigo'
    end
    object uqtabeladcpcampo: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'dcpcampo'
      Size = 50
    end
    object uqtabeladcpdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'dcpdescricao'
      Size = 250
    end
    object uqtabeladcpspedfiscal: TIntegerField
      DisplayLabel = 'Sped Fiscal'
      FieldName = 'dcpspedfiscal'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
