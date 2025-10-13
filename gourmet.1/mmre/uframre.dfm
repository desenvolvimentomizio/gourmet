inherited framre: Tframre
  Width = 941
  ExplicitWidth = 941
  inherited PlGeral: TPanel
    Width = 941
    ExplicitWidth = 941
    inherited PlLista: TPanel
      Width = 797
      ExplicitWidth = 797
      inherited SplLista: TSplitter
        Top = 404
        Width = 797
        Visible = True
        ExplicitTop = 356
        ExplicitWidth = 797
      end
      inherited SpFilter: TSplitter
        Width = 797
        ExplicitWidth = 797
      end
      inherited PlRodaPe: TPanel
        Top = 409
        Width = 797
        Height = 171
        Visible = True
        ExplicitTop = 409
        ExplicitWidth = 797
        ExplicitHeight = 171
        object plCamposModulos: TPanel
          Left = 0
          Top = 0
          Width = 393
          Height = 171
          Align = alLeft
          BevelOuter = bvNone
          BorderWidth = 3
          Caption = 'plCamposModulos'
          TabOrder = 0
          object DBGListaCRM: TDBGrid
            Left = 3
            Top = 29
            Width = 387
            Height = 139
            Align = alClient
            DataSource = Dcrm
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGListaCRMDrawColumnCell
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'tcaidentificacao'
                Title.Alignment = taCenter
                Width = 15
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'crmnome'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'crmidentificacao'
                Width = 200
                Visible = True
              end>
          end
          object plTituloCamposModulos: TPanel
            Left = 3
            Top = 3
            Width = 387
            Height = 26
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'Campos do M'#243'dulo'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
        end
        object plParametros: TPanel
          Left = 393
          Top = 0
          Width = 404
          Height = 171
          Align = alClient
          BorderWidth = 3
          TabOrder = 1
          object plTituloParametros: TPanel
            Left = 4
            Top = 4
            Width = 396
            Height = 26
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'Par'#226'metros Dispon'#237'veis'
            Color = 12615680
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -15
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object DBGListaParemetros: TDBGrid
            Left = 4
            Top = 30
            Width = 396
            Height = 137
            Align = alClient
            DataSource = Dcrl
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGListaParemetrosDrawColumnCell
            Columns = <
              item
                Alignment = taCenter
                Expanded = False
                FieldName = 'tcaidentificacao'
                Title.Alignment = taCenter
                Width = 15
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'crmnome'
                Width = 120
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'crmidentificacao'
                Width = 200
                Visible = True
              end>
          end
        end
      end
      inherited PlFiltros: TPanel
        Width = 797
        ExplicitWidth = 797
      end
      inherited PlSelecao: TPanel
        Width = 797
        ExplicitWidth = 797
        inherited GBPlSelecao: TGroupBox
          Width = 793
          ExplicitWidth = 793
          inherited DBLista: TDBGrid
            Width = 686
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 797
        Height = 275
        ExplicitWidth = 797
        ExplicitHeight = 275
        inherited DBGLista: TDBGrid
          Width = 797
          Height = 250
          Columns = <
            item
              Expanded = False
              FieldName = 'mrechave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bplcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'bplidentificacao'
              Width = 371
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 250
          Width = 797
          ExplicitTop = 250
          ExplicitWidth = 797
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 941
      ExplicitWidth = 941
      inherited plid: TPanel
        Left = 491
        ExplicitLeft = 491
      end
      inherited PlSair: TPanel
        Left = 735
        ExplicitLeft = 735
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
  inherited DSTabela: TUniDataSource
    Left = 320
    Top = 284
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT mre.mrechave'
      '     , mre.relcodigo'
      '     , mre.bplcodigo'
      '     , bpl.bplidentificacao'
      'FROM mre'
      '  JOIN bpl'
      '    ON mre.bplcodigo = bpl.bplcodigo'
      'WHERE mre.bplcodigo = bpl.bplcodigo'
      'AND relcodigo = :relcodigo')
    Left = 276
    Top = 284
    ParamData = <
      item
        DataType = ftString
        Name = 'relcodigo'
        Value = '01621085918'
      end>
    object uqtabelamrechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'mrechave'
    end
    object uqtabelarelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
    object uqtabelabplcodigo: TIntegerField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'bplcodigo'
    end
    object uqtabelabplidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'bplidentificacao'
      Size = 255
    end
  end
  inherited cpg: TUniQuery
    Left = 236
    Top = 264
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited cpc: TUniQuery
    Left = 237
    Top = 313
  end
  inherited rel: TUniQuery
    SQL.Strings = (
      'SELECT mre.bplcodigo'
      '     , rel.reltitulo'
      '     , rel.relnomearquivo'
      '     , rel.relarquivo'
      '     , rel.relidentificacao'
      '     , bpl.bplfranome'
      '     , rel.relcodigo'
      'FROM mre'
      '  INNER JOIN rel'
      '    ON mre.relcodigo = rel.relcodigo'
      '  INNER JOIN bpl'
      '    ON mre.bplcodigo = bpl.bplcodigo'
      'WHERE bplfranome = :bplfranome')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bplfranome'
        Value = nil
      end>
  end
  inherited Dsfi: TUniDataSource
    Top = 404
  end
  inherited sfi: TUniQuery
    Left = 284
    Top = 400
  end
  inherited XMLDocument1: TXMLDocument
    Left = 824
    Top = 221
  end
  object crm: TUniQuery
    SQL.Strings = (
      'SELECT crmchave'
      '     , bplcodigo'
      '     , crmnome'
      '     , crmidentificacao'
      '     , tcacodigo'
      
        '     , CASE WHEN tcacodigo = 1 THEN '#39'I'#39' WHEN tcacodigo = 2 THEN ' +
        #39'D'#39' WHEN tcacodigo = 3 THEN '#39'N'#39' WHEN tcacodigo = 4 THEN '#39'T'#39
      '       END tcaidentificacao'
      'FROM crm'
      'WHERE bplcodigo = :bplcodigo')
    Left = 352
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'bplcodigo'
        Value = nil
      end>
    object crmcrmchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'crmchave'
    end
    object crmbplcodigo: TIntegerField
      DisplayLabel = 'M'#243'dulo'
      FieldName = 'bplcodigo'
    end
    object crmcrmnome: TStringField
      DisplayLabel = 'Nome do Campo'
      FieldName = 'crmnome'
      Size = 80
    end
    object crmcrmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'crmidentificacao'
      Size = 50
    end
    object crmtcacodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tcacodigo'
    end
    object crmtcaidentificacao: TStringField
      DisplayLabel = 'T'
      FieldName = 'tcaidentificacao'
      Size = 1
    end
  end
  object Dcrm: TDataSource
    DataSet = crm
    Left = 355
    Top = 268
  end
  object crl: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT crm.crmnome'
      '              , crm.tcacodigo'
      '              , mre.relcodigo'
      
        '              , CASE WHEN tcacodigo = 1 THEN '#39'I'#39' WHEN tcacodigo ' +
        '= 2 THEN '#39'D'#39' WHEN tcacodigo = 3 THEN '#39'N'#39' WHEN tcacodigo = 4 THEN' +
        ' '#39'T'#39
      '                END tcaidentificacao'
      'FROM mre'
      '  INNER JOIN bpl'
      '    ON mre.bplcodigo = bpl.bplcodigo'
      '  INNER JOIN crm'
      '    ON bpl.bplcodigo = crm.bplcodigo'
      '  INNER JOIN crl'
      '    ON crl.relcodigo = mre.relcodigo'
      'WHERE mre.relcodigo = :relcodigo'
      'AND crl.crlnome = crm.crmnome'
      'ORDER BY crm.crmidentificacao')
    Left = 704
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
    object crlcrmnome: TStringField
      DisplayLabel = 'Nome do Campo'
      FieldName = 'crmnome'
      Size = 80
    end
    object crltcacodigo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'tcacodigo'
    end
    object crltcaidentificacao: TStringField
      DisplayLabel = 'T'
      FieldName = 'tcaidentificacao'
      Size = 1
    end
    object crlrelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
    object crlcrmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldKind = fkLookup
      FieldName = 'crmidentificacao'
      LookupDataSet = crm
      LookupKeyFields = 'crmnome'
      LookupResultField = 'crmidentificacao'
      KeyFields = 'crmnome'
      Size = 50
      Lookup = True
    end
  end
  object Dcrl: TDataSource
    DataSet = crl
    Left = 750
    Top = 344
  end
end
