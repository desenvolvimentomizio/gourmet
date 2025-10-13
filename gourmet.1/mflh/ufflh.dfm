inherited fflh: Tfflh
  ActiveControl = tflcodigo
  Caption = 'Folha Gerencial'
  ClientHeight = 565
  ClientWidth = 866
  ExplicitWidth = 882
  ExplicitHeight = 604
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 536
    Width = 866
    ExplicitTop = 536
    ExplicitWidth = 866
    inherited bconfirma: TBitBtn
      Left = 712
      ExplicitLeft = 712
    end
    inherited bcancela: TBitBtn
      Left = 787
      ExplicitLeft = 787
    end
    inherited bfechar: TBitBtn
      Left = 647
      ExplicitLeft = 647
    end
  end
  inherited paginas: TPageControl
    Width = 866
    Height = 536
    ExplicitWidth = 866
    ExplicitHeight = 536
    inherited Principal: TTabSheet
      ExplicitWidth = 858
      ExplicitHeight = 508
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = flhchave
      end
      object Label2: TLabel
        Left = 3
        Top = 60
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Est'#225'gio'
        FocusControl = eflcodigo
      end
      object Label4: TLabel
        Left = 3
        Top = 87
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#234's'
        FocusControl = flhmes
      end
      object Label5: TLabel
        Left = 203
        Top = 87
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ano'
        FocusControl = flhano
      end
      object Label6: TLabel
        Left = 3
        Top = 141
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = flhdtinicial
      end
      object Label7: TLabel
        Left = 244
        Top = 141
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = flhdtfinal
      end
      object Label8: TLabel
        Left = 413
        Top = 141
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Pgto'
        FocusControl = flhdtpgto
      end
      object Label3: TLabel
        Left = 3
        Top = 114
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identificacao'
        FocusControl = flhIdentificacao
      end
      object Label9: TLabel
        Left = 3
        Top = 33
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Folha'
        FocusControl = tflcodigo
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 3
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object eflcodigo: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'eflcodigo'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 2
      end
      object flhmes: TDBEdit
        Left = 136
        Top = 84
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhmes'
        DataSource = DSRegistro
        TabOrder = 3
        OnExit = flhmesExit
      end
      object flhano: TDBEdit
        Left = 228
        Top = 84
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhano'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object flhdtinicial: TDBEdit
        Left = 136
        Top = 138
        Width = 95
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhdtinicial'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object flhdtfinal: TDBEdit
        Left = 312
        Top = 138
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhdtfinal'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object flhdtpgto: TDBEdit
        Left = 467
        Top = 138
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhdtpgto'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object flhIdentificacao: TDBEdit
        Left = 136
        Top = 111
        Width = 148
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhIdentificacao'
        DataSource = DSRegistro
        TabOrder = 5
        OnEnter = flhIdentificacaoEnter
      end
      object tflcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tflcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 420
    Top = 112
  end
  inherited cfg: TUniQuery
    Left = 484
    Top = 28
  end
  inherited consulta: TUniQuery
    Left = 552
    Top = 52
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select flhchave,eflcodigo, tflcodigo,flhidentificacao,flhmes,flh' +
        'ano,flhdtinicial,flhdtfinal,flhdtpgto, flhcriacao,clbcodigo from' +
        ' flh where flh.flhchave=:flhchave')
    Left = 312
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end>
    object registroflhchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'flhchave'
    end
    object registrotflcodigo: TIntegerField
      DisplayLabel = 'Tipo de Folha'
      FieldName = 'tflcodigo'
      Required = True
    end
    object registrotflidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tflidentificacao'
      LookupDataSet = tfl
      LookupKeyFields = 'tflcodigo'
      LookupResultField = 'tflidentificacao'
      KeyFields = 'tflcodigo'
      Size = 50
      Lookup = True
    end
    object registroeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      Required = True
    end
    object registroeflidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'eflidentificacao'
      LookupDataSet = efl
      LookupKeyFields = 'eflcodigo'
      LookupResultField = 'eflidentificacao'
      KeyFields = 'eflcodigo'
      Required = True
      Size = 35
      Lookup = True
    end
    object registroflhIdentificacao: TStringField
      FieldName = 'flhIdentificacao'
      Required = True
      Size = 35
    end
    object registroflhmes: TStringField
      FieldName = 'flhmes'
      Required = True
      EditMask = '00;1;_'
      Size = 2
    end
    object registroflhano: TStringField
      FieldName = 'flhano'
      Required = True
      EditMask = '0000;1;_'
      Size = 4
    end
    object registroflhdtinicial: TDateField
      FieldName = 'flhdtinicial'
      Required = True
    end
    object registroflhdtfinal: TDateField
      FieldName = 'flhdtfinal'
      Required = True
    end
    object registroflhdtpgto: TDateField
      FieldName = 'flhdtpgto'
      Required = True
    end
    object registroflhcriacao: TDateTimeField
      FieldName = 'flhcriacao'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  inherited pfr: TUniQuery
    Left = 568
    Top = 36
  end
  inherited psf: TUniQuery
    Left = 584
  end
  inherited dcl: TUniQuery
    Left = 660
    Top = 96
  end
  inherited BalloonHint: TBalloonHint
    Left = 492
    Top = 120
  end
  inherited acoesfrm: TActionList
    Left = 420
  end
  object efl: TUniQuery
    SQL.Strings = (
      'select eflcodigo,eflidentificacao from efl')
    Left = 376
    Top = 32
    object e: TIntegerField
      FieldName = 'eflcodigo'
    end
    object efleflidentificacao: TStringField
      FieldName = 'eflidentificacao'
      Size = 35
    end
  end
  object tfl: TUniQuery
    SQL.Strings = (
      'select tflcodigo, tflidentificacao from tfl')
    Left = 352
    Top = 104
    object tfltflcodigo: TIntegerField
      FieldName = 'tflcodigo'
    end
    object tfltflidentificacao: TStringField
      FieldName = 'tflidentificacao'
      Size = 35
    end
  end
end
