inherited fprj: Tfprj
  ActiveControl = prjidentificacao
  Caption = 'Projeto'
  ClientHeight = 124
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 95
  end
  inherited paginas: TPageControl
    Height = 95
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = prjcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Projeto'
        FocusControl = prjidentificacao
      end
      object prjcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 85
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prjcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object prjidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 470
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prjidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select prjcodigo, prjidentificacao from prj where prjcodigo=:prj' +
        'codigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'prjcodigo'
        Value = nil
      end>
    object registroprjcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'prjcodigo'
    end
    object registroprjidentificacao: TStringField
      DisplayLabel = 'Projeto'
      FieldName = 'prjidentificacao'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
end
