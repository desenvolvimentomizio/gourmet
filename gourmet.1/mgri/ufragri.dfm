inherited fragri: Tfragri
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'gricodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcicodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mitidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grientrega'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gricardapio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'gricontrolaproducao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tciprioridade'
              Title.Caption = 'Prioridade de Impress'#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sepidentificacao'
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
    Left = 288
    Top = 220
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  gri.gricodigo,'
      '  gri.grpcodigo,'
      '  gri.grpcodigo,'
      '  grp.grpidentificacao,'
      '  gri.tcicodigo,'
      '  gri.griminuretardo,'
      '  mitidentificacao,'
      '  senidentificacao,'
      '  if (gricardapio=1,'#39'Sim'#39','#39'N'#227'o'#39') as gricardapio,'
      '  if (grientrega=1,'#39'Sim'#39','#39'N'#227'o'#39') as grientrega,'
      
        '  if (gricontrolaproducao=1,'#39'Sim'#39','#39'N'#227'o'#39') as gricontrolaproducao,' +
        '  '
      '  tci.tciprioridade,'
      '  sep.sepidentificacao'
      ''
      'FROM gri'
      '  INNER JOIN grp  ON gri.grpcodigo = grp.grpcodigo'
      '  INNER JOIN tgr  ON grp.tgrcodigo = tgr.tgrcodigo'
      ''
      '  INNER JOIN tci  ON gri.tcicodigo = tci.tcicodigo'
      '  INNER JOIN mit  ON tci.mitcodigo = mit.mitcodigo'
      '  INNER JOIN sen on griimprimeauto = sen.sencodigo'
      '  LEFT JOIN sep on gri.sepcodigo = sep.sepcodigo')
    Left = 332
    Top = 92
    object uqtabelagricodigo: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'gricodigo'
    end
    object uqtabelagrpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'grpcodigo'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Grupo'
      FieldName = 'grpidentificacao'
      Size = 35
    end
    object uqtabelatcicodigo: TIntegerField
      DisplayLabel = 'Impressora'
      FieldName = 'tcicodigo'
    end
    object uqtabelamitidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Impressora'
      FieldName = 'mitidentificacao'
      Size = 50
    end
    object uqtabelagriminuretardo: TIntegerField
      DisplayLabel = 'Minutos'
      FieldName = 'griminuretardo'
    end
    object uqtabelagricardapio: TStringField
      DisplayLabel = 'Card'#225'pio'
      FieldName = 'gricardapio'
      Size = 5
    end
    object uqtabelagrientrega: TStringField
      DisplayLabel = 'Entrega'
      FieldName = 'grientrega'
      Size = 5
    end
    object uqtabelatciprioridade: TIntegerField
      DisplayLabel = 'Prioridade da Impress'#227'o'
      FieldName = 'tciprioridade'
    end
    object uqtabelagricontrolaproducao: TStringField
      DisplayLabel = 'Produ'#231#227'o'
      FieldName = 'gricontrolaproducao'
      Size = 5
    end
    object uqtabelasepidentificacao: TStringField
      DisplayLabel = 'Setor de Produ'#231#227'o'
      FieldName = 'sepidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
