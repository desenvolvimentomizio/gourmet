inherited fratco: Tfratco
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tcochave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ttbidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'vhfidentificacao'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcohoras'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcovalorhora'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhidentificacao1'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flhidentificacao2'
              Width = 120
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
      'SELECT'
      '  tco.tcochave,'
      '  tco.vhfcodigo,'
      '  tco.ttbcodigo,'
      '  ttb.ttbidentificacao,'
      '  tco.tcodescricao,'
      '  tco.tcovalorhora,'
      '  tco.tcohoras,'
      '  tco.flhchaveprimeira,'
      '  f1.flhidentificacao flhidentificacao1,'
      '  tco.flhchavesegunda,'
      '  f2.flhidentificacao flhidentificacao2,'
      '  tco.clbcodigo,'
      '  tco.tcoregistro,'
      
        '  (SELECT CONCAT(etd.etdidentificacao, '#39' '#39', vhfidentificacao ) v' +
        'hfidentificacao FROM vhf v,etd WHERE v.etdcodigo=etd.etdcodigo a' +
        'nd v.vhfcodigo=vhf.vhfcodigo) vhfidentificacao'
      'FROM tco, vhf,ttb, flh f1, flh f2'
      '  WHERE tco.vhfcodigo=vhf.vhfcodigo'
      '  AND  tco.ttbcodigo=ttb.ttbcodigo'
      '  AND  tco.flhchaveprimeira=f1.flhchave '
      '  AND  tco.flhchavesegunda=f2.flhchave ')
    object uqtabelatcochave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'tcochave'
    end
    object uqtabelavhfcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'vhfcodigo'
    end
    object uqtabelavhfidentificacao: TStringField
      DisplayLabel = 'Colaborador'
      FieldName = 'vhfidentificacao'
      Size = 50
    end
    object uqtabelattbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.Tipo'
      FieldName = 'ttbcodigo'
    end
    object uqtabelattbidentificacao: TStringField
      DisplayLabel = 'Tipo de Trabalho de Conclus'#227'o'
      FieldName = 'ttbidentificacao'
      Size = 50
    end
    object uqtabelatcodescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tcodescricao'
      Size = 50
    end
    object uqtabelatcovalorhora: TFloatField
      DisplayLabel = 'Valor da Hora R$'
      FieldName = 'tcovalorhora'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelatcohoras: TTimeField
      DisplayLabel = 'Horas'
      FieldName = 'tcohoras'
      EditMask = '!990:00;1;_'
    end
    object uqtabelaflhidentificacao1: TStringField
      DisplayLabel = 'Primeira Parcela'
      FieldName = 'flhidentificacao1'
      Size = 30
    end
    object uqtabelaflhidentificacao2: TStringField
      DisplayLabel = 'Segunda Parcela'
      FieldName = 'flhidentificacao2'
      Size = 30
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
end
