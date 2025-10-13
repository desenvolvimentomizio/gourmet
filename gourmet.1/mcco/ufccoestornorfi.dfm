inherited fccoestornorfi: Tfccoestornorfi
  ClientHeight = 559
  ClientWidth = 624
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 530
    Width = 624
    inherited bconfirma: TBitBtn
      Left = 470
    end
    inherited bcancela: TBitBtn
      Left = 545
    end
    inherited bfechar: TBitBtn
      Left = 405
    end
  end
  inherited paginas: TPageControl
    Width = 624
    Height = 530
    inherited Principal: TTabSheet
      inherited Label6: TLabel
        Top = 386
      end
      inherited Label7: TLabel
        Top = 413
      end
      inherited Label8: TLabel
        Top = 440
      end
      inherited ccohistorico: TDBMemo
        Width = 460
        Height = 25
      end
      inherited cconumero: TDBEdit
        Top = 383
      end
      inherited ccovalor: TDBEdit
        Top = 410
      end
    end
  end
  object DBGLista: TDBGrid [3]
    Left = 140
    Top = 167
    Width = 460
    Height = 234
    CustomHint = BalloonHint
    TabStop = False
    DataSource = Drfi
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ReadOnly = True
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBGListaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'rfichave'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdcodigo'
        Width = 45
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdidentificacao'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'rfinumero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mfivalor'
        Visible = True
      end>
  end
  inherited DSRegistro: TUniDataSource
    Left = 224
    Top = 104
  end
  inherited cfg: TUniQuery
    Left = 420
    Top = 36
  end
  inherited consulta: TUniQuery
    Left = 360
    Top = 48
  end
  inherited registro: TUniQuery
    Left = 444
    Top = 68
  end
  inherited dcp: TUniQuery
    Left = 152
    Top = 16
  end
  inherited dtb: TUniQuery
    Left = 44
    Top = 56
  end
  inherited coa: TUniQuery
    Left = 72
    Top = 44
  end
  inherited pfr: TUniQuery
    Left = 532
    Top = 100
  end
  inherited cau: TUniQuery
    Left = 536
    Top = 56
  end
  inherited err: TUniQuery
    Left = 584
    Top = 156
  end
  inherited BalloonHint: TBalloonHint
    Left = 476
    Top = 88
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  inherited ced: TUniQuery
    Left = 248
    Top = 72
  end
  inherited che: TUniQuery
    Left = 372
    Top = 65528
  end
  inherited ltc: TUniQuery
    Left = 216
    Top = 64
  end
  inherited ccm: TUniQuery
    Left = 276
    Top = 52
  end
  inherited mea: TUniQuery
    Left = 360
    Top = 108
  end
  object rfi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  tmf.cedcodigo,'
      '  tmf.tmfidentificacao,'
      '  mfi.tmfcodigo,'
      '  mfi.mfivalor,'
      '  mfi.mfidata,'
      '  mfi.mfihistorico,'
      '  lte.ltedata,'
      '  lte.lteprincipal,'
      '  lte.ltejuros,'
      '  lte.ltedesconto,'
      '  lte.ltetotal,'
      '  clt.ccochave,'
      '  mlt.ltechave,'
      '  rfi.rfinumero,'
      '  rfi.rfivencimento,'
      '  rfi.rfichave,'
      '  mfi.mfichave'
      'FROM mlt'
      '  INNER JOIN lte'
      '    ON mlt.ltechave = lte.ltechave'
      '  INNER JOIN mfi'
      '    ON mlt.mfichave = mfi.mfichave'
      '  INNER JOIN rfi'
      '    ON mfi.rfichave = rfi.rfichave'
      '  INNER JOIN etd'
      '    ON rfi.etdcodigo = etd.etdcodigo'
      '  INNER JOIN tmf'
      '    ON mfi.tmfcodigo = tmf.tmfcodigo'
      '  INNER JOIN clt'
      '    ON clt.ltechave = lte.ltechave'
      'WHERE clt.ccochave = :ccochave')
    Left = 448
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccochave'
        Value = nil
      end>
    object rfirfichave: TIntegerField
      DisplayLabel = 'Chave'
      FieldName = 'rfichave'
    end
    object rfietdcodigo: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'etdcodigo'
    end
    object rfietdidentificacao: TStringField
      DisplayLabel = 'Indetifica'#231#227'o'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object rficedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
    object rfitmfidentificacao: TStringField
      FieldName = 'tmfidentificacao'
      Size = 35
    end
    object rfitmfcodigo: TIntegerField
      FieldName = 'tmfcodigo'
    end
    object rfimfivalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'mfivalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object rfimfidata: TDateField
      FieldName = 'mfidata'
    end
    object rfilteprincipal: TFloatField
      FieldName = 'lteprincipal'
    end
    object rfiltejuros: TFloatField
      FieldName = 'ltejuros'
    end
    object rfiltedesconto: TFloatField
      FieldName = 'ltedesconto'
    end
    object rfiltetotal: TFloatField
      FieldName = 'ltetotal'
    end
    object rficcochave: TIntegerField
      FieldName = 'ccochave'
    end
    object rfiltechave: TIntegerField
      FieldName = 'ltechave'
    end
    object rfirfinumero: TStringField
      DisplayLabel = 'Nr.Documento'
      FieldName = 'rfinumero'
      Size = 15
    end
    object rfirfivencimento: TDateField
      FieldName = 'rfivencimento'
    end
    object rfimfichave: TIntegerField
      FieldName = 'mfichave'
    end
  end
  object Drfi: TDataSource
    DataSet = rfi
    Left = 484
    Top = 208
  end
end
