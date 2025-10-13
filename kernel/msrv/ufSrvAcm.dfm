inherited fsrvAcm: TfsrvAcm
  ActiveControl = clbnovo
  Caption = 'Altera'#231#227'o de Colaborador de Venda'
  ClientHeight = 191
  ClientWidth = 634
  ExplicitWidth = 650
  ExplicitHeight = 230
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 162
    Width = 634
    ExplicitTop = 162
    ExplicitWidth = 634
    inherited bconfirma: TBitBtn
      Left = 480
      ExplicitLeft = 480
    end
    inherited bcancela: TBitBtn
      Left = 555
      ExplicitLeft = 555
    end
    inherited bfechar: TBitBtn
      Left = 415
      ExplicitLeft = 415
    end
  end
  inherited paginas: TPageControl
    Width = 634
    Height = 162
    ExplicitWidth = 634
    ExplicitHeight = 162
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = acmcodigo
      end
      object Label2: TLabel
        Left = 24
        Top = 59
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Colaborador Atual'
        FocusControl = clbanterior
      end
      object Label3: TLabel
        Left = 24
        Top = 86
        Width = 87
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Novo Colaborador'
        FocusControl = clbnovo
      end
      object acmcodigo: TDBEdit
        Left = 140
        Top = 29
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'acmcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object clbanterior: TDBEdit
        Left = 140
        Top = 56
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbanterior'
        DataSource = DSRegistro
        Enabled = False
        TabOrder = 1
      end
      object clbnovo: TDBEdit
        Left = 140
        Top = 83
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'clbnovo'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Top = 88
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  a.acmcodigo,'
      '  a.meschave,'
      '  a.clbcodigo,'
      '  a.clbanterior,'
      '  a.clbnovo,'
      '  a.acmtipo'
      'FROM acm a'
      'WHERE a.acmcodigo = :acmcodigo')
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'acmcodigo'
        Value = nil
      end>
    object registroacmcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'acmcodigo'
    end
    object registroclbanterior: TIntegerField
      DisplayLabel = 'Colaborador Atual'
      FieldName = 'clbanterior'
      Required = True
    end
    object registroclbanteriorident: TStringField
      FieldKind = fkLookup
      FieldName = 'clbanteriorident'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbanterior'
      Size = 30
      Lookup = True
    end
    object registroclbnovo: TIntegerField
      DisplayLabel = 'Novo Colaborador'
      FieldName = 'clbnovo'
      Required = True
    end
    object registroclbnovoident: TStringField
      FieldKind = fkLookup
      FieldName = 'clbnovoident'
      LookupDataSet = clb
      LookupKeyFields = 'clbcodigo'
      LookupResultField = 'clbidentificacao'
      KeyFields = 'clbnovo'
      Size = 30
      Lookup = True
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroacmtipo: TStringField
      FieldName = 'acmtipo'
      Size = 0
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object clb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  c.clbcodigo,'
      '  c.clbidentificacao,'
      '  c.fnccodigo,'
      '  c.clbativo'
      'FROM clb c')
    Left = 276
    Top = 144
    object clbclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object clbclbidentificacao: TStringField
      FieldName = 'clbidentificacao'
      Size = 30
    end
  end
end
