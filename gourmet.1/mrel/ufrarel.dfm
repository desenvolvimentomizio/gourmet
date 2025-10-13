inherited frarel: Tfrarel
  Height = 584
  ExplicitHeight = 584
  inherited PlGeral: TPanel
    Height = 584
    ExplicitHeight = 584
    inherited SplBotoes: TSplitter
      Height = 564
      ExplicitHeight = 558
    end
    inherited PlBotoes: TPanel
      Height = 564
      ExplicitHeight = 564
      inherited ImageLogoBase: TImage
        Top = 485
        ExplicitTop = 479
      end
      inherited PlInfo: TPanel
        Top = 546
        ExplicitTop = 546
      end
      inherited SBBotoes: TScrollBox
        Height = 485
        ExplicitHeight = 485
      end
    end
    inherited PlLista: TPanel
      Height = 564
      ExplicitHeight = 564
      inherited SplLista: TSplitter
        Top = 533
        ExplicitTop = 527
      end
      inherited PlRodaPe: TPanel
        Top = 538
        ExplicitTop = 538
      end
      inherited PnlGrid: TPanel
        Height = 404
        ExplicitHeight = 404
        inherited DBGLista: TDBGrid
          Height = 379
          Columns = <
            item
              Expanded = False
              FieldName = 'relcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'relnomearquivo'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'reltitulo'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'reltipodescri'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'relsituacaodescri'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'relidentificacao'
              Width = 150
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 379
          ExplicitTop = 379
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
    object ActClonar: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Clonar'
      OnExecute = ActClonarExecute
    end
    object ActExportar: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Exportar'
      OnExecute = ActExportarExecute
    end
    object ActImportar: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Importar'
      OnExecute = ActImportarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  relorigem,'
      '  if (reltipo=0,'#39'Normal'#39','#39'Customizado'#39') as reltipodescri,'
      '  if (relsituacao=1,'#39'Ativo'#39','#39'Inativo'#39') as relsituacaodescri,'
      '  relnomearquivo'
      'FROM rel')
    object uqtabelarelcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'relcodigo'
    end
    object uqtabelarelidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'relidentificacao'
      Size = 80
    end
    object uqtabelareltitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'reltitulo'
      Size = 80
    end
    object uqtabelareltipodescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'reltipodescri'
      Size = 15
    end
    object uqtabelarelsituacaodescri: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'relsituacaodescri'
      Size = 15
    end
    object uqtabelarelnomearquivo: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'relnomearquivo'
      Size = 80
    end
    object uqtabelarelorigem: TStringField
      FieldName = 'relorigem'
      Size = 8
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etddoc1,'
      '  cfgmcfg.cfgcodigo'
      'FROM cfgmcfg'
      '  INNER JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo')
    Left = 676
    Top = 268
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      Size = 25
    end
  end
  object rell: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  reltipo,'
      '  relsituacao,'
      '  relusaparametros,'
      '  relnomearquivo,'
      '  relarquivo,'
      '  relorigem'
      'FROM rel where relcodigo=:relcodigo')
    Left = 224
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object relc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  reltipo,'
      '  relsituacao,'
      '  relusaparametros,'
      '  relnomearquivo,'
      '  relarquivo,'
      '  relorigem'
      'FROM rel where relcodigo=:relcodigo')
    Left = 264
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object mrec: TUniQuery
    Left = 384
    Top = 424
  end
  object crlc: TUniQuery
    Left = 624
    Top = 424
  end
end
