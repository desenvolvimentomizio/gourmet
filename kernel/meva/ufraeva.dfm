inherited fraeva: Tfraeva
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'evachave'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 156
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tevidentificacao'
              Width = 70
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evfcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evfidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evavalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evacriacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'eflidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evahistorico'
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
    object ActImportaValores: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Importar Valores'
      OnExecute = ActImportaValoresExecute
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 304
    Top = 244
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT eva.evachave'
      '     , eva.flhchave'
      '     , eva.evfcodigo'
      '     , evf.evfidentificacao'
      '     , eva.etdcodigo'
      '     , etd.etdidentificacao'
      '     , eva.evavalor'
      '     , eva.clbcodigo'
      '     , eva.tevcodigo'
      '     , tev.tevidentificacao'
      '     , eva.evahistorico'
      '     , eva.evacriacao'
      '     , tfl.flhidentificacao'
      '     , eva.eflcodigo'
      '     , efl.eflidentificacao'
      'FROM eva'
      '  JOIN etd'
      '    ON eva.etdcodigo = etd.etdcodigo'
      '  JOIN evf'
      '    ON eva.evfcodigo = evf.evfcodigo'
      '  JOIN efl'
      '    ON eva.eflcodigo = efl.eflcodigo'
      '  JOIN (SELECT'
      '      f.flhchave'
      
        '    , CONCAT(f.flhidentificacao, '#39' - '#39', t.tflidentificacao) AS f' +
        'lhidentificacao'
      '    FROM flh f'
      '      JOIN tfl t'
      '        ON f.tflcodigo = t.tflcodigo) tfl'
      '    ON eva.flhchave = tfl.flhchave'
      '  JOIN tev'
      '    ON eva.tevcodigo = tev.tevcodigo')
    Left = 348
    Top = 204
    object uqtabelaevachave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'evachave'
    end
    object uqtabelaflhchave: TIntegerField
      DisplayLabel = 'Folha'
      FieldName = 'flhchave'
    end
    object uqtabelaflhidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o da Folha'
      FieldName = 'flhidentificacao'
      Size = 50
    end
    object uqtabelaevfcodigo: TIntegerField
      DisplayLabel = 'Evento'
      FieldName = 'evfcodigo'
    end
    object uqtabelaevfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Evento'
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'etdcodigo'
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Colaborador'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelaevavalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'evavalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaevacriacao: TDateTimeField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'evacriacao'
    end
    object uqtabelatevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object uqtabelaevahistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'evahistorico'
      Size = 50
    end
    object uqtabelatevidentificacao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tevidentificacao'
      Size = 15
    end
    object uqtabelaeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
    object uqtabelaeflidentificacao: TStringField
      DisplayLabel = 'Est'#225'gio'
      FieldName = 'eflidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited rel: TUniQuery
    Left = 312
    Top = 320
  end
end
