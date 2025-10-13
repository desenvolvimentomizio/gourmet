inherited framwh: Tframwh
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'mwhchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mwhtipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mwhtexto'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mwhsegunda'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mwhterca'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mwhquarta'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mwhquinta'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mwhsexta'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mwhsabado'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mwhdomingo'
              Width = 50
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
      'SELECT'
      '  mwhchave,'
      '  mwhtexto,'
      '  mwhimagem,'
      
        '  if(mwhtipo=0,'#39'Inativa'#39',IF(mwhtipo=1,'#39'Pedidos recebido'#39',IF( mwh' +
        'tipo=2,'#39'Pedidos Prontos'#39', IF(mwhtipo=3,'#39'Pedidos Saidas'#39', IF(mwht' +
        'ipo=4,'#39'Pedidos Agradecimentos'#39','#39#39')))) ) mwhtipo,'
      '  mwhsegunda,'
      '  mwhterca,'
      '  mwhquarta,'
      '  mwhquinta,'
      '  mwhsexta,'
      '  mwhsabado,'
      '  mwhdomingo'
      'FROM mwh')
    object uqtabelamwhchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'mwhchave'
    end
    object uqtabelamwhtipo: TStringField
      DisplayLabel = 'Situa'#231#227'o - Tipo'
      FieldName = 'mwhtipo'
      ReadOnly = True
      Required = True
      Size = 22
    end
    object uqtabelamwhtexto: TStringField
      DisplayLabel = 'Mensagem'
      FieldName = 'mwhtexto'
      Size = 1000
    end
    object uqtabelamwhimagem: TBlobField
      DisplayLabel = 'Imagem'
      FieldName = 'mwhimagem'
    end
    object uqtabelamwhsegunda: TIntegerField
      DisplayLabel = 'Segunda'
      FieldName = 'mwhsegunda'
    end
    object uqtabelamwhterca: TIntegerField
      DisplayLabel = 'Ter'#231'a'
      FieldName = 'mwhterca'
    end
    object uqtabelamwhquarta: TIntegerField
      DisplayLabel = 'Quarta'
      FieldName = 'mwhquarta'
    end
    object uqtabelamwhquinta: TIntegerField
      DisplayLabel = 'Quinta'
      FieldName = 'mwhquinta'
    end
    object uqtabelamwhsexta: TIntegerField
      DisplayLabel = 'Sexta'
      FieldName = 'mwhsexta'
    end
    object uqtabelamwhsabado: TIntegerField
      DisplayLabel = 'S'#225'bado'
      FieldName = 'mwhsabado'
    end
    object uqtabelamwhdomingo: TIntegerField
      DisplayLabel = 'Domingo'
      FieldName = 'mwhdomingo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
