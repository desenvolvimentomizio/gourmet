inherited fdfr: Tfdfr
  ActiveControl = tdfcodigo
  Caption = 'Documento Fiscal Referenciado'
  ClientHeight = 354
  ClientWidth = 448
  ExplicitWidth = 464
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 325
    Width = 448
    ExplicitTop = 325
    ExplicitWidth = 459
    inherited bconfirma: TBitBtn
      Left = 294
      ExplicitLeft = 288
      ExplicitTop = 2
    end
    inherited bcancela: TBitBtn
      Left = 369
      ExplicitLeft = 380
    end
    inherited bfechar: TBitBtn
      Left = 229
      ExplicitLeft = 240
    end
  end
  inherited paginas: TPageControl
    Width = 448
    Height = 325
    ExplicitWidth = 459
    ExplicitHeight = 325
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 451
      ExplicitHeight = 297
      object Label1: TLabel
        Left = 24
        Top = 32
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = dfrchave
      end
      object Label2: TLabel
        Left = 24
        Top = 59
        Width = 77
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo Documento'
        FocusControl = tdfcodigo
      end
      object dfrchave: TDBEdit
        Left = 120
        Top = 29
        Width = 60
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dfrchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tdfcodigo: TDBEdit
        Left = 120
        Top = 56
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tdfcodigo'
        DataSource = DSRegistro
        TabOrder = 1
        OnEnter = tdfcodigoEnter
        OnExit = tdfcodigoExit
      end
      object PCNotas: TPageControl
        Left = 24
        Top = 104
        Width = 400
        Height = 180
        CustomHint = BalloonHint
        ActivePage = TSNFs
        TabOrder = 2
        TabStop = False
        object TSNFs: TTabSheet
          CustomHint = BalloonHint
          Caption = 'NF-e / NFC-e'
          object dfrchavenfe: TDBEdit
            Left = 20
            Top = 25
            Width = 350
            Height = 21
            CustomHint = BalloonHint
            DataField = 'dfrchavenfe'
            DataSource = DSRegistro
            TabOrder = 0
            OnExit = dfrchavenfeExit
          end
        end
        object TSNotas: TTabSheet
          CustomHint = BalloonHint
          Caption = 'Dados Nota Fiscal'
          ImageIndex = 1
          object Label3: TLabel
            Left = 5
            Top = 28
            Width = 42
            Height = 13
            CustomHint = BalloonHint
            Caption = 'Entidade'
            FocusControl = etdcodigo
          end
          object Label4: TLabel
            Left = 5
            Top = 55
            Width = 37
            Height = 13
            CustomHint = BalloonHint
            Caption = 'N'#250'mero'
            FocusControl = dfrnumero
          end
          object Label5: TLabel
            Left = 5
            Top = 82
            Width = 24
            Height = 13
            CustomHint = BalloonHint
            Caption = 'S'#233'rie'
            FocusControl = dfrserie
          end
          object Label6: TLabel
            Left = 5
            Top = 109
            Width = 38
            Height = 13
            CustomHint = BalloonHint
            Caption = 'Emiss'#227'o'
            FocusControl = dfremissao
          end
          object etdcodigo: TDBEdit
            Left = 62
            Top = 25
            Width = 30
            Height = 21
            CustomHint = BalloonHint
            DataField = 'etdcodigo'
            DataSource = DSRegistro
            TabOrder = 0
          end
          object dfrnumero: TDBEdit
            Left = 62
            Top = 52
            Width = 60
            Height = 21
            CustomHint = BalloonHint
            DataField = 'dfrnumero'
            DataSource = DSRegistro
            TabOrder = 1
          end
          object dfrserie: TDBEdit
            Left = 62
            Top = 79
            Width = 30
            Height = 21
            CustomHint = BalloonHint
            DataField = 'dfrserie'
            DataSource = DSRegistro
            TabOrder = 2
          end
          object dfremissao: TDBEdit
            Left = 62
            Top = 104
            Width = 90
            Height = 21
            CustomHint = BalloonHint
            DataField = 'dfremissao'
            DataSource = DSRegistro
            TabOrder = 3
          end
        end
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT dfr.dfrchave'
      '     , dfr.meschave'
      '     , dfr.tdfcodigo'
      '     , dfr.dfrchavenfe'
      '     , dfr.etdcodigo'
      '     , dfr.edritem'
      '     , dfr.dfrserie'
      '     , dfr.dfrnumero'
      '     , dfr.dfremissao'
      'FROM dfr'
      'WHERE dfr.dfrchave = :dfrchave'
      'AND dfr.meschave = :meschave')
    BeforePost = registroBeforePost
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dfrchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registrodfrchave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'dfrchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
    end
    object registrotdfcodigo: TStringField
      DisplayLabel = 'Tipo Documento'
      FieldName = 'tdfcodigo'
      Required = True
      Size = 2
    end
    object registrotdfidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tdfidentificacao'
      LookupDataSet = tfd
      LookupKeyFields = 'tdfcodigo'
      LookupResultField = 'tdfidentificacao'
      KeyFields = 'tdfcodigo'
      Size = 25
      Lookup = True
    end
    object registrodfrchavenfe: TStringField
      DisplayLabel = 'Chave NFe'
      FieldName = 'dfrchavenfe'
      EditMask = 
        '9999\-9999\-9999\-9999\-9999\-9999\-9999\-9999\-9999\-9999\-9999' +
        ';0;_'
      Size = 44
    end
    object registroetdcodigo: TIntegerField
      DisplayLabel = 'Entidade'
      FieldName = 'etdcodigo'
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 40
      Lookup = True
    end
    object registroedritem: TIntegerField
      FieldName = 'edritem'
    end
    object registrodfrnumero: TIntegerField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'dfrnumero'
    end
    object registrodfrserie: TStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'dfrserie'
      Size = 3
    end
    object registrodfremissao: TDateField
      ConstraintErrorMessage = 'Data inv'#225'lida: '
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'dfremissao'
      EditMask = '!99/99/9999;1;_'
    end
  end
  inherited dcp: TUniQuery
    Left = 448
    Top = 172
  end
  inherited dtb: TUniQuery
    Left = 388
    Top = 324
  end
  inherited coa: TUniQuery
    Left = 352
    Top = 324
  end
  inherited cpg: TUniQuery
    Left = 492
    Top = 264
  end
  inherited cpc: TUniQuery
    Left = 493
    Top = 313
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tfd: TUniQuery
    SQL.Strings = (
      'SELECT tdf.tdfcodigo'
      '     , tdf.tdfidentificacao'
      'FROM tdf'
      'WHERE tdf.tdfcodigo IN ('#39'01'#39', '#39'04'#39', '#39'55'#39', '#39'65'#39')')
    Left = 228
    Top = 200
    object tfdtdfcodigo: TStringField
      FieldName = 'tdfcodigo'
      Size = 2
    end
    object tfdtdfidentificacao: TStringField
      FieldName = 'tdfidentificacao'
      Size = 50
    end
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT etd.etdcodigo'
      '     , etd.etdidentificacao'
      '     , edr.edritem'
      'FROM etd'
      '  JOIN edr'
      '    ON etd.etdcodigo = edr.etdcodigo'
      '    AND edr.tedcodigo = 1')
    Left = 236
    Top = 264
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object etdedritem: TIntegerField
      FieldName = 'edritem'
    end
  end
end
