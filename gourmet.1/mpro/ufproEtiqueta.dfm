inherited fproEtiqueta: TfproEtiqueta
  ActiveControl = cdbarra
  Caption = 'Gera'#231#227'o de Etiquetas'
  ClientHeight = 607
  ClientWidth = 784
  ExplicitWidth = 800
  ExplicitHeight = 646
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 578
    Width = 784
    ExplicitTop = 578
    ExplicitWidth = 784
    object LbQtdEtiqueta: TLabel [0]
      Left = 99
      Top = 4
      Width = 155
      Height = 16
      CustomHint = BalloonHint
      Align = alLeft
      Alignment = taRightJustify
      Caption = 'Quantidade de Etiquetas: 0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    inherited bconfirma: TBitBtn
      Left = 630
      ExplicitLeft = 630
    end
    inherited bcancela: TBitBtn
      Left = 705
      ExplicitLeft = 705
    end
    inherited bfechar: TBitBtn
      Left = 565
      ExplicitLeft = 565
    end
  end
  inherited paginas: TPageControl
    Width = 784
    Height = 578
    ExplicitWidth = 784
    ExplicitHeight = 578
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 776
      ExplicitHeight = 550
      object Label1: TLabel
        Left = 25
        Top = 32
        Width = 329
        Height = 16
        CustomHint = BalloonHint
        Caption = 'Digite C'#243'digo, Refer'#234'ncia ou C'#243'digo de Barra do produto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label20: TLabel
        Left = 385
        Top = 54
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Modelo de Etiquetas'
      end
      object lrelcodigo: TLabel
        Left = 387
        Top = 81
        Width = 94
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo de Relat'#243'rio'
        FocusControl = relcodigo
      end
      object sbBuscaCodigorelatorio: TSpeedButton
        Left = 604
        Top = 78
        Width = 22
        Height = 22
        CustomHint = BalloonHint
        Glyph.Data = {
          36030000424D3603000000000000360000002800000010000000100000000100
          18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0
          E6A65D00A65D00D7B88CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFF9F3EAA65D00BE7807C78209A75E02FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F0E4B56C00C989
          1ED49729B56C00E4CDA8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFAF4EABE7908D29630E1AC4BBE7908DEC08AFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFEFDFBFEFDFCFEFCF9FFFFFFFCF8F1C27C09DFAA4CEDC06BC27C
          09E4CA98FFFFFFFFFFFFFFFFFFFFFFFFF1E4CFD5B184B9833EB47B32B57D33CE
          AA7ACD8B18CD8B18F3C979CD8B18E6CC98FFFFFFFFFFFFFFFFFFFFFFFFEFE0CA
          AD6E18C49049F2DBB2F8E7C4F2DDB3D4AB6CA7650FB97714CB8714E5C68AFFFF
          FFFFFFFFFFFFFFFFFFFFF2E7D6B2741CEDD3A8FFF1D3FFF1D3FFF1D3FFF1D3FF
          EFCEF0D8AEAA660CCB8714FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE1C8A0C59042
          FFF5DEFFF4DBF3CD86F2CC83F2CC84FFF4DBFFF4DBC59042D2AC75FFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFCC9E5AF7E5C8FEF3DDF5D8A0F5D69CF5D79FF5D79EF5
          D599FEF3DDF7E5C8BF8630FEFCF6FFFFFFFFFFFFFFFFFFFFFFFFC99949FEF3D9
          FEF4E0F7DFB2F7E0B4F7E0B3F7E0B4F7DFB0FCF3E4FDF3DAC3882DFAEDD6FFFF
          FFFFFFFFFFFFFFFFFFFFD1A560EFDEC1FFFDF7FAEACCF9E8C7FAE9C8F9E8C8FA
          E8C7FEF6E8EDDBBDC68E35FEFEFBFFFFFFFFFFFFFFFFFFFFFFFFE1C59ACA933B
          FFFFFFFFFCF6FDF3E1FCF2DEFCF2DFFEF8EDFFFFFFCA933BDCB77BFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFF3E8D8CD9639F1E4CDFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFF4E9D5C07D0DF0E2CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2E6D4
          CF973CD19D49F9F3E8FFFAEFFBF7F0DCB373C68319F7EEDBFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF3E8D8E9D1A6D7A957CA8C20D3A047DE
          BA7BF2E5CDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
        OnClick = sbBuscaCodigorelatorioClick
      end
      object cdbarra: TEdit
        Left = 25
        Top = 51
        Width = 135
        Height = 21
        CustomHint = BalloonHint
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = cdbarraKeyPress
      end
      object bRemoverSelecionado: TBitBtn
        Left = 25
        Top = 78
        Width = 135
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Remover Selecionado'
        TabOrder = 1
        OnClick = bRemoverSelecionadoClick
      end
      object Panel1: TPanel
        AlignWithMargins = True
        Left = 25
        Top = 116
        Width = 726
        Height = 431
        Margins.Left = 25
        Margins.Right = 25
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 2
        object DBLista: TDBGrid
          Left = 1
          Top = 1
          Width = 724
          Height = 429
          CustomHint = BalloonHint
          Align = alClient
          DataSource = UDBarras
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBListaDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'procodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'pronome'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'unisimbolo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punbarra'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punprecoav'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'punprecoap'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etiquanti'
              Width = 50
              Visible = True
            end>
        end
      end
      object metidentificacao: TDBLookupComboBox
        Left = 498
        Top = 51
        Width = 250
        Height = 21
        CustomHint = BalloonHint
        DataField = 'metidentificacao'
        DataSource = Dcfg
        KeyField = 'metcodigo'
        ListField = 'metidentificacao'
        ListSource = Dmet
        TabOrder = 3
      end
      object relcodigo: TDBEdit
        Left = 498
        Top = 78
        Width = 108
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etirelcodigo'
        DataSource = Dcfg
        TabOrder = 4
      end
      object bRemoverTODOS: TBitBtn
        Left = 166
        Top = 78
        Width = 135
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Remover TODOS'
        TabOrder = 5
        OnClick = bRemoverTODOSClick
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgmsai.cfgcodigo'
      '     , cfgmsai.metcodigo'
      '     , cfgmsai.etirelcodigo'
      '             '
      '  FROM cfgmsai'
      ' WHERE cfgmsai.cfgcodigo = :cfgcodigo')
    Left = 436
    Top = 364
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgmetcodigo: TIntegerField
      FieldName = 'metcodigo'
    end
    object cfgmetidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'metidentificacao'
      LookupDataSet = met
      LookupKeyFields = 'metcodigo'
      LookupResultField = 'metidentificacao'
      KeyFields = 'metcodigo'
      Size = 50
      Lookup = True
    end
    object cfgetirelcodigo: TStringField
      DisplayLabel = 'Modelo de Relat'#243'rio'
      FieldName = 'etirelcodigo'
      Size = 11
    end
    object cfgrelidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'relidentificacao'
      LookupDataSet = rel
      LookupKeyFields = 'relcodigo'
      LookupResultField = 'relidentificacao'
      KeyFields = 'etirelcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited consulta: TUniQuery
    Left = 168
    Top = 172
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  eti.etichave,'
      '  eti.clbcodigo,'
      '  eti.trmcodigo,'
      '  eti.puncodigo,'
      '  eti.eetcodigo,'
      '  eti.etiquanti,'
      '  eti.etiemissao,'
      '  eti.vrpcodigo,'
      '  eti.relcodigo'
      'FROM eti'
      'WHERE eti.etichave = :etichave')
    Left = 260
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etichave'
        Value = nil
      end>
    object registroetichave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'etichave'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotrmcodigo: TIntegerField
      FieldName = 'trmcodigo'
    end
    object registropuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object registroeetcodigo: TIntegerField
      FieldName = 'eetcodigo'
    end
    object registroetiquanti: TIntegerField
      FieldName = 'etiquanti'
    end
    object registroetiemissao: TDateTimeField
      FieldName = 'etiemissao'
    end
    object registrovrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object registrorelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
  end
  inherited dcp: TUniQuery
    Left = 128
    Top = 196
  end
  inherited dtb: TUniQuery
    Left = 84
    Top = 196
  end
  inherited coa: TUniQuery
    Left = 48
    Top = 196
  end
  inherited pfr: TUniQuery
    Left = 520
    Top = 252
  end
  inherited psf: TUniQuery
    Left = 432
    Top = 164
  end
  inherited acoesfrm: TActionList
    Left = 212
    Top = 220
  end
  inherited ImgBusca: TPngImageList
    Left = 652
    Top = 16
    Bitmap = {}
  end
  object VTBarras: TVirtualTable
    Left = 308
    Top = 240
    Data = {04000000000000000000}
    object VTBarraspuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object VTBarrasprocodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'procodigo'
    end
    object VTBarraspronome: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pronome'
      Size = 150
    end
    object VTBarrasunisimbolo: TStringField
      DisplayLabel = 'Un.'
      FieldName = 'unisimbolo'
      Size = 6
    end
    object VTBarraspunbarra: TStringField
      DisplayLabel = 'C'#243'd. Barra'
      FieldName = 'punbarra'
      Size = 14
    end
    object VTBarraspunprecoav: TFloatField
      DisplayLabel = 'Pre'#231'o '#192' Vista'
      FieldName = 'punprecoav'
      DisplayFormat = '#,###.00'
      EditFormat = '#,###.00'
    end
    object VTBarraspunprecoap: TFloatField
      DisplayLabel = 'Pre'#231'o '#192' Prazo'
      FieldName = 'punprecoap'
      DisplayFormat = '#,###.00'
      EditFormat = '#,###.00'
    end
    object VTBarrasetiquanti: TIntegerField
      DisplayLabel = 'Etiquetas'
      FieldName = 'etiquanti'
    end
    object VTBarrasvrpcodigo: TIntegerField
      FieldName = 'vrpcodigo'
    end
    object VTBarrasetichave: TStringField
      FieldName = 'etichave'
      Size = 10
    end
  end
  object UDBarras: TUniDataSource
    DataSet = VTBarras
    Left = 364
    Top = 208
  end
  object qPro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pun.puncodigo,'
      '  pro.procodigo,'
      '  pro.pronome,'
      '  uni.unisimbolo,'
      '  pun.punbarra,'
      '  pun.punprecoav,'
      '  pun.punprecoap,'
      '  pro.gracodigo'
      'FROM pro,'
      '     pun,'
      '     uni,'
      '     grp'
      'WHERE pro.grpcodigo = grp.grpcodigo'
      'AND pro.procodigo = pun.procodigo'
      'AND pun.unicodigo = uni.unicodigo'
      '/*tun-Tipo de Unidade (1=Entrada 9=Ambos)*/'
      'AND pun.tuncodigo IN (1, 9)'
      'AND pro.procodigo = :procodigo')
    Left = 324
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'procodigo'
        Value = nil
      end>
    object qPropuncodigo: TIntegerField
      FieldName = 'puncodigo'
    end
    object qProprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object qPropronome: TStringField
      FieldName = 'pronome'
      Required = True
      Size = 150
    end
    object qProunisimbolo: TStringField
      DisplayWidth = 6
      FieldName = 'unisimbolo'
      ReadOnly = True
      Required = True
      Size = 6
    end
    object qPropunbarra: TStringField
      FieldName = 'punbarra'
      ReadOnly = True
      Size = 50
    end
    object qPropunprecoav: TFloatField
      FieldName = 'punprecoav'
      ReadOnly = True
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qPropunprecoap: TFloatField
      FieldName = 'punprecoap'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object qProgracodigo: TIntegerField
      FieldName = 'gracodigo'
    end
  end
  object vrp: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  vrp.vrpcodigo,'
      '  CONCAT(pro.pronome, '#39' '#39', via.viaatributos) AS pronome,'
      '  vrp.vrpbarra'
      'FROM vrp'
      '  JOIN pro'
      '    ON vrp.procodigo = pro.procodigo'
      '  JOIN (SELECT'
      '      via.vrpcodigo,'
      
        '      CONVERT(GROUP_CONCAT(iat.iatidentificacao ORDER BY via.via' +
        'codigo SEPARATOR '#39' '#39'), char(40) charset latin1) AS viaatributos'
      '    FROM via'
      '      JOIN iat'
      '        ON via.iatcodigo = iat.iatcodigo'
      '    GROUP BY via.vrpcodigo) via'
      '    ON via.vrpcodigo = vrp.vrpcodigo'
      'WHERE vrp.vrpcodigo = :vrpcodigo')
    Left = 196
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vrpcodigo'
        Value = nil
      end>
    object vrppronome: TStringField
      FieldName = 'pronome'
      Size = 150
    end
    object vrpvrpbarra: TStringField
      FieldName = 'vrpbarra'
      Size = 30
    end
  end
  object Dmet: TDataSource
    DataSet = met
    Left = 492
    Top = 264
  end
  object met: TUniQuery
    SQL.Strings = (
      'SELECT met.metcodigo'
      '     , met.metidentificacao'
      '  FROM met')
    Left = 492
    Top = 312
    object metmetcodigo: TIntegerField
      FieldName = 'metcodigo'
    end
    object metmetidentificacao: TStringField
      FieldName = 'metidentificacao'
      Size = 50
    end
  end
  object Dcfg: TDataSource
    DataSet = cfg
    OnDataChange = DcfgDataChange
    Left = 309
    Top = 365
  end
  object rel: TUniQuery
    SQL.Strings = (
      'select relcodigo, relidentificacao,relarquivo from rel')
    Left = 645
    Top = 173
    object relrelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
    object relrelidentificacao: TStringField
      FieldName = 'relidentificacao'
      Size = 150
    end
    object relrelarquivo: TBlobField
      FieldName = 'relarquivo'
    end
  end
  object etiquetas: TUniQuery
    SQL.Strings = (
      'DROP TEMPORARY TABLE IF EXISTS etiquetas;'
      ''
      ''
      'CREATE TEMPORARY TABLE IF NOT EXISTS etiquetas ('
      '  etichave int(11) NOT NULL AUTO_INCREMENT,'
      '  procodigo int(11) NOT NULL DEFAULT 0,'
      '  pronome varchar(200) DEFAULT NULL,'
      '  punprecoav numeric(12, 2) DEFAULT 0,'
      '  punprecoap numeric(12, 2) DEFAULT 0,'
      '  etiquanti int(11) DEFAULT 0,'
      '  punbarra varchar(200) DEFAULT NULL,'
      '  PRIMARY KEY (etichave)'
      ''
      ')'
      'ENGINE = INNODB'
      'CHARACTER SET latin1'
      'COLLATE latin1_swedish_ci;'
      ''
      ''
      ''
      'SELECT'
      '  *'
      'FROM etiquetas;')
    Left = 333
    Top = 444
    object etiquetasetichave: TIntegerField
      FieldName = 'etichave'
    end
    object etiquetasprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object etiquetaspronome: TStringField
      FieldName = 'pronome'
      Size = 80
    end
    object etiquetaspunprecoav: TFloatField
      FieldName = 'punprecoav'
    end
    object etiquetaspunprecoap: TFloatField
      FieldName = 'punprecoap'
    end
    object etiquetaspunbarra: TStringField
      FieldName = 'punbarra'
      Size = 15
    end
    object etiquetasetiquanti: TIntegerField
      FieldName = 'etiquanti'
    end
  end
  object detiquetas: TUniDataSource
    DataSet = etiquetas
    OnDataChange = DSRegistroDataChange
    Left = 396
    Top = 448
  end
end
