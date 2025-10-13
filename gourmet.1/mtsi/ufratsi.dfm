inherited fratsi: Tfratsi
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tsicodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tsiidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ttscodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ttsidentificacao'
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
      
        'select tsi.tsicodigo, tsi.tsiidentificacao, tsi.ttscodigo, ttsid' +
        'entificacao from tsi, tts where tsi.ttscodigo=tts.ttscodigo'
      '')
    object uqtabelatsicodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tsicodigo'
    end
    object uqtabelatsiidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tsiidentificacao'
      Size = 15
    end
    object uqtabelattscodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'ttscodigo'
    end
    object uqtabelattsidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Tipo'
      FieldName = 'ttsidentificacao'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
