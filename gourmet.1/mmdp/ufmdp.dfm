inherited fmdp: Tfmdp
  Caption = 'M'#243'dulos'
  ClientHeight = 262
  ClientWidth = 773
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 233
    Width = 773
    inherited bconfirma: TBitBtn
      Left = 619
    end
    inherited bcancela: TBitBtn
      Left = 694
    end
    inherited bfechar: TBitBtn
      Left = 554
    end
  end
  inherited paginas: TPageControl
    Width = 773
    Height = 233
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = mdpcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = mdpidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 87
        Width = 35
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Projeto'
        FocusControl = prjcodigo
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
      end
      object Label5: TLabel
        Left = 8
        Top = 60
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ordem'
        FocusControl = mdpordem
      end
      object mdpcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdpcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object mdpidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 510
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdpidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object prjcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 57
        Height = 21
        CustomHint = BalloonHint
        DataField = 'prjcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object mdpdescricao: TDBMemo
        Left = 136
        Top = 111
        Width = 510
        Height = 62
        CustomHint = BalloonHint
        DataField = 'mdpdescricao'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object mdpordem: TDBEdit
        Left = 136
        Top = 57
        Width = 41
        Height = 21
        CustomHint = BalloonHint
        DataField = 'mdpordem'
        DataSource = DSRegistro
        TabOrder = 2
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 296
    Top = 316
  end
  inherited cfg: TUniQuery
    Left = 240
    Top = 352
  end
  inherited consulta: TUniQuery
    Left = 480
    Top = 380
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select mdpcodigo, mdpidentificacao, mdpdescricao, prjcodigo, mdp' +
        'ordem from mdp where mdpcodigo=:mdpcodigo')
    Left = 232
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'mdpcodigo'
        Value = nil
      end>
    object registromdpcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'mdpcodigo'
    end
    object registromdpidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'mdpidentificacao'
      Required = True
      Size = 50
    end
    object registroprjcodigo: TIntegerField
      DisplayLabel = 'Projeto'
      FieldName = 'prjcodigo'
      Required = True
    end
    object registroprjidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'prjidentificacao'
      LookupDataSet = prj
      LookupKeyFields = 'prjcodigo'
      LookupResultField = 'prjidentificacao'
      KeyFields = 'prjcodigo'
      Size = 50
      Lookup = True
    end
    object registromdpdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'mdpdescricao'
      Required = True
      Size = 500
    end
    object registromdpordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'mdpordem'
      Required = True
    end
  end
  inherited dcp: TUniQuery
    Left = 108
    Top = 268
  end
  inherited dtb: TUniQuery
    Left = 144
    Top = 276
  end
  inherited coa: TUniQuery
    Left = 28
    Top = 232
  end
  inherited pfr: TUniQuery
    Left = 324
    Top = 352
  end
  inherited psf: TUniQuery
    Left = 380
    Top = 336
  end
  inherited dcl: TUniQuery
    Left = 376
    Top = 396
  end
  inherited cau: TUniQuery
    Left = 408
    Top = 408
  end
  inherited acoesfrm: TActionList
    Left = 412
    Top = 44
  end
  inherited cpc: TUniQuery
    Left = 189
    Top = 265
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object prj: TUniQuery
    SQL.Strings = (
      'select prjcodigo, prjidentificacao from prj')
    Left = 552
    Top = 284
    object prjprjcodigo: TIntegerField
      FieldName = 'prjcodigo'
    end
    object prjprjidentificacao: TStringField
      FieldName = 'prjidentificacao'
      Size = 50
    end
  end
  object idp: TUniQuery
    SQL.Strings = (
      'select idpcodigo, idpidentificacao from idp')
    Left = 180
    Top = 392
    object idpidpcodigo: TIntegerField
      FieldName = 'idpcodigo'
    end
    object idpidpidentificacao: TStringField
      FieldName = 'idpidentificacao'
      Size = 50
    end
  end
end
