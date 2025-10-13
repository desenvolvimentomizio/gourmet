inherited ftco: Tftco
  Caption = 'Trabalho de Conclus'#227'o'
  ClientHeight = 275
  ClientWidth = 704
  ExplicitWidth = 720
  ExplicitHeight = 314
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 246
    Width = 704
    ExplicitTop = 252
    inherited bconfirma: TBitBtn
      Left = 550
    end
    inherited bcancela: TBitBtn
      Left = 625
    end
    inherited bfechar: TBitBtn
      Left = 485
    end
  end
  inherited paginas: TPageControl
    Width = 704
    Height = 246
    ExplicitHeight = 252
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 788
      ExplicitHeight = 224
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registro'
        FocusControl = tcochave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 112
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fun'#231#227'o do Colaborador'
        FocusControl = vhfcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 143
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de trabalho de conclus'#227'o'
        FocusControl = ttbcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
        FocusControl = tcodescricao
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 80
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Valor da hora R$'
        FocusControl = tcovalorhora
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Horas do trabalho'
        FocusControl = tcohoras
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 130
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha para primeira parcela'
        FocusControl = flhchaveprimeira
      end
      object Label8: TLabel
        Left = 8
        Top = 195
        Width = 133
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Folha para segunda parcela'
        FocusControl = flhchavesegunda
      end
      object tcochave: TDBEdit
        Left = 176
        Top = 3
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcochave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object vhfcodigo: TDBEdit
        Left = 176
        Top = 30
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vhfcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ttbcodigo: TDBEdit
        Left = 176
        Top = 57
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ttbcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tcodescricao: TDBEdit
        Left = 176
        Top = 84
        Width = 505
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcodescricao'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object tcovalorhora: TDBEdit
        Left = 176
        Top = 111
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcovalorhora'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object tcohoras: TDBEdit
        Left = 176
        Top = 138
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcohoras'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object flhchaveprimeira: TDBEdit
        Left = 176
        Top = 165
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchaveprimeira'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object flhchavesegunda: TDBEdit
        Left = 176
        Top = 192
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchavesegunda'
        DataSource = DSRegistro
        TabOrder = 7
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 676
    Top = 176
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcochave,'
      '  vhfcodigo,'
      '  ttbcodigo,'
      '  tcodescricao,'
      '  tcovalorhora,'
      '  tcohoras,'
      '  flhchaveprimeira,'
      '  flhchavesegunda,'
      '  clbcodigo,'
      '  tcoregistro'
      'FROM tco where tcochave=:tcochave')
    Left = 676
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcochave'
        Value = nil
      end>
    object registrotcochave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'tcochave'
    end
    object registrovhfcodigo: TIntegerField
      DisplayLabel = 'Func'#231#227'o do Colaborador'
      FieldName = 'vhfcodigo'
      Required = True
    end
    object registrovhfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'vhfidentificacao'
      LookupDataSet = vhf
      LookupKeyFields = 'vhfcodigo'
      LookupResultField = 'vhfidentificacao'
      KeyFields = 'vhfcodigo'
      Size = 50
      Lookup = True
    end
    object registrottbcodigo: TIntegerField
      DisplayLabel = 'Tipo de trabalho de conclus'#227'o'
      FieldName = 'ttbcodigo'
      Required = True
    end
    object registrottbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'ttbidentificacao'
      LookupDataSet = ttb
      LookupKeyFields = 'ttbcodigo'
      LookupResultField = 'ttbidentificacao'
      KeyFields = 'ttbcodigo'
      Size = 50
      Lookup = True
    end
    object registrotcodescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tcodescricao'
      Size = 50
    end
    object registrotcovalorhora: TFloatField
      DisplayLabel = 'Valor da hora R$'
      FieldName = 'tcovalorhora'
      Required = True
    end
    object registrotcohoras: TTimeField
      DisplayLabel = 'Horas do trbalho'
      FieldName = 'tcohoras'
      Required = True
    end
    object registroflhchaveprimeira: TIntegerField
      DisplayLabel = 'Folha para primeira parcela'
      FieldName = 'flhchaveprimeira'
      Required = True
    end
    object registroflhflhchaveprimeira: TStringField
      FieldKind = fkLookup
      FieldName = 'flhflhchaveprimeira'
      LookupDataSet = flh
      LookupKeyFields = 'flhchave'
      LookupResultField = 'flhidentificacao'
      KeyFields = 'flhchaveprimeira'
      Size = 50
      Lookup = True
    end
    object registroflhchavesegunda: TIntegerField
      DisplayLabel = 'Folha para segunda parcela'
      FieldName = 'flhchavesegunda'
      Required = True
    end
    object registroflhflhchavesegunda: TStringField
      FieldKind = fkLookup
      FieldName = 'flhflhchavesegunda'
      LookupDataSet = flh
      LookupKeyFields = 'flhchave'
      LookupResultField = 'flhidentificacao'
      KeyFields = 'flhchavesegunda'
      Size = 50
      Lookup = True
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotcoregistro: TDateTimeField
      FieldName = 'tcoregistro'
    end
  end
  inherited dcp: TUniQuery
    Left = 176
    Top = 268
  end
  inherited dtb: TUniQuery
    Left = 100
    Top = 268
  end
  inherited coa: TUniQuery
    Left = 256
    Top = 292
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object vhf: TUniQuery
    SQL.Strings = (
      
        'SELECT vhf.vhfcodigo, (CONCAT(etdidentificacao,'#39' - '#39', fclidentif' +
        'icacao)) vhfidentificacao from '
      
        ' vhf,fcl,etd, anf, dtr,ffh, tth where fcl.tthcodigo=tth.tthcodig' +
        'o and  etd.etdcodigo=dtr.etdcodigo and dtr.ffhcodigo=ffh.ffhcodi' +
        'go and vhf.anfcodigo=anf.anfcodigo and vhf.etdcodigo=etd.etdcodi' +
        'go and vhf.fclcodigo=fcl.fclcodigo'
      ''
      ''
      '')
    Left = 372
    Top = 208
    object vhfvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object vhfvhfidentificacao: TStringField
      FieldName = 'vhfidentificacao'
      Size = 50
    end
  end
  object ttb: TUniQuery
    SQL.Strings = (
      'select ttbcodigo, ttbidentificacao from ttb')
    Left = 484
    Top = 320
    object ttbttbidentificacao: TStringField
      FieldName = 'ttbidentificacao'
      Size = 50
    end
    object ttbttbcodigo: TIntegerField
      FieldName = 'ttbcodigo'
    end
  end
  object flh: TUniQuery
    SQL.Strings = (
      'select flhchave, flhidentificacao from flh')
    Left = 308
    Top = 360
    object flhflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object flhflhidentificacao: TStringField
      FieldName = 'flhidentificacao'
      Size = 50
    end
  end
end
