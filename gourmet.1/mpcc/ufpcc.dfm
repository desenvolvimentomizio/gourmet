inherited fpcc: Tfpcc
  Caption = 'Conta Cont'#225'bil'
  ClientHeight = 336
  ClientWidth = 614
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 307
    Width = 614
    inherited bconfirma: TBitBtn
      Left = 460
    end
    inherited bcancela: TBitBtn
      Left = 535
    end
    inherited bfechar: TBitBtn
      Left = 395
    end
  end
  inherited paginas: TPageControl
    Width = 614
    Height = 307
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = pcccodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 43
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = pccidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 70
        Width = 51
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data inicial'
      end
      object Label7: TLabel
        Left = 240
        Top = 70
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
      end
      object Label8: TLabel
        Left = 8
        Top = 151
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
      end
      object Label4: TLabel
        Left = 8
        Top = 97
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Natureza'
        FocusControl = npccodigo
      end
      object Label5: TLabel
        Left = 8
        Top = 124
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de conta'
        FocusControl = tpccodigo
      end
      object pcccodigo: TDBEdit
        Left = 88
        Top = 13
        Width = 201
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pcccodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pccidentificacao: TDBEdit
        Left = 88
        Top = 40
        Width = 500
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pccidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object pccdescricao: TDBMemo
        Left = 88
        Top = 148
        Width = 500
        Height = 119
        CustomHint = BalloonHint
        DataField = 'pccdescricao'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object pccdtinicio: TDBEdit
        Left = 88
        Top = 67
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pccdtinicio'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object pccdtfinal: TDBEdit
        Left = 300
        Top = 67
        Width = 97
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pccdtfinal'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object npccodigo: TDBEdit
        Left = 90
        Top = 94
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'npccodigo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object tpccodigo: TDBEdit
        Left = 90
        Top = 121
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpccodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 328
    Top = 4
  end
  inherited cfg: TUniQuery
    Left = 532
    Top = 16
  end
  inherited consulta: TUniQuery
    Left = 456
    Top = 36
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select pcccodigo, pccidentificacao, npccodigo, tpccodigo, pccdti' +
        'nicio, pccdtfinal, pccnivel, pccdescricao'
      'from pcc'
      'where pcccodigo=:pcccodigo')
    Left = 392
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pcccodigo'
        Value = nil
      end>
    object registropcccodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pcccodigo'
      Size = 60
    end
    object registropccidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pccidentificacao'
      Size = 60
    end
    object registropccdtinicio: TDateField
      DisplayLabel = 'Data inicial'
      FieldName = 'pccdtinicio'
      EditMask = '!99/99/9999;1;_'
    end
    object registronpccodigo: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'npccodigo'
      Size = 2
    end
    object registronpcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'npcidentificacao'
      LookupDataSet = npc
      LookupKeyFields = 'npccodigo'
      LookupResultField = 'npcidentificacao'
      KeyFields = 'npccodigo'
      Size = 30
      Lookup = True
    end
    object registrotpccodigo: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'tpccodigo'
      Size = 2
    end
    object registrotpcidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tpcidentificacao'
      LookupDataSet = tpc
      LookupKeyFields = 'tpccodigo'
      LookupResultField = 'tpcidentificacao'
      KeyFields = 'tpccodigo'
      Size = 30
      Lookup = True
    end
    object registropccnivel: TIntegerField
      FieldName = 'pccnivel'
      Visible = False
    end
    object registropccdtfinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'pccdtfinal'
    end
    object registropccdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'pccdescricao'
      Size = 1000
    end
  end
  inherited dcp: TUniQuery
    Left = 760
    Top = 60
  end
  inherited dtb: TUniQuery
    Left = 728
    Top = 60
  end
  inherited coa: TUniQuery
    Left = 692
    Top = 60
  end
  inherited pfr: TUniQuery
    Left = 572
    Top = 16
  end
  inherited psf: TUniQuery
    Left = 608
    Top = 4
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object npc: TUniQuery
    SQL.Strings = (
      'select npccodigo, npcidentificacao from npc')
    Left = 308
    Top = 180
    object npcnpccodigo: TStringField
      FieldName = 'npccodigo'
      Size = 2
    end
    object npcnpcidentificacao: TStringField
      FieldName = 'npcidentificacao'
      Size = 35
    end
  end
  object tpc: TUniQuery
    SQL.Strings = (
      'select tpccodigo, tpcidentificacao from tpc')
    Left = 380
    Top = 180
    object tpctpccodigo: TStringField
      FieldName = 'tpccodigo'
      Size = 1
    end
    object tpctpcidentificacao: TStringField
      FieldName = 'tpcidentificacao'
      Size = 30
    end
  end
end
