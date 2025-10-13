inherited fradrb: Tfradrb
  Width = 1312
  inherited PlGeral: TPanel
    Width = 1312
    inherited PlLista: TPanel
      Width = 1160
      inherited SplLista: TSplitter
        Width = 1158
      end
      inherited SpFilter: TSplitter
        Width = 1158
      end
      inherited PlRodaPe: TPanel
        Width = 1158
      end
      inherited PlFiltros: TPanel
        Width = 1158
      end
      inherited PlSelecao: TPanel
        Width = 1158
        inherited GBPlSelecao: TGroupBox
          Width = 1152
          inherited DBLista: TDBGrid
            Width = 1045
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 1158
        inherited DBGLista: TDBGrid
          Width = 1158
          Columns = <
            item
              Expanded = False
              FieldName = 'drbcodigo'
              Width = 40
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcbcodigo'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcbidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfocfop'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'drbcstcsosn'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'drbperbaicms'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'drbaliqicms'
              Width = 50
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'drbaliqicmsst'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'drbivaicmsst'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cfocfop'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'drbdestacaicms'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'drbdestacaicmsst'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'drbdestacaipi'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'drbinfoadicfisco'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'otbcodigo'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 1158
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1304
      inherited plid: TPanel
        Left = 966
      end
      inherited PlSair: TPanel
        Left = 1182
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
    Top = 244
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  drbcodigo,'
      '  rtbcodigo,'
      '  drb.tcbcodigo,'
      '  drbcstcsosn,'
      '  drbperbaicms,'
      '  drbaliqicms,'
      '  drbaliqicmsst,'
      '  drbivaicmsst,'
      '  drbdestacaicms,'
      '  drbdestacaicmsst,'
      '  drbdestacaipi,'
      '  drbinfoadicfisco,'
      '  cfocfop,'
      '  otbcodigo,'
      '  tcbidentificacao'
      'FROM drb, tcb'
      'where drb.tcbcodigo=tcb.tcbcodigo')
    Left = 348
    Top = 212
    object uqtabeladrbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'drbcodigo'
    end
    object uqtabelartbcodigo: TIntegerField
      DisplayLabel = 'Regra'
      FieldName = 'rtbcodigo'
    end
    object uqtabelatcbcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tcbcodigo'
    end
    object uqtabelatcbidentificacao: TStringField
      DisplayLabel = 'Tipo de Contribuinte'
      FieldName = 'tcbidentificacao'
      Size = 35
    end
    object uqtabeladrbcstcsosn: TStringField
      DisplayLabel = 'CST ou CSOSN'
      FieldName = 'drbcstcsosn'
      Size = 4
    end
    object uqtabeladrbperbaicms: TFloatField
      DisplayLabel = '% Base ICM'
      FieldName = 'drbperbaicms'
    end
    object uqtabeladrbaliqicms: TFloatField
      DisplayLabel = 'Aliq. ICM'
      FieldName = 'drbaliqicms'
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
    end
    object uqtabeladrbaliqicmsst: TFloatField
      DisplayLabel = 'Aliq. ICMS ST'
      FieldName = 'drbaliqicmsst'
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
    end
    object uqtabeladrbivaicmsst: TFloatField
      DisplayLabel = 'IVA ICM ST'
      FieldName = 'drbivaicmsst'
      DisplayFormat = '#,####0.0000'
      EditFormat = '#,####0.0000'
    end
    object uqtabeladrbdestacaicms: TIntegerField
      DisplayLabel = 'Destaca ICM'
      FieldName = 'drbdestacaicms'
    end
    object uqtabeladrbdestacaicmsst: TIntegerField
      DisplayLabel = 'Destaca ICM ST'
      FieldName = 'drbdestacaicmsst'
    end
    object uqtabeladrbdestacaipi: TIntegerField
      DisplayLabel = 'Destaca IPI'
      FieldName = 'drbdestacaipi'
    end
    object uqtabeladrbinfoadicfisco: TStringField
      DisplayLabel = 'Informa'#231#245'es Adicionais ao Fisco'
      FieldName = 'drbinfoadicfisco'
      Size = 1000
    end
    object uqtabelacfocfop: TStringField
      DisplayLabel = 'CFOP'
      FieldName = 'cfocfop'
      Size = 5
    end
    object uqtabelaotbcodigo: TIntegerField
      FieldName = 'otbcodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
