inherited fradtm: Tfradtm
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ufssigla'
              Width = 25
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtmplaca'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtmvolumes'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtmespecie'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtmmarcas'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtmpesobruto'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtmpesoliq'
              Width = 70
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
      'SELECT dtm.dtmchave'
      '     , dtm.meschave'
      '     , dtm.dtmplaca'
      '     , dtm.dtmvolumes'
      '     , dtm.dtmpesobruto'
      '     , dtm.dtmpesoliq'
      '     , dtm.etdcodigo'
      '     , etd.etdidentificacao'
      '     , dtm.ufscodigo'
      '     , ufs.ufssigla'
      '     , dtm.dtmespecie'
      '     , dtm.dtmmarcas'
      '  FROM dtm'
      ' INNER JOIN etd ON dtm.etdcodigo = etd.etdcodigo'
      ' INNER JOIN ufs ON dtm.ufscodigo = ufs.ufscodigo'
      ' WHERE meschave = :meschave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object uqtabeladtmchave: TIntegerField
      FieldName = 'dtmchave'
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd. Transportador'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Transportador'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object uqtabelaufssigla: TStringField
      DisplayLabel = 'UF'
      FieldName = 'ufssigla'
      Size = 3
    end
    object uqtabeladtmplaca: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'dtmplaca'
      Size = 10
    end
    object uqtabeladtmvolumes: TFloatField
      DisplayLabel = 'Volumes'
      FieldName = 'dtmvolumes'
    end
    object uqtabeladtmespecie: TStringField
      DisplayLabel = 'Esp'#233'cie'
      FieldName = 'dtmespecie'
      Size = 50
    end
    object uqtabeladtmmarcas: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'dtmmarcas'
      Size = 50
    end
    object uqtabeladtmpesobruto: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'dtmpesobruto'
    end
    object uqtabeladtmpesoliq: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'dtmpesoliq'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
