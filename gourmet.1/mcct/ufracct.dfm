inherited fracct: Tfracct
  Height = 762
  ExplicitHeight = 762
  inherited PlGeral: TPanel
    Height = 762
    ExplicitHeight = 762
    inherited SplBotoes: TSplitter
      Height = 742
      ExplicitHeight = 742
    end
    inherited PlBotoes: TPanel
      Height = 742
      ExplicitHeight = 742
      inherited ImageLogoBase: TImage
        Top = 663
        ExplicitTop = 663
      end
      inherited PlInfo: TPanel
        Top = 724
        ExplicitTop = 724
      end
      inherited SBBotoes: TScrollBox
        Height = 663
        ExplicitHeight = 663
      end
    end
    inherited PlLista: TPanel
      Height = 742
      ExplicitHeight = 742
      inherited SplLista: TSplitter
        Top = 522
        Height = 8
        Visible = True
        ExplicitTop = 450
        ExplicitHeight = 8
      end
      inherited PlRodaPe: TPanel
        Top = 530
        Height = 212
        Visible = True
        ExplicitTop = 530
        ExplicitHeight = 212
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 793
          Height = 212
          Align = alLeft
          Color = 16774636
          DataSource = Dpcl
          DrawingStyle = gdsGradient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGrid1DrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'cctchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdapelido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cctidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcldatainicial'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pcldatafinal'
              Visible = True
            end>
        end
      end
      inherited PlFiltros: TPanel
        inherited PlBotaoFiltroEsp2: TPanel
          Enabled = True
          Visible = True
        end
      end
      inherited PnlGrid: TPanel
        Height = 393
        ExplicitHeight = 393
        inherited DBGLista: TDBGrid
          Height = 360
          Columns = <
            item
              Expanded = False
              FieldName = 'cctchave'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cctregistro'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tccidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cctidentificacao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdapelido'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cctvalor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'ctrdiavencto'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cctdatainicio'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'cctdatafinal'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'atvidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Top = 360
          Height = 33
          Visible = True
          ExplicitTop = 360
          ExplicitHeight = 33
          object plTotalOriginal: TPanel
            AlignWithMargins = True
            Left = 830
            Top = 4
            Width = 200
            Height = 25
            Align = alRight
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'L'#237'quido R$'
            Color = 12615680
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object plTotalContratos: TPanel
            AlignWithMargins = True
            Left = 418
            Top = 4
            Width = 200
            Height = 25
            Align = alRight
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'L'#237'quido R$'
            Color = 12615680
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 1
          end
          object plTotalContratosmes: TPanel
            AlignWithMargins = True
            Left = 624
            Top = 4
            Width = 200
            Height = 25
            Align = alRight
            Alignment = taRightJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'L'#237'quido R$'
            Color = 12615680
            Font.Charset = EASTEUROPE_CHARSET
            Font.Color = clWhite
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentBackground = False
            ParentFont = False
            TabOrder = 2
          end
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
    object ActGerarFaturamento: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Gerar Faturamento'
      OnExecute = ActGerarFaturamentoExecute
    end
    object ActParticipacoes: TAction [4]
      Category = 'Manuten'#231#227'o'
      Caption = 'Participa'#231#245'es'
      OnExecute = ActParticipacoesExecute
    end
    inherited ActConfig: TAction
      Enabled = True
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cct.cctchave,'
      '  cct.etdcodigo,'
      '  cct.cctregistro,'
      '  cct.cctvalor,'
      '  cct.cctdatainicio,'
      '  cct.cctdatafinal,'
      '  cct.cctperiodicidade,'
      '  cct.cctrenovacaoauto,'
      '  cct.ctrdiavencto,'
      '  etd.etdidentificacao,'
      '  etd.etdapelido, '
      '  tcc.tccidentificacao,'
      '  cct.cctidentificacao,'
      '  atv.atvidentificacao'
      'FROM cct'
      'inner join etd on cct.etdcodigo=etd.etdcodigo'
      'inner join tcc on cct.tcccodigo=tcc.tcccodigo'
      'left join atv on etd.atvcodigo=atv.atvcodigo')
    object uqtabelacctchave: TIntegerField
      DisplayLabel = 'Nr. Contrato'
      FieldName = 'cctchave'
    end
    object uqtabelacctregistro: TDateField
      DisplayLabel = 'Data de Registro'
      FieldName = 'cctregistro'
      Required = True
    end
    object uqtabelaetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
      Required = True
    end
    object uqtabelaetdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object uqtabelaetdapelido: TStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'etdapelido'
      Size = 35
    end
    object uqtabelacctvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'cctvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object uqtabelacctdatainicio: TDateField
      DisplayLabel = 'Data de Inicio'
      FieldName = 'cctdatainicio'
      Required = True
    end
    object uqtabelacctdatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'cctdatafinal'
    end
    object uqtabelacctperiodicidade: TIntegerField
      DisplayLabel = 'Periodicidade'
      FieldName = 'cctperiodicidade'
      Required = True
    end
    object uqtabelacctrenovacaoauto: TIntegerField
      DisplayLabel = 'Renova'#231#227'o Auto'
      FieldName = 'cctrenovacaoauto'
      Required = True
    end
    object uqtabelactrdiavencto: TIntegerField
      DisplayLabel = 'Dia de Vencto'
      FieldName = 'ctrdiavencto'
      Required = True
    end
    object uqtabelatccidentificacao: TStringField
      DisplayLabel = 'Tipo de Contrato'
      FieldName = 'tccidentificacao'
      Size = 50
    end
    object uqtabelacctidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'cctidentificacao'
    end
    object uqtabelaatvidentificacao: TStringField
      DisplayLabel = 'Rramo de Atividade'
      FieldName = 'atvidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  inherited ImageList1: TImageList
    Bitmap = {
      494C010103000800C00010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000001000000001002000000000000010
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000EDED
      ED001D1D1D000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000001818
      1800272727000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002A2A
      2A002A2A2A000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000FDFDFD001C1C
      1C001C1C1C00FDFDFD0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000006F6F6F006F6F6F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000282828000000
      0000000000002828280000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F0000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000035353500000000000000
      0000000000000000000035353500000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F00000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000007F7F
      7F00000000000000000000000000000000000000000000000000000000000000
      00007F7F7F000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E1E1E100E1E1E1000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00006F6F6F000000000000000000000000000000000000000000000000006F6F
      6F000000000000000000000000000000000000000000000000007F7F7F000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000007F7F7F0000000000000000000000000000000000000000000000
      000000000000000000000000000000000000DDDDDD001313130013131300DDDD
      DD00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000007F7F7F00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000007F7F7F00000000000000000000000000000000000000
      0000000000000000000000000000F7F7F7001919190000000000000000001919
      1900F7F7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7F7F0000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000007F7F7F000000000000000000000000000000
      00000000000000000000E4E4E400070707000000000000000000000000000000
      000007070700E4E4E40000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000DBDBDB0010101000000000000000000000000000000000000000
      00000000000010101000DBDBDB00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000009C9C9C00737373007F7F7F007F7F7F007F7F7F007F7F7F007F7F
      7F007F7F7F00737373009C9C9C00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000100000000100010000000000800000000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFFFFF0000FFFFFFFFFFFF0000
      FFFFFFFFE7FF0000FFFFFFFFE7FF0000FFFFFE7FE7FF0000FFFFFC3FC3FF0000
      FE7FF81FC3FF0000FC3FF00F81FF0000F81FE007FF9F0000F00FC003FF0F0000
      FFFF8001FE070000FFFF0000FC030000FFFFFFFFF8010000FFFFFFFFF8010000
      FFFFFFFFFFFF0000FFFFFFFFFFFF000000000000000000000000000000000000
      000000000000}
  end
  object dct: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dctchave,'
      '  cctchave,'
      '  dctdatainicial,'
      '  dctdatafinal,'
      '  dctdescricao,'
      '  dctvalor'
      'FROM dct where cctchave=:cctchave')
    Constraints = <>
    Left = 720
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cctchave'
        Value = nil
      end>
    object dctdctchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'dctchave'
    end
    object dctcctchave: TIntegerField
      DisplayLabel = 'Contrato'
      FieldName = 'cctchave'
    end
    object dctdctdatainicial: TDateField
      DisplayLabel = 'Data de In'#237'cio'
      FieldName = 'dctdatainicial'
    end
    object dctdctdatafinal: TDateField
      DisplayLabel = 'Data de Final'
      FieldName = 'dctdatafinal'
    end
    object dctdctdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'dctdescricao'
      Size = 250
    end
    object dctdctvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'dctvalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object pcl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pcl.pclchave,'
      '  pcl.etdcodigo,'
      '  pcl.cctchave,'
      '  pcl.pcldatainicial,'
      '  pcl.pcldatafinal,'
      '  pcl.pclpercentual,'
      '  etd.etdidentificacao,'
      '  etd.etdapelido,'
      '  cct.cctidentificacao'
      
        'FROM pcl, etd, cct where  pcl.etdcodigo=etd.etdcodigo and pcl.cc' +
        'tchave=cct.cctchave and pcl.cctchave=:cctchave')
    AutoCalcFields = False
    Constraints = <>
    OnCalcFields = uqtabelaCalcFields
    Left = 548
    Top = 452
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cctchave'
        Value = nil
      end>
    object uqtabelapclchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'pclchave'
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'Ch.'
      FieldName = 'cctchave'
    end
    object uqtabelapcldatainicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'pcldatainicial'
    end
    object uqtabelapcldatafinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'pcldatafinal'
    end
    object uqtabelapclpercentual: TFloatField
      DisplayLabel = 'Percentual'
      FieldName = 'pclpercentual'
    end
    object StringField1: TStringField
      DisplayLabel = 'Raz'#231'ao Social / Nome'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object StringField2: TStringField
      DisplayLabel = 'Nome Fantasia / Apelido'
      FieldName = 'etdapelido'
      Size = 50
    end
    object StringField3: TStringField
      DisplayLabel = 'Id. Contrato'
      FieldName = 'cctidentificacao'
    end
  end
  object Dpcl: TDataSource
    DataSet = pcl
    Left = 600
    Top = 460
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cfgcodigo,'
      '  cfgmcctipos,'
      '  cfgmcctformavalor,'
      '  cfgmcctidentificador,'
      '  cfgmcctempercentual,'
      '  cfgmcctusarenovacao,'
      '  cfgmcctusadatafinal,'
      '  cfgmccttipovalor'
      'FROM cfgmcct where cfgcodigo=:cfgcodigo')
    Constraints = <>
    Left = 484
    Top = 452
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgmcctipos: TStringField
      FieldName = 'cfgmcctipos'
      Size = 50
    end
    object cfgcfgmcctformavalor: TStringField
      FieldName = 'cfgmcctformavalor'
      Size = 50
    end
    object cfgcfgmcctidentificador: TStringField
      FieldName = 'cfgmcctidentificador'
      Size = 50
    end
    object cfgcfgmcctempercentual: TIntegerField
      FieldName = 'cfgmcctempercentual'
    end
    object cfgcfgmcctusarenovacao: TIntegerField
      FieldName = 'cfgmcctusarenovacao'
    end
    object cfgcfgmcctusadatafinal: TIntegerField
      FieldName = 'cfgmcctusadatafinal'
    end
    object cfgcfgmccttipovalor: TStringField
      FieldName = 'cfgmccttipovalor'
      Size = 50
    end
  end
  object resumocctmes: TUniQuery
    SQL.Strings = (
      'SELECT'
      '    tcc.tccidentificacao,'
      '  SUM(cct.cctvalor) cctvalor'
      ''
      'FROM cct, etd, tcc'
      
        '  where cct.etdcodigo=etd.etdcodigo and cct.tcccodigo=tcc.tcccod' +
        'igo and cct.cctdatafinal is null'
      '  GROUP BY cct.tcccodigo')
    Constraints = <>
    Left = 720
    Top = 357
    object resumocctmescctvalor: TFloatField
      FieldName = 'cctvalor'
    end
  end
  object resumocctcontratosmes: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      '      SUM(rfi.rfisaldogeral ) saldogeralmes'
      '    '
      ' '
      'FROM v_rfi rfi '
      
        '     INNER join etd on rfi.etdcodigo=etd.etdcodigo and etd.tseco' +
        'digo<>9  '
      ' '
      
        '     left join rfm on rfi.rfichave=rfm.rfichave  and rfi.flacodi' +
        'go=rfm.flacodigo '
      
        '     left join mor on rfm.meschave=mor.meschave and rfi.flacodig' +
        'o=mor.flacodigo  '
      'WHERE (rfi.tfdcodigo = 2'
      
        'AND rfi.flacodigo in (select flacodigo from fcb where clbcodigo=' +
        '1 ) '
      
        '  and  (rfi.srfcodigo=0 OR rfi.srfcodigo=1)) AND rfi.rfivencimen' +
        'to BETWEEN ('#39'2000-01-01'#39') and NOW()  AND titcodigo IN (SELECT ti' +
        'tcodigo FROM cct)')
    Constraints = <>
    Left = 856
    Top = 373
    object resumocctcontratosmessaldogeralmes: TFloatField
      FieldName = 'saldogeralmes'
    end
  end
  object resumocctcontratostotal: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      ''
      '      SUM(rfi.rfisaldogeral ) saldogeral'
      '    '
      ' '
      'FROM v_rfi rfi '
      
        '     INNER join etd on rfi.etdcodigo=etd.etdcodigo and etd.tseco' +
        'digo<>9  '
      ' '
      
        '     left join rfm on rfi.rfichave=rfm.rfichave  and rfi.flacodi' +
        'go=rfm.flacodigo '
      
        '     left join mor on rfm.meschave=mor.meschave and rfi.flacodig' +
        'o=mor.flacodigo  '
      'WHERE (rfi.tfdcodigo = 2'
      
        'AND rfi.flacodigo in (select flacodigo from fcb where clbcodigo=' +
        '1 ) '
      
        '  and  (rfi.srfcodigo=0 OR rfi.srfcodigo=1)) AND rfi.rfivencimen' +
        'to BETWEEN ('#39'2000-01-01'#39') and ('#39'2100-01-01'#39')  AND titcodigo IN (' +
        'SELECT titcodigo FROM cct)')
    Constraints = <>
    Left = 968
    Top = 349
    object resumocctcontratostotalsaldogeral: TFloatField
      FieldName = 'saldogeral'
    end
  end
end
