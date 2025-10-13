inherited fcpa: Tfcpa
  ActiveControl = etdcodigo
  Caption = 'Contas a Pagar'
  ClientHeight = 389
  ClientWidth = 668
  ExplicitWidth = 684
  ExplicitHeight = 428
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 360
    Width = 668
    ExplicitTop = 360
    ExplicitWidth = 668
    inherited bconfirma: TBitBtn
      Left = 514
      ExplicitLeft = 514
    end
    inherited bcancela: TBitBtn
      Left = 589
      ExplicitLeft = 589
    end
    inherited bfechar: TBitBtn
      Left = 449
      ExplicitLeft = 449
    end
  end
  inherited paginas: TPageControl
    Width = 668
    Height = 360
    ExplicitWidth = 668
    ExplicitHeight = 360
    inherited Principal: TTabSheet
      ExplicitWidth = 660
      ExplicitHeight = 332
      inherited Label3: TLabel
        Width = 81
        Caption = 'Data de Registro'
        ExplicitWidth = 81
      end
      inherited lmoecodigo: TLabel
        Visible = False
      end
      inherited lrfimoradia: TLabel
        Left = 9
        ExplicitLeft = 9
      end
      inherited lrfidatadesc: TLabel
        Left = 9
        Visible = True
        ExplicitLeft = 9
      end
      inherited lrfivalodesc: TLabel
        Left = 286
        ExplicitLeft = 286
      end
      inherited lrfidatamulta: TLabel
        Left = 9
        ExplicitLeft = 9
      end
      inherited Label9: TLabel
        Left = 9
        ExplicitLeft = 9
      end
      inherited lrfivalomulta: TLabel
        Left = 483
        ExplicitLeft = 483
      end
      inherited Label7: TLabel
        Visible = False
      end
      inherited lrfipercmulta: TLabel
        Left = 294
        ExplicitLeft = 294
      end
      object lptngcodigo: TLabel [19]
        Left = 464
        Top = 222
        Width = 79
        Height = 13
        CustomHint = BalloonHint
        Caption = 'N'#250'cleo Gerencial'
        FocusControl = tngcodigo
      end
      inherited moecodigo: TDBEdit
        Visible = False
      end
      inherited rfimoradia: TDBEdit
        Enabled = False
        OnExit = rfimoradiaExit
      end
      inherited rfipercmesmora: TDBEdit
        Left = 381
        Enabled = False
        OnExit = rfipercmesmoraExit
        ExplicitLeft = 381
      end
      inherited rfidatadesc: TDBEdit
        Enabled = False
        TabOrder = 13
      end
      inherited rfivalodesc: TDBEdit
        Enabled = False
        TabOrder = 14
      end
      inherited rfidatamulta: TDBEdit
        Enabled = False
        TabOrder = 15
      end
      inherited rfihistorico: TDBEdit
        TabOrder = 18
      end
      inherited rfivalomulta: TDBEdit
        Left = 557
        Width = 88
        Enabled = False
        TabOrder = 17
        ExplicitLeft = 557
        ExplicitWidth = 88
      end
      inherited carcodigo: TDBEdit
        TabStop = False
        Visible = False
      end
      inherited rfipercmulta: TDBEdit
        TabOrder = 16
      end
      inherited flacodigo: TDBEdit
        TabOrder = 19
      end
      object tngcodigo: TDBEdit
        Left = 549
        Top = 219
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tngcodigo'
        DataSource = DSRegistro
        TabOrder = 12
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '02.02.15.004-02'
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      
        'select cfgdtinictb,cfgusactb, cfgdtfinctb,cfgusactb, cfgctbusanu' +
        'cleosgeren, cfgdatapadrao, cfgctbusaccg from cfg, cfgmctb where ' +
        ' cfg.cfgcodigo=cfgmctb.cfgcodigo and flacodigo=:flacodigo')
    Left = 392
    Top = 56
    object cfgcfgctbusanucleosgeren: TIntegerField
      FieldName = 'cfgctbusanucleosgeren'
    end
    object cfgcfgctbusaccg: TIntegerField
      FieldName = 'cfgctbusaccg'
    end
    object cfgcfgusactb: TIntegerField
      FieldName = 'cfgusactb'
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select rfichave, etdcodigo, tfdcodigo, flacodigo, tficodigo, bco' +
        'codigo, carcodigo, rfiemissao, rfivencimento, rfinumero, rfihist' +
        'orico, srfcodigo, rfimoradia, rfipercmesmora,rfivalomulta,'
      
        ' rfirepetir, rfidatadesc, rfivalodesc, rfidatamulta, rfiprevisao' +
        ',rfivalor,frrcodigo,rfivalorparcela,moecodigo,rfipercmulta,titco' +
        'digo,tngcodigo, rfiinclusao from rfi where rfichave=:rfichave')
    inherited registrorfirepetir: TIntegerField
      DisplayLabel = 'Repetir este lan'#231'amento'
    end
    inherited registrofrridentificacao: TStringField
      DisplayWidth = 35
      Size = 35
    end
    object registrotngcodigo: TIntegerField
      DisplayLabel = 'N'#250'cleo Gerencial'
      FieldName = 'tngcodigo'
    end
    object registrotngidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tngidentificacao'
      LookupDataSet = tng
      LookupKeyFields = 'tngcodigo'
      LookupResultField = 'tngidentificacao'
      KeyFields = 'tngcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 596
    Top = 144
  end
  inherited dtb: TUniQuery
    Left = 552
    Top = 144
  end
  inherited coa: TUniQuery
    Left = 516
    Top = 144
  end
  inherited dcl: TUniQuery
    Left = 452
    Top = 128
  end
  inherited cpg: TUniQuery
    Left = 68
    Top = 328
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Top = 188
  end
  inherited lou: TUniQuery
    Left = 144
    Top = 344
  end
  object mfi: TUniQuery [23]
    SQL.Strings = (
      
        'select  mfichave, rfichave, tmfcodigo,  moecodigo, mfivalor, mfi' +
        'data, mfihistorico, mfivalorori, mfiparcela '
      'from mfi where rfichave=:rfichave and tmfcodigo=:tmfcodigo')
    Left = 424
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tmfcodigo'
        Value = nil
      end>
    object mfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
    object mfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
    object mfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object mfimoecodigo: TIntegerField
      FieldName = 'moecodigo'
    end
    object mfimfivalor: TFloatField
      FieldName = 'mfivalor'
    end
    object mfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object mfimfihistorico: TStringField
      FieldName = 'mfihistorico'
      Size = 50
    end
    object mfimfivalorori: TFloatField
      FieldName = 'mfivalorori'
    end
    object mfimfiparcela: TIntegerField
      FieldName = 'mfiparcela'
    end
  end
  inherited tit: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tit.etdcodigo,'
      '  tit.titcodigo,'
      '  tit.titvalor,'
      '  tit.titnumero,'
      '  tit.titemissao,'
      '  tit.titparcelas,'
      '  tit.titvalorparcela,'
      '  tit.titvctoinicial,'
      '  tit.tfdcodigo,'
      '  tit.srfcodigo,'
      '  tit.tficodigo,'
      '  tit.tithora,'
      '  tit.tithistorico,'
      '  tit.clbcodigo,'
      '  tit.tngcodigo'
      'FROM tit limit 1')
    object tittngcodigo: TIntegerField
      FieldName = 'tngcodigo'
    end
  end
  inherited rfi: TUniQuery
    object rfitngcodigo: TIntegerField
      FieldName = 'tngcodigo'
    end
  end
  inherited fla: TUniQuery
    SQL.Strings = (
      'select fla.flacodigo, flaidentificacao from fla ')
    Left = 607
    Top = 104
    ParamData = <>
  end
  object vrfi: TVirtualTable
    Left = 504
    Top = 108
    Data = {04000000000000000000}
    object vrfietdcodigo: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'etdcodigo'
      Required = True
    end
    object vrfirfiemissao: TDateField
      DisplayLabel = 'Data de Emiss'#227'o'
      FieldName = 'rfiemissao'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object vrfirfivencimento: TDateField
      DisplayLabel = 'Data de Vencimento'
      FieldName = 'rfivencimento'
      Required = True
      EditMask = '!99/99/9999;1;_'
    end
    object vrfirfinumero: TStringField
      DisplayLabel = 'N'#250'mero do documento'
      FieldName = 'rfinumero'
      Required = True
    end
    object vrfirfihistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'rfihistorico'
      Required = True
      Size = 50
    end
    object vrfirfirepetir: TIntegerField
      DisplayLabel = 'Repitir'
      FieldName = 'rfirepetir'
      Required = True
    end
    object vrfirfivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rfivalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object vrfitngcodigo: TIntegerField
      FieldName = 'tngcodigo'
    end
  end
  object tng: TUniQuery
    SQL.Strings = (
      'select tngcodigo, tngidentificacao from tng')
    Left = 264
    Top = 88
    object tngtngcodigo: TIntegerField
      FieldName = 'tngcodigo'
    end
    object tngtngidentificacao: TStringField
      FieldName = 'tngidentificacao'
      Size = 50
    end
  end
  object tittotal: TUniQuery
    Left = 308
    Top = 184
  end
  object v_rfi: TUniQuery
    SQL.Strings = (
      
        'select rfichave, rfinumero, rfihistorico from v_rfi where rficha' +
        've=:rfichave')
    Left = 420
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rfichave'
        Value = nil
      end>
    object v_rfirfinumero: TStringField
      FieldName = 'rfinumero'
    end
    object v_rfirfihistorico: TStringField
      FieldName = 'rfihistorico'
      Size = 50
    end
    object v_rfirfichave: TIntegerField
      FieldName = 'rfichave'
    end
  end
end
