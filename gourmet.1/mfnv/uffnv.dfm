inherited ffnv: Tffnv
  ActiveControl = fnvdescricao
  Caption = 'Vers'#227'o da Fun'#231#227'o'
  ClientHeight = 241
  ClientWidth = 877
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 212
    Width = 877
    inherited bconfirma: TBitBtn
      Left = 723
    end
    inherited bcancela: TBitBtn
      Left = 798
    end
    inherited bfechar: TBitBtn
      Left = 658
    end
  end
  inherited paginas: TPageControl
    Width = 877
    Height = 212
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        Caption = 'Chave'
        FocusControl = fnvchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
      end
      object Label3: TLabel
        Left = 8
        Top = 158
        Width = 33
        Height = 13
        Caption = 'Vers'#227'o'
        FocusControl = fnvversao
      end
      object fnvchave: TDBEdit
        Left = 136
        Top = 3
        Width = 65
        Height = 21
        DataField = 'fnvchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object fnvdescricao: TDBMemo
        Left = 136
        Top = 30
        Width = 577
        Height = 119
        DataField = 'fnvdescricao'
        DataSource = DSRegistro
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object fnvversao: TDBEdit
        Left = 136
        Top = 155
        Width = 65
        Height = 21
        DataField = 'fnvversao'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: tunidatasource
    Left = 368
    Top = 164
  end
  inherited cfg: tuniquery
    Left = 468
    Top = 84
  end
  inherited consulta: tuniquery
    Left = 428
    Top = 80
  end
  inherited registro: tuniquery
    AfterInsert = registroAfterInsert
    SQL.Strings = (
      
        'select fnvchave, fnvdescricao, fnscodigo, fnvversao from fnv whe' +
        're fnscodigo=:fnscodigo and fnvchave=:fnvchave')
    Params = <
      item
        DataType = ftUnknown
        Name = 'fnscodigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fnvchave'
        ParamType = ptUnknown
      end>
    Left = 372
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fnscodigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fnvchave'
        ParamType = ptUnknown
      end>
    object registrofnvchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'fnvchave'
      Required = True
    end
    object registrofnscodigo: TIntegerField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'fnscodigo'
      Required = True
    end
    object registrofnvdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'fnvdescricao'
      Size = 2000
    end
    object registrofnvversao: TIntegerField
      DisplayLabel = 'Vers'#227'o'
      FieldName = 'fnvversao'
      Required = True
    end
  end
end
