object ffilaimp: Tffilaimp
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Fila de Impress'#227'o'
  ClientHeight = 542
  ClientWidth = 576
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pbotoes: TPanel
    Left = 0
    Top = 513
    Width = 576
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 0
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Color = 12615680
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -13
      Font.Name = 'Microsoft Sans Serif'
      Font.Pitch = fpVariable
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 0
    end
    object bfechar: TBitBtn
      Left = 507
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = bfecharClick
    end
    object btatualizar: TBitBtn
      Left = 432
      Top = 4
      Width = 75
      Height = 21
      Align = alRight
      Caption = 'Atualizar'
      TabOrder = 2
      OnClick = btatualizarClick
    end
  end
  object DBFila: TDBGrid
    Left = 0
    Top = 48
    Width = 576
    Height = 244
    Align = alClient
    DataSource = Dfila
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBFilaDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'pdgnumero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'immhoraimprimir'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pdghorapedido'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pronome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdapelido'
        Width = 150
        Visible = True
      end>
  end
  object PlTitulo: TPanel
    Left = 0
    Top = 0
    Width = 576
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'Pedidos a Imprimir'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 292
    Width = 576
    Height = 22
    Align = alBottom
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'Pedidos j'#225' Impresso'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 3
  end
  object DBFilaImpresso: TDBGrid
    Left = 0
    Top = 314
    Width = 576
    Height = 199
    Align = alBottom
    DataSource = DFilaImpresso
    DrawingStyle = gdsGradient
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnDrawColumnCell = DBFilaImpressoDrawColumnCell
    Columns = <
      item
        Expanded = False
        FieldName = 'pdgnumero'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'immhoraimprimir'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pdghorapedido'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'pronome'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'etdapelido'
        Width = 150
        Visible = True
      end>
  end
  object Panel2: TPanel
    Left = 0
    Top = 26
    Width = 576
    Height = 22
    Align = alTop
    Alignment = taLeftJustify
    BevelOuter = bvNone
    BorderWidth = 2
    Caption = 'Pedidos a Imprimir'
    Color = 12615680
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWhite
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentBackground = False
    ParentFont = False
    TabOrder = 5
  end
  object Dfila: TDataSource
    DataSet = fila
    Left = 248
    Top = 88
  end
  object fila: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      '  DATE_FORMAT(imm.immhorapedido, '#39'%d %H:%i'#39') as pdghorapedido,'
      '  imm.immnumepedido as pdgnumero,'
      '  imm.immgarsom as clbcodigo,'
      '  pro.pronome,'
      
        '  DATE_FORMAT(imm.immhoraimprimir, '#39'%d %H:%i'#39') as immhoraimprimi' +
        'r,'
      '  IF(imm.immdestino = 1, '#39'Sal'#227'o'#39', '#39'Entrega'#39') AS pdgdestino,'
      '  mit.mitidentificacao,'
      '  imm.immhoraimpresso,'
      '  etd.etdapelido'
      'FROM imm'
      '  INNER JOIN czn'
      '    ON imm.cznchave = czn.cznchave'
      '  INNER JOIN tci'
      '    ON imm.tcicodigo = tci.tcicodigo'
      '  INNER JOIN ito'
      '    ON imm.itochave = ito.itochave'
      '  INNER JOIN pro'
      '    ON ito.procodigo = pro.procodigo'
      '  INNER JOIN mit'
      '    ON tci.mitcodigo = mit.mitcodigo'
      '  INNER JOIN orc'
      '    ON ito.orcchave = orc.orcchave'
      '  INNER JOIN etd'
      '    ON orc.etdcodigo = etd.etdcodigo'
      '  where imm.immhoraimpresso is null'
      '    and tci.tcicodigo=:tcicodigo'
      '    and czn.cznchave=:cznchave'
      'ORDER BY imm.immhoraimprimir')
    Left = 280
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcicodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cznchave'
        Value = nil
      end>
    object filapdghorapedido: TStringField
      DisplayLabel = 'Hora Pedido'
      FieldName = 'pdghorapedido'
      Size = 15
    end
    object filapdgnumero: TIntegerField
      DisplayLabel = 'Nr.Pedido'
      FieldName = 'pdgnumero'
    end
    object filaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object filapronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 50
    end
    object filaetdapelido: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdapelido'
      Size = 50
    end
    object filaimmhoraimprimir: TStringField
      DisplayLabel = 'Hora Imprimir'
      FieldName = 'immhoraimprimir'
      Size = 15
    end
  end
  object DFilaImpresso: TDataSource
    DataSet = filaimpresso
    Left = 248
    Top = 376
  end
  object filaimpresso: TUniQuery
    SQL.Strings = (
      'SELECT distinct'
      '  DATE_FORMAT(imm.immhorapedido, '#39'%d %H:%i'#39') as pdghorapedido,'
      '  imm.immnumepedido as pdgnumero,'
      '  imm.immgarsom as clbcodigo,'
      '  pro.pronome,'
      
        '  DATE_FORMAT(imm.immhoraimprimir, '#39'%d %H:%i'#39') as immhoraimprimi' +
        'r,'
      '  IF(imm.immdestino = 1, '#39'Sal'#227'o'#39', '#39'Entrega'#39') AS pdgdestino,'
      '  mit.mitidentificacao,'
      '  imm.immhoraimpresso,'
      '  etd.etdapelido'
      'FROM imm'
      '  INNER JOIN czn'
      '    ON imm.cznchave = czn.cznchave'
      '  INNER JOIN tci'
      '    ON imm.tcicodigo = tci.tcicodigo'
      '  INNER JOIN ito'
      '    ON imm.itochave = ito.itochave'
      '  INNER JOIN pro'
      '    ON ito.procodigo = pro.procodigo'
      '  INNER JOIN mit'
      '    ON tci.mitcodigo = mit.mitcodigo'
      '  INNER JOIN orc'
      '    ON ito.orcchave = orc.orcchave'
      '  INNER JOIN etd'
      '    ON orc.etdcodigo = etd.etdcodigo'
      '  where imm.immhoraimpresso is not null'
      '    and tci.tcicodigo=:tcicodigo'
      '    and czn.cznchave=:cznchave'
      'ORDER BY imm.immhoraimprimir')
    Left = 320
    Top = 376
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tcicodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'cznchave'
        Value = nil
      end>
    object filaimpressoimmhoraimprimir: TStringField
      DisplayLabel = 'Hora Imprimir'
      FieldName = 'immhoraimprimir'
      Size = 15
    end
    object filaimpressopdgnumero: TIntegerField
      DisplayLabel = 'Nr.Pedido'
      FieldName = 'pdgnumero'
    end
    object filaimpressoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object filaimpressopronome: TStringField
      DisplayLabel = 'Produto'
      FieldName = 'pronome'
      Size = 50
    end
    object filaimpressoetdapelido: TStringField
      DisplayLabel = 'Cliente'
      FieldName = 'etdapelido'
      Size = 50
    end
    object filaimpressopdghorapedido: TStringField
      DisplayLabel = 'Hora Pedido'
      FieldName = 'pdghorapedido'
      Size = 15
    end
  end
end
