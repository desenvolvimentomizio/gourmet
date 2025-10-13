inherited fdcp: Tfdcp
  Caption = 'Descri'#231#227'o de Campo'
  ClientHeight = 283
  ClientWidth = 490
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 254
    Width = 490
    inherited bconfirma: TBitBtn
      Left = 336
    end
    inherited bcancela: TBitBtn
      Left = 411
    end
    inherited bfechar: TBitBtn
      Left = 271
    end
  end
  inherited paginas: TPageControl
    Width = 490
    Height = 254
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = dcpcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 32
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Campo'
        FocusControl = dcpcampo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
      end
      object Label4: TLabel
        Left = 16
        Top = 202
        Width = 54
        Height = 13
        CustomHint = BalloonHint
        Caption = 'SPED Fiscal'
      end
      object dcpcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object dcpcampo: TDBEdit
        Left = 136
        Top = 30
        Width = 342
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcpcampo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object dcpdescricao: TDBMemo
        Left = 136
        Top = 57
        Width = 342
        Height = 136
        CustomHint = BalloonHint
        DataField = 'dcpdescricao'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object dcpspedfiscal: TDBEdit
        Left = 136
        Top = 199
        Width = 25
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dcpspedfiscal'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: tuniquery
    SQL.Strings = (
      
        'select dcpcodigo,dcpcampo,dcpdescricao,dcpspedfiscal from dcp wh' +
        'ere dcp.dcpcodigo=:dcpcodigo')
    Params = <
      item
        DataType = ftUnknown
        Name = 'dcpcodigo'
        ParamType = ptUnknown
      end>
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dcpcodigo'
        ParamType = ptUnknown
      end>
    object registrodcpcodigo: TIntegerField
      FieldName = 'dcpcodigo'
      Required = True
    end
    object registrodcpcampo: TStringField
      FieldName = 'dcpcampo'
      Size = 50
    end
    object registrodcpdescricao: TStringField
      FieldName = 'dcpdescricao'
      Size = 250
    end
    object registrodcpspedfiscal: TIntegerField
      FieldName = 'dcpspedfiscal'
    end
    object registrosenspedfiscal: TStringField
      FieldKind = fkLookup
      FieldName = 'senspedfiscal'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'dcpspedfiscal'
      Required = True
      Size = 5
      Lookup = True
    end
  end
  inherited dcp: tuniquery
    Left = 364
    Top = 168
  end
  inherited dtb: tuniquery
    Left = 328
    Top = 168
  end
  inherited coa: tuniquery
    Left = 292
    Top = 168
  end
  inherited dcl: tuniquery
    Left = 412
    Top = 172
  end
  object sen: tuniquery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Params = <>
    Left = 496
    Top = 136
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
end
