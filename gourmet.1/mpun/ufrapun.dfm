inherited frapun: Tfrapun
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'puncodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tuncodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punidentificacao'
              Width = 124
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punbarra'
              Width = 136
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punprecoav'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punprecoap'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      inherited plid: TPanel
        Caption = '01.01.05.002'
      end
    end
  end
  inherited acoes: TActionList
    Left = 380
    Top = 136
    inherited ActIncluir: TAction
      OnExecute = ActIncluirExecute
    end
    inherited ActAlterar: TAction
      OnExecute = ActAlterarExecute
    end
    inherited ActPesquisar: TAction
      Visible = False
    end
    inherited ActRelatorios: TAction
      Enabled = False
      Visible = False
    end
    object ActAlteraPreco: TAction [6]
      Category = 'Manuten'#231#227'o'
      Caption = 'Altera'#231#227'o de Pre'#231'os'
      ImageIndex = 8
      Visible = False
      OnExecute = ActAlteraPrecoExecute
    end
    inherited ActVerFiltros: TAction
      Visible = False
    end
    inherited ActFiltrar: TAction
      Visible = False
    end
    inherited ActConfig: TAction
      Visible = False
    end
    inherited ActConfiguracoes: TAction
      ImageIndex = 9
      Visible = False
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select puncodigo,procodigo,unisimbolo,punprecoav,punprecoap,punc' +
        'usto,punidentificacao,punbarra,pun.tuncodigo from pun,uni'
      'where pun.unicodigo=uni.unicodigo')
    object uqtabelapuncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'puncodigo'
    end
    object uqtabelaprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object uqtabelaunisimbolo: TStringField
      DisplayLabel = 'S'#237'mbolo'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object uqtabelapunidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'punidentificacao'
      Size = 30
    end
    object uqtabelapunprecoav: TFloatField
      DisplayLabel = #192' Vista'
      FieldName = 'punprecoav'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelapunprecoap: TFloatField
      DisplayLabel = #192' Prazo'
      FieldName = 'punprecoap'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelapunbarra: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'punbarra'
      Size = 50
    end
    object uqtabelatuncodigo: TIntegerField
      DisplayLabel = 'TP'
      FieldName = 'tuncodigo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgcodigo, cfgbalanca,cfgnrseriepro,cfgrefepro, cfgcompro' +
        ',cfgunitrib,cfgdoisprecos from cfgmsai')
    Left = 508
    Top = 352
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgrefepro: TIntegerField
      DisplayLabel = 'Utiliza refer'#234'ncia'
      FieldName = 'cfgrefepro'
    end
    object cfgcfgdoisprecos: TIntegerField
      DisplayLabel = 'Utiliza pre'#231'o a Vista e a Prazo'
      FieldName = 'cfgdoisprecos'
    end
  end
end
