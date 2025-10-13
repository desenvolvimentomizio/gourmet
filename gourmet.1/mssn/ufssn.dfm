inherited fssn: Tfssn
  ActiveControl = ssnfaturamento
  Caption = 'Tabela de C'#225'lculo para Faixa do Simples Nacional'
  ClientHeight = 204
  ClientWidth = 403
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 175
    Width = 403
    inherited bconfirma: TBitBtn
      Left = 249
    end
    inherited bcancela: TBitBtn
      Left = 324
    end
    inherited bfechar: TBitBtn
      Left = 184
    end
  end
  inherited paginas: TPageControl
    Width = 403
    Height = 175
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 23
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = ssncodigo
      end
      object Label2: TLabel
        Left = 23
        Top = 32
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Faturamento'
        FocusControl = ssnfaturamento
      end
      object Label3: TLabel
        Left = 23
        Top = 60
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Simples'
        FocusControl = ssnaliquota
      end
      object Label4: TLabel
        Left = 183
        Top = 60
        Width = 22
        Height = 13
        CustomHint = BalloonHint
        Caption = 'IRPJ'
        FocusControl = ssnirpj
      end
      object Label5: TLabel
        Left = 298
        Top = 60
        Width = 23
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CSLL'
        FocusControl = ssncsll
      end
      object Label8: TLabel
        Left = 302
        Top = 87
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CPP'
        FocusControl = ssncpp
      end
      object Label7: TLabel
        Left = 189
        Top = 87
        Width = 16
        Height = 13
        CustomHint = BalloonHint
        Caption = 'PIS'
        FocusControl = ssnpis
      end
      object Label6: TLabel
        Left = 23
        Top = 87
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'COFINS'
        FocusControl = ssncofins
      end
      object Label9: TLabel
        Left = 23
        Top = 114
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'ICMS'
        FocusControl = ssnicms
      end
      object ssncodigo: TDBEdit
        Left = 95
        Top = 3
        Width = 58
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssncodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ssnfaturamento: TDBEdit
        Left = 95
        Top = 30
        Width = 290
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssnfaturamento'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object ssnaliquota: TDBEdit
        Left = 95
        Top = 57
        Width = 58
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssnaliquota'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object ssnirpj: TDBEdit
        Left = 211
        Top = 57
        Width = 58
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssnirpj'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object ssncsll: TDBEdit
        Left = 327
        Top = 57
        Width = 58
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssncsll'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object ssncpp: TDBEdit
        Left = 327
        Top = 84
        Width = 58
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssncpp'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object ssnpis: TDBEdit
        Left = 211
        Top = 84
        Width = 58
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssnpis'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object ssncofins: TDBEdit
        Left = 95
        Top = 84
        Width = 58
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssncofins'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object ssnicms: TDBEdit
        Left = 95
        Top = 111
        Width = 58
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ssnicms'
        DataSource = DSRegistro
        TabOrder = 8
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 148
    Top = 228
  end
  inherited cfg: TUniQuery
    Left = 284
    Top = 188
  end
  inherited consulta: TUniQuery
    Left = 212
    Top = 184
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select ssncodigo,ssnfaturamento,ssnaliquota,ssnirpj,ssncsll,ssnc' +
        'ofins,ssnpis,ssncpp,ssnicms from ssn'
      'where ssncodigo=:ssncodigo')
    Left = 148
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ssncodigo'
        Value = nil
      end>
    object registrossncodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'ssncodigo'
      Required = True
    end
    object registrossnfaturamento: TStringField
      DisplayLabel = 'Faturamento'
      FieldName = 'ssnfaturamento'
      Required = True
      Size = 50
    end
    object registrossnaliquota: TFloatField
      DisplayLabel = 'Simples'
      FieldName = 'ssnaliquota'
      Required = True
    end
    object registrossnirpj: TFloatField
      DisplayLabel = 'IRPJ'
      FieldName = 'ssnirpj'
      Required = True
    end
    object registrossncsll: TFloatField
      DisplayLabel = 'CSLL'
      FieldName = 'ssncsll'
      Required = True
    end
    object registrossncofins: TFloatField
      DisplayLabel = 'COFINS'
      FieldName = 'ssncofins'
      Required = True
    end
    object registrossnpis: TFloatField
      DisplayLabel = 'PIS'
      FieldName = 'ssnpis'
      Required = True
    end
    object registrossncpp: TFloatField
      DisplayLabel = 'CPP'
      FieldName = 'ssncpp'
      Required = True
    end
    object registrossnicms: TFloatField
      DisplayLabel = 'ICMS'
      FieldName = 'ssnicms'
      Required = True
    end
  end
  inherited pfr: TUniQuery
    Left = 328
    Top = 188
  end
  inherited psf: TUniQuery
    Left = 372
    Top = 188
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
