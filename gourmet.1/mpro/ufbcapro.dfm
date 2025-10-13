inherited fbcapro: Tfbcapro
  Caption = 'Localiza Produtos e Servi'#231'os'
  ClientWidth = 1007
  PixelsPerInch = 96
  TextHeight = 13
  inherited SpFilter: TSplitter
    Width = 1007
  end
  inherited pbotoes: TPanel
    Width = 1007
    inherited bconfirma: TBitBtn
      Left = 853
    end
    inherited bcancela: TBitBtn
      Left = 928
    end
  end
  inherited PlSelecao: TPanel
    Width = 1007
    inherited GBPlSelecao: TGroupBox
      Width = 1001
      inherited DBLista: TDBGrid
        Width = 870
      end
    end
  end
  inherited PlFiltros: TPanel
    Width = 1007
  end
  inherited DBGLista: TDBGrid
    Width = 1007
    Columns = <
      item
        Expanded = False
        FieldName = 'procodigo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'proncm'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pronome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'proreferencia'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'prosaldo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'grpidentificacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'maridentificacao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'icmaliquotas'
        Visible = True
      end>
  end
  inherited PlTitulo: TPanel
    Width = 1007
    inherited plid: TPanel
      Left = 856
    end
    inherited bconfigurar: TBitBtn
      Left = 982
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      
        'select pro.procodigo,pronome,maridentificacao,grpidentificacao,i' +
        'cmaliquotas,proncm,prosaldo,proativo,proobs,proreferencia from p' +
        'ro,mar,grp,icm'
      'where '
      'pro.marcodigo=mar.marcodigo and'
      'pro.grpcodigo=grp.grpcodigo and'
      'pro.icmcodigo=icm.icmcodigo')
    object uqtabelaprocodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object uqtabelaproncm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'proncm'
      Size = 15
    end
    object uqtabelapronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object uqtabelaprosaldo: TFloatField
      FieldName = 'prosaldo'
    end
    object uqtabelagrpidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grpidentificacao'
      Size = 30
    end
    object uqtabelamaridentificacao: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'maridentificacao'
      Size = 35
    end
    object uqtabelaicmaliquotas: TStringField
      DisplayLabel = 'ICMS'
      FieldName = 'icmaliquotas'
      Size = 8
    end
    object uqtabelaproativo: TIntegerField
      FieldName = 'proativo'
    end
    object uqtabelaproreferencia: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      FieldName = 'proreferencia'
      Size = 45
    end
    object uqtabelaproobs: TStringField
      FieldName = 'proobs'
      Size = 200
    end
  end
end
