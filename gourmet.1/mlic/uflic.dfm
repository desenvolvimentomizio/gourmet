inherited flic: Tflic
  ActiveControl = etdcodigo
  Caption = 'Licenciamento'
  ClientHeight = 696
  ClientWidth = 681
  ExplicitWidth = 697
  ExplicitHeight = 735
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 667
    Width = 681
    ExplicitTop = 667
    ExplicitWidth = 1117
    inherited bconfirma: TBitBtn
      Left = 527
      ExplicitLeft = 963
    end
    inherited bcancela: TBitBtn
      Left = 602
      ExplicitLeft = 1038
    end
    inherited bfechar: TBitBtn
      Left = 462
      ExplicitLeft = 898
    end
  end
  inherited paginas: TPageControl
    Width = 681
    Height = 667
    ExplicitWidth = 1117
    ExplicitHeight = 667
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 1109
      ExplicitHeight = 639
      object SBIncluirTodos: TSpeedButton
        Left = 399
        Top = 320
        Width = 23
        Height = 22
        CustomHint = BalloonHint
        Caption = '>>'
        OnClick = SBIncluirTodosClick
      end
      object SBIncluirUm: TSpeedButton
        Left = 399
        Top = 292
        Width = 23
        Height = 22
        CustomHint = BalloonHint
        Caption = '>'
        OnClick = SBIncluirUmClick
      end
      object SBExcluirUn: TSpeedButton
        Left = 399
        Top = 360
        Width = 23
        Height = 22
        CustomHint = BalloonHint
        Caption = '<'
        OnClick = SBExcluirUnClick
      end
      object SBExcluirTodos: TSpeedButton
        Left = 399
        Top = 388
        Width = 23
        Height = 22
        CustomHint = BalloonHint
        Caption = '<<'
        OnClick = SBExcluirTodosClick
      end
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = licchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente'
        FocusControl = etdcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 114
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Quantidade de usu'#225'rios'
        FocusControl = licusuarios
      end
      object Panel1: TPanel
        Left = 16
        Top = 128
        Width = 145
        Height = 18
        CustomHint = BalloonHint
        Caption = 'M'#243'dulos'
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 167
        Top = 128
        Width = 226
        Height = 18
        CustomHint = BalloonHint
        Caption = 'Fun'#231#245'es Dipon'#237'veis'
        TabOrder = 1
      end
      object Panel3: TPanel
        Left = 428
        Top = 128
        Width = 226
        Height = 18
        CustomHint = BalloonHint
        Caption = 'Fun'#231#245'es Licenciadas'
        TabOrder = 2
      end
      object DBGridMdp: TDBGrid
        Left = 16
        Top = 152
        Width = 145
        Height = 465
        CustomHint = BalloonHint
        DataSource = Dmdp
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 3
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'mdpidentificacao'
            Width = 100
            Visible = True
          end>
      end
      object DBGridBtm: TDBGrid
        Left = 167
        Top = 152
        Width = 226
        Height = 465
        CustomHint = BalloonHint
        DataSource = Dbtm
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'btmidentificacao'
            Width = 190
            Visible = True
          end>
      end
      object DBGridLic: TDBGrid
        Left = 428
        Top = 152
        Width = 226
        Height = 465
        CustomHint = BalloonHint
        DataSource = Dlic
        Options = [dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'btmidentificacao'
            Width = 190
            Visible = True
          end>
      end
      object licchave: TDBEdit
        Left = 152
        Top = 3
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'licchave'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object etdcodigo: TDBEdit
        Left = 152
        Top = 30
        Width = 54
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object licusuarios: TDBEdit
        Left = 152
        Top = 57
        Width = 54
        Height = 21
        CustomHint = BalloonHint
        DataField = 'licusuarios'
        DataSource = DSRegistro
        TabOrder = 8
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Top = 200
  end
  inherited cfg: TUniQuery
    Left = 1028
    Top = 28
  end
  inherited consulta: TUniQuery
    Left = 656
    Top = 92
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  licchave,'
      '  etdcodigo,'
      '  mdpcodigo,'
      '  grmcodigo,'
      '  btmcodigo,'
      '  licdatainicial,'
      '  licdatafinal,'
      '  licusuarios'
      'FROM lic where etdcodigo=:etdcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object registrolicchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'licchave'
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registrolicusuarios: TIntegerField
      DisplayLabel = 'Quantidade de usu'#225'rios'
      FieldName = 'licusuarios'
      Required = True
    end
  end
  inherited dcp: TUniQuery
    Left = 576
    Top = 412
  end
  inherited dtb: TUniQuery
    Left = 532
    Top = 412
  end
  inherited coa: TUniQuery
    Left = 496
    Top = 412
  end
  inherited pfr: TUniQuery
    Left = 1040
    Top = 76
  end
  inherited psf: TUniQuery
    Left = 1000
    Top = 124
  end
  inherited dcl: TUniQuery
    Left = 996
    Top = 184
  end
  inherited cau: TUniQuery
    Left = 1000
    Top = 336
  end
  inherited err: TUniQuery
    Left = 1000
    Top = 268
  end
  inherited BalloonHint: TBalloonHint
    Left = 1060
    Top = 488
  end
  inherited acoesfrm: TActionList
    Left = 1060
    Top = 420
  end
  inherited cpg: TUniQuery
    Left = 492
    Top = 472
  end
  inherited cpc: TUniQuery
    Left = 493
    Top = 521
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 1076
    Top = 284
  end
  object mdp: TUniQuery
    SQL.Strings = (
      'select mdpcodigo, mdpidentificacao from mdp order by mdpordem')
    Left = 84
    Top = 328
    object mdpmdpcodigo: TIntegerField
      FieldName = 'mdpcodigo'
    end
    object mdpmdpidentificacao: TStringField
      FieldName = 'mdpidentificacao'
      Size = 50
    end
  end
  object btm: TUniQuery
    SQL.Strings = (
      
        'SELECT DISTINCT  btm.btmcodigo,  REPLACE( REPLACE( btm.btmidenti' +
        'ficacao, '#39'|'#39','#39' '#39'), '#39'  '#39','#39' '#39') btmidentificacao, grm.mdpcodigo, gr' +
        'm.grmcodigo, btm.btmimagem FROM btm'
      '    INNER JOIN grm  ON btm.grmcodigo = grm.grmcodigo'
      '   INNER JOIN mdp  ON grm.mdpcodigo = mdp.mdpcodigo'
      '   WHERE mdp.mdpcodigo=:mdpcodigo'
      'and btm.btmcodigo not in ('
      'SELECT DISTINCT  btm.btmcodigo FROM btm'
      '    INNER JOIN grm  ON btm.grmcodigo = grm.grmcodigo'
      '   INNER JOIN mdp  ON grm.mdpcodigo = mdp.mdpcodigo'
      
        '   INNER JOIN lic ON grm.grmcodigo = lic.grmcodigo and btm.btmco' +
        'digo=lic.btmcodigo'
      
        '   WHERE etdcodigo=:etdcodigo and mdp.mdpcodigo=:mdpcodigo and l' +
        'icdatafinal is null'
      '    ORDER BY mdpordem, grm.grmordem, btm.btmordem'
      ''
      ')'
      '    ORDER BY mdpordem, grm.grmordem, btm.btmordem')
    Left = 292
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdpcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object btmbtmcodigo: TIntegerField
      FieldName = 'btmcodigo'
    end
    object btmbtmidentificacao: TStringField
      FieldName = 'btmidentificacao'
      Size = 50
    end
    object btmgrmcodigo: TIntegerField
      FieldName = 'grmcodigo'
    end
    object btmbtmimagem: TBlobField
      FieldName = 'btmimagem'
    end
  end
  object Dmdp: TDataSource
    DataSet = mdp
    OnDataChange = DmdpDataChange
    Left = 76
    Top = 264
  end
  object lic: TUniQuery
    SQL.Strings = (
      
        'SELECT DISTINCT lic.licchave, btm.btmcodigo,  REPLACE( REPLACE( ' +
        'btm.btmidentificacao, '#39'|'#39','#39' '#39'), '#39'  '#39','#39' '#39') btmidentificacao, grm.' +
        'mdpcodigo,btm.btmimagem FROM btm'
      '    INNER JOIN grm  ON btm.grmcodigo = grm.grmcodigo'
      '   INNER JOIN mdp  ON grm.mdpcodigo = mdp.mdpcodigo'
      
        '   INNER JOIN lic ON grm.grmcodigo = lic.grmcodigo and btm.btmco' +
        'digo=lic.btmcodigo'
      
        '   WHERE etdcodigo=:etdcodigo and mdp.mdpcodigo=:mdpcodigo  and ' +
        'licdatafinal is null'
      '    ORDER BY mdpordem, grm.grmordem, btm.btmordem')
    Left = 556
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'mdpcodigo'
        Value = nil
      end>
    object liclicchave: TIntegerField
      FieldName = 'licchave'
    end
    object licbtmcodigo: TIntegerField
      FieldName = 'btmcodigo'
    end
    object licbtmidentificacao: TStringField
      FieldName = 'btmidentificacao'
      Size = 50
    end
    object licbtmimagem: TBlobField
      FieldName = 'btmimagem'
    end
  end
  object Dlic: TDataSource
    DataSet = lic
    Left = 492
    Top = 216
  end
  object Dbtm: TDataSource
    DataSet = btm
    Left = 292
    Top = 384
  end
  object licreg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  licchave,'
      '  etdcodigo,'
      '  mdpcodigo,'
      '  grmcodigo,'
      '  btmcodigo,'
      '  licdatainicial,'
      '  licdatafinal,'
      '  licusuarios'
      'FROM lic limit 0')
    Left = 692
    Top = 216
    object licreglicchave: TIntegerField
      FieldName = 'licchave'
    end
    object licregetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object licregmdpcodigo: TIntegerField
      FieldName = 'mdpcodigo'
    end
    object licreggrmcodigo: TIntegerField
      FieldName = 'grmcodigo'
    end
    object licregbtmcodigo: TIntegerField
      FieldName = 'btmcodigo'
    end
    object licreglicdatainicial: TDateField
      FieldName = 'licdatainicial'
    end
    object licreglicdatafinal: TDateField
      FieldName = 'licdatafinal'
    end
    object licreglicusuarios: TIntegerField
      FieldName = 'licusuarios'
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 380
    Top = 64
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
end
