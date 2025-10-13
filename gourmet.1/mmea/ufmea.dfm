inherited fmea: Tfmea
  ActiveControl = meamotivo
  Caption = 'Motivo para Estorno'
  ClientHeight = 149
  ClientWidth = 733
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 120
    Width = 733
    inherited bconfirma: TBitBtn
      Left = 579
    end
    inherited bcancela: TBitBtn
      Left = 654
    end
    inherited bfechar: TBitBtn
      Left = 514
    end
  end
  inherited paginas: TPageControl
    Width = 733
    Height = 120
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = meacodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o do Motivo'
        FocusControl = meacodigo
      end
      object meacodigo: TDBEdit
        Left = 148
        Top = 3
        Width = 109
        Height = 21
        CustomHint = BalloonHint
        DataField = 'meacodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 627
  end
  object meamotivo: TDBMemo [3]
    Left = 152
    Top = 54
    Width = 565
    Height = 51
    CustomHint = BalloonHint
    DataField = 'meamotivo'
    DataSource = DSRegistro
    MaxLength = 250
    TabOrder = 3
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select meacodigo, meamotivo from mea where meacodigo=:meacodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meacodigo'
        Value = nil
      end>
    object registromeacodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'meacodigo'
    end
    object registromeamotivo: TStringField
      DisplayLabel = 'Motivo do Estorno'
      FieldName = 'meamotivo'
      Required = True
      Size = 250
    end
  end
  inherited acoesfrm: TActionList
    Left = 388
    Top = 28
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
