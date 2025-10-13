inherited frartb: Tfrartb
  Width = 858
  Height = 642
  inherited PlGeral: TPanel
    Width = 858
    Height = 642
    inherited SplBotoes: TSplitter
      Height = 608
    end
    inherited PlBotoes: TPanel
      Height = 608
      inherited ImageLogoBase: TImage
        Top = 529
      end
      inherited PlInfo: TPanel
        Top = 590
      end
      inherited SBBotoes: TScrollBox
        Height = 529
      end
    end
    inherited PlLista: TPanel
      Width = 706
      Height = 608
      inherited SplLista: TSplitter
        Top = 405
        Width = 704
      end
      inherited SpFilter: TSplitter
        Width = 704
      end
      inherited PlRodaPe: TPanel
        Top = 410
        Width = 704
        Height = 197
        Visible = True
      end
      inherited PlFiltros: TPanel
        Width = 704
      end
      inherited PlSelecao: TPanel
        Width = 704
        inherited GBPlSelecao: TGroupBox
          Width = 698
          inherited DBLista: TDBGrid
            Width = 591
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 704
        Height = 254
        inherited DBGLista: TDBGrid
          Width = 704
          Height = 229
          Columns = <
            item
              Expanded = False
              FieldName = 'rtbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'flaidentificacao'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'trbidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ufsori'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ufsdes'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 229
          Width = 704
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 850
      inherited plid: TPanel
        Left = 512
      end
      inherited PlSair: TPanel
        Left = 728
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
      '  ufs_ori.ufssigla as ufsori,'
      '  fla.flaidentificacao,'
      '  ufs_des.ufssigla as ufsdes,'
      '  trb.trbidentificacao,'
      '  rtb.rtbcodigo'
      'FROM rtb'
      '  INNER JOIN trb'
      '    ON rtb.trbcodigo = trb.trbcodigo'
      '  INNER JOIN ufs ufs_ori'
      '    ON ufs_ori.ufscodigo = rtb.ufsorigem'
      '  INNER JOIN ufs ufs_des'
      '    ON ufs_des.ufscodigo = rtb.ufsdestino'
      '  INNER JOIN fla'
      '    ON rtb.flacodigo = fla.flacodigo')
    object uqtabelartbcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'rtbcodigo'
    end
    object uqtabelaufsori: TStringField
      DisplayLabel = 'Origem'
      FieldName = 'ufsori'
      Size = 3
    end
    object uqtabelaufsdes: TStringField
      DisplayLabel = 'Destino'
      FieldName = 'ufsdes'
      Size = 3
    end
    object uqtabelaflaidentificacao: TStringField
      DisplayLabel = 'Filial'
      FieldName = 'flaidentificacao'
      Size = 50
    end
    object uqtabelatrbidentificacao: TStringField
      DisplayLabel = 'Tributa'#231#227'o'
      FieldName = 'trbidentificacao'
      Size = 50
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
