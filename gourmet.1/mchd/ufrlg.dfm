inherited frlg: Tfrlg
  ActiveControl = rlgdescricao
  Caption = 'Liga'#231#227'o'
  ClientHeight = 326
  ClientWidth = 571
  ExplicitWidth = 587
  ExplicitHeight = 365
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 297
    Width = 571
    ExplicitTop = 297
    ExplicitWidth = 571
    inherited bconfirma: TBitBtn
      Left = 492
      Caption = 'Liga'#231#227'o'
      ExplicitLeft = 492
    end
    inherited bcancela: TBitBtn
      Left = 342
      Caption = 'Chamado'
      Visible = False
      ExplicitLeft = 342
    end
    inherited bfechar: TBitBtn
      Left = 99
      Align = alLeft
      ExplicitLeft = 99
    end
    object bchamado: TButton
      Left = 417
      Top = 4
      Width = 75
      Height = 21
      CustomHint = BalloonHint
      Align = alRight
      Caption = 'Chamado'
      ModalResult = 1
      TabOrder = 4
      OnClick = bchamadoClick
      ExplicitLeft = 411
      ExplicitTop = 2
    end
  end
  inherited paginas: TPageControl
    Width = 571
    Height = 297
    ExplicitWidth = 571
    ExplicitHeight = 297
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 563
      ExplicitHeight = 269
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = rlgchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
      end
      object etdcodigo: TDBText
        Left = 136
        Top = 159
        Width = 65
        Height = 17
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = detd
      end
      object lbetdcodigo: TLabel
        Left = 8
        Top = 159
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Entidade'
      end
      object etdidentificacao: TDBText
        Left = 207
        Top = 159
        Width = 338
        Height = 17
        CustomHint = BalloonHint
        DataField = 'etdidentificacao'
        DataSource = detd
      end
      object rlgchave: TDBEdit
        Left = 136
        Top = 3
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'rlgchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object rlgdescricao: TDBMemo
        Left = 136
        Top = 30
        Width = 409
        Height = 123
        CustomHint = BalloonHint
        DataField = 'rlgdescricao'
        DataSource = DSRegistro
        TabOrder = 1
        OnKeyDown = rlgdescricaoKeyDown
        OnKeyPress = rlgdescricaoKeyPress
        OnKeyUp = rlgdescricaoKeyUp
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 460
    Top = 192
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgetdempresa  FROM cfgmcfg WHERE cfgcodigo=:flacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flacodigo'
        Value = nil
      end>
    object cfgcfgetdempresa: TIntegerField
      FieldName = 'cfgetdempresa'
    end
  end
  inherited consulta: TUniQuery
    Left = 392
    Top = 188
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select rlgchave, rlgdescricao,etdcodigo from rlg where rlgchave=' +
        ':rlgchave')
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'rlgchave'
        Value = nil
      end>
    object registrorlgchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'rlgchave'
    end
    object registrorlgdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'rlgdescricao'
      Required = True
      Size = 1000
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
  inherited cau: TUniQuery
    Left = 528
    Top = 216
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited lou: TUniQuery
    Left = 336
    Top = 176
  end
  object etd: TUniQuery
    SQL.Strings = (
      
        'select etdcodigo, etdidentificacao from etd where etdcodigo=:etd' +
        'codigo')
    Left = 84
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object detd: TDataSource
    DataSet = etd
    Left = 212
    Top = 208
  end
  object chd: TUniQuery
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
      '  chdidtela'
      'FROM chd limit 0')
    Left = 16
    Top = 80
    object chdchdchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chamado'
      FieldName = 'chdchave'
    end
    object chdchdregistro: TDateTimeField
      DisplayLabel = 'Registro'
      FieldName = 'chdregistro'
      Required = True
    end
    object chdtcmcodigo: TIntegerField
      FieldName = 'tcmcodigo'
      Required = True
    end
    object chdchdidentificacao: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'chdidentificacao'
      Required = True
      Size = 200
    end
    object chdttccodigo: TIntegerField
      FieldName = 'ttccodigo'
      Required = True
    end
    object chdtprcodigo: TIntegerField
      FieldName = 'tprcodigo'
      Required = True
    end
    object chdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object chdtsoemail: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'tsoemail'
      Required = True
      Size = 200
    end
    object chdchddescricao: TStringField
      FieldName = 'chddescricao'
      Required = True
      Size = 5000
    end
    object chdchdidtela: TStringField
      DisplayLabel = 'ID da tela'
      FieldName = 'chdidtela'
      Size = 50
    end
  end
  object tec: TUniQuery
    SQL.Strings = (
      'select teccodigo from tec where ttccodigo=:ttccodigo limit 1')
    Left = 216
    Top = 114
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
  object ech: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  echchave,'
      '  chdchave,'
      '  echregistro,'
      '  clbcodigo,'
      '  teccodigo'
      'FROM ech where chdchave=:chdchave and teccodigo=:teccodigo')
    Left = 248
    Top = 114
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
  object rch: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  rchchave,'
      '  chdchave,'
      '  rchregistro,'
      '  clbcodigo,'
      '  rchatribuinte'
      'FROM rch where chdchave=:chdchave ')
    Left = 280
    Top = 112
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
end
