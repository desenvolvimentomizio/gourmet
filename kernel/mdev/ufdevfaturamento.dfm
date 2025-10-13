inherited fdevfaturamento: Tfdevfaturamento
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
      inherited mesregistro: TDBEdit
        TabStop = False
        Color = 16767152
        ReadOnly = True
      end
      inherited PlDetalhe: TPanel
        inherited PlItens: TPanel
          inherited PlObs: TPanel
            inherited PlObsdetalhe: TPanel
              inherited PGDetalhes: TPageControl
                inherited TSDocumentoRef: TTabSheet
                  inherited Panel1: TPanel
                    Visible = False
                  end
                end
              end
            end
          end
        end
        inherited plbotoesitens: TPanel
          inherited BActIncluir: TBitBtn
            Visible = False
          end
          inherited BActAlterar: TBitBtn
            Visible = False
          end
          inherited BActEcluir: TBitBtn
            Width = 88
            Caption = 'Excluir Item'
            ExplicitWidth = 88
          end
          inherited bactAFaturar: TBitBtn
            Left = 181
            Width = 96
            ExplicitLeft = 181
            ExplicitWidth = 96
          end
        end
      end
      inherited GBIPI: TGroupBox
        inherited mesipi: TDBEdit
          TabStop = True
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
  inherited itmfat: TUniQuery
    SQL.Strings = (
      
        'select itm.*, idtquantidade, idt.toecodigo toedevolucacao from i' +
        'tm,idt, mdt WHERE mdt.mdtchave=idt.mdtchave and  itm.itmchave=id' +
        't.itmchave and itm.meschave=:meschave and mdt.mdtchave=:mdtchave')
    Left = 1016
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mdtchave'
        Value = nil
      end>
    object itmfatitmbasefcpicm: TFloatField
      FieldName = 'itmbasefcpicm'
    end
    object itmfatitmpercfcpicm: TFloatField
      FieldName = 'itmpercfcpicm'
    end
    object itmfatitmvalofcpicm: TFloatField
      FieldName = 'itmvalofcpicm'
    end
    object itmfatitmbasefcpicmst: TFloatField
      FieldName = 'itmbasefcpicmst'
    end
    object itmfatitmpercfcpicmst: TFloatField
      FieldName = 'itmpercfcpicmst'
    end
    object itmfatitmvalofcpicmst: TFloatField
      FieldName = 'itmvalofcpicmst'
    end
    object itmfatidtquantidade: TFloatField
      FieldName = 'idtquantidade'
    end
    object itmfattoedevolucacao: TIntegerField
      FieldName = 'toedevolucacao'
    end
  end
  inherited itmref: TUniQuery
    Left = 1064
    object itmrefitmbasefcpicm: TFloatField
      FieldName = 'itmbasefcpicm'
    end
    object itmrefitmpercfcpicm: TFloatField
      FieldName = 'itmpercfcpicm'
    end
    object itmrefitmvalofcpicm: TFloatField
      FieldName = 'itmvalofcpicm'
    end
    object itmrefitmbasefcpicmst: TFloatField
      FieldName = 'itmbasefcpicmst'
    end
    object itmrefitmpercfcpicmst: TFloatField
      FieldName = 'itmpercfcpicmst'
    end
    object itmrefitmvalofcpicmst: TFloatField
      FieldName = 'itmvalofcpicmst'
    end
  end
  object mdt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  mdtchave,'
      '  mdtregistro,'
      '  clbcodigo,'
      '  meschaveorigem,'
      '  meschavedestino'
      '  FROM'
      
        '  mdt where meschaveorigem=:meschaveorigem and meschavedestino=:' +
        'meschavedestino')
    Left = 1064
    Top = 444
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschaveorigem'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschavedestino'
        Value = nil
      end>
    object mdtmdtchave: TIntegerField
      FieldName = 'mdtchave'
    end
    object mdtmdtregistro: TDateTimeField
      FieldName = 'mdtregistro'
    end
    object mdtclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mdtmeschaveorigem: TIntegerField
      FieldName = 'meschaveorigem'
    end
    object mdtmeschavedestino: TIntegerField
      FieldName = 'meschavedestino'
    end
  end
  object dfrref: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dfrchave,'
      '  etdcodigo,'
      '  tdfcodigo,'
      '  dfrchavenfe,'
      '  dfrserie,'
      '  dfrnumero,'
      '  dfremissao,'
      '  edritem,'
      '  meschave'
      '  FROM'
      '  dfr where  meschave=:meschave')
    Left = 1008
    Top = 436
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object dfrrefdfrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'dfrchave'
    end
    object dfrrefetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object dfrreftdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 5
    end
    object dfrrefdfrchavenfe: TStringField
      FieldName = 'dfrchavenfe'
      Size = 100
    end
    object dfrrefdfrserie: TStringField
      FieldName = 'dfrserie'
      Size = 10
    end
    object dfrrefdfrnumero: TIntegerField
      FieldName = 'dfrnumero'
    end
    object dfrrefdfremissao: TDateField
      FieldName = 'dfremissao'
    end
    object dfrrefedritem: TIntegerField
      FieldName = 'edritem'
    end
    object dfrrefmeschave: TIntegerField
      FieldName = 'meschave'
    end
  end
end
