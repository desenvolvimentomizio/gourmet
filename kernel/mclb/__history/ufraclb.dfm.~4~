inherited fraclb: Tfraclb
  Width = 1095
  Height = 585
  ExplicitWidth = 1095
  ExplicitHeight = 585
  inherited PlGeral: TPanel
    Width = 1095
    Height = 585
    ExplicitWidth = 1095
    ExplicitHeight = 585
    inherited SplBotoes: TSplitter
      Height = 565
      ExplicitHeight = 404
    end
    inherited PlBotoes: TPanel
      Height = 565
      ExplicitHeight = 565
      inherited ImageLogoBase: TImage
        Top = 486
        ExplicitTop = 325
      end
      inherited PlInfo: TPanel
        Top = 547
        ExplicitTop = 547
      end
      inherited SBBotoes: TScrollBox
        Height = 486
        ExplicitHeight = 486
      end
    end
    inherited PlLista: TPanel
      Width = 951
      Height = 565
      ExplicitWidth = 951
      ExplicitHeight = 565
      inherited SplLista: TSplitter
        Top = 539
        Width = 951
        Height = 3
        ExplicitTop = 378
        ExplicitWidth = 582
        ExplicitHeight = 3
      end
      inherited SpFilter: TSplitter
        Width = 951
        ExplicitWidth = 582
      end
      inherited PlRodaPe: TPanel
        Top = 542
        Width = 951
        Height = 23
        Visible = True
        ExplicitTop = 542
        ExplicitWidth = 951
        ExplicitHeight = 23
        object lprocesseo: TLabel
          Left = 5
          Top = 6
          Width = 236
          Height = 13
          AutoSize = False
          Caption = 'Processo:'
        end
        object mostra: TProgressBar
          Left = 272
          Top = 3
          Width = 289
          Height = 17
          TabOrder = 0
          Visible = False
        end
      end
      inherited PlFiltros: TPanel
        Width = 951
        ExplicitWidth = 951
        inherited PlEdTextoBusca: TPanel
          inherited GrBTextoProcurar: TGroupBox
            inherited PlGbEdtBusca: TPanel
              inherited edbusca: TEdit
                Tag = 1
              end
            end
          end
        end
      end
      inherited PlSelecao: TPanel
        Width = 951
        ExplicitWidth = 951
        inherited GBPlSelecao: TGroupBox
          Width = 947
          ExplicitWidth = 947
          inherited DBLista: TDBGrid
            Width = 840
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 951
        Height = 410
        ExplicitWidth = 951
        ExplicitHeight = 410
        inherited DBGLista: TDBGrid
          Width = 951
          Height = 385
          Columns = <
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbdescmaximo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'fncidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'senativo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbsuper'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 385
          Width = 951
          ExplicitTop = 385
          ExplicitWidth = 951
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1095
      ExplicitWidth = 1095
      inherited plid: TPanel
        Left = 645
        Caption = '01.01.02.001'
        ExplicitLeft = 645
      end
      inherited PlSair: TPanel
        Left = 889
        ExplicitLeft = 889
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
      Visible = False
    end
    object ActPermissoes: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Permiss'#245'es'
      ImageIndex = 10
      OnExecute = ActPermissoesExecute
    end
    object ActEtiqueta: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Etiqueta'
      OnExecute = ActEtiquetaExecute
    end
    object ActDireitos: TAction [8]
      Category = 'Manuten'#231#227'o'
      Caption = 'Atualiza Direitos'
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 364
    Top = 140
  end
  inherited MenuManutencao: TPopupMenu
    Left = 448
    Top = 176
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clb.clbcodigo,'
      '  clb.clbidentificacao,'
      '  clb.clbdescmaximo,'
      '  clb.fnccodigo,'
      '  clb.clbativo,'
      '  fnc.fncidentificacao,'
      '  if (clb.clbsuper=1,'#39'S'#39','#39' '#39') clbsuper'
      'FROM clb,'
      '     fnc'
      'WHERE clb.fnccodigo = fnc.fnccodigo')
    Top = 160
    object uqtabelaclbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clbcodigo'
    end
    object uqtabelaclbidentificacao: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object uqtabelaclbdescmaximo: TFloatField
      DisplayLabel = 'Desconto M'#225'ximo'
      FieldName = 'clbdescmaximo'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object uqtabelafncidentificacao: TStringField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'fncidentificacao'
    end
    object uqtabelaclbativo: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'clbativo'
      Size = 1
    end
    object uqtabelasenativo: TStringField
      DisplayLabel = 'Ativo'
      FieldKind = fkLookup
      FieldName = 'senativo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'clbativo'
      Size = 5
      Lookup = True
    end
    object uqtabelaclbsuper: TStringField
      DisplayLabel = 'Adm'
      FieldName = 'clbsuper'
      Size = 2
    end
  end
  inherited cpg: TUniQuery
    Top = 272
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 349
    Top = 281
  end
  object sen: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  sen.sencodigo,'
      '  sen.senidentificacao'
      'FROM sen')
    Left = 411
    Top = 291
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object eti: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  eti.etichave,'
      '  eti.clbcodigo,'
      '  eti.trmcodigo,'
      '  eti.puncodigo,'
      '  eti.eetcodigo,'
      '  eti.etiquanti,'
      '  eti.etiemissao,'
      '  eti.vrpcodigo,'
      '  eti.relcodigo'
      'FROM eti limit 0')
    Left = 560
    Top = 189
    object etietichave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'etichave'
    end
    object eticlbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object etitrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object etipuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object etieetcodigo: TIntegerField
      FieldName = 'eetcodigo'
    end
    object etietiquanti: TIntegerField
      FieldName = 'etiquanti'
    end
    object etietiemissao: TDateTimeField
      FieldName = 'etiemissao'
    end
    object etivrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object etirelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
  end
end
