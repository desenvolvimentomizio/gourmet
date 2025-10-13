inherited fspt: Tfspt
  Caption = 'Sprint para Teste'
  ClientHeight = 417
  ClientWidth = 724
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 388
    Width = 724
    inherited bconfirma: TBitBtn
      Left = 570
    end
    inherited bcancela: TBitBtn
      Left = 645
    end
    inherited bfechar: TBitBtn
      Left = 505
    end
  end
  inherited paginas: TPageControl
    Width = 724
    Height = 388
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = sptcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = sptdtinicial
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = sptdtfinal
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Usu'#225'rio'
        FocusControl = clbcodigo
      end
      object Spt3: TSplitter
        Left = 0
        Top = 110
        Width = 716
        Height = 3
        Cursor = crVSplit
        CustomHint = BalloonHint
        Align = alBottom
      end
      object sptcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 61
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sptcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object sptdtinicial: TDBEdit
        Left = 136
        Top = 30
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sptdtinicial'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object sptdtfinal: TDBEdit
        Left = 136
        Top = 57
        Width = 77
        Height = 21
        CustomHint = BalloonHint
        DataField = 'sptdtfinal'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object clbcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object bvalidar: TButton
        Left = 620
        Top = 84
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Validar'
        TabOrder = 4
        OnClick = bvalidarClick
      end
      object Plpsh: TPanel
        Left = 0
        Top = 113
        Width = 716
        Height = 247
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 5
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select sptcodigo, sptdtinicial, sptdtfinal, clbcodigo from spt w' +
        'here sptcodigo=:sptcodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'sptcodigo'
        ParamType = ptUnknown
      end>
    Left = 284
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'sptcodigo'
        ParamType = ptUnknown
      end>
    object registrosptcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'sptcodigo'
    end
    object registrosptdtinicial: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'sptdtinicial'
      Required = True
    end
    object registrosptdtfinal: TDateField
      DisplayLabel = 'Data Final'
      FieldName = 'sptdtfinal'
      Required = True
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited cau: tuniquery
    Left = 380
    Top = 240
  end
  object clb: tuniquery
    SQL.Strings = (
      'select clbcodigo, clbidentificacao from clb')
    Params = <>
    Left = 336
    Top = 240
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 50
    end
  end
end
