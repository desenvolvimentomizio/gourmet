inherited fmdv: Tfmdv
  ActiveControl = mdvdescricao
  Caption = 'Vers'#227'o do M'#243'dulo'
  ClientHeight = 552
  ClientWidth = 879
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 523
    Width = 879
    inherited bconfirma: TBitBtn
      Left = 725
    end
    inherited bcancela: TBitBtn
      Left = 800
    end
    inherited bfechar: TBitBtn
      Left = 660
    end
  end
  inherited paginas: TPageControl
    Width = 879
    Height = 523
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 31
        Height = 13
        Caption = 'Chave'
        FocusControl = mdvchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 46
        Height = 13
        Caption = 'Descri'#231#227'o'
        FocusControl = mdvchave
      end
      object Spt1: TSplitter
        Left = 0
        Top = 160
        Width = 871
        Height = 8
        Cursor = crVSplit
        Align = alBottom
      end
      object mdvchave: TDBEdit
        Left = 136
        Top = 3
        Width = 89
        Height = 21
        DataField = 'mdvchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object mdvdescricao: TDBMemo
        Left = 136
        Top = 30
        Width = 609
        Height = 115
        DataField = 'mdvdescricao'
        DataSource = DSRegistro
        ScrollBars = ssVertical
        TabOrder = 1
      end
      object bvalidar: TButton
        Left = 768
        Top = 120
        Width = 75
        Height = 25
        Caption = 'Validar'
        TabOrder = 2
        OnClick = bvalidarClick
      end
      object Plfns: TPanel
        Left = 0
        Top = 168
        Width = 871
        Height = 327
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 3
      end
    end
  end
  inherited cfg: tuniquery
    Left = 460
    Top = 84
  end
  inherited registro: tuniquery
    AfterInsert = registroAfterInsert
    SQL.Strings = (
      
        'select mdvchave, mdv.mdacodigo, mdvdescricao from mdv where  mdv' +
        '.mdvchave=:mdvchave and mdv.mdacodigo=:mdacodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'mdvchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mdacodigo'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdvchave'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mdacodigo'
        ParamType = ptUnknown
      end>
    object registromdvchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'mdvchave'
    end
    object registromdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object registromdvdescricao: TStringField
      FieldName = 'mdvdescricao'
      Size = 2000
    end
  end
  inherited cau: tuniquery
    Left = 64
    Top = 144
  end
end
