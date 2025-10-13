inherited frmg: Tfrmg
  ActiveControl = rmgdata
  Caption = 'Registros Cont'#225'beis'
  ClientHeight = 539
  ClientWidth = 819
  ExplicitWidth = 835
  ExplicitHeight = 578
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 510
    Width = 819
    ExplicitTop = 510
    ExplicitWidth = 819
    inherited bconfirma: TBitBtn
      Left = 665
      ExplicitLeft = 665
    end
    inherited bcancela: TBitBtn
      Left = 740
      ExplicitLeft = 740
    end
    inherited bfechar: TBitBtn
      Left = 600
      Visible = True
      ExplicitLeft = 600
    end
  end
  inherited paginas: TPageControl
    Width = 819
    Height = 510
    ExplicitWidth = 819
    ExplicitHeight = 510
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = rmgchave
      end
      object Label2: TLabel
        Left = 228
        Top = 6
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Lote'
        FocusControl = mlgchave
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial'
        FocusControl = flacodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 33
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do lan'#231'amento'
        FocusControl = rmgdata
      end
      object Label5: TLabel
        Left = 8
        Top = 115
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Conta Cont'#225'bil'
        FocusControl = pcgcodigo
      end
      object Label6: TLabel
        Left = 8
        Top = 142
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza'
        FocusControl = cedcodigo
      end
      object Label7: TLabel
        Left = 8
        Top = 87
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor R$'
        FocusControl = rmgvalor
      end
      object Label8: TLabel
        Left = 8
        Top = 196
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico'
        FocusControl = phgcodigo
      end
      object Label9: TLabel
        Left = 8
        Top = 223
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Complemento'
      end
      object pcgctacredito: TDBText
        Left = 3
        Top = 290
        Width = 538
        Height = 17
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        Visible = False
      end
      object pcgestrutural: TDBText
        Left = 3
        Top = 313
        Width = 294
        Height = 13
        CustomHint = BalloonHint
        DataField = 'pcgestrutural'
        DataSource = DSRegistro
        Visible = False
      end
      object Label10: TLabel
        Left = 364
        Top = 6
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data do Lote'
        FocusControl = mlgdata
      end
      object Label11: TLabel
        Left = 325
        Top = 33
        Width = 101
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data de competencia'
        FocusControl = rmgcompetencia
      end
      object rmgchave: TDBEdit
        Left = 136
        Top = 3
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'rmgchave'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 0
      end
      object mlgchave: TDBEdit
        Left = 273
        Top = 3
        Width = 78
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'mlgchave'
        DataSource = DSRegistro
        Enabled = False
        ReadOnly = True
        TabOrder = 1
      end
      object flacodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flacodigo'
        DataSource = Dmlg
        TabOrder = 4
        OnExit = flacodigoExit
      end
      object rmgdata: TDBEdit
        Left = 136
        Top = 30
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rmgdata'
        DataSource = DSRegistro
        TabOrder = 2
        OnExit = rmgdataExit
      end
      object pcgcodigo: TDBEdit
        Tag = 777
        Left = 136
        Top = 112
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcgcodigo'
        DataSource = DSRegistro
        TabOrder = 6
        OnExit = pcgcodigoExit
      end
      object cedcodigo: TDBEdit
        Tag = 777
        Left = 136
        Top = 139
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cedcodigo'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object rmgvalor: TDBEdit
        Left = 136
        Top = 84
        Width = 125
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rmgvalor'
        DataSource = DSRegistro
        TabOrder = 5
        OnExit = rmgvalorExit
      end
      object phgcodigo: TDBEdit
        Tag = 777
        Left = 136
        Top = 193
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 8
        OnEnter = phgcodigoEnter
      end
      object pltotallote: TPanel
        Left = 136
        Top = 166
        Width = 653
        Height = 21
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        BevelOuter = bvLowered
        BorderWidth = 1
        Color = 8569087
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 10
        Visible = False
      end
      object rmgcomplemento: TDBMemo
        Left = 136
        Top = 220
        Width = 653
        Height = 50
        CustomHint = BalloonHint
        DataField = 'rmgcomplemento'
        DataSource = DSRegistro
        TabOrder = 9
        OnEnter = rmgcomplementoEnter
      end
      object mlgdata: TDBEdit
        Left = 432
        Top = 3
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'mlgdata'
        DataSource = Dmlg
        ReadOnly = True
        TabOrder = 11
      end
      object rmgcompetencia: TDBEdit
        Left = 432
        Top = 30
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'rmgcompetencia'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = rmgdataExit
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 588
    Top = 65532
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'select cfgidentificacao,cfgdtinictb,cfgdtfinctb from cfg')
    Left = 672
    Top = 16
    object cfgcfgidentificacao: TStringField
      FieldName = 'cfgidentificacao'
      Required = True
      Size = 50
    end
    object cfgcfgdtinictb: TDateField
      FieldName = 'cfgdtinictb'
    end
    object cfgcfgdtfinctb: TDateField
      FieldName = 'cfgdtfinctb'
    end
  end
  inherited consulta: TUniQuery
    Left = 688
    Top = 64
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select rmgchave, mlgchave,  phgcodigo, rmgdata,rmgvalor, rmgcomp' +
        'lemento, pcgcodigo, cedcodigo,rmgcompetencia,rmginclusao,rmgtipo' +
        ' from rmg where rmgchave=:rmgchave')
    Left = 596
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmgchave'
        Value = nil
      end>
    object registrormgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Registro'
      FieldName = 'rmgchave'
    end
    object registromlgchave: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'mlgchave'
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgcodigo'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'phgcodigo'
      Size = 80
      Lookup = True
    end
    object registrormgdata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'rmgdata'
      Required = True
      EditMask = '!99/99/0000;1;_'
    end
    object registrormgvalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'rmgvalor'
      Required = True
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object registrormgcomplemento: TStringField
      DisplayLabel = 'Complemento'
      FieldName = 'rmgcomplemento'
      Size = 50
    end
    object registrocodigo: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'pcgcodigo'
      Required = True
    end
    object registropcgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgidentificacao'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgidentificacao'
      KeyFields = 'pcgcodigo'
      Size = 150
      Lookup = True
    end
    object registrormgcompetencia: TDateField
      FieldName = 'rmgcompetencia'
    end
    object registrormginclusao: TDateTimeField
      FieldName = 'rmginclusao'
    end
    object registrormgtipo: TIntegerField
      FieldName = 'rmgtipo'
    end
    object registrocedcodigo: TIntegerField
      FieldName = 'cedcodigo'
      Required = True
    end
    object registrocedidenticacao: TStringField
      FieldKind = fkLookup
      FieldName = 'cedidenticacao'
      LookupDataSet = ced
      LookupKeyFields = 'cedcodigo'
      LookupResultField = 'cedidentificacao'
      KeyFields = 'cedcodigo'
      Size = 35
      Lookup = True
    end
    object registropcgestrutural: TStringField
      FieldKind = fkLookup
      FieldName = 'pcgestrutural'
      LookupDataSet = pcg
      LookupKeyFields = 'pcgcodigo'
      LookupResultField = 'pcgestrutural'
      KeyFields = 'pcgcodigo'
      Visible = False
      Size = 80
      Lookup = True
    end
  end
  inherited dcp: TUniQuery
    Left = 568
    Top = 52
  end
  inherited dtb: TUniQuery
    Left = 540
    Top = 68
  end
  inherited coa: TUniQuery
    Left = 504
    Top = 116
  end
  inherited pfr: TUniQuery
    Left = 704
    Top = 16
  end
  inherited psf: TUniQuery
    Left = 744
    Top = 16
  end
  inherited dcl: TUniQuery
    Left = 564
    Top = 144
  end
  inherited cau: TUniQuery
    Left = 696
    Top = 144
  end
  inherited err: TUniQuery
    Left = 728
    Top = 148
  end
  inherited acoesfrm: TActionList
    Left = 396
    Top = 132
  end
  inherited cpg: TUniQuery
    Left = 52
    Top = 192
  end
  inherited cpc: TUniQuery
    Left = 77
    Top = 177
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object mlg: TUniQuery
    SQL.Strings = (
      
        'select mlgchave, clbcodigo, mlgsituacao,flacodigo, mlgdata from ' +
        'mlg where clbcodigo=:clbcodigo and flacodigo=:flacodigo and mlgs' +
        'ituacao=:situacao')
    Left = 524
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        Value = nil
      end>
    object mlgmlgchave: TIntegerField
      FieldName = 'mlgchave'
    end
    object mlgclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object mlgmlgsituacao: TIntegerField
      FieldName = 'mlgsituacao'
    end
    object mlgflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object mlgflaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flaidentificacao'
      LookupDataSet = fla
      LookupKeyFields = 'flacodigo'
      LookupResultField = 'flaidentificacao'
      KeyFields = 'flacodigo'
      Size = 50
      Lookup = True
    end
    object mlgmlgdata: TDateField
      FieldName = 'mlgdata'
    end
  end
  object fla: TUniQuery
    SQL.Strings = (
      'select flacodigo, flaidentificacao from fla')
    Left = 348
    Top = 128
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 50
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 664
    Top = 176
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 80
    end
  end
  object drg: TUniQuery
    SQL.Strings = (
      'select rmgchave,pcgcodigo, drgvalor from drg')
    Left = 820
    Top = 32
  end
  object fcb: TUniQuery
    SQL.Strings = (
      'select flacodigo, clbcodigo from fcb where clbcodigo=:clbcodigo')
    Left = 752
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
  end
  object pcg: TUniQuery
    SQL.Strings = (
      'select pcgcodigo,pcgestrutural, pcgidentificacao from pcg')
    Left = 596
    Top = 48
    object pcgpcgcodigo: TIntegerField
      FieldName = 'pcgcodigo'
    end
    object pcgpcgestrutural: TStringField
      FieldName = 'pcgestrutural'
      Size = 50
    end
    object pcgpcgidentificacao: TStringField
      FieldName = 'pcgidentificacao'
      Size = 100
    end
  end
  object deb: TUniQuery
    SQL.Strings = (
      
        'select sum(rmgvalor) as debitos from rmg,pcg where pcg.pcgcodigo' +
        '=rmg.pcgcodigo and rmg.cedcodigo=0 and mlgchave=:mlgchave group ' +
        'by mlgchave')
    Left = 592
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mlgchave'
        Value = nil
      end>
    object debdebitos: TFloatField
      FieldName = 'debitos'
    end
  end
  object cre: TUniQuery
    SQL.Strings = (
      
        'select sum(rmgvalor) as creditos from rmg,pcg where pcg.pcgcodig' +
        'o=rmg.pcgcodigo and rmg.cedcodigo=1 and mlgchave=:mlgchave group' +
        ' by mlgchave')
    Left = 528
    Top = 308
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mlgchave'
        Value = nil
      end>
    object crecreditos: TFloatField
      FieldName = 'creditos'
    end
  end
  object vdrg: TUniQuery
    SQL.Strings = (
      'select drgchave, rmgchave, pcgcodigo, drgvalor,drgtipo from drg'
      
        'where drg.rmgchave=:rmgchave and drg.drgtipo=:drgtipo order by d' +
        'rgchave')
    Left = 856
    Top = 44
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rmgchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'drgtipo'
        Value = nil
      end>
  end
  object Dmlg: TUniDataSource
    DataSet = mlg
    Left = 444
    Top = 128
  end
  object info: TUniQuery
    SQL.Strings = (
      'select  clbcodigo, flacodigo from mlg where mlgchave=:mlgchave')
    Left = 608
    Top = 176
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mlgchave'
        Value = nil
      end>
    object infoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object infoflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
  end
  object ced: TUniQuery
    SQL.Strings = (
      'select cedcodigo, cedidentificacao from ced')
    Left = 352
    Top = 224
    object cedcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object cedcedidentificacao: TStringField
      FieldName = 'cedidentificacao'
      Size = 35
    end
  end
end
