inherited fajd: Tfajd
  ActiveControl = cfgdtinictb
  Caption = 'Ajuste de Datas'
  ClientHeight = 404
  ClientWidth = 714
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 375
    Width = 714
    inherited bconfirma: TBitBtn
      Left = 560
    end
    inherited bcancela: TBitBtn
      Left = 635
    end
    inherited bfechar: TBitBtn
      Left = 495
    end
  end
  inherited paginas: TPageControl
    Width = 714
    Height = 375
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 12
        Top = 6
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = cfgdtinictb
      end
      object Label2: TLabel
        Left = 12
        Top = 33
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = cfgdtfinctb
      end
      object cfgdtinictb: TDBEdit
        Left = 136
        Top = 3
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgdtinictb'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object cfgdtfinctb: TDBEdit
        Left = 136
        Top = 30
        Width = 101
        Height = 21
        CustomHint = BalloonHint
        DataField = 'cfgdtfinctb'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '03.06.81.006-01'
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select cfgdtinictb, cfgdtfinctb from cfg where cfgcodigo=:cfgcod' +
        'igo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cfgcodigo'
        Value = nil
      end>
    object registrocfgdtinictb: TDateField
      DisplayLabel = 'Data Inicial'
      FieldName = 'cfgdtinictb'
    end
    object registrocfgdtfinctb: TDateField
      FieldName = 'cfgdtfinctb'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object cfgmsai: TUniQuery
    SQL.Strings = (
      'select cfgcodigo, cfgnumepedido from cfgmsai')
    Left = 368
    Top = 196
    object cfgmsaicfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgmsaicfgnumepedido: TIntegerField
      FieldName = 'cfgnumepedido'
    end
  end
end
