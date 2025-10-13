inherited fraadr: Tfraadr
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited SplLista: TSplitter
        Top = 387
        Visible = True
        ExplicitTop = 547
      end
      inherited PlRodaPe: TPanel
        Top = 392
        Height = 188
        Visible = True
        ExplicitTop = 392
        ExplicitHeight = 188
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 1034
          Height = 188
          Align = alClient
          DataSource = Dpcr
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
              FieldName = 'pcrchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'rfichave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcgidentificacao'
              Title.Caption = 'Descri'#231#227'o Conta Cont'#225'bil'
              Width = 250
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'phgcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'phgidentificacao'
              Title.Caption = 'Descri'#231#227'o do Hist'#243'rico'
              Width = 200
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcrvalor'
              Visible = True
            end>
        end
      end
      inherited PnlGrid: TPanel
        Height = 258
        ExplicitHeight = 258
        inherited DBGLista: TDBGrid
          Height = 233
          Columns = <
            item
              Expanded = False
              FieldName = 'adrchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'adrdatainicial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'adrdatafinal'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 233
          ExplicitTop = 233
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
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  adrchave,'
      '  adrdatainicial,'
      '  adrdatafinal,'
      '  clbcodigo,'
      '  adrsituacao'
      'FROM adr')
    object uqtabelaadrchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'adrchave'
    end
    object uqtabelaadrdatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'adrdatainicial'
    end
    object uqtabelaadrdatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'adrdatafinal'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
  object pcr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcr.pcrchave,'
      '  pcr.titcodigo,'
      '  pcr.pcgcodigo,'
      '  pcg.pcgestrutural,'
      '  pcg.pcgidentificacao,'
      '  pcr.phgcodigo,'
      '  phg.phgidentificacao,'
      
        '  IF(pcr.pcrvalor > v_rfi.rfivalor, v_rfi.rfivalor, pcr.pcrvalor' +
        ') AS pcrvalor, '
      '  pcr.pcrcomplhist,'
      '  v_rfi.rfichave'
      'FROM pcr'
      '  INNER JOIN pcg  ON pcr.pcgcodigo = pcg.pcgcodigo'
      '  INNER JOIN phg  ON pcr.phgcodigo = phg.phgcodigo'
      '  INNER JOIN tit t ON pcr.titcodigo = t.titcodigo'
      '  INNER JOIN v_rfi v_rfi ON t.titcodigo= v_rfi.titcodigo'
      
        'WHERE pcr.pcgcodigo IN (SELECT pcgcodigo FROM rdr WHERE rdr.adrc' +
        'have=:adrchave)'
      '  AND v_rfi.rfidtultbaixa BETWEEN :datainicial AND :datafinal')
    Left = 952
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'adrchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datainicial'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'datafinal'
        Value = nil
      end>
    object pcrpcrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'pcrchave'
    end
    object pcrtitcodigo: TIntegerField
      FieldName = 'titcodigo'
    end
    object pcrpcgcodigo: TIntegerField
      DisplayLabel = 'Conta Cont'#225'bil'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object pcrpcgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgidentificacao'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgcodigo'
      Size = 150
      Lookup = True
    end
    object pcrpcrvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'pcrvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object pcrphgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgcodigo'
      Required = True
    end
    object pcrphgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 150
      Lookup = True
    end
    object pcrpcrcomplhist: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'pcrcomplhist'
      Size = 50
    end
    object pcrrfichave: TIntegerField
      DisplayLabel = 'Registro Financeiro'
      FieldName = 'rfichave'
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 856
    Top = 432
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcgcodigo,'
      
        '  CONCAT(pcgestrutural, '#39' - '#39', pcgidentificacao) AS pcgidentific' +
        'acao'
      'FROM pcg')
    Left = 912
    Top = 432
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 150
    end
  end
  object Dpcr: TDataSource
    DataSet = pcr
    Left = 1008
    Top = 437
  end
end
