inherited ftpr: Tftpr
  ActiveControl = tpridentificacao
  Caption = 'Prioridade de Chamados'
  ClientHeight = 162
  ClientWidth = 417
  ExplicitWidth = 433
  ExplicitHeight = 201
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 133
    Width = 417
    inherited bconfirma: TBitBtn
      Left = 263
    end
    inherited bcancela: TBitBtn
      Left = 338
    end
    inherited bfechar: TBitBtn
      Left = 198
    end
  end
  inherited paginas: TPageControl
    Width = 417
    Height = 133
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 376
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = tprcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = tpridentificacao
      end
      object Label5: TLabel
        Left = 8
        Top = 66
        Width = 70
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Sele'#231#227'o de cor'
      end
      object tprcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tprcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tpridentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 153
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tpridentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object plcor: TPanel
        Left = 136
        Top = 57
        Width = 226
        Height = 31
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        Caption = 'Clique para selecionar a cor'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 2
        OnClick = plcorClick
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tprcodigo, tpridentificacao, tprcor from tpr where tprcod' +
        'igo=:tprcodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tprcodigo'
        Value = nil
      end>
    object registrotprcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'tprcodigo'
    end
    object registrotpridentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tpridentificacao'
      Required = True
      Size = 50
    end
    object registrotprcor: TStringField
      DisplayLabel = 'Cor'
      FieldName = 'tprcor'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object ColorDialog: TColorDialog
    Left = 596
    Top = 72
  end
end
