inherited frabtm: Tfrabtm
  Width = 1106
  ExplicitWidth = 1106
  inherited PlGeral: TPanel
    Width = 1106
    ExplicitWidth = 1106
    inherited PlLista: TPanel
      Width = 962
      ExplicitWidth = 962
      inherited SplLista: TSplitter
        Width = 962
        ExplicitWidth = 962
      end
      inherited SpFilter: TSplitter
        Width = 962
        ExplicitWidth = 962
      end
      inherited PlRodaPe: TPanel
        Width = 962
        ExplicitWidth = 962
      end
      inherited PlFiltros: TPanel
        Width = 962
        ExplicitWidth = 962
      end
      inherited PlSelecao: TPanel
        Width = 962
        ExplicitWidth = 962
        inherited GBPlSelecao: TGroupBox
          Width = 958
          ExplicitWidth = 958
          inherited DBLista: TDBGrid
            Width = 851
          end
        end
      end
      inherited PnlGrid: TPanel
        Width = 962
        ExplicitWidth = 962
        inherited DBGLista: TDBGrid
          Width = 962
          Columns = <
            item
              Expanded = False
              FieldName = 'btmcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'btmidentificacao'
              Width = 150
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
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'btmtipobotao'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'btmformaabe'
              Width = 80
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grmidentificacao'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'btmordem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdpidentificacao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'mdpcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grmcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'grmordem'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'atvidentificacao'
              Visible = True
            end>
        end
        inherited PnlRodapeGrid: TPanel
          Width = 962
          ExplicitWidth = 962
        end
      end
    end
    inherited PlTitulo: TPanel
      Width = 1106
      ExplicitWidth = 1106
      inherited plid: TPanel
        Left = 656
        ExplicitLeft = 656
      end
      inherited PlSair: TPanel
        Left = 900
        ExplicitLeft = 900
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
    object ActExportar: TAction [2]
      Category = 'Manuten'#231#227'o'
      Caption = 'Exportar'
      OnExecute = ActExportarExecute
    end
    object ActImportar: TAction [3]
      Category = 'Manuten'#231#227'o'
      Caption = 'Importar'
      OnExecute = ActImportarExecute
    end
    inherited ActExcluir: TAction
      Enabled = True
    end
  end
  inherited DSTabela: TUniDataSource
    Left = 328
    Top = 316
  end
  inherited MenuManutencao: TPopupMenu
    object mUtilitarios: TMenuItem [7]
      Caption = 'Utilit'#225'rios'
      object mGerarImages: TMenuItem
        Caption = 'Gerar Imagens'
        OnClick = mGerarImagesClick
      end
    end
  end
  inherited uqtabela: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  btm.btmcodigo,'
      '  btm.bplcodigo,'
      '  bpl.bplidentificacao,'
      '  btm.btmidentificacao,'
      '  btm.btmdica,'
      '  btm.btmimagem,'
      '  IF(btm.btmformaabe = 1, '#39'Lista'#39', '#39'P'#225'gina'#39') AS btmformaabe,'
      '  IF(btm.btmtipobotao = 1, '#39'Normal'#39', '#39'Pequeno'#39') AS btmtipobotao,'
      '  btm.grmcodigo,'
      '  grm.grmidentificacao,'
      '  btm.btmordem,'
      '  mdp.mdpidentificacao,'
      '  mdp.mdpcodigo,'
      '  grm.grmcodigo,'
      '  grm.grmordem,'
      '  atv.atvidentificacao'
      'FROM btm'
      '  INNER JOIN bpl'
      '    ON btm.bplcodigo = bpl.bplcodigo'
      '  INNER JOIN grm'
      '    ON btm.grmcodigo = grm.grmcodigo'
      ' INNER JOIN mdp'
      '    ON grm.mdpcodigo = mdp.mdpcodigo'
      ' INNER JOIN atv  ON btm.btmatividade = atv.atvcodigo')
    Left = 484
    Top = 388
    object uqtabelabtmcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'btmcodigo'
    end
    object uqtabelabplcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.BPL'
      FieldName = 'bplcodigo'
    end
    object uqtabelabplidentificacao: TStringField
      DisplayLabel = 'Bpl'
      FieldName = 'bplidentificacao'
      Size = 50
    end
    object uqtabelabtmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'btmidentificacao'
      Size = 50
    end
    object uqtabelabtmformaabe: TStringField
      DisplayLabel = 'Abertura'
      FieldName = 'btmformaabe'
    end
    object uqtabelabtmtipobotao: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'btmtipobotao'
    end
    object uqtabelagrmidentificacao: TStringField
      DisplayLabel = 'Grupo'
      FieldName = 'grmidentificacao'
      Size = 50
    end
    object uqtabelabtmordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'btmordem'
    end
    object uqtabelamdpidentificacao: TStringField
      DisplayLabel = 'M'#243'dulos'
      FieldName = 'mdpidentificacao'
      Size = 50
    end
    object uqtabelabtmimagem: TBlobField
      FieldName = 'btmimagem'
    end
    object uqtabelamdpcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.Nodulo'
      FieldName = 'mdpcodigo'
    end
    object uqtabelagrmcodigo: TIntegerField
      DisplayLabel = 'Cd. Grupo'
      FieldName = 'grmcodigo'
    end
    object uqtabelagrmordem: TIntegerField
      DisplayLabel = 'Ordem do Grupo'
      FieldName = 'grmordem'
    end
    object uqtabelaatvidentificacao: TStringField
      DisplayLabel = 'Atividade'
      FieldName = 'atvidentificacao'
      Size = 35
    end
  end
  inherited vcls: TVirtualTable
    Data = {04000000000000000000}
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  /*Principal*/'
      '  cfgidentificacao'
      ', cfgdoisprecos'
      ', cfgusasrv'
      ', cfgpedeoperador'
      ', cfgmsai.cfgpercomismed'
      ', cfgmsai.cfgusamultiplicador'
      ', cfgmsai.cfgidentificaequip'
      ', cfgmsai.cfgrefepro'
      ', cfgmsai.cfgdefinetoeatendimento'
      ', cfgmsai.cfgusaveiculo'
      ', cfgmsai.cfgcontrolaestoquedisp'
      ', cfgmsai.cfgpedeclientevenda'
      ', cfgmsai.cfgtipocomissao'
      ', cfg.cfgusanfc'
      ', cfg.cfgusapdv'
      ', cfg.cfgusaadc'
      ', cfg.cfgusacre'
      ', cfg.cfgusache'
      ', cfg.cfgusabol'
      ', cfgmcfg.cfgcodigo'
      ', cfgmcfg.cfgetdempresa'
      ''
      ''
      '  /*Entradas*/'
      ', cfgment.cfgprouso'
      ', cfgment.cfgtoeusofora'
      ', cfgment.cfgtoeusointe'
      ''
      ''
      '  /*Sa'#237'das*/'
      ', cfgmsai.cfgtoecuffora'
      ', cfgmsai.cfgtoecufinte'
      ', cfgmsai.cfgmensagempdv'
      ', cfgmsai.cfgusacondiconsumidor'
      ', cfgmsai.cfgdigitosbalanca'
      ', cfgmsai.cfgidentificatecnico'
      ', cfgmsai.cfgusacaixaprevenda'
      ', cfgmsai.cfgidentificavendedor'
      ', cfgmsai.cfgajustaperccomissao'
      ', cfgmsai.cfgusavendaforaestab'
      ', cfgmsai.cfgdescontonoservico'
      ', cfgmsai.cfgformapagamento'
      ', cfgmsai.cfgformacancelamento'
      ', cfgmsai.cfgarredondapeso'
      ', cfgmsai.cfgusaafaturar'
      ', cfgmsai.cfgtabelasaux'
      ', cfgmsai.cfgproinativsaldozero'
      ', cfgmsai.cfgregistraferramentas'
      ', cfgmsai.cfgprevisualizarimpressao'
      ''
      ''
      '  /*Contas a Receber*/'
      ', cfgmcre.cfgviaassinar'
      ', cfgmcre.cfgcontrolalimite'
      ''
      ''
      '  /*Emiss'#227'o NFe*/'
      ', cfgmnfe.cfgviasnfe'
      ', cfgmnfe.cfgnumeronfe'
      ', cfgmnfe.cfgserienfe'
      ', cfgmnfe.cfgnumeronfce'
      ', cfgmnfe.cfgserienfce'
      ', cfgmnfe.cfgobs1'
      ', cfgmnfe.cfgobs2'
      ', cfgmnfe.cfgobs3'
      ', cfgmnfe.cfgobs4'
      ', cfgmnfe.cfgdescrinfe'
      ', cfgmnfe.cfgmodonfe'
      ', cfgmnfe.cfgservarqnfes'
      ', cfgmnfe.cfgnumecertifa1'
      ', cfg.cfgusanfc'
      ''
      ''
      '  /*Email*/'
      ', cfgmnfe.cfgemailnfe'
      ', cfgmnfe.cfgemailservidornfe'
      ', cfgmnfe.cfgemailsenhanfe'
      ', cfgmnfe.cfgmailportnfe'
      ', cfgmnfe.cfgemailusatls'
      ''
      ''
      '  /*SPED*/'
      ', cfgmcfg.crtcodigo'
      ', cfgmspd.cfgcstterceiros'
      ''
      '  /*Gourmet*/'
      '-- , cfgmgou.cfgmgoucobraentrega'
      ', cfg.cfgusagou'
      ''
      '  /*Dados da Empresa*/'
      ', etd.etdapelido'
      ', etd.etdidentificacao'
      ', etd.etddoc1'
      ', edr.ufscodigo'
      ', edr.cddcodigo'
      ', edr.edrinscest'
      ', edr.edrrua'
      ', edr.edrnumero'
      ', edr.edrbairro'
      ', edr.edrcep'
      ', cdd.cddnome'
      ', ufs.ufssigla'
      ', etf.etftelefone'
      ''
      ''
      '  /*Box-e - Dom'#237'nio Sistemas*/'
      ', ctd.ctdboxedominio'
      'FROM cfgmcfg'
      '   , cfgmspd'
      '   , cfgmnfe'
      '   , cfgment'
      '   , cfgmsai'
      '   , cfgmcre'
      '   -- , cfgmgou'
      '   , ufs'
      '   , etd'
      '   , edr'
      '   , cfg'
      '   , etf'
      '   , cdd'
      '   , ctd'
      'WHERE cfg.cfgcodigo = ctd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmsai.cfgcodigo'
      '-- AND cfg.cfgcodigo = cfgmgou.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmcre.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND etd.etdcodigo = etf.etdcodigo'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND ufs.ufscodigo = edr.ufscodigo'
      'AND etf.ttfcodigo = 1'
      'AND edr.tedcodigo = 1'
      'AND cfg.flacodigo = :flacodigo')
    Left = 632
    Top = 301
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
  end
end
