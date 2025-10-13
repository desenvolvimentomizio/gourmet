inherited fclb: Tfclb
  ActiveControl = clbcodigo
  Caption = 'Usu'#225'rio'
  ClientHeight = 322
  ClientWidth = 574
  ExplicitWidth = 590
  ExplicitHeight = 361
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 293
    Width = 574
    ExplicitTop = 293
    ExplicitWidth = 574
    inherited bconfirma: TBitBtn
      Left = 420
      ExplicitLeft = 420
    end
    inherited bcancela: TBitBtn
      Left = 495
      ExplicitLeft = 495
    end
    inherited bfechar: TBitBtn
      Left = 355
      ExplicitLeft = 355
    end
  end
  inherited paginas: TPageControl
    Width = 574
    Height = 293
    ExplicitWidth = 574
    ExplicitHeight = 293
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 566
      ExplicitHeight = 265
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = clbcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 27
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Nome'
        FocusControl = clbidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 66
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desc. M'#225'ximo'
        FocusControl = clbdescmaximo
      end
      object Label4: TLabel
        Left = 388
        Top = 60
        Width = 30
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Senha'
      end
      object Label5: TLabel
        Left = 8
        Top = 222
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Usu'#225'rio Ativo'
        FocusControl = clbativo
      end
      object Label6: TLabel
        Left = 8
        Top = 60
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Fun'#231#227'o'
        FocusControl = fnccodigo
      end
      object Label7: TLabel
        Left = 8
        Top = 168
        Width = 84
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dispensa Mora %'
        FocusControl = clbpercdispmora
      end
      object Label8: TLabel
        Left = 197
        Top = 168
        Width = 86
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dispensa Multa %'
        FocusControl = clbpercdispmulta
      end
      object Label9: TLabel
        Left = 363
        Top = 168
        Width = 93
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Desc. Financeiro %'
        FocusControl = clbpercdescrfi
      end
      object Label10: TLabel
        Left = 8
        Top = 114
        Width = 97
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Libera Limite Cr'#233'dito'
        FocusControl = clbliberacredito
      end
      object Label13: TLabel
        Left = 8
        Top = 141
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Comiss'#227'o %'
        FocusControl = clbperccomissao
      end
      object Label20: TLabel
        Left = 8
        Top = 195
        Width = 71
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Registra Ponto'
        FocusControl = clbrelogio
        Visible = False
      end
      object clbcodigo: TDBEdit
        Left = 124
        Top = 3
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object clbidentificacao: TDBEdit
        Left = 124
        Top = 30
        Width = 393
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
        OnExit = clbidentificacaoExit
      end
      object clbdescmaximo: TDBEdit
        Left = 124
        Top = 84
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbdescmaximo'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object clbativo: TDBEdit
        Left = 124
        Top = 219
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbativo'
        DataSource = DSRegistro
        TabOrder = 11
      end
      object fnccodigo: TDBEdit
        Left = 124
        Top = 57
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'fnccodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object clbpercdispmora: TDBEdit
        Left = 124
        Top = 165
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbpercdispmora'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object clbpercdispmulta: TDBEdit
        Left = 289
        Top = 165
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbpercdispmulta'
        DataSource = DSRegistro
        TabOrder = 8
      end
      object clbpercdescrfi: TDBEdit
        Left = 462
        Top = 165
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbpercdescrfi'
        DataSource = DSRegistro
        TabOrder = 9
      end
      object clbliberacredito: TDBEdit
        Left = 124
        Top = 111
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbliberacredito'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object clbperccomissao: TDBEdit
        Left = 124
        Top = 138
        Width = 55
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbperccomissao'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object edSenha: TEdit
        Left = 424
        Top = 57
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        PasswordChar = '#'
        TabOrder = 3
        Text = '     '
        OnEnter = edSenhaEnter
        OnExit = edSenhaExit
        OnKeyPress = FormKeyPress
      end
      object clbrelogio: TDBEdit
        Left = 124
        Top = 192
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbrelogio'
        DataSource = DSRegistro
        TabOrder = 10
        Visible = False
      end
      object clbsuper: TDBCheckBox
        Left = 420
        Top = 113
        Width = 97
        Height = 17
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        Caption = 'Administrador'
        DataField = 'clbsuper'
        DataSource = DSRegistro
        TabOrder = 12
        ValueChecked = '1'
        ValueUnchecked = '0'
      end
    end
    object TSContas: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Permiss'#227'o de Acesso a Contas'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Plctc: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 265
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
      end
    end
    object TSFiliais: TTabSheet
      CustomHint = BalloonHint
      Caption = 'Permiss'#227'o de Acesso a Filiais'
      ImageIndex = 2
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Plfcb: TPanel
        Left = 0
        Top = 0
        Width = 566
        Height = 265
        CustomHint = BalloonHint
        Align = alClient
        BevelOuter = bvNone
        TabOrder = 0
      end
    end
  end
  inherited lbcodigojanela: TPanel
    Caption = '01-08-001'
  end
  inherited DSRegistro: TUniDataSource
    Left = 168
    Top = 280
  end
  inherited cfg: TUniQuery
    Left = 236
    Top = 16
  end
  inherited consulta: TUniQuery
    Left = 296
    Top = 12
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clb.clbcodigo,'
      '  clb.clbidentificacao,'
      '  clb.clbdescmaximo,'
      '  clb.clbsenha,'
      '  clb.clbativo,'
      '  clb.clbsuper,'
      '  clb.fnccodigo,'
      '  clb.clbpercdispmulta,'
      '  clb.clbpercdispmora,'
      '  clb.clbpercdescrfi,'
      '  clb.clbliberacredito,'
      '  clb.clbatualizador,'
      '  clb.clbperccomissao,'
      '  clb.clbsalvaima,'
      '  clb.clbsalvasaldo,'
      '  clb.clbsiphost,'
      '  clb.clbsipsenha,'
      '  clb.clbsipusuario,'
      '  clb.clbsipramal,'
      '  clb.clbrelogio'
      ''
      'FROM clb'
      'WHERE clb.clbcodigo = :clbcodigo')
    BeforePost = registroBeforePost
    Left = 192
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object registroclbcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'clbcodigo'
    end
    object registroclbidentificacao: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'clbidentificacao'
      Required = True
      Size = 30
    end
    object registroclbdescmaximo: TFloatField
      DisplayLabel = 'Desconto M'#225'ximo'
      FieldName = 'clbdescmaximo'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroclbsenha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'clbsenha'
      Required = True
      Size = 15
    end
    object registroclbativo: TStringField
      FieldName = 'clbativo'
      Required = True
      Size = 1
    end
    object registrosenativo: TStringField
      FieldKind = fkLookup
      FieldName = 'senativo'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'clbativo'
      Size = 5
      Lookup = True
    end
    object registrofnccodigo: TIntegerField
      DisplayLabel = 'Fun'#231#227'o'
      FieldName = 'fnccodigo'
      Required = True
    end
    object registrofncidentificacao: TStringField
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'fncidentificacao'
      LookupDataSet = fnc
      LookupKeyFields = 'fnccodigo'
      LookupResultField = 'fncidentificacao'
      KeyFields = 'fnccodigo'
      Lookup = True
    end
    object registroclbpercdispmulta: TFloatField
      DisplayLabel = 'Dispensa Multa'
      FieldName = 'clbpercdispmulta'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroclbpercdispmora: TFloatField
      DisplayLabel = 'Dispensa Mora'
      FieldName = 'clbpercdispmora'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroclbpercdescrfi: TFloatField
      DisplayLabel = 'Desc. Financeiro'
      FieldName = 'clbpercdescrfi'
      Required = True
      DisplayFormat = '#,###0.000'
      EditFormat = '#,###0.000'
    end
    object registroclbliberacredito: TIntegerField
      DisplayLabel = 'Libera Limite de Cr'#233'dito'
      FieldName = 'clbliberacredito'
      Required = True
    end
    object registrosenliberacredito: TStringField
      FieldKind = fkLookup
      FieldName = 'senliberacredito'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'clbliberacredito'
      Size = 4
      Lookup = True
    end
    object registroclbperccomissao: TFloatField
      DisplayLabel = 'Percentual de Comiss'#227'o'
      FieldName = 'clbperccomissao'
      Required = True
    end
    object registroclbsiphost: TStringField
      DisplayLabel = 'Servidor Asterisk'
      FieldName = 'clbsiphost'
      Size = 200
    end
    object registroclbsipramal: TStringField
      DisplayLabel = 'Ramal'
      FieldName = 'clbsipramal'
    end
    object registroclbsipusuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbsipusuario'
      Size = 50
    end
    object registroclbsipsenha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'clbsipsenha'
      Size = 50
    end
    object registroclbrelogio: TIntegerField
      DisplayLabel = 'Registra Ponto'
      FieldName = 'clbrelogio'
      Required = True
    end
    object registrosenclbrelogio: TStringField
      FieldKind = fkLookup
      FieldName = 'senclbrelogio'
      LookupDataSet = sen
      LookupKeyFields = 'sencodigo'
      LookupResultField = 'senidentificacao'
      KeyFields = 'clbrelogio'
      Size = 5
      Lookup = True
    end
    object registroclbsuper: TIntegerField
      FieldName = 'clbsuper'
    end
  end
  inherited dcp: TUniQuery
    Top = 268
  end
  inherited dtb: TUniQuery
    Left = 68
    Top = 268
  end
  inherited coa: TUniQuery
    Left = 16
    Top = 268
  end
  inherited pfr: TUniQuery
    Left = 232
    Top = 332
  end
  inherited psf: TUniQuery
    Left = 288
    Top = 316
  end
  inherited dcl: TUniQuery
    Left = 284
    Top = 376
  end
  inherited cau: TUniQuery
    Left = 288
    Top = 464
  end
  inherited err: TUniQuery
    Left = 288
    Top = 396
  end
  inherited BalloonHint: TBalloonHint
    Left = 308
    Top = 96
  end
  inherited acoesfrm: TActionList
    Left = 388
    Top = 20
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object sen: TUniQuery
    SQL.Strings = (
      'select sencodigo, senidentificacao from sen')
    Left = 232
    Top = 284
    object sensencodigo: TIntegerField
      FieldName = 'sencodigo'
    end
    object sensenidentificacao: TStringField
      FieldName = 'senidentificacao'
      Size = 5
    end
  end
  object fnc: TUniQuery
    SQL.Strings = (
      'select fnccodigo, fncidentificacao from fnc')
    Left = 280
    Top = 289
    object fncfnccodigo: TIntegerField
      FieldName = 'fnccodigo'
    end
    object fncfncidentificacao: TStringField
      FieldName = 'fncidentificacao'
      Size = 50
    end
  end
  object als: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  alschave,'
      '  alsalteracao,'
      '  clbcodigo,'
      '  alssenhaanterior'
      'FROM als'
      'where clbcodigo=:clbcodigo')
    Left = 224
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
    object alsalschave: TIntegerField
      FieldName = 'alschave'
    end
    object alsalsalteracao: TDateTimeField
      FieldName = 'alsalteracao'
    end
    object alsclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object alsalssenhaanterior: TStringField
      FieldName = 'alssenhaanterior'
      Size = 250
    end
  end
  object fcb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  fcbchave,'
      '  flacodigo,'
      '  clbcodigo'
      'FROM fcb limit 0')
    Left = 372
    Top = 104
    object fcbfcbchave: TIntegerField
      FieldName = 'fcbchave'
    end
    object fcbflacodigo: TIntegerField
      FieldName = 'flacodigo'
    end
    object fcbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
end
