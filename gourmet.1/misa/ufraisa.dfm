inherited fraisa: Tfraisa
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'isachave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'isaquantidade'
              Width = 84
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'senidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'isaprincipal'
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
  inherited DSTabela: TUniDataSource
    Left = 688
    Top = 108
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  isa.isachave,'
      '  isa.sbrcodigo,'
      '  sbr.sbridentificacao,'
      '  isa.procodigo,'
      '  pro.pronome,'
      '  isaquantidade,'
      '  unisimbolo,'
      '  senidentificacao,'
      '  isaprincipal'
      'FROM isa'
      '  INNER JOIN sbr ON isa.sbrcodigo=sbr.sbrcodigo'
      '  INNER JOIN pro ON isa.procodigo=pro.procodigo'
      '  INNER JOIN sen ON isa.senadicionavel=sen.sencodigo'
      '  INNER JOIN uni ON pro.unicodigo=uni.unicodigo')
    Left = 356
    Top = 100
    object uqtabelaisachave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'isachave'
    end
    object uqtabelasbrcodigo: TIntegerField
      DisplayLabel = 'Sabor'
      FieldName = 'sbrcodigo'
    end
    object uqtabelasbridentificacao: TStringField
      DisplayLabel = 'Identificacao do Sabor'
      FieldName = 'sbridentificacao'
      Size = 50
    end
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'Mat.Prima'
      FieldName = 'procodigo'
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Materia Prima'
      FieldName = 'pronome'
      Size = 50
    end
    object uqtabelaisaquantidade: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'isaquantidade'
      DisplayFormat = '#0.000000'
      EditFormat = '#0.000000'
    end
    object uqtabelaunisimbolo: TStringField
      DisplayLabel = 'Uni'
      FieldName = 'unisimbolo'
      Size = 5
    end
    object uqtabelasenidentificacao: TStringField
      DisplayLabel = 'S'#243' Adicional'
      FieldName = 'senidentificacao'
      Size = 5
    end
    object uqtabelaisaprincipal: TIntegerField
      DisplayLabel = 'Remov'#237'vel'
      FieldName = 'isaprincipal'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
