inherited fsrvfaturamento: Tfsrvfaturamento
  Caption = 'Faturamento'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    inherited procodigo: TDBEdit
      Left = 703
      Width = 59
      ExplicitLeft = 703
      ExplicitWidth = 59
    end
  end
  inherited paginas: TPageControl
    inherited Principal: TTabSheet
      inherited mesemissao: TDBEdit
        TabStop = False
        Color = 16767152
        ReadOnly = True
      end
      inherited PlDetalhe: TPanel
        inherited plbotoesitens: TPanel
          inherited bdescontonoitem: TBitBtn
            Width = 105
            ExplicitWidth = 105
          end
          inherited bdescontogeral: TBitBtn
            Left = 244
            Width = 105
            ExplicitLeft = 244
            ExplicitWidth = 105
          end
          inherited bimportaritens: TBitBtn
            Left = 349
            Width = 87
            Visible = False
            ExplicitLeft = 349
            ExplicitWidth = 87
          end
          inherited plTotalServicos: TPanel
            Left = 1090
            Align = alRight
            ExplicitLeft = 1090
          end
          inherited plImortaAtendimento: TPanel
            Left = 436
            ExplicitLeft = 436
          end
        end
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.04.09.001-06'
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  ufs.ufssigla,'
      '  etd.etddoc1,'
      '  cfgment.cfgprouso,'
      '  cfgmnfe.cfgobs1,'
      '  cfgmnfe.cfgobs2,'
      '  cfgmnfe.cfgobs3,'
      '  cfg.cfgdtinictb,'
      '  cfg.cfgdatapadrao,'
      '  cfgmnfe.cfgobs4,'
      '  cfgmcfg.cfgetdempresa,'
      '  cfgmnfe.cfgnumeronfe,'
      '  cfgmnfe.cfgnumecertif,'
      '  cfgmnfe.cfgserienfe,'
      '  cfgment.cfgtoeusofora,'
      '  cfgment.cfgtoeusointe,'
      '  cfgmspd.cfgetdsped,'
      '  cfgmcfg.crtcodigo'
      'FROM cfgmcfg,'
      '     ufs,'
      '     etd,'
      '     cfgmnfe,'
      '     cfgment,'
      '     edr,'
      '     cfg,'
      '     cfgmspd'
      'WHERE ufs.ufscodigo = edr.ufscodigo'
      'AND cfg.cfgcodigo = cfgmcfg.cfgcodigo'
      'AND cfg.cfgcodigo = cfgment.cfgcodigo'
      'AND cfg.cfgcodigo = cfgmnfe.cfgcodigo'
      'AND etd.etdcodigo = cfgmcfg.cfgetdempresa'
      'AND etd.etdcodigo = edr.etdcodigo'
      'AND edr.tedcodigo = 1'
      'AND cfg.cfgcodigo = cfgmspd.cfgcodigo')
    Left = 280
    Top = 392
    object cfgcfgdtinictb: TDateField
      FieldName = 'cfgdtinictb'
    end
    object cfgcfgdatapadrao: TDateField
      FieldName = 'cfgdatapadrao'
    end
  end
  inherited acoes: TActionList
    inherited ActAFaturar: TAction
      OnExecute = ActAFaturarExecute
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object dfa: TUniQuery [69]
    SQL.Strings = (
      'SELECT'
      '  dfa.dfachave,'
      '  dfa.meschave,'
      '  dfa.dfameschave,'
      '  mes.tdfcodigo'
      'FROM dfa,'
      '     mes'
      'WHERE dfa.dfameschave = mes.meschave'
      'AND dfa.meschave = :meschave')
    Left = 444
    Top = 536
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dfadfachave: TIntegerField
      FieldName = 'dfachave'
    end
    object dfameschave: TIntegerField
      FieldName = 'meschave'
    end
    object dfadfameschave: TIntegerField
      FieldName = 'dfameschave'
    end
  end
  inherited mesrfa: TVirtualTable
    Data = {04000000000000000000}
  end
end
