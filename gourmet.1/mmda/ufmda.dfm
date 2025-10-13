inherited fmda: Tfmda
  ActiveControl = mdaidentificacao
  Caption = 'M'#243'dulos'
  ClientHeight = 344
  ClientWidth = 713
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 315
    Width = 713
    inherited bconfirma: TBitBtn
      Left = 559
    end
    inherited bcancela: TBitBtn
      Left = 634
    end
    inherited bfechar: TBitBtn
      Left = 494
    end
  end
  inherited paginas: TPageControl
    Width = 713
    Height = 315
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        Caption = 'C'#243'digo'
        FocusControl = mdacodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        Caption = 'Identifica'#231#227'o'
        FocusControl = mdaidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 86
        Height = 13
        Caption = 'Nome arquivo BPL'
        FocusControl = mdabpl
      end
      object Spt1: TSplitter
        Left = 0
        Top = 101
        Width = 705
        Height = 7
        Cursor = crVSplit
        Align = alBottom
      end
      object mdacodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 85
        Height = 21
        DataField = 'mdacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object mdaidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 557
        Height = 21
        DataField = 'mdaidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object mdabpl: TDBEdit
        Left = 136
        Top = 57
        Width = 281
        Height = 21
        DataField = 'mdabpl'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object bvalidar: TButton
        Left = 436
        Top = 57
        Width = 75
        Height = 21
        Caption = 'Validar'
        TabOrder = 3
        OnClick = bvalidarClick
      end
      object PlmdV: TPanel
        Left = 0
        Top = 108
        Width = 705
        Height = 179
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 4
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select mdacodigo, mdaidentificacao, mdabpl from mda where mdacod' +
        'igo=:mdacodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'mdacodigo'
        ParamType = ptUnknown
      end>
    Left = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdacodigo'
        ParamType = ptUnknown
      end>
    object registromdacodigo: TIntegerField
      FieldName = 'mdacodigo'
    end
    object registromdaidentificacao: TStringField
      FieldName = 'mdaidentificacao'
      Required = True
      Size = 50
    end
    object registromdabpl: TStringField
      FieldName = 'mdabpl'
      Required = True
      Size = 35
    end
  end
end
