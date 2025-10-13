inherited fals: Tfals
  ActiveControl = edSenhaAtual
  Caption = 'Altera'#231#227'o de Senha'
  ClientHeight = 172
  ClientWidth = 294
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 143
    Width = 294
    inherited bconfirma: TBitBtn
      Left = 140
    end
    inherited bcancela: TBitBtn
      Left = 215
    end
    inherited bfechar: TBitBtn
      Left = 75
    end
  end
  inherited paginas: TPageControl
    Width = 294
    Height = 143
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Senha Atual'
      end
      object Label2: TLabel
        Left = 8
        Top = 43
        Width = 58
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nova Senha'
      end
      object Label3: TLabel
        Left = 8
        Top = 70
        Width = 108
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Confirma'#231#227'o da Senha'
      end
      object edSenhaAtual: TEdit
        Left = 144
        Top = 3
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        Color = clYellow
        PasswordChar = '#'
        TabOrder = 0
        OnExit = edSenhaAtualExit
        OnKeyPress = FormKeyPress
      end
      object edSenhaNova: TEdit
        Left = 144
        Top = 40
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        Color = clYellow
        PasswordChar = '#'
        TabOrder = 1
        OnExit = edSenhaNovaExit
        OnKeyPress = FormKeyPress
      end
      object edSenhaConfirmacao: TEdit
        Left = 144
        Top = 67
        Width = 121
        Height = 21
        CustomHint = BalloonHint
        Color = clYellow
        PasswordChar = '#'
        TabOrder = 2
        OnExit = edSenhaConfirmacaoExit
        OnKeyPress = FormKeyPress
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Top = 56
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  alschave,'
      '  alsalteracao,'
      '  clbcodigo,'
      '  alssenhaanterior'
      'FROM als where alschave=:alschave')
    BeforePost = registroBeforePost
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'alschave'
        Value = nil
      end>
    object registroalschave: TIntegerField
      FieldName = 'alschave'
    end
    object registroalsalteracao: TDateTimeField
      FieldName = 'alsalteracao'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroalssenhaanterior: TStringField
      FieldName = 'alssenhaanterior'
      Size = 255
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object als: TUniQuery
    Left = 112
    Top = 40
  end
end
