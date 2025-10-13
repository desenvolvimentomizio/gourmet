inherited frel: Tfrel
  ActiveControl = relidentificacao
  Caption = 'Relat'#243'rio'
  ClientHeight = 582
  ClientWidth = 1102
  ExplicitWidth = 1118
  ExplicitHeight = 621
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 553
    Width = 1102
    ExplicitTop = 553
    ExplicitWidth = 1102
    inherited bconfirma: TBitBtn
      Left = 948
      ExplicitLeft = 948
    end
    inherited bcancela: TBitBtn
      Left = 1023
      ExplicitLeft = 1023
    end
    inherited bfechar: TBitBtn
      Left = 883
      ExplicitLeft = 883
    end
  end
  inherited paginas: TPageControl
    Width = 1102
    Height = 553
    ExplicitWidth = 1102
    ExplicitHeight = 553
    inherited Principal: TTabSheet
      ExplicitWidth = 1094
      ExplicitHeight = 525
      object BvTopo: TBevel
        Left = 0
        Top = 0
        Width = 1094
        Height = 169
        CustomHint = BalloonHint
        Align = alTop
      end
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o (Hint)'
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 61
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Customizado'
      end
      object Label5: TLabel
        Left = 9
        Top = 141
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ativo'
      end
      object Label6: TLabel
        Left = 9
        Top = 114
        Width = 119
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Necessita de Par'#226'metros'
      end
      object SplLista: TSplitter
        Left = 0
        Top = 169
        Width = 1094
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alTop
        AutoSnap = False
        Beveled = True
      end
      object relcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'relcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object relidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 193
        Height = 21
        CustomHint = BalloonHint
        DataField = 'relidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object reltitulo: TDBEdit
        Left = 136
        Top = 57
        Width = 580
        Height = 21
        CustomHint = BalloonHint
        DataField = 'reltitulo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object reltipo: TDBEdit
        Left = 136
        Top = 84
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'reltipo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object relsituacao: TDBEdit
        Left = 136
        Top = 138
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'relsituacao'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object PlMre: TPanel
        Left = 0
        Top = 172
        Width = 1094
        Height = 324
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 6
      end
      object plManutencao: TPanel
        Left = 0
        Top = 496
        Width = 1094
        Height = 29
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 3
        TabOrder = 7
        Visible = False
        object btGerador: TBitBtn
          Left = 879
          Top = 3
          Width = 212
          Height = 23
          CustomHint = BalloonHint
          Align = alRight
          Caption = 'Chama gerador de relat'#243'rios'
          TabOrder = 0
          OnClick = btGeradorClick
        end
      end
      object relusaparametros: TDBEdit
        Left = 136
        Top = 111
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'relusaparametros'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 634
    ExplicitLeft = 634
  end
  object bvalidar: TBitBtn [3]
    Left = 649
    Top = 165
    Width = 75
    Height = 22
    CustomHint = BalloonHint
    Caption = 'Validar'
    TabOrder = 3
    OnClick = bvalidarClick
  end
  inherited DSRegistro: TUniDataSource
    Left = 492
    Top = 64
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etddoc1,'
      '  cfgmcfg.cfgcodigo'
      'FROM cfgmcfg'
      '  INNER JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo')
    Left = 508
    Top = 148
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      Size = 25
    end
  end
  inherited consulta: TUniQuery
    Left = 368
    Top = 12
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  reltipo,'
      '  relsituacao,'
      '  relnomearquivo,'
      '  relarquivo,'
      '  relusaparametros,'
      'relorigem'
      'FROM rel where relcodigo=:relcodigo')
    Left = 492
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
    object registrorelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 15
    end
    object registrorelidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'relidentificacao'
      Required = True
      Size = 80
    end
    object registroreltitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'reltitulo'
      Required = True
      Size = 80
    end
    object registroreltipo: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'reltipo'
      Required = True
    end
    object registrosentipo: TStringField
      FieldKind = fkLookup
      FieldName = 'sentipo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'reltipo'
      Size = 5
      Lookup = True
    end
    object registrorelsituacao: TIntegerField
      DisplayLabel = 'Ativo'
      FieldName = 'relsituacao'
      Required = True
    end
    object registrosensituacao: TStringField
      FieldKind = fkLookup
      FieldName = 'sensituacao'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'relsituacao'
      Size = 5
      Lookup = True
    end
    object registrorelnomearquivo: TStringField
      DisplayLabel = 'Nome do Arquivo'
      FieldName = 'relnomearquivo'
      Required = True
      Size = 80
    end
    object registrorelarquivo: TBlobField
      FieldName = 'relarquivo'
    end
    object registrorelusaparametros: TIntegerField
      FieldName = 'relusaparametros'
      Required = True
    end
    object registrosenusaparametros: TStringField
      FieldKind = fkLookup
      FieldName = 'senusaparametros'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'relusaparametros'
      Required = True
      Size = 5
      Lookup = True
    end
    object registrorelorigem: TStringField
      FieldName = 'relorigem'
      Size = 15
    end
  end
  inherited dcp: TUniQuery
    Left = 680
    Top = 44
  end
  inherited dtb: TUniQuery
    Left = 612
    Top = 28
  end
  inherited coa: TUniQuery
    Left = 720
    Top = 44
  end
  inherited dcl: TUniQuery
    Left = 556
    Top = 200
  end
  inherited BalloonHint: TBalloonHint
    Left = 652
    Top = 240
  end
  inherited acoesfrm: TActionList
    Left = 420
    Top = 20
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 728
    Top = 264
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object lre: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lrechave,'
      '  relcodigo,'
      '  clbcodigo,'
      '  lreregistro,'
      '  relarquivo'
      'FROM lre limit 0')
    Left = 328
    Top = 224
    object lrelrechave: TIntegerField
      FieldName = 'lrechave'
    end
    object lreclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object lrerelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 15
    end
    object lrelreregistro: TDateTimeField
      FieldName = 'lreregistro'
    end
    object lrerelarquivo: TBlobField
      FieldName = 'relarquivo'
    end
  end
  object DSdados: TUniDataSource
    AutoEdit = False
    DataSet = vdados
    Left = 775
    Top = 201
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
      '    ON mre.bplcodigo = crm.bplcodigo'
      '  INNER JOIN crl'
      '    ON crl.relcodigo = mre.relcodigo'
      'WHERE mre.relcodigo = :relcodigo'
      'AND crl.crlnome = crm.crmnome'
      'ORDER BY crm.crmidentificacao')
    Left = 408
    Top = 400
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
      Size = 15
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
  object vdados: TUniQuery
    Left = 664
    Top = 320
  end
  object crm: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT crm.crmnome'
      '              , (SELECT'
      '                    crmidentificacao'
      '                  FROM crm c'
      
        '                  WHERE c.crmnome = crm.crmnome LIMIT 1) crmiden' +
        'tificacao'
      '              , crm.tcacodigo'
      '              , crl.relcodigo'
      '              , crm.bplcodigo'
      '              , crm.crmchave'
      
        '              , CASE WHEN tcacodigo = 1 THEN '#39'I'#39' WHEN tcacodigo ' +
        '= 2 THEN '#39'D'#39' WHEN tcacodigo = 3 THEN '#39'N'#39' WHEN tcacodigo = 4 THEN' +
        ' '#39'T'#39
      '                END tcaidentificacao'
      ''
      'FROM mre'
      '  INNER JOIN bpl'
      '    ON mre.bplcodigo = bpl.bplcodigo'
      '  INNER JOIN crm'
      '    ON crm.bplcodigo = bpl.bplcodigo'
      '  INNER JOIN crl'
      '    ON crl.relcodigo = mre.relcodigo'
      'WHERE mre.relcodigo = :relcodigo'
      'AND crl.crlnome = crm.crmnome'
      'ORDER BY crm.crmidentificacao')
    Left = 464
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object relatorio: TfrxReport
    Version = '6.9.14'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 42070.481905081020000000
    ReportOptions.LastChange = 42070.481905081020000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    OnUserFunction = relatorioUserFunction
    Left = 980
    Top = 36
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxChartObject: TfrxChartObject
    Left = 936
    Top = 96
  end
  object frxDados: TfrxDBDataset
    UserName = 'frxDados'
    CloseDataSource = False
    DataSet = vdados
    BCDToCurrency = False
    Left = 832
    Top = 72
  end
  object frxDesigner: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 1016
    Top = 96
  end
  object frxBarCodeObject: TfrxBarCodeObject
    Left = 936
    Top = 144
  end
  object frxRichObject: TfrxRichObject
    Left = 1016
    Top = 144
  end
  object frxCrossObject: TfrxCrossObject
    Left = 936
    Top = 200
  end
  object frxCheckBoxObject: TfrxCheckBoxObject
    Left = 1016
    Top = 200
  end
  object frxGradientObject: TfrxGradientObject
    Left = 928
    Top = 256
  end
  object frxDialogControls: TfrxDialogControls
    Left = 1024
    Top = 256
  end
  object frxGZipCompressor: TfrxGZipCompressor
    Left = 976
    Top = 312
  end
  object frxUniDACComponents: TfrxUniDACComponents
    Left = 832
    Top = 128
  end
end
