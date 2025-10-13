inherited fbrd: Tfbrd
  ActiveControl = brdidentificacao
  Caption = 'Complemento ou Base'
  ClientHeight = 153
  ClientWidth = 584
  ExplicitWidth = 600
  ExplicitHeight = 192
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 124
    Width = 584
    ExplicitTop = 124
    ExplicitWidth = 584
    inherited bconfirma: TBitBtn
      Left = 430
      ExplicitLeft = 430
    end
    inherited bcancela: TBitBtn
      Left = 505
      ExplicitLeft = 505
    end
    inherited bfechar: TBitBtn
      Left = 365
      ExplicitLeft = 365
    end
  end
  inherited paginas: TPageControl
    Width = 584
    Height = 124
    ExplicitWidth = 584
    ExplicitHeight = 124
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 576
      ExplicitHeight = 96
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = brdcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = brdidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Produto vinculado'
        FocusControl = procodigo
      end
      object brdcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'brdcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object brdidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 422
        Height = 21
        CustomHint = BalloonHint
        DataField = 'brdidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object procodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 65
        Height = 21
        CustomHint = BalloonHint
        DataField = 'procodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select brdcodigo, brdidentificacao, procodigo from brd where brd' +
        'codigo=:brdcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'brdcodigo'
        Value = nil
      end>
    object registrobrdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'brdcodigo'
    end
    object registrobrdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'brdidentificacao'
      Required = True
      Size = 50
    end
    object registroprocodigo: TIntegerField
      DisplayLabel = 'Produto'
      FieldName = 'procodigo'
      Required = True
    end
    object registropronome: TStringField
      FieldKind = fkLookup
      FieldName = 'pronome'
      LookupDataSet = pro
      LookupKeyFields = 'procodigo'
      LookupResultField = 'pronome'
      KeyFields = 'procodigo'
      Size = 50
      Lookup = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object pro: TUniQuery
    SQL.Strings = (
      'select procodigo, pronome from pro')
    Left = 184
    Top = 216
    object proprocodigo: TIntegerField
      FieldName = 'procodigo'
    end
    object propronome: TStringField
      FieldName = 'pronome'
      Size = 50
    end
  end
end
