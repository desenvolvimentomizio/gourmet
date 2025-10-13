inherited lbaf: Tlbaf
  Caption = 'A Faturar'
  PixelsPerInch = 96
  TextHeight = 16
  inherited pbotoes: TPanel
    inherited bbaixarsemconfirmacao: TButton
      Visible = False
    end
  end
  inherited DBGLista: TDBGrid
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentCtl3D = False
    OnCellClick = DBGListaCellClick
    OnDrawColumnCell = DBGListaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'uocmarca'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orcchave'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orcdataabert'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdcodigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdidentificacao'
        Width = 320
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orcgeral'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orcdesconto'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'orctotal'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'puoidentificacao'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'stoidentificacao'
        Width = 120
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'clbidentificacao'
        Visible = True
      end>
  end
  inherited PlTitulo: TPanel
    Caption = 'Busca A Faturar'
  end
  inherited UqTabela: tuniquery
    object UqTabelauocmarca: TIntegerField [0]
      DisplayLabel = 'Incluir'
      DisplayWidth = 7
      FieldKind = fkLookup
      FieldName = 'uocmarca'
      LookupDataSet = uoc
      LookupKeyFields = 'orcchaveitem'
      LookupResultField = 'uocmarca'
      KeyFields = 'orcchave'
      Lookup = True
    end
    object UqTabelauocchave: TIntegerField [1]
      FieldKind = fkLookup
      FieldName = 'uocchave'
      LookupDataSet = uoc
      LookupKeyFields = 'orcchaveitem'
      LookupResultField = 'uocchave'
      KeyFields = 'orcchave'
      Lookup = True
    end
  end
  object uoc: tuniquery [13]
    SQL.Strings = (
      'select uocchave, orcchave, orcchaveitem,uocmarca from uoc ')
    Params = <>
    Left = 348
    Top = 140
    object uocuocchave: TIntegerField
      FieldName = 'uocchave'
    end
    object uocorcchave: TIntegerField
      FieldName = 'orcchave'
    end
    object uocorcchaveitem: TIntegerField
      FieldName = 'orcchaveitem'
    end
    object uocuocmarca: TIntegerField
      FieldName = 'uocmarca'
    end
  end
  object DSuoc: tunidatasource [14]
    DataSet = uoc
    Left = 400
    Top = 140
  end
  inherited DsTabela: tunidatasource
    OnDataChange = DsTabelaDataChange
  end
end
