inherited fratcg: Tfratcg
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'tcgncm'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcgdescricao'
              Width = 450
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcgaliqimp'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcgaliqest'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tcgaliqnac'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ansanexo'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          BorderWidth = 2
          object mostra: TProgressBar
            Left = 3
            Top = 3
            Width = 1028
            Height = 19
            Align = alClient
            TabOrder = 0
          end
        end
      end
    end
  end
  inherited acoes: TActionList
    object ActImportaIBPT: TAction [1]
      Category = 'Manuten'#231#227'o'
      Caption = 'Importa IBPT'
      OnExecute = ActImportaIBPTExecute
    end
    object ActImportarTXT: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Importar TXT'
      OnExecute = ActImportarTXTExecute
    end
    object ActImportarWeb: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Importar Web'
      OnExecute = ActImportarWebExecute
    end
    object ActPesquisarGTIN: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Pesquisar por Barra'
      OnExecute = ActPesquisarGTINExecute
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcg.tcgncm,'
      '  tcgex,'
      '  tcgtabela,'
      '  tcgaliqnac,'
      '  tcgaliqimp,'
      '  tcgaliqest,'
      '  tcgaliqmun,'
      '  tcgdescricao,'
      '  tcginicio,'
      '  tcgfinal,'
      '  tcgchave,'
      '  tcgversao,'
      '  tcgfonte,'
      '  tcgchave,'
      '  ansanexo'
      ' '
      'FROM tcg'
      ''
      'LEFT JOIN ans ON ans.tcgncm=tcg.tcgncm'
      'where tcgfinal IS not null and tcgfinal>=curdate()')
    object uqtabelatcgncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'tcgncm'
      Size = 10
    end
    object uqtabelatcgex: TStringField
      DisplayLabel = 'T'
      FieldName = 'tcgex'
      Size = 3
    end
    object uqtabelatcgtabela: TIntegerField
      DisplayLabel = 'Tabela'
      FieldName = 'tcgtabela'
    end
    object uqtabelatcgaliqnac: TFloatField
      DisplayLabel = '% Nacional'
      FieldName = 'tcgaliqnac'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object uqtabelatcgaliqimp: TFloatField
      DisplayLabel = '% Importado'
      FieldName = 'tcgaliqimp'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object uqtabelatcgaliqest: TFloatField
      DisplayLabel = '# Estadual'
      FieldName = 'tcgaliqest'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object uqtabelatcgaliqmun: TFloatField
      DisplayLabel = '% Municiapl'
      FieldName = 'tcgaliqmun'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object uqtabelatcgdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tcgdescricao'
      Size = 1500
    end
    object uqtabelatcgfonte: TStringField
      DisplayLabel = 'Fonte'
      FieldName = 'tcgfonte'
      Size = 10
    end
    object uqtabelatcgversao: TStringField
      DisplayLabel = 'Vers'#227'o'
      FieldName = 'tcgversao'
      Size = 10
    end
    object uqtabelatcginicio: TDateField
      DisplayLabel = 'In'#237'cio'
      FieldName = 'tcginicio'
    end
    object uqtabelatcgfinal: TDateField
      DisplayLabel = 'Final'
      FieldName = 'tcgfinal'
    end
    object uqtabelatcgchave: TStringField
      DisplayLabel = 'Chave'
      FieldName = 'tcgchave'
      Size = 10
    end
    object uqtabelaansanexo: TStringField
      DisplayLabel = 'Anexo'
      FieldName = 'ansanexo'
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object tcg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcgncm,'
      '  tcgex,'
      '  tcgtabela,'
      '  tcgaliqnac,'
      '  tcgaliqimp,'
      '  tcgaliqest,'
      '  tcgaliqmun,'
      '  tcgdescricao,'
      '  tcgversao'
      ''
      'FROM tcg')
    Left = 760
    Top = 411
    object tcgtcgncm: TStringField
      DisplayLabel = 'NCM'
      DisplayWidth = 10
      FieldName = 'tcgncm'
      Size = 10
    end
    object tcgtcgex: TStringField
      DisplayLabel = 'T'
      FieldName = 'tcgex'
      Size = 3
    end
    object tcgtcgtabela: TIntegerField
      DisplayLabel = 'Tabela'
      FieldName = 'tcgtabela'
    end
    object tcgtcgaliqnac: TFloatField
      DisplayLabel = '% Nacional'
      FieldName = 'tcgaliqnac'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tcgtcgaliqimp: TFloatField
      DisplayLabel = '% Importado'
      FieldName = 'tcgaliqimp'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tcgtcgaliqest: TFloatField
      DisplayLabel = '# Estadual'
      FieldName = 'tcgaliqest'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tcgtcgaliqmun: TFloatField
      DisplayLabel = '% Municiapl'
      FieldName = 'tcgaliqmun'
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object tcgtcgdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tcgdescricao'
      Size = 1500
    end
    object tcgtcgversao: TStringField
      FieldName = 'tcgversao'
    end
  end
  object ACBrNCMs: TACBrNCMs
    ProxyPort = '8080'
    UrlConsulta = 'http://www4.receita.fazenda.gov.br/simulador/PesquisarNCM.jsp?'
    Left = 944
    Top = 341
  end
  object ACBrIBPTax1: TACBrIBPTax
    ProxyPort = '8080'
    Left = 882
    Top = 342
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '*.csv'
    Left = 712
    Top = 381
  end
end
