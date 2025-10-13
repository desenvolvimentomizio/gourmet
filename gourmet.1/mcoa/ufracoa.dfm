inherited fracoa: Tfracoa
  inherited PlGeral: TPanel
    inherited PlLista: TPanel
      inherited PnlGrid: TPanel
        inherited DBGLista: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'coacodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dtbcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dcpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'clbcodigo'
              Title.Caption = 'Usu'#225'rio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'coadata'
              Visible = True
            end>
        end
      end
    end
    inherited PlTitulo: TPanel
      Caption = 'Controle Altera'#231#227'o de Campo'
      inherited plid: TPanel
        Caption = '03.09.80.002'
      end
    end
  end
  inherited DSTabela: tunidatasource
    Left = 308
    Top = 264
  end
  inherited uqtabela: tuniquery
    SQL.Strings = (
      'select coacodigo,dtbcodigo,dcpcodigo,clbcodigo,coadata from coa')
    Left = 224
    Top = 260
    object uqtabelacoacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'coacodigo'
    end
    object uqtabeladtbcodigo: TIntegerField
      DisplayLabel = 'Tabela'
      FieldName = 'dtbcodigo'
    end
    object uqtabeladcpcodigo: TIntegerField
      DisplayLabel = 'Campo'
      FieldName = 'dcpcodigo'
    end
    object uqtabelaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object uqtabelacoadata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'coadata'
    end
  end
  inherited vcls: TVirtualTable
    Data = {03000000000000000000}
  end
end
