inherited fchd: Tfchd
  ActiveControl = chdidentificacao
  Caption = 'Chamado'
  ClientHeight = 471
  ClientWidth = 855
  ExplicitWidth = 871
  ExplicitHeight = 510
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 442
    Width = 855
    ExplicitTop = 472
    ExplicitWidth = 871
    inherited bconfirma: TBitBtn
      Left = 701
      ExplicitLeft = 717
    end
    inherited bcancela: TBitBtn
      Left = 776
      ExplicitLeft = 792
    end
    inherited bfechar: TBitBtn
      Left = 636
      ExplicitLeft = 652
    end
  end
  inherited paginas: TPageControl
    Width = 855
    Height = 442
    ExplicitWidth = 871
    ExplicitHeight = 472
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 863
      ExplicitHeight = 444
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chamado'
        FocusControl = chdchave
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 47
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Categoria'
        FocusControl = tcmcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 33
        Width = 26
        Height = 13
        CustomHint = BalloonHint
        Caption = 'T'#237'tulo'
        FocusControl = chdidentificacao
      end
      object Label5: TLabel
        Left = 8
        Top = 87
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo'
      end
      object Label6: TLabel
        Left = 8
        Top = 114
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Prioridade'
        FocusControl = tprcodigo
      end
      object Label7: TLabel
        Left = 8
        Top = 141
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Cliente'
        FocusControl = etdcodigo
      end
      object Label8: TLabel
        Left = 8
        Top = 168
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Solicitante'
        FocusControl = tsoemail
      end
      object Label2: TLabel
        Left = 8
        Top = 249
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
        FocusControl = tsoemail
      end
      object Label9: TLabel
        Left = 8
        Top = 220
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Id da tela'
        FocusControl = chdidtela
      end
      object Label10: TLabel
        Left = 8
        Top = 195
        Width = 109
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Base de Conhecimento'
        FocusControl = tagcodigo
      end
      object chdchave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chdchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tcmcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcmcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object chdidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 502
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chdidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tprcodigo: TDBEdit
        Left = 136
        Top = 111
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tprcodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 138
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 5
        OnExit = etdcodigoExit
      end
      object tsoemail: TDBEdit
        Left = 136
        Top = 165
        Width = 345
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tsoemail'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object ttccodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttccodigo'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = ttccodigoExit
      end
      object chddescricao: TDBMemo
        Left = 136
        Top = 246
        Width = 502
        Height = 157
        CustomHint = BalloonHint
        DataField = 'chddescricao'
        DataSource = DSRegistro
        TabOrder = 9
        OnKeyDown = chddescricaoKeyDown
        OnKeyPress = chddescricaoKeyPress
        OnKeyUp = chddescricaoKeyUp
      end
      object chdidtela: TDBEdit
        Left = 136
        Top = 219
        Width = 502
        Height = 21
        CustomHint = BalloonHint
        DataField = 'chdidtela'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object plregimetributario: TPanel
        Left = 644
        Top = 32
        Width = 197
        Height = 149
        CustomHint = BalloonHint
        BorderWidth = 4
        ParentBackground = False
        TabOrder = 10
        Visible = False
        object ctdidentificacao: TDBEdit
          Left = 5
          Top = 25
          Width = 187
          Height = 21
          CustomHint = BalloonHint
          Align = alTop
          DataField = 'ctdidentificacao'
          DataSource = Dclr
          ReadOnly = True
          TabOrder = 0
        end
        object pltopregimetribitario: TPanel
          Left = 5
          Top = 5
          Width = 187
          Height = 20
          CustomHint = BalloonHint
          Align = alTop
          Caption = ' Dados Tribut'#225'rios'
          TabOrder = 1
        end
        object crtidentificacao: TDBEdit
          Left = 5
          Top = 46
          Width = 187
          Height = 21
          CustomHint = BalloonHint
          Align = alTop
          DataField = 'crtidentificacao'
          DataSource = Dclr
          ReadOnly = True
          TabOrder = 2
        end
        object talidentificacao: TDBEdit
          Left = 5
          Top = 67
          Width = 187
          Height = 21
          CustomHint = BalloonHint
          Align = alTop
          DataField = 'talidentificacao'
          DataSource = Dclr
          ReadOnly = True
          TabOrder = 3
        end
        object clrvencimentocertificado: TDBEdit
          Left = 5
          Top = 123
          Width = 187
          Height = 21
          CustomHint = BalloonHint
          Align = alBottom
          DataField = 'clrvencimentocertificado'
          DataSource = Dclr
          ReadOnly = True
          TabOrder = 4
        end
        object Panel1: TPanel
          Left = 5
          Top = 104
          Width = 187
          Height = 19
          CustomHint = BalloonHint
          Align = alBottom
          Caption = 'Vencimento do CERTIFICADO'
          TabOrder = 5
        end
      end
      object tagcodigo: TDBEdit
        Left = 136
        Top = 192
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tagcodigo'
        DataSource = DSRegistro
        TabOrder = 7
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 356
    Top = 0
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  chdchave,'
      '  chdidentificacao,'
      '  ttccodigo,'
      '  tcmcodigo,'
      '  tprcodigo,'
      '  chdregistro,'
      '  etdcodigo,'
      '  tsoemail,'
      '  chddescricao,'
      '  chdidtela,'
      '  btmcodigo,'
      '  mdpcodigo,'
      '  teccodigo,'
      '  echchave,'
      '  rchchave,'
      '  chddata,'
      '  tagcodigo'
      'FROM chd where chdchave=:chdchave')
    Left = 444
    Top = 0
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end>
    object registrochdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chamado'
      FieldName = 'chdchave'
    end
    object registrochdregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'chdregistro'
      Required = True
    end
    object registrotcmcodigo: TIntegerField
      FieldName = 'tcmcodigo'
      Required = True
    end
    object registrotcmidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tcmidentificacao'
      LookupDataSet = tcm
      LookupKeyFields = 'tcmcodigo'
      LookupResultField = 'tcmidentificacao'
      KeyFields = 'tcmcodigo'
      Size = 50
      Lookup = True
    end
    object registrochdidentificacao: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'chdidentificacao'
      Required = True
      Size = 200
    end
    object registrottccodigo: TIntegerField
      FieldName = 'ttccodigo'
      Required = True
    end
    object registrottcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ttcidentificacao'
      LookupDataSet = ttc
      LookupKeyFields = 'ttccodigo'
      LookupResultField = 'ttcidentificacao'
      KeyFields = 'ttccodigo'
      Size = 50
      Lookup = True
    end
    object registrotprcodigo: TIntegerField
      FieldName = 'tprcodigo'
      Required = True
    end
    object registrotpridentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tpridentificacao'
      LookupDataSet = tpr
      LookupKeyFields = 'tprcodigo'
      LookupResultField = 'tpridentificacao'
      KeyFields = 'tprcodigo'
      Size = 50
      Lookup = True
    end
    object registroetdcodigo: TIntegerField
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
    object registrotsoemail: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'tsoemail'
      Required = True
      Size = 200
    end
    object registrotsoidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tsoidentificacao'
      LookupDataSet = tso
      LookupKeyFields = 'tsoemail'
      LookupResultField = 'tsoidentificacao'
      KeyFields = 'tsoemail'
      Size = 50
      Lookup = True
    end
    object registrochddescricao: TStringField
      FieldName = 'chddescricao'
      Required = True
      Size = 5000
    end
    object registrochdidtela: TStringField
      DisplayLabel = 'ID da tela'
      FieldName = 'chdidtela'
      Required = True
      Size = 50
    end
    object registromdpcodigo: TIntegerField
      DisplayLabel = 'M'#243'dulo do Sistema'
      FieldName = 'mdpcodigo'
    end
    object registromdpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'mdpidentificacao'
      LookupDataSet = mdp
      LookupKeyFields = 'mdpcodigo'
      LookupResultField = 'mdpidentificacao'
      KeyFields = 'mdpcodigo'
      Size = 50
      Lookup = True
    end
    object registrobtmcodigo: TIntegerField
      DisplayLabel = 'Fun'#231#227'o do M'#243'dulo'
      FieldName = 'btmcodigo'
    end
    object registrobtmidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'btmidentificacao'
      LookupDataSet = btm
      LookupKeyFields = 'btmcodigo'
      LookupResultField = 'btmidentificacao'
      KeyFields = 'btmcodigo'
      Size = 50
      Lookup = True
    end
    object registroteccodigo: TIntegerField
      FieldName = 'teccodigo'
    end
    object registrorchchave: TIntegerField
      FieldName = 'rchchave'
    end
    object registroechchave: TIntegerField
      FieldName = 'echchave'
    end
    object registrochddata: TDateField
      FieldName = 'chddata'
    end
    object registrotagcodigo: TIntegerField
      DisplayLabel = 'Base de Conhecimento'
      FieldName = 'tagcodigo'
      Required = True
    end
    object registrotagidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tagidentificacao'
      LookupDataSet = tag
      LookupKeyFields = 'tagcodigo'
      LookupResultField = 'tagidentificacao'
      KeyFields = 'tagcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 232
    Top = 348
  end
  inherited dtb: TUniQuery
    Left = 364
    Top = 252
  end
  inherited coa: TUniQuery
    Left = 376
  end
  inherited BalloonHint: TBalloonHint
    Top = 264
  end
  inherited cpg: TUniQuery
    Left = 244
    Top = 304
  end
  inherited cpc: TUniQuery
    Left = 269
    Top = 249
  end
  inherited ImgBusca: TPngImageList
    Left = 212
    Top = 24
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 276
    Top = 65532
  end
  object tcm: TUniQuery
    SQL.Strings = (
      'select tcmcodigo, tcmidentificacao from tcm')
    Left = 568
    object tcmtcmcodigo: TIntegerField
      FieldName = 'tcmcodigo'
    end
    object tcmtcmidentificacao: TStringField
      FieldName = 'tcmidentificacao'
      Size = 50
    end
  end
  object ttc: TUniQuery
    SQL.Strings = (
      'select ttccodigo, ttcidentificacao from ttc')
    Left = 400
    object ttcttccodigo: TIntegerField
      FieldName = 'ttccodigo'
    end
    object ttcttcidentificacao: TStringField
      FieldName = 'ttcidentificacao'
      Size = 50
    end
  end
  object tpr: TUniQuery
    SQL.Strings = (
      'select tprcodigo, tpridentificacao from tpr')
    Left = 608
    Top = 104
    object tprtprcodigo: TIntegerField
      FieldName = 'tprcodigo'
    end
    object tprtpridentificacao: TStringField
      FieldName = 'tpridentificacao'
      Size = 50
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 256
    Top = 96
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object tso: TUniQuery
    SQL.Strings = (
      'select tsoemail, tsoidentificacao from tso')
    Left = 496
    object tsotsoemail: TStringField
      FieldName = 'tsoemail'
      Size = 200
    end
    object tsotsoidentificacao: TStringField
      FieldName = 'tsoidentificacao'
      Size = 50
    end
  end
  object ech: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  echchave,'
      '  chdchave,'
      '  echregistro,'
      '  clbcodigo,'
      '  teccodigo'
      'FROM ech where chdchave=:chdchave and teccodigo=:teccodigo')
    Left = 440
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'teccodigo'
        Value = nil
      end>
    object echechchave: TIntegerField
      FieldName = 'echchave'
    end
    object echchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object echechregistro: TDateTimeField
      FieldName = 'echregistro'
    end
    object echclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object echteccodigo: TIntegerField
      FieldName = 'teccodigo'
    end
  end
  object tec: TUniQuery
    SQL.Strings = (
      'select teccodigo from tec where ttccodigo=:ttccodigo limit 1')
    Left = 408
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ttccodigo'
        Value = nil
      end>
    object tecteccodigo: TIntegerField
      FieldName = 'teccodigo'
    end
  end
  object rch: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rchchave,'
      '  chdchave,'
      '  rchregistro,'
      '  clbcodigo,'
      '  rchatribuinte'
      'FROM rch where chdchave=:chdchave ')
    Left = 240
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end>
    object rchrchchave: TIntegerField
      FieldName = 'rchchave'
    end
    object rchchdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object rchrchregistro: TDateTimeField
      FieldName = 'rchregistro'
    end
    object rchclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object rchrchatribuinte: TIntegerField
      FieldName = 'rchatribuinte'
    end
  end
  object clr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clr.clrchave,'
      '  clr.etdcodigo,'
      '  clr.crtcodigo,'
      '  clr.talcodigo,'
      '  clr.ctdcodigo,'
      '  clr.clrcnaeprincipal,'
      '  crt.crtidentificacao,'
      '  etd.etdidentificacao,'
      '  tal.talidentificacao,'
      '  ctd.ctdidentificacao,'
      '  clrvencimentocertificado '
      'FROM etd'
      '  INNER JOIN clr'
      '    ON etd.etdcodigo = clr.etdcodigo'
      '  INNER JOIN crt'
      '    ON crt.crtcodigo = clr.crtcodigo'
      '  INNER JOIN tal'
      '    ON tal.talcodigo = clr.talcodigo'
      '  INNER JOIN ctd'
      '    ON ctd.ctdcodigo = clr.ctdcodigo'
      ' where clr.etdcodigo=:etdcodigo')
    Left = 620
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object clrclrchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'clrchave'
    end
    object clretdcodigo: TIntegerField
      DisplayLabel = 'Cd.Cliente'
      FieldName = 'etdcodigo'
    end
    object clrcrtcodigo: TIntegerField
      DisplayLabel = 'Cd.Regime'
      FieldName = 'crtcodigo'
    end
    object clrtalcodigo: TIntegerField
      DisplayLabel = 'Cd.Apura'#231#227'o'
      FieldName = 'talcodigo'
    end
    object clrctdcodigo: TIntegerField
      DisplayLabel = 'Cd.Contador'
      FieldName = 'ctdcodigo'
    end
    object clrclrcnaeprincipal: TStringField
      DisplayLabel = 'CNAE Principal'
      FieldName = 'clrcnaeprincipal'
      Size = 30
    end
    object clrcrtidentificacao: TStringField
      DisplayLabel = 'Regime Tribut'#225'rio'
      FieldName = 'crtidentificacao'
      Size = 50
    end
    object clretdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object clrtalidentificacao: TStringField
      DisplayLabel = 'Apura'#231#227'o do Lucro'
      FieldName = 'talidentificacao'
      Size = 50
    end
    object clrctdidentificacao: TStringField
      DisplayLabel = 'Contabilidade'
      FieldName = 'ctdidentificacao'
      Size = 50
    end
    object clrclrvencimentocertificado: TDateField
      FieldName = 'clrvencimentocertificado'
    end
  end
  object Dclr: TDataSource
    DataSet = clr
    Left = 904
    Top = 8
  end
  object mdp: TUniQuery
    SQL.Strings = (
      'select mdpcodigo, mdpidentificacao from mdp')
    Left = 716
    Top = 272
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
      
        'SELECT DISTINCT btm.btmcodigo,  REPLACE( REPLACE( btm.btmidentif' +
        'icacao, '#39'|'#39','#39' '#39'), '#39'  '#39','#39' '#39') btmidentificacao, grm.mdpcodigo FROM' +
        ' btm'
      '    INNER JOIN grm  ON btm.grmcodigo = grm.grmcodigo'
      '   INNER JOIN mdp  ON grm.mdpcodigo = mdp.mdpcodigo'
      '    ORDER BY mdpordem, grm.grmordem, btm.btmordem'
      '  ')
    Left = 684
    Top = 344
    object btmbtmcodigo: TIntegerField
      FieldName = 'btmcodigo'
    end
    object btmbtmidentificacao: TStringField
      FieldName = 'btmidentificacao'
      Size = 50
    end
  end
  object tag: TUniQuery
    SQL.Strings = (
      'select tagcodigo, tagidentificacao from tag')
    Left = 292
    Top = 384
    object tagtagcodigo: TIntegerField
      FieldName = 'tagcodigo'
    end
    object tagtagidentificacao: TStringField
      FieldName = 'tagidentificacao'
      Size = 50
    end
  end
end
