object fuet: Tfuet
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Verifica'#231#227'o de Entidades Duplicadas'
  ClientHeight = 681
  ClientWidth = 945
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object quadro: TBevel
    Left = 12
    Top = 504
    Width = 905
    Height = 142
  end
  object Label1: TLabel
    Left = 28
    Top = 524
    Width = 191
    Height = 13
    Caption = 'C'#243'digo da entidade que vai permanecer'
  end
  object Label2: TLabel
    Left = 28
    Top = 551
    Width = 191
    Height = 13
    Caption = 'C'#243'digo da entidade que vai ser excluida'
  end
  object ltituloquadro: TLabel
    Left = 24
    Top = 499
    Width = 135
    Height = 13
    Caption = ' Unifica'#231#227'o de Cadastro '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    Transparent = False
  end
  object lmostratabelas: TLabel
    Left = 126
    Top = 577
    Width = 93
    Height = 13
    Caption = 'Verificando Tabelas'
  end
  object lista: TDBGrid
    Left = 0
    Top = 26
    Width = 945
    Height = 271
    Align = alTop
    DataSource = Dconsulta
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object pllista: TPanel
    Left = 0
    Top = 0
    Width = 945
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BorderWidth = 4
    Caption = 
      ' Selecione o registro na lista abaixo para ver os registro dupli' +
      'cado'
    TabOrder = 0
    object lbcodigojanela: TPanel
      Left = 875
      Top = 2
      Width = 64
      Height = 18
      BevelOuter = bvLowered
      Caption = '09-00-017'
      TabOrder = 0
    end
  end
  object pbotoes: TPanel
    Left = 0
    Top = 652
    Width = 945
    Height = 29
    Align = alBottom
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 10
    object psituacao: TPanel
      Left = 4
      Top = 4
      Width = 95
      Height = 21
      Align = alLeft
      BevelOuter = bvNone
      Caption = 'Pesquisando'
      Color = 4227327
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
      Left = 876
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = bfecharClick
    end
  end
  object listaetd: TDBGrid
    Left = 0
    Top = 323
    Width = 945
    Height = 166
    Align = alTop
    DataSource = Detd
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object plduplicados: TPanel
    Left = 0
    Top = 297
    Width = 945
    Height = 26
    Align = alTop
    Alignment = taLeftJustify
    BorderWidth = 4
    Caption = ' Registros Duplicados'
    TabOrder = 2
  end
  object Etdcodigo1: TEdit
    Left = 232
    Top = 521
    Width = 61
    Height = 21
    Color = clYellow
    TabOrder = 4
    OnExit = Etdcodigo1Exit
    OnKeyPress = FormKeyPress
  end
  object Etdcodigo2: TEdit
    Left = 232
    Top = 548
    Width = 61
    Height = 21
    Color = clYellow
    TabOrder = 6
    OnExit = Etdcodigo2Exit
    OnKeyPress = FormKeyPress
  end
  object bconfirma: TButton
    Left = 727
    Top = 618
    Width = 75
    Height = 25
    Caption = 'Confirma'
    Enabled = False
    TabOrder = 8
    OnClick = bconfirmaClick
  end
  object plEtdcodigo1: TPanel
    Left = 384
    Top = 521
    Width = 485
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 5
  end
  object plEtdcodigo2: TPanel
    Left = 384
    Top = 548
    Width = 485
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 7
  end
  object blimpar: TButton
    Left = 808
    Top = 618
    Width = 95
    Height = 25
    Caption = 'Limpar Sele'#231#227'o'
    TabOrder = 9
    OnClick = blimparClick
  end
  object mostratabelas: TProgressBar
    Left = 232
    Top = 575
    Width = 671
    Height = 17
    TabOrder = 11
  end
  object pltpeidentificacao1: TPanel
    Left = 299
    Top = 521
    Width = 79
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 12
  end
  object pltpeidentificacao2: TPanel
    Left = 299
    Top = 548
    Width = 79
    Height = 21
    Alignment = taLeftJustify
    BevelOuter = bvLowered
    BorderWidth = 3
    TabOrder = 13
  end
  object consulta: TUniQuery
    SQL.Strings = (
      'SELECT DISTINCT'
      '  etd.etdcodigo,'
      '  etddoc1,'
      '  etdidentificacao,'
      '  COUNT(etddoc1),'
      '  tpecodigo'
      'FROM etd'
      'GROUP BY etddoc1'
      'HAVING COUNT(etddoc1) > 1')
    Left = 736
    Top = 204
    object etdd: TIntegerField
      FieldName = 'etdcodigo'
    end
    object consultaetddoc1: TStringField
      FieldName = 'etddoc1'
    end
    object consultaetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object Dconsulta: TUniDataSource
    DataSet = consulta
    OnDataChange = DconsultaDataChange
    Left = 676
    Top = 208
  end
  object etd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etdcodigo,'
      '  etd.etdidentificacao,'
      '  etddoc1,'
      '  etd.etdapelido,'
      '  etd.tpecodigo,'
      '  CONCAT(edrrua, '#39', '#39', edrnumero) AS edrrua,'
      '  edrinscest,'
      '  cddnome,'
      '  tpeidentificacao'
      'FROM etd,'
      '     edr,'
      '     cdd,'
      '     tpe'
      'WHERE etd.etdcodigo = edr.etdcodigo'
      'AND etd.tpecodigo = tpe.tpecodigo'
      'AND edr.cddcodigo = cdd.cddcodigo'
      'AND etddoc1 = :etddoc1')
    Left = 520
    Top = 244
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etddoc1'
        Value = nil
      end>
    object etdetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object etdtpeidentificacao: TStringField
      DisplayLabel = 'Tipo Pessoa'
      FieldName = 'tpeidentificacao'
    end
    object etdetddoc1: TStringField
      DisplayLabel = 'Documento'
      FieldName = 'etddoc1'
    end
    object etdedrinscest: TStringField
      DisplayLabel = 'Inscr. Estadual'
      FieldName = 'edrinscest'
    end
    object etdetdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social / Nome'
      FieldName = 'etdidentificacao'
      Size = 60
    end
    object etdetdapelido: TStringField
      DisplayLabel = 'Fantasia / Apelido'
      FieldName = 'etdapelido'
      Size = 45
    end
    object etdedrrua: TStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'edrrua'
      Size = 50
    end
    object etdcddnome: TStringField
      DisplayLabel = 'Cidade'
      FieldName = 'cddnome'
      Size = 50
    end
    object etdtpecodigo: TIntegerField
      FieldName = 'tpecodigo'
      Visible = False
    end
  end
  object Detd: TUniDataSource
    DataSet = etd
    Left = 556
    Top = 240
  end
  object edr: TUniQuery
    Left = 868
    Top = 244
  end
  object ajuste: TUniQuery
    Left = 652
    Top = 448
  end
  object edretf: TUniQuery
    Left = 800
    Top = 424
  end
end
