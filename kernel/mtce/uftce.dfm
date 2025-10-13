inherited ftce: Tftce
  ActiveControl = tceanexo
  Caption = 'C'#243'digo CEST'
  ClientHeight = 324
  ExplicitHeight = 363
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 295
  end
  inherited paginas: TPageControl
    Height = 295
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 788
      ExplicitHeight = 307
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 49
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nr. Chave'
        FocusControl = tcechave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Anexo'
        FocusControl = tceanexo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 22
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Item'
        FocusControl = tceitem
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'CEST'
        FocusControl = tcecest
      end
      object Label5: TLabel
        Left = 8
        Top = 114
        Width = 22
        Height = 13
        CustomHint = BalloonHint
        Caption = 'NCM'
        FocusControl = tcencm
      end
      object Label6: TLabel
        Left = 8
        Top = 141
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
        FocusControl = tcencm
      end
      object tcechave: TDBEdit
        Left = 136
        Top = 3
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcechave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tceanexo: TDBEdit
        Left = 136
        Top = 30
        Width = 201
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tceanexo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tceitem: TDBEdit
        Left = 136
        Top = 57
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tceitem'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tcecest: TDBEdit
        Left = 136
        Top = 84
        Width = 105
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcecest'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object tcedescricao: TDBMemo
        Left = 136
        Top = 138
        Width = 537
        Height = 122
        CustomHint = BalloonHint
        DataField = 'tcedescricao'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object tcencm: TDBEdit
        Left = 136
        Top = 111
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tcencm'
        DataSource = DSRegistro
        TabOrder = 4
      end
    end
  end
  inherited cfg: TUniQuery
    Left = 484
    Top = 124
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  tcechave,'
      '  tceanexo,'
      '  tceitem,'
      '  tcecest,'
      '  tcedescricao,'
      '  tcencm'
      'FROM tce where tcechave=:tcechave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcechave'
        Value = nil
      end>
    object registrotcechave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Nr. Chave'
      FieldName = 'tcechave'
    end
    object registrotceanexo: TStringField
      DisplayLabel = 'Anexo'
      FieldName = 'tceanexo'
      Required = True
      Size = 50
    end
    object registrotceitem: TStringField
      DisplayLabel = 'Item'
      FieldName = 'tceitem'
      Required = True
      Size = 50
    end
    object registrotcecest: TStringField
      DisplayLabel = 'CEST'
      FieldName = 'tcecest'
      Required = True
      Size = 50
    end
    object registrotcedescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'tcedescricao'
      Required = True
      Size = 2000
    end
    object registrotcencm: TStringField
      DisplayLabel = 'NCM'
      FieldName = 'tcencm'
      Required = True
      Size = 50
    end
  end
  inherited acoesfrm: TActionList
    Left = 500
    Top = 76
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
