inherited fbcaitv: Tfbcaitv
  Caption = 'Localiza itens Vendidos'
  ClientHeight = 526
  ClientWidth = 991
  PixelsPerInch = 96
  TextHeight = 13
  inherited SpFilter: TSplitter
    Width = 991
  end
  inherited pbotoes: TPanel
    Top = 497
    Width = 991
    inherited bconfirma: TBitBtn
      Left = 837
      OnClick = bconfirmaClick
    end
    inherited bcancela: TBitBtn
      Left = 912
      OnClick = bcancelaClick
    end
  end
  inherited PlSelecao: TPanel
    Width = 991
    inherited GBPlSelecao: TGroupBox
      Width = 985
      inherited DBLista: TDBGrid
        Width = 854
      end
    end
  end
  inherited PlFiltros: TPanel
    Width = 991
  end
  inherited DBGLista: TDBGrid
    Width = 991
    Height = 337
    Columns = <
      item
        Expanded = False
        FieldName = 'etdidentificacao'
        Width = 250
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mesemissao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'procodigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'progtin'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pronome'
        Width = 230
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'itmquantidade'
        Width = 50
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'itens'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'itmvalor'
        Visible = True
      end>
  end
  inherited PlTitulo: TPanel
    Width = 991
    inherited plid: TPanel
      Left = 840
    end
    inherited bconfigurar: TBitBtn
      Left = 966
    end
  end
  inherited uqtabela: tuniquery
    OnCalcFields = uqtabelaCalcFields
    SQL.Strings = (
      
        'select itm.itmchave, itm.meschave, mes.etdcodigo, pro.pronome,it' +
        'm.itmdesccomple, mesemissao, etd.etdidentificacao, '
      
        'mesnumero, itmvalor, itmquantidade, progtin, itm.procodigo, mes.' +
        'mesemissao from itm, mes, pro, etd, toe '
      
        'where mes.meschave=itm.meschave and itm.procodigo=pro.procodigo ' +
        'and mes.etdcodigo=etd.etdcodigo and mes.toecodigo=toe.toecodigo ' +
        'and'
      'toe.ttecodigo=1')
    object uqtabelaitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object uqtabelameschave: TIntegerField
      FieldName = 'meschave'
    end
    object uqtabelaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object uqtabelaprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo Int.'
      FieldName = 'procodigo'
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 150
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Nome do Cliente'
      FieldName = 'etdidentificacao'
      Size = 250
    end
    object uqtabelamesnumero: TIntegerField
      DisplayLabel = 'Nr. Documento'
      FieldName = 'mesnumero'
    end
    object uqtabelaitmvalor: TFloatField
      DisplayLabel = 'Valor do Item R$'
      FieldName = 'itmvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelaitmquantidade: TFloatField
      DisplayLabel = 'Vendido'
      FieldName = 'itmquantidade'
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object uqtabelaprogtin: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'progtin'
    end
    object uqtabelamesemissao: TDateField
      DisplayLabel = 'Data Venda'
      FieldName = 'mesemissao'
      EditMask = '!99/99/9999;1;_'
    end
    object uqtabelaitens: TFloatField
      DisplayLabel = 'Para Devolver'
      FieldKind = fkCalculated
      FieldName = 'itens'
      Calculated = True
    end
  end
  object idv: tuniquery
    SQL.Strings = (
      
        'select idvchave, itmchave, rdvchave, idvquantidade from idv wher' +
        'e rdvchave=:rdvchave')
    Params = <
      item
        DataType = ftUnknown
        Name = 'rdvchave'
        ParamType = ptUnknown
      end>
    Left = 524
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rdvchave'
        ParamType = ptUnknown
      end>
    object idvidvchave: TIntegerField
      FieldName = 'idvchave'
    end
    object idvitmchave: TIntegerField
      FieldName = 'itmchave'
    end
    object idvrdvchave: TIntegerField
      FieldName = 'rdvchave'
    end
    object idvidvquantidade: TFloatField
      FieldName = 'idvquantidade'
    end
  end
  object Dídv: tunidatasource
    DataSet = idv
    Left = 600
    Top = 292
  end
end
