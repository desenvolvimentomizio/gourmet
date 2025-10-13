inherited fdsr: Tfdsr
  ActiveControl = dsridentificacao
  Caption = 'Descanso Semanal Remunerado'
  ClientHeight = 174
  ClientWidth = 549
  ExplicitWidth = 565
  ExplicitHeight = 213
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 145
    Width = 549
    inherited bconfirma: TBitBtn
      Left = 395
    end
    inherited bcancela: TBitBtn
      Left = 470
    end
    inherited bfechar: TBitBtn
      Left = 330
    end
  end
  inherited paginas: TPageControl
    Width = 549
    Height = 145
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 26
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento da Folha'
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 78
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Hist'#243'rico Padr'#227'o'
      end
      object dsrcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dsrcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object dsridentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 385
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dsridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object evfcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'evfcodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object phgcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'phgcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dsrcodigo,'
      '  dsridentificacao,'
      '  dsrprocedimento,'
      '  evfcodigo,'
      '  phgcodigo'
      'FROM dsr where dsrcodigo=:dsrcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dsrcodigo'
        Value = nil
      end>
    object registrodsrcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'dsrcodigo'
    end
    object registrodsridentificacao: TStringField
      DisplayLabel = 'Identifca'#231#227'o do DSR'
      FieldName = 'dsridentificacao'
      Required = True
      Size = 50
    end
    object registroevfcodigo: TIntegerField
      DisplayLabel = 'Evento Folha'
      FieldName = 'evfcodigo'
      Required = True
    end
    object registrophgcodigo: TIntegerField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'phgcodigo'
      Required = True
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
