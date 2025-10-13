inherited frasbr: Tfrasbr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 444
        ExplicitTop = 396
      end
      inherited PlRodaPe: TPanel
        Top = 449
        Height = 131
        Visible = True
        ExplicitTop = 449
        ExplicitHeight = 131
      end
      inherited PnlGrid: TPanel
        Height = 315
        ExplicitHeight = 315
        inherited DBGLista: TDBGrid
          Height = 290
          Columns = <
            item
              Expanded = False
              FieldName = 'sbrcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sbridentificacao'
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
              FieldName = 'senidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'sbrordem'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 290
          ExplicitTop = 290
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
    object ActPrecos: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Pre'#231'o por Sabor'
      OnExecute = ActPrecosExecute
    end
    inherited ActExcluir: TAction
      Enabled = False
      Visible = False
    end
    object ActDesativar: TAction [12]
      Category = 'Situa'#231#227'o'
      Caption = 'Desativar'
      OnExecute = ActDesativarExecute
    end
    object ActReativar: TAction [13]
      Category = 'Situa'#231#227'o'
      Caption = 'Reativar'
      OnExecute = ActReativarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  s.sbrcodigo,'
      '  s.sbridentificacao,'
      '  s.grpcodigo,'
      '  grp.grpidentificacao,'
      '  sen.senidentificacao,'
      '  s.sbrordem,'
      '  sip.sipcodigo,'
      
        '  (select pro.procodigo from pro WHERE pro.grpcodigo=s.grpcodigo' +
        ' and pro.tpocodigo=0 LIMIT 1) procodigo'
      'FROM sbr s'
      '  INNER JOIN grp on s.grpcodigo=grp.grpcodigo'
      '  inner JOIN sip ON  s.sipcodigo=sip.sipcodigo'
      '  INNER JOIN sen on s.sbrcobraadicional=sen.sencodigo')
    object uqtabelasbrcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sbrcodigo'
    end
    object uqtabelasbridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Sabor'
      FieldName = 'sbridentificacao'
      Size = 50
    end
    object uqtabelagrpcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'grpcodigo'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o do Grupo'
      FieldName = 'grpidentificacao'
      Size = 50
    end
    object uqtabelasenidentificacao: TStringField
      DisplayLabel = 'Cobra Adicional'
      FieldName = 'senidentificacao'
      Size = 5
    end
    object uqtabelasbrordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'sbrordem'
    end
    object uqtabelasipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object uqtabelaprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object sip: TUniQuery
    SQL.Strings = (
      'select sipcodigo, sipidentificacao from sip')
    Left = 636
    Top = 300
    object sipsipcodigo: TIntegerField
      FieldName = 'sipcodigo'
    end
    object sipsipidentificacao: TStringField
      FieldName = 'sipidentificacao'
      Size = 35
    end
  end
end
