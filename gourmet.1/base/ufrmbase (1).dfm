object frmbase: Tfrmbase
  Left = 0
  Top = 0
  CustomHint = BalloonHint
  BorderIcons = []
  Caption = 'frmbase'
  ClientHeight = 433
  ClientWidth = 796
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDeactivate = FormDeactivate
  OnKeyDown = FormKeyDown
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnMouseDown = FormMouseDown
  OnMouseMove = FormMouseMove
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pbotoes: TPanel
    Left = 0
    Top = 404
    Width = 796
    Height = 29
    CustomHint = BalloonHint
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      CustomHint = BalloonHint
      Align = alLeft
      BevelOuter = bvNone
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bconfirma: TBitBtn
      Left = 642
      Top = 4
      Width = 75
      Height = 21
      Hint = 'ENTER - Confirma o registro '
      CustomHint = BalloonHint
      Align = alRight
      Caption = 'Confirma'
      TabOrder = 1
      OnClick = bconfirmaClick
    end
    object bcancela: TBitBtn
      Left = 717
      Top = 4
      Width = 75
      Height = 21
      Hint = 'Esc - Cancela'
      CustomHint = BalloonHint
      Align = alRight
      Caption = 'Cancela'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      OnClick = bcancelaClick
    end
    object bfechar: TBitBtn
      Left = 577
      Top = 4
      Width = 65
      Height = 21
      CustomHint = BalloonHint
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 3
      Visible = False
      OnClick = bfecharClick
    end
  end
  object paginas: TPageControl
    Left = 0
    Top = 0
    Width = 796
    Height = 404
    CustomHint = BalloonHint
    ActivePage = Principal
    Align = alClient
    TabOrder = 1
    OnChange = paginasChange
    object Principal: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Principal'
    end
  end
  object lbcodigojanela: TPanel
    Left = 664
    Top = -3
    Width = 102
    Height = 21
    CustomHint = BalloonHint
    BevelOuter = bvNone
    Caption = '00.00.00.000-00'
    ParentBackground = False
    TabOrder = 2
    object spChamaAjuda: TSpeedButton
      Left = 82
      Top = 0
      Width = 20
      Height = 21
      CustomHint = BalloonHint
      Align = alRight
      Caption = '?'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      OnClick = spChamaAjudaClick
      ExplicitLeft = 104
    end
  end
  object DSRegistro: TUniDataSource
    DataSet = registro
    OnDataChange = DSRegistroDataChange
    Left = 276
    Top = 144
  end
  object cfg: TUniQuery
    Left = 412
    Top = 108
  end
  object consulta: TUniQuery
    Left = 336
    Top = 100
  end
  object registro: TUniQuery
    AfterInsert = registroAfterInsert
    BeforeEdit = registroBeforeEdit
    OnPostError = registroPostError
    Left = 276
    Top = 96
  end
  object dcp: TUniQuery
    SQL.Strings = (
      'select * from dcp')
    Left = 104
    Top = 228
    object dcpdcpcodigo: TIntegerField
      FieldName = 'dcpcodigo'
    end
    object dcpdcpcampo: TStringField
      FieldName = 'dcpcampo'
      Required = True
      Size = 50
    end
    object dcpdcpdescricao: TStringField
      FieldName = 'dcpdescricao'
      Size = 250
    end
    object dcpdcpspedfiscal: TIntegerField
      FieldName = 'dcpspedfiscal'
      Required = True
    end
  end
  object dtb: TUniQuery
    SQL.Strings = (
      'select * from dtb')
    Left = 60
    Top = 228
    object dtbdtbcodigo: TIntegerField
      FieldName = 'dtbcodigo'
    end
    object dtbdtbtabela: TStringField
      FieldName = 'dtbtabela'
      Required = True
      Size = 50
    end
    object dtbdtbdescricao: TStringField
      FieldName = 'dtbdescricao'
      Size = 250
    end
  end
  object coa: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  coacodigo,'
      '  dtbcodigo,'
      '  dcpcodigo,'
      '  clbcodigo,'
      '  coadata,'
      '  coaanterior,'
      '  coaatual,'
      '  coahora,'
      '  acschave'
      'FROM coa'
      'WHERE dtbcodigo = :dtbcodigo'
      'AND dcpcodigo = :dcpcodigo'
      'AND clbcodigo = :clbcodigo')
    Left = 24
    Top = 228
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'dcpcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object coacoacodigo: TIntegerField
      FieldName = 'coacodigo'
    end
    object coadtbcodigo: TIntegerField
      FieldName = 'dtbcodigo'
      Required = True
    end
    object coadcpcodigo: TIntegerField
      FieldName = 'dcpcodigo'
      Required = True
    end
    object coacoadata: TDateField
      FieldName = 'coadata'
      Required = True
    end
    object coaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
      Required = True
    end
    object coacoaanterior: TStringField
      FieldName = 'coaanterior'
      Size = 250
    end
    object coacoaatual: TStringField
      FieldName = 'coaatual'
      Size = 250
    end
    object coacoahora: TTimeField
      FieldName = 'coahora'
    end
    object coaacschave: TIntegerField
      FieldName = 'acschave'
    end
  end
  object pfr: TUniQuery
    SQL.Strings = (
      
        'select * from pfr where usrcodigo=:usrcodigo and pfrnomeform=:pf' +
        'rnomeform')
    Left = 496
    Top = 108
    ParamData = <
      item
        DataType = ftInteger
        Name = 'usrcodigo'
        ParamType = ptInput
        Value = nil
      end
      item
        DataType = ftString
        Name = 'pfrnomeform'
        ParamType = ptInput
        Value = nil
      end>
    object pfrpfrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'pfrcodigo'
    end
    object pfrpfrnomeform: TStringField
      FieldName = 'pfrnomeform'
      Size = 50
    end
    object pfrpfrlargura: TIntegerField
      FieldName = 'pfrlargura'
    end
    object pfrpfraltura: TIntegerField
      FieldName = 'pfraltura'
    end
    object pfrusrcodigo: TIntegerField
      FieldName = 'usrcodigo'
    end
    object pfrpfrcolunas: TBlobField
      FieldName = 'pfrcolunas'
    end
  end
  object psf: TUniQuery
    SQL.Strings = (
      'select * from psf where pfrcodigo=:pfrcodigo')
    Left = 552
    Top = 92
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pfrcodigo'
        ParamType = ptInput
        Value = nil
      end>
    object psfpsfcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'psfcodigo'
    end
    object psfpfrcodigo: TIntegerField
      FieldName = 'pfrcodigo'
    end
    object psfpsfalinhamento: TIntegerField
      FieldName = 'psfalinhamento'
    end
    object psfpsfposicao: TIntegerField
      FieldName = 'psfposicao'
    end
    object psfpsfnome: TStringField
      FieldName = 'psfnome'
      Size = 50
    end
  end
  object dcl: TUniQuery
    SQL.Strings = (
      
        'select dclcodigo, clscodigo, clbcodigo, dclvisivel, dclpesquisav' +
        'el, dclpesquisa, dclnomecampo,dcltitulo from dcl where dclpesqui' +
        'savel=1 and clscodigo=:clscodigo and clbcodigo=:clbcodigo')
    Left = 548
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clscodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
  end
  object cau: TUniQuery
    SQL.Strings = (
      'select * from cau limit 2')
    Left = 552
    Top = 304
    object caumdlcodigo: TIntegerField
      FieldName = 'mdlcodigo'
    end
    object cauactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object caucaudata: TDateField
      FieldName = 'caudata'
    end
    object caucauhora: TTimeField
      FieldName = 'cauhora'
    end
    object cauusrautorizou: TIntegerField
      FieldName = 'usrautorizou'
    end
  end
  object err: TUniQuery
    SQL.Strings = (
      'select * from err')
    Left = 552
    Top = 236
    object errerrchave: TIntegerField
      FieldName = 'errchave'
    end
    object errerringles: TStringField
      FieldName = 'erringles'
      Size = 250
    end
    object errerrportu: TStringField
      FieldName = 'errportu'
      Size = 250
    end
  end
  object BalloonHint: TBalloonHint
    Left = 460
    Top = 216
  end
  object acoesfrm: TActionList
    Left = 404
    Top = 60
    object ActConfiguracoes: TAction
      Category = 'Manuten'#231#227'o'
      Caption = 'Colunas'
      ImageIndex = 8
    end
  end
  object cpg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cpg.cpgchave,'
      '  cpg.clbcodigo,'
      '  cpg.cpgnomegrid,'
      '  cpg.cpgcolunas'
      'FROM cpg'
      'WHERE clbcodigo = :clbcodigo AND'
      'cpgnomegrid = :cpgnomegrid')
    Left = 20
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cpgnomegrid'
        Value = nil
      end>
    object cpgcpgchave: TIntegerField
      FieldName = 'cpgchave'
    end
    object cpgcpgnomegrid: TStringField
      FieldName = 'cpgnomegrid'
      Size = 50
    end
    object cpgcpgcolunas: TBlobField
      FieldName = 'cpgcolunas'
    end
    object cpgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  object cpc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  cpc.cpcchave,'
      '  cpc.cpgchave,'
      '  cpc.cpcordem,'
      '  cpc.cpccampo,'
      '  cpc.cpclargura,'
      '  cpc.cpctitulo,'
      '  cpc.cpcvisivel'
      'FROM cpc'
      'WHERE cpc.cpgchave = :cpgchave'
      'ORDER BY cpc.cpcordem')
    Left = 21
    Top = 337
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cpgchave'
        Value = nil
      end>
    object cpccpcchave: TIntegerField
      FieldName = 'cpcchave'
    end
    object cpccpgchave: TIntegerField
      FieldName = 'cpgchave'
    end
    object cpccpcordem: TIntegerField
      FieldName = 'cpcordem'
    end
    object cpccpccampo: TStringField
      FieldName = 'cpccampo'
      Size = 100
    end
    object cpccpclargura: TIntegerField
      FieldName = 'cpclargura'
    end
    object cpccpctitulo: TStringField
      DisplayLabel = 'Nome da Coluna'
      FieldName = 'cpctitulo'
      Size = 40
    end
    object cpccpcvisivel: TIntegerField
      DisplayLabel = 'Mostrar'
      DisplayWidth = 5
      FieldName = 'cpcvisivel'
    end
  end
  object ImgBusca: TPngImageList
    PngImages = <
      item
        Background = clWindow
        Name = '7181_16x16'
        PngImage.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          61000002AD4944415478DA95927B48D35114C7BF7BBFD4CD9CCA9C736933A7B1
          04335344B2442C2B821244849448517A502D03A9088AFDA5517F1492045191A1
          A6F4C7C4861211513E4A295D988B9CF96C3ADDF2E73637B775A719B225D5B99C
          7FEE39DFCF79DC4BC3C6C6E7F1F9A7F6E6E416C72B144980D763307C19ECECD0
          3D585A5AAA2771872F89B68138263D33ABFDDA754D123B3814A33FEC2B8971A1
          025066132E5FAAEE7BD7D375805C4DFF09C04D4BCFECD6D4DEDA3EB4E0427242
          1C9491A12B01FD941983C323480C66417DA6B2EB43FFFBAC000093C9ACB8FFB8
          A96E2C48825DAA7830180CD0E8AB691E8F17EE65377A3F0E416C1E4559697151
          00202737AF37BFF2622A431E0B019F0B1693013AED17C0EB85930028CA0EE6B8
          114F6AAEBEF007B08F1D2FB787E515D259521984413C70987430489693545F74
          B931EB70C168B2423C370D4767A3CD1F202A3951394FDB7D04CC2829C4423EB8
          0CFA4A075E729C6E02211D4CCF51E09AA660D33504BC023DFF70815559581E64
          8F9042161E02219B090E81F8CCE1F6C0423AF83663856876127D8F6E4F06EC20
          26764BB35A73B3C0208A4682540C49080F021683D40728A71B13964518266690
          601987A6EAE43D7F4076726A464B5149D9264EB41C9E702914114288051C90FD
          C1443960F83E0FAE790ACF1FD63BDA9F35A9D603B2730F1E6D3B775ECD8F9146
          42DBF10A61922844C8A211C25B05586D76CC8C8D43DBDCB0AC6D6928F2B8DD4F
          69FE62A5428EBE81CFB8525D6571B95C5F55293B5312958904E0855EAFC7407F
          CF9B91E14F6AA2E95AFBCAD9197BF611F105FE0E951206E3186ED4D6501DDAD6
          FD24F69AB8827892EF1B101F246E5C3F334D1EBF6DBEB4FCB4282335190B8B36
          DCADBB4375B6FD16FFD56812595C7749C5D9342E87039DB6957AFB52F7CFE2B5
          11361348239BCBDB3A6AD01FFA1FB1CF7E0240AF06BFF584A8A7000000004945
          4E44AE426082}
      end>
    Left = 724
    Top = 40
    Bitmap = {}
  end
  object dau: TUniQuery
    SQL.Strings = (
      'SELECT act.actcodigo'
      '     , dau.clbcodigo'
      '     , dau.dauativo'
      '  FROM dau'
      ' INNER JOIN act ON dau.actcodigo = act.actcodigo'
      ' INNER JOIN mdl ON act.mdlcodigo = mdl.mdlcodigo'
      ' WHERE mdl.mdlnome = :mdlnome'
      '   AND dau.clbcodigo = :clbcodigo;')
    Left = 628
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdlnome'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object dauactcodigo: TIntegerField
      FieldName = 'actcodigo'
    end
    object dauclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object daudauativo: TIntegerField
      FieldName = 'dauativo'
    end
  end
  object lou: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  louchave,'
      '  clbcodigo,'
      '  loudatahora,'
      '  louaplicacao,'
      '  louformulario,'
      '  lounomecomponente,'
      '  loutipocomponente,'
      '  louconteudocomponente,'
      '  louacaocomponente'
      'FROM lou limit 0')
    Left = 352
    Top = 280
    object loulouchave: TIntegerField
      FieldName = 'louchave'
    end
    object louclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object louloudatahora: TDateTimeField
      FieldName = 'loudatahora'
    end
    object loulouaplicacao: TStringField
      FieldName = 'louaplicacao'
      Size = 250
    end
    object loulouformulario: TStringField
      FieldName = 'louformulario'
      Size = 250
    end
    object loulounomecomponente: TStringField
      FieldName = 'lounomecomponente'
      Size = 250
    end
    object louloutipocomponente: TStringField
      FieldName = 'loutipocomponente'
      Size = 250
    end
    object loulouconteudocomponente: TStringField
      FieldName = 'louconteudocomponente'
      Size = 250
    end
    object loulouacaocomponente: TStringField
      FieldName = 'louacaocomponente'
      Size = 250
    end
  end
  object stg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  stgcodigo,'
      '  stgdatacriacao,'
      '  stgdataalteracao,'
      '  clbcodigo,'
      '  stgexcluido'
      'FROM stg ')
    Left = 172
    Top = 344
    object stgstgcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'stgcodigo'
    end
    object stgstgdatacriacao: TDateTimeField
      FieldName = 'stgdatacriacao'
    end
    object stgstgdataalteracao: TDateTimeField
      FieldName = 'stgdataalteracao'
    end
    object stgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object stgstgexcluido: TIntegerField
      FieldName = 'stgexcluido'
    end
  end
  object consultashema: TUniQuery
    SQL.Strings = (
      'SELECT'
      '      COLUMN_NAME'
      '      FROM information_schema.COLUMNS'
      '      WHERE TABLE_SCHEMA = DATABASE()'
      '      AND TABLE_NAME = :tabela'
      '      AND COLUMN_NAME = '#39'stgcodigo'#39)
    Left = 172
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tabela'
        Value = nil
      end>
    object consultashemaCOLUMN_NAME: TStringField
      FieldName = 'COLUMN_NAME'
      Size = 50
    end
  end
  object stgid: TUniQuery
    SQL.Strings = (
      '')
    Left = 236
    Top = 344
  end
  object cfgalterado: TUniQuery
    SQL.Strings = (
      
        'select cfgcodigo,  cfgalteracao from cfg where cfgcodigo=:cfgcod' +
        'igo')
    Left = 292
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgalteradocfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgalteradocfgalteracao: TDateTimeField
      FieldName = 'cfgalteracao'
    end
  end
  object MadExceptionHandler1: TMadExceptionHandler
    OnException = MadExceptionHandler1Exception
    OnExceptAction = MadExceptionHandler1ExceptAction
    Left = 296
    Top = 209
  end
end
