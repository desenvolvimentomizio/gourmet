inherited ftso: Tftso
  ActiveControl = tsoemail
  Caption = 'Contato'
  ClientHeight = 171
  ClientWidth = 581
  ExplicitWidth = 597
  ExplicitHeight = 210
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 142
    Width = 581
    inherited bconfirma: TBitBtn
      Left = 427
    end
    inherited bcancela: TBitBtn
      Left = 502
    end
    inherited bfechar: TBitBtn
      Left = 362
    end
  end
  inherited paginas: TPageControl
    Width = 581
    Height = 142
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 788
      ExplicitHeight = 218
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 24
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Email'
        FocusControl = tsoemail
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Telefone'
        FocusControl = tsotelefone
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome do Contato'
        FocusControl = tsoidentificacao
      end
      object Label4: TLabel
        Left = 8
        Top = 87
        Width = 41
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Empresa'
        FocusControl = tsoempresa
      end
      object tsoemail: TDBEdit
        Left = 136
        Top = 3
        Width = 425
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tsoemail'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tsotelefone: TDBEdit
        Left = 136
        Top = 30
        Width = 161
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tsotelefone'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object tsoidentificacao: TDBEdit
        Left = 136
        Top = 57
        Width = 241
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tsoidentificacao'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object tsoempresa: TDBEdit
        Left = 136
        Top = 84
        Width = 425
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tsoempresa'
        DataSource = DSRegistro
        TabOrder = 3
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 292
    Top = 232
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select tsoemail, tsotelefone, tsoidentificacao, tsoempresa from ' +
        'tso where tsoemail=:tsoemail')
    Left = 292
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tsoemail'
        Value = nil
      end>
    object registrotsoemail: TStringField
      DisplayLabel = 'Email'
      FieldName = 'tsoemail'
      Required = True
      Size = 200
    end
    object registrotsotelefone: TStringField
      DisplayLabel = 'Telefone'
      FieldName = 'tsotelefone'
      Required = True
    end
    object registrotsoidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'tsoidentificacao'
      Required = True
      Size = 50
    end
    object registrotsoempresa: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'tsoempresa'
      Size = 250
    end
  end
  inherited psf: TUniQuery
    Left = 600
    Top = 140
  end
  inherited acoesfrm: TActionList
    Left = 396
    Top = 148
  end
  inherited ImgBusca: TPngImageList
    Left = 348
    Top = 65512
    Bitmap = {}
  end
end
