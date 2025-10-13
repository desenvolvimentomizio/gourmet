inherited fpct: Tfpct
  ActiveControl = flacodigo
  Caption = 'Processo de Contabiliza'#231#227'o'
  ClientHeight = 512
  ClientWidth = 697
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 483
    Width = 697
    inherited bconfirma: TBitBtn
      Left = 543
    end
    inherited bcancela: TBitBtn
      Left = 618
    end
    inherited bfechar: TBitBtn
      Left = 478
    end
  end
  inherited paginas: TPageControl
    Width = 697
    Height = 483
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = pctchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 20
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Filial'
        FocusControl = flacodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = pctidentificacao
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 132
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Campo de Origem a Cr'#233'dito'
        FocusControl = togorigctacre
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 128
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Campo de Origem a D'#233'bito'
        FocusControl = togorigctadeb
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico Padr'#227'o'
        FocusControl = pcthistpadrao
      end
      object Label7: TLabel
        Left = 149
        Top = 173
        Width = 146
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Campo de Origem para o Valor'
      end
      object Label8: TLabel
        Left = 149
        Top = 379
        Width = 252
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Campo para origem do complemento para o Hist'#243'rico'
        FocusControl = pctcampohis
      end
      object pctchave: TDBEdit
        Left = 149
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pctchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object flacodigo: TDBEdit
        Left = 149
        Top = 30
        Width = 28
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flacodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object pctidentificacao: TDBEdit
        Left = 149
        Top = 57
        Width = 518
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pctidentificacao'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object togorigctacre: TDBEdit
        Left = 149
        Top = 84
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'togorigctacre'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object togorigctadeb: TDBEdit
        Left = 149
        Top = 111
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'togorigctadeb'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object pcthistpadrao: TDBEdit
        Left = 149
        Top = 138
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcthistpadrao'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object pctcampohis: TDBEdit
        Left = 149
        Top = 398
        Width = 518
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pctcampohis'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object pctcampoval: TDBMemo
        Left = 149
        Top = 192
        Width = 518
        Height = 181
        CustomHint = BalloonHint
        DataField = 'pctcampoval'
        DataSource = DSRegistro
        ScrollBars = ssBoth
        TabOrder = 6
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pctchave,'
      '  cfgcodigo,'
      '  flacodigo,'
      '  pctidentificacao,'
      '  tdgcodigo,'
      '  togorigctacre,'
      '  togorigctadeb,'
      '  pcthistpadrao,'
      '  pctcampoval,'
      '  pctcampohis'
      'FROM pct where pctchave=:pctchave and tdgcodigo=:tdgcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pctchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'tdgcodigo'
        Value = nil
      end>
    object registropctchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pctchave'
    end
    object registrotdgcodigo: TIntegerField
      DisplayLabel = 'Tipo de Evento'
      FieldName = 'tdgcodigo'
    end
    object registrocfgcodigo: TIntegerField
      DisplayLabel = 'Empresa'
      FieldName = 'cfgcodigo'
    end
    object registroflacodigo: TIntegerField
      DisplayLabel = 'Filial'
      FieldName = 'flacodigo'
      Required = True
    end
    object registroflaidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'flaidentificacao'
      LookupDataSet = fla
      LookupKeyFields = 'flacodigo'
      LookupResultField = 'flaidentificacao'
      KeyFields = 'flacodigo'
      Size = 50
      Lookup = True
    end
    object registropctidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pctidentificacao'
      Required = True
      Size = 50
    end
    object registrotogorigctacre: TIntegerField
      DisplayLabel = 'Campo de Origem a Cr'#233'dito'
      FieldName = 'togorigctacre'
      Required = True
    end
    object registrotogoricreidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'togoricreidentificacao'
      LookupDataSet = tog
      LookupKeyFields = 'togcodigo'
      LookupResultField = 'togidentificacao'
      KeyFields = 'togorigctacre'
      Size = 50
      Lookup = True
    end
    object registrotogorigctadeb: TIntegerField
      DisplayLabel = 'Campo de Origem a D'#233'bito'
      FieldName = 'togorigctadeb'
      Required = True
    end
    object registrotogoridebidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'togoridebidentificacao'
      LookupDataSet = tog
      LookupKeyFields = 'togcodigo'
      LookupResultField = 'togidentificacao'
      KeyFields = 'togorigctadeb'
      Size = 50
      Lookup = True
    end
    object registropcthistpadrao: TIntegerField
      DisplayLabel = 'Hist'#243'rico Padr'#227'o'
      FieldName = 'pcthistpadrao'
      Required = True
    end
    object registrophgidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'phgidentificacao'
      LookupDataSet = phg
      LookupKeyFields = 'phgcodigo'
      LookupResultField = 'phgidentificacao'
      KeyFields = 'pcthistpadrao'
      Size = 50
      Lookup = True
    end
    object registropctcampoval: TStringField
      DisplayLabel = 'Campo de Origem para o Valor'
      FieldName = 'pctcampoval'
      Required = True
      Size = 64000
    end
    object registropctcampohis: TStringField
      DisplayLabel = 'Campo para origem do complemento para o Hist'#243'rico'
      FieldName = 'pctcampohis'
      Size = 255
    end
  end
  inherited dcp: TUniQuery
    Left = 80
    Top = 28
  end
  inherited dtb: TUniQuery
    Left = 92
    Top = 84
  end
  inherited coa: TUniQuery
    Left = 104
    Top = 36
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object fla: TUniQuery
    SQL.Strings = (
      'select flacodigo, flaidentificacao from fla')
    Left = 600
    Top = 240
    object flaflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object flaflaidentificacao: TStringField
      FieldName = 'flaidentificacao'
      Size = 50
    end
  end
  object tog: TUniQuery
    SQL.Strings = (
      'select togcodigo, togidentificacao from tog')
    Left = 592
    Top = 304
    object togtogcodigo: TIntegerField
      FieldName = 'togcodigo'
    end
    object togtogidentificacao: TStringField
      FieldName = 'togidentificacao'
      Size = 50
    end
  end
  object phg: TUniQuery
    SQL.Strings = (
      'select phgcodigo, phgidentificacao from phg')
    Left = 424
    Top = 160
    object phgphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object phgphgidentificacao: TStringField
      FieldName = 'phgidentificacao'
      Size = 50
    end
  end
end
