inherited fpde: Tfpde
  ActiveControl = pdeidentificacao
  Caption = 'Pr'#233'dio do Endere'#231'amento de Produtos'
  ClientHeight = 141
  ClientWidth = 364
  ExplicitWidth = 380
  ExplicitHeight = 180
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 112
    Width = 364
    ExplicitTop = 112
    ExplicitWidth = 364
    inherited bconfirma: TBitBtn
      Left = 210
      ExplicitLeft = 210
    end
    inherited bcancela: TBitBtn
      Left = 285
      ExplicitLeft = 285
    end
    inherited bfechar: TBitBtn
      Left = 145
      ExplicitLeft = 145
    end
  end
  inherited paginas: TPageControl
    Width = 364
    Height = 112
    ExplicitWidth = 364
    ExplicitHeight = 112
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 356
      ExplicitHeight = 84
      object Label1: TLabel
        Left = 15
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = pdecodigo
      end
      object Label2: TLabel
        Left = 15
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = pdeidentificacao
      end
      object pdecodigo: TDBEdit
        Left = 120
        Top = 3
        Width = 67
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pdecodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object pdeidentificacao: TDBEdit
        Left = 120
        Top = 30
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'pdeidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  pde.pdecodigo,'
      '  pde.pdeidentificacao'
      'FROM pde'
      'WHERE pde.pdecodigo = :pdecodigo')
    Left = 252
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pdecodigo'
        Value = nil
      end>
    object registropdecodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'pdecodigo'
    end
    object registropdeidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'pdeidentificacao'
      Required = True
      Size = 4
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
