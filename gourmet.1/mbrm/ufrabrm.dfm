inherited frabrm: Tfrabrm
  Width = 1010
  ExplicitWidth = 1010
  inherited PlGeral: TPanel
    Width = 1010
    inherited PlLista: TPanel
      Width = 866
      inherited SplLista: TSplitter
        Width = 866
      end
      inherited SpFilter: TSplitter
        Width = 866
      end
      inherited PlRodaPe: TPanel
        Width = 866
      end
      inherited PlFiltros: TPanel
        Width = 866
      end
      inherited PlSelecao: TPanel
        Width = 866
        inherited GBPlSelecao: TGroupBox
          Width = 862
          inherited DBLista: TDBGrid
            Width = 755
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 866
        inherited DBGLista: TDBGrid
          Width = 866
          Columns = <
            item
              Expanded = False
              FieldName = 'brmcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rmbnumero'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tibcodigo'
              Width = 35
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tibreferencia'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tibidentificacao'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rmbregistro'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 866
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1010
      inherited plid: TPanel
        Left = 630
      end
      inherited PlSair: TPanel
        Left = 849
      end
    end
  end
  inherited acoes: TActionList
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  brmcodigo,'
      '  rmb.rmbcodigo,'
      '  bolchave,'
      '  tib.tibcodigo,'
      '  tibreferencia,'
      '  carcodigo,'
      '  clbcodigo,'
      '  rmbnumero,'
      '  rmbregistro,'
      '  tibidentificacao'
      'FROM brm'
      '  INNER JOIN tib'
      '    ON brm.tibcodigo = tib.tibcodigo'
      '  LEFT JOIN rmb'
      '    ON brm.rmbcodigo = rmb.rmbcodigo'
      'where bolchave=:bolchave')
    Left = 372
    Top = 324
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bolchave'
        Value = nil
      end>
    object uqtabelabrmcodigo: TIntegerField
      DisplayLabel = 'Nr. Chave'
      FieldName = 'brmcodigo'
    end
    object uqtabelarmbcodigo: TIntegerField
      FieldName = 'rmbcodigo'
    end
    object uqtabelabolchave: TIntegerField
      FieldName = 'bolchave'
    end
    object uqtabelatibcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'tibcodigo'
    end
    object uqtabelatibreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'tibreferencia'
      Size = 5
    end
    object uqtabelacarcodigo: TIntegerField
      FieldName = 'carcodigo'
    end
    object uqtabelaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object uqtabelarmbregistro: TDateTimeField
      DisplayLabel = 'Data Hora - Registro'
      FieldName = 'rmbregistro'
    end
    object uqtabelatibidentificacao: TStringField
      DisplayLabel = 'Descri'#231#227'o Ocorr'#234'ncia'
      FieldName = 'tibidentificacao'
      Size = 250
    end
    object uqtabelarmbnumero: TIntegerField
      DisplayLabel = 'Nr. Remessa'
      FieldName = 'rmbnumero'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
