inherited ffop: Tffop
  ActiveControl = fopidentificacao
  Caption = 'Formas de Pagamento'
  ClientHeight = 192
  ClientWidth = 709
  ExplicitWidth = 725
  ExplicitHeight = 231
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 163
    Width = 709
    ExplicitTop = 163
    ExplicitWidth = 709
    inherited bconfirma: TBitBtn
      Left = 555
      ExplicitLeft = 555
    end
    inherited bcancela: TBitBtn
      Left = 630
      ExplicitLeft = 630
    end
    inherited bfechar: TBitBtn
      Left = 490
      ExplicitLeft = 490
    end
  end
  inherited paginas: TPageControl
    Width = 709
    Height = 163
    ExplicitWidth = 709
    ExplicitHeight = 163
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 701
      ExplicitHeight = 135
      object Label1: TLabel
        Left = 8
        Top = 16
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = fopcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 43
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = fopidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 72
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tfpcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 101
        Width = 26
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Juros'
        FocusControl = fopjuros
      end
      object Label5: TLabel
        Left = 224
        Top = 101
        Width = 45
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desconto'
        FocusControl = fopdesc
      end
      object Label6: TLabel
        Left = 354
        Top = 101
        Width = 52
        Height = 13
        CustomHint = BalloonHint
        Caption = '% Entrada'
        FocusControl = foppercentra
      end
      object Label7: TLabel
        Left = 499
        Top = 101
        Width = 40
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Parcelas'
        FocusControl = fopnumparc
      end
      object Label8: TLabel
        Left = 608
        Top = 101
        Width = 44
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Intervalo'
        FocusControl = fopintervalo
      end
      object fopcodigo: TDBEdit
        Left = 136
        Top = 13
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fopcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object fopidentificacao: TDBEdit
        Left = 136
        Top = 40
        Width = 553
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fopidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tfpcodigo: TDBEdit
        Left = 136
        Top = 69
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tfpcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object fopjuros: TDBEdit
        Left = 136
        Top = 98
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fopjuros'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object fopdesc: TDBEdit
        Left = 275
        Top = 98
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fopdesc'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object foppercentra: TDBEdit
        Left = 412
        Top = 98
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'foppercentra'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object fopnumparc: TDBEdit
        Left = 545
        Top = 98
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fopnumparc'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object fopintervalo: TDBEdit
        Left = 658
        Top = 98
        Width = 31
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fopintervalo'
        DataSource = DSRegistro
        TabOrder = 7
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 612
    Top = 212
  end
  inherited cfg: TUniQuery
    Left = 604
    Top = 252
  end
  inherited consulta: TUniQuery
    Left = 532
    Top = 248
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select fopcodigo,fopidentificacao,tfpcodigo,fopjuros,fopdesc,fop' +
        'percentra,fopnumparc,fopintervalo from fop '
      '       where fop.fopcodigo=:fopcodigo')
    Left = 596
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fopcodigo'
        Value = nil
      end>
    object registrofopcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'fopcodigo'
      Required = True
    end
    object registrofopidentificacao: TStringField
      FieldName = 'fopidentificacao'
      Size = 50
    end
    object registrotfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
      Required = True
    end
    object registrotfpidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tfpidentificacao'
      LookupDataSet = tfp
      LookupKeyFields = 'tfpcodigo'
      LookupResultField = 'tfpidentificacao'
      KeyFields = 'tfpcodigo'
      Size = 50
      Lookup = True
    end
    object registrofopjuros: TFloatField
      DefaultExpression = '0'
      FieldName = 'fopjuros'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registrofopdesc: TFloatField
      DefaultExpression = '0'
      FieldName = 'fopdesc'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registrofoppercentra: TFloatField
      DefaultExpression = '0'
      FieldName = 'foppercentra'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registrofopnumparc: TIntegerField
      DefaultExpression = '0'
      FieldName = 'fopnumparc'
      Required = True
    end
    object registrofopintervalo: TIntegerField
      DefaultExpression = '0'
      FieldName = 'fopintervalo'
      Required = True
    end
  end
  inherited dcp: TUniQuery
    Left = 628
    Top = 336
  end
  inherited dtb: TUniQuery
    Left = 592
    Top = 336
  end
  inherited coa: TUniQuery
    Left = 556
    Top = 336
  end
  inherited pfr: TUniQuery
    Left = 668
    Top = 252
  end
  inherited psf: TUniQuery
    Left = 716
    Top = 252
  end
  inherited dcl: TUniQuery
    Left = 588
    Top = 300
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tfp: TUniQuery
    SQL.Strings = (
      'select tfpcodigo,tfpidentificacao from tfp')
    Left = 648
    Top = 40
    object tfptfpcodigo: TIntegerField
      FieldName = 'tfpcodigo'
    end
    object tfptfpidentificacao: TStringField
      FieldName = 'tfpidentificacao'
      Size = 50
    end
  end
end
