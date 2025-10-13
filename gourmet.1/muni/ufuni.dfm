inherited funi: Tfuni
  ActiveControl = unisimbolo
  Caption = 'Unidade'
  ClientHeight = 153
  ClientWidth = 335
  ExplicitWidth = 351
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 124
    Width = 335
    ExplicitTop = 124
    ExplicitWidth = 335
    inherited bconfirma: TBitBtn
      Left = 181
      ExplicitLeft = 181
    end
    inherited bcancela: TBitBtn
      Left = 256
      ExplicitLeft = 256
    end
    inherited bfechar: TBitBtn
      Left = 116
      ExplicitLeft = 116
    end
  end
  inherited paginas: TPageControl
    Width = 335
    Height = 124
    ExplicitWidth = 335
    ExplicitHeight = 124
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = unicodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 39
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Unidade'
        FocusControl = uninome
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'S'#237'mbolo'
        FocusControl = unisimbolo
      end
      object unicodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'unicodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object unisimbolo: TDBEdit
        Left = 136
        Top = 30
        Width = 43
        Height = 21
        CustomHint = BalloonHint
        DataField = 'unisimbolo'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = unisimboloExit
      end
      object uninome: TDBEdit
        Left = 136
        Top = 57
        Width = 171
        Height = 21
        CustomHint = BalloonHint
        DataField = 'uninome'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Left = 251
    Caption = '00-00-001'
    ExplicitLeft = 251
  end
  inherited consulta: TUniQuery
    Left = 252
    Top = 28
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select * from uni where unicodigo=:unicodigo')
    Left = 216
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'unicodigo'
        Value = nil
      end>
    object registrounicodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'unicodigo'
    end
    object registrounisimbolo: TStringField
      DisplayLabel = 'S'#237'mbolo'
      FieldName = 'unisimbolo'
      Required = True
      Size = 6
    end
    object registrouninome: TStringField
      DisplayLabel = 'Unidade'
      FieldName = 'uninome'
      Required = True
    end
    object registrotuncodigo: TIntegerField
      FieldName = 'tuncodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
