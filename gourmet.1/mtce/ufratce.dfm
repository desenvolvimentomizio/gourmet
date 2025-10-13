inherited fratce: Tfratce
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 379
        Visible = True
        ExplicitTop = 379
      end
      inherited PlRodaPe: TPanel
        Top = 384
        Height = 196
        Visible = True
        ExplicitTop = 384
        ExplicitHeight = 196
        object DBGridlcn: TDBGrid
          Left = 0
          Top = 0
          Width = 309
          Height = 196
          Align = alLeft
          DataSource = Dllcn
          DrawingStyle = gdsGradient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'lcnchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcecest'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcgncm'
              Width = 100
              Visible = True
            end>
        end
      end
      inherited PnlGrid: TPanel
        Height = 250
        ExplicitHeight = 250
        inherited DBGLista: TDBGrid
          Height = 225
          Columns = <
            item
              Expanded = False
              FieldName = 'tcechave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tceitem'
              Width = 120
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcencm'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcecest'
              Width = 60
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcedescricao'
              Width = 550
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 225
          ExplicitTop = 225
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
    object ActSincronizar: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Sincronizar'
      OnExecute = ActSincronizarExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcechave,'
      '  tceitem,'
      '  tcecest,'
      '  tcedescricao,'
      '  tcencm'
      'FROM tce')
    object uqtabelatcechave: TIntegerField
      DisplayLabel = 'Nr. Chave'
      FieldName = 'tcechave'
    end
    object uqtabelatceitem: TStringField
      DisplayLabel = 'Item'
      FieldName = 'tceitem'
      Size = 50
    end
    object uqtabelatcecest: TStringField
      DisplayLabel = 'CEST'
      FieldName = 'tcecest'
      Size = 50
    end
    object uqtabelatcedescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tcedescricao'
      Size = 2000
    end
    object uqtabelatcencm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'tcencm'
      Size = 50
    end
  end
  inherited cpg: TUniQuery
    Left = 484
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 469
    Top = 409
  end
  object lcn: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lcnchave,'
      '  tcecest,'
      '  tcgncm'
      'FROM lcn')
    Left = 752
    Top = 437
    object lcnlcnchave: TIntegerField
      FieldName = 'lcnchave'
    end
    object lcntcecest: TStringField
      FieldName = 'tcecest'
      Size = 50
    end
    object lcntcgncm: TStringField
      FieldName = 'tcgncm'
      Size = 50
    end
  end
  object tcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcgncm'
      'FROM tcg')
    Left = 800
    Top = 429
    object tcgtcgncm: TStringField
      FieldName = 'tcgncm'
      Size = 15
    end
  end
  object llcn: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lcnchave,'
      '  tcecest,'
      '  tcgncm'
      'FROM lcn where tcecest=:tcecest')
    Left = 896
    Top = 492
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcecest'
        Value = nil
      end>
    object llcnlcnchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'lcnchave'
    end
    object llcntcecest: TStringField
      DisplayLabel = 'CEST'
      FieldName = 'tcecest'
      Size = 50
    end
    object llcntcgncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'tcgncm'
      Size = 50
    end
  end
  object Dllcn: TDataSource
    DataSet = llcn
    Left = 952
    Top = 508
  end
  object tce: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcechave,'
      '  tcecest,'
      '  tcencm'
      'FROM tce')
    Left = 568
    Top = 488
    object tcetcechave: TIntegerField
      FieldName = 'tcechave'
    end
    object tcetcecest: TStringField
      FieldName = 'tcecest'
    end
    object tcetcencm: TStringField
      FieldName = 'tcencm'
    end
  end
end
