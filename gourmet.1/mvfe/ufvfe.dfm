inherited fvfe: Tfvfe
  ActiveControl = clbcodigo
  Caption = 'Cadastro de Remessa de Venda a Servi'#231'o'
  ClientHeight = 191
  ClientWidth = 534
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 162
    Width = 534
    inherited bconfirma: TBitBtn
      Left = 380
    end
    inherited bcancela: TBitBtn
      Left = 455
    end
    inherited bfechar: TBitBtn
      Left = 315
    end
  end
  inherited paginas: TPageControl
    Width = 534
    Height = 162
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 25
        Top = 33
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = vfecodigo
      end
      object Label3: TLabel
        Left = 25
        Top = 87
        Width = 59
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador'
        FocusControl = clbcodigo
      end
      object Label2: TLabel
        Left = 25
        Top = 60
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Usu'#225'rio'
        FocusControl = clbcodigo
      end
      object vfecodigo: TDBEdit
        Left = 90
        Top = 30
        Width = 50
        Height = 21
        CustomHint = BalloonHint
        DataField = 'vfecodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object clbcodigo: TDBEdit
        Left = 90
        Top = 84
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbcodigo'
        DataSource = DSRegistro
        TabOrder = 2
        OnEnter = clbcodigoEnter
        OnExit = clbcodigoExit
      end
      object clbabertura: TDBEdit
        Left = 90
        Top = 57
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbabertura'
        DataSource = DSRegistro
        TabOrder = 1
        OnEnter = clbcodigoEnter
        OnExit = clbcodigoExit
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 188
    Top = 88
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT vfe.vfecodigo'
      '     , vfe.clbcodigo'
      '     , vfe.trmcodigo'
      '     , vfe.vfscodigo'
      '     , vfe.vferegistro'
      '     , vfe.clbabertura'
      'FROM vfe'
      'WHERE vfe.vfecodigo = :vfecodigo')
    Left = 188
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vfecodigo'
        Value = nil
      end>
    object registrovfecodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'vfecodigo'
    end
    object registroclbcodigo: TIntegerField
      DisplayLabel = 'Colaborador'
      FieldName = 'clbcodigo'
      Required = True
    end
    object registroclbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'clbidentificacao'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbcodigo'
      Size = 30
      Lookup = True
    end
    object registroclbabertura: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'clbabertura'
    end
    object registroclbabertident: TStringField
      FieldKind = fkLookup
      FieldName = 'clbabertident'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbabertura'
      Size = 30
      Lookup = True
    end
    object registrotrmcodigo: TIntegerField
      DisplayLabel = 'Terminal'
      FieldName = 'trmcodigo'
    end
    object registrovfscodigo: TIntegerField
      FieldName = 'vfscodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT clb.clbcodigo'
      '     , clb.clbidentificacao'
      '     , clb.fnccodigo'
      '     , clb.clbativo'
      'FROM clb')
    Left = 252
    Top = 88
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
    object clbfnccodigo: TIntegerField
      FieldName = 'fnccodigo'
    end
    object clbclbativo: TStringField
      FieldName = 'clbativo'
      Size = 1
    end
  end
  object verifVfe: TUniQuery
    SQL.Strings = (
      'SELECT vfe.vfecodigo'
      '     , vfe.clbcodigo'
      '     , clb.clbidentificacao'
      '     , vfe.vfscodigo'
      '     , vfe.vferegistro'
      'FROM vfe'
      '  JOIN clb'
      '    ON vfe.clbcodigo = clb.clbcodigo'
      'WHERE vfe.vfscodigo = 1 -- Em Aberto'
      'AND vfe.clbcodigo = :clbcodigo')
    Left = 196
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'clbcodigo'
        Value = nil
      end>
  end
end
