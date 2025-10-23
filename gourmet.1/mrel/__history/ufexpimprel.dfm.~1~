object fexpimprel: Tfexpimprel
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'Exporta'#231#227'o - Importa'#231#227'o de Relat'#243'rios'
  ClientHeight = 572
  ClientWidth = 1023
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pbotoes: TPanel
    Left = 0
    Top = 543
    Width = 1023
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
      Left = 954
      Top = 4
      Width = 65
      Height = 21
      Align = alRight
      Caption = 'Fechar'
      TabOrder = 1
      OnClick = bfecharClick
    end
    object bReconectar: TBitBtn
      Left = 866
      Top = 4
      Width = 88
      Height = 21
      Align = alRight
      Caption = 'Reconectar'
      TabOrder = 2
      OnClick = bReconectarClick
    end
    object mostra: TProgressBar
      Left = 120
      Top = 8
      Width = 665
      Height = 17
      TabOrder = 3
      Visible = False
    end
  end
  object lbcodigojanela: TPanel
    Left = 914
    Top = 0
    Width = 90
    Height = 18
    BevelOuter = bvLowered
    Caption = '00.00.00.000-00'
    TabOrder = 1
  end
  object plCentro: TPanel
    Left = 0
    Top = 48
    Width = 1002
    Height = 495
    BevelOuter = bvNone
    TabOrder = 2
    object SBIncluirUm: TSpeedButton
      Left = 535
      Top = 180
      Width = 23
      Height = 22
      Caption = '>'
      OnClick = SBIncluirUmClick
    end
    object SBIncluirTodos: TSpeedButton
      Left = 535
      Top = 208
      Width = 23
      Height = 22
      Caption = '>>'
      OnClick = SBIncluirTodosClick
    end
    object SBExcluirUn: TSpeedButton
      Left = 535
      Top = 248
      Width = 23
      Height = 22
      Caption = '<'
      OnClick = SBExcluirUnClick
    end
    object SBExcluirTodos: TSpeedButton
      Left = 535
      Top = 276
      Width = 23
      Height = 22
      Caption = '<<'
      OnClick = SBExcluirTodosClick
    end
    object Splitter1: TSplitter
      Left = 586
      Top = 0
      Height = 495
      Align = alRight
      ExplicitLeft = 488
      ExplicitTop = 360
      ExplicitHeight = 100
    end
    object plEsquerda: TPanel
      Left = 0
      Top = 0
      Width = 521
      Height = 495
      Align = alLeft
      BevelOuter = bvLowered
      TabOrder = 0
      object plTitEsquerda: TPanel
        Left = 1
        Top = 1
        Width = 519
        Height = 30
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Caption = 'Relat'#243'rios Locais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGListLoc: TDBGrid
        Left = 1
        Top = 31
        Width = 519
        Height = 402
        Align = alTop
        Color = clCream
        DataSource = DrelLoc
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGListLocDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'relcodigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'relidentificacao'
            Width = 260
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'reltipodescri'
            Width = 70
            Visible = True
          end>
      end
      object plTitDescricaoLoc: TPanel
        Left = 1
        Top = 433
        Width = 519
        Height = 24
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Caption = 'Descri'#231#227'o do Relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object reltituloloc: TDBMemo
        Left = 1
        Top = 457
        Width = 519
        Height = 20
        TabStop = False
        Align = alClient
        Color = clCream
        DataField = 'reltitulo'
        DataSource = DrelLoc
        ReadOnly = True
        TabOrder = 3
      end
      object plInfLogLoc: TPanel
        Left = 1
        Top = 477
        Width = 519
        Height = 17
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 4
        object clbidentificacaoloc: TDBText
          Left = 57
          Top = 0
          Width = 104
          Height = 17
          Align = alLeft
          DataField = 'clbidentificacao'
          DataSource = Dlreloc
        end
        object lreregistroloc: TDBText
          Left = 161
          Top = 0
          Width = 104
          Height = 17
          Align = alLeft
          DataField = 'lreregistro'
          DataSource = Dlreloc
        end
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 57
          Height = 17
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderWidth = 4
          Caption = 'Usu'#225'rio:'
          TabOrder = 0
        end
      end
    end
    object plDireita: TPanel
      Left = 589
      Top = 0
      Width = 413
      Height = 495
      Align = alRight
      BevelOuter = bvLowered
      TabOrder = 1
      object plTitDireita: TPanel
        Left = 1
        Top = 1
        Width = 411
        Height = 30
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Caption = 'Relat'#243'rios Dispon'#237'veis'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object DBGListWeb: TDBGrid
        Left = 1
        Top = 31
        Width = 411
        Height = 402
        Align = alTop
        Color = clCream
        DataSource = DrelWeb
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGListWebDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'relcodigo'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'relidentificacao'
            Width = 430
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'reltipodescri'
            Visible = True
          end>
      end
      object plTitDescricaoWeb: TPanel
        Left = 1
        Top = 433
        Width = 411
        Height = 24
        Align = alTop
        Alignment = taLeftJustify
        BorderWidth = 4
        Caption = 'Descri'#231#227'o do Relat'#243'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object reltituloweb: TDBMemo
        Left = 1
        Top = 457
        Width = 411
        Height = 20
        TabStop = False
        Align = alClient
        Color = clCream
        DataField = 'reltitulo'
        DataSource = DrelWeb
        ReadOnly = True
        TabOrder = 3
      end
      object plInfLogWeb: TPanel
        Left = 1
        Top = 477
        Width = 411
        Height = 17
        Align = alBottom
        BevelOuter = bvNone
        TabOrder = 4
        object clbidentificacaoweb: TDBText
          Left = 57
          Top = 0
          Width = 104
          Height = 17
          Align = alLeft
          DataField = 'clbidentificacao'
          DataSource = Dlreweb
        end
        object lreregistroweb: TDBText
          Left = 161
          Top = 0
          Width = 125
          Height = 17
          Align = alLeft
          DataField = 'lreregistro'
          DataSource = Dlreweb
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 57
          Height = 17
          Align = alLeft
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BorderWidth = 4
          Caption = 'Usu'#225'rio:'
          TabOrder = 0
        end
      end
    end
  end
  object DrelWeb: TDataSource
    DataSet = relweb
    OnDataChange = DrelWebDataChange
    Left = 705
    Top = 153
  end
  object DrelLoc: TDataSource
    DataSet = relloc
    OnDataChange = DrelLocDataChange
    Left = 193
    Top = 137
  end
  object relloc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  relorigem,'
      '  reltipo,'
      '  if (reltipo=0,'#39'Normal'#39','#39'Customizado'#39') as reltipodescri,'
      '  if (relsituacao=1,'#39'Ativo'#39','#39'Inativo'#39') as relsituacaodescri,'
      '  relnomearquivo'
      'FROM rel order by relidentificacao')
    Left = 192
    Top = 200
    object rellocrelcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'relcodigo'
      Size = 11
    end
    object rellocrelidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'relidentificacao'
      Size = 80
    end
    object rellocreltitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'reltitulo'
      Size = 80
    end
    object rellocreltipodescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'reltipodescri'
      Size = 15
    end
    object rellocrelsituacaodescri: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'relsituacaodescri'
      Size = 15
    end
    object rellocrelnomearquivo: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'relnomearquivo'
      Size = 80
    end
    object rellocrelorigem: TStringField
      FieldName = 'relorigem'
      Size = 8
    end
    object rellocreltipo: TIntegerField
      FieldName = 'reltipo'
    end
  end
  object relweb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  relorigem,'
      '  reltipo,'
      '  if (reltipo=0,'#39'Normal'#39','#39'Customizado'#39') as reltipodescri,'
      '  if (relsituacao=1,'#39'Ativo'#39','#39'Inativo'#39') as relsituacaodescri,'
      '  relnomearquivo'
      '  FROM rel '
      ''
      ' ORDER by relidentificacao')
    Left = 704
    Top = 208
    object relwebrelcodigo: TStringField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'relcodigo'
      Size = 11
    end
    object relwebrelidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'relidentificacao'
      Size = 80
    end
    object relwebreltitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'reltitulo'
      Size = 255
    end
    object relwebreltipodescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'reltipodescri'
      Size = 11
    end
    object relwebrelsituacaodescri: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'relsituacaodescri'
      Size = 7
    end
    object relwebrelnomearquivo: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'relnomearquivo'
      Size = 80
    end
    object relwebrelorigem: TStringField
      FieldName = 'relorigem'
      Size = 8
    end
    object relwebreltipo: TIntegerField
      FieldName = 'reltipo'
    end
  end
  object consultaloc: TUniQuery
    Left = 192
    Top = 256
  end
  object consultaweb: TUniQuery
    Left = 704
    Top = 264
  end
  object relw: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  reltipo,'
      '  relsituacao,'
      '  relusaparametros,'
      '  relnomearquivo,'
      '  relarquivo,'
      '  relorigem'
      'FROM rel where relcodigo=:relcodigo')
    Left = 752
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object rell: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  reltipo,'
      '  relsituacao,'
      '  relusaparametros,'
      '  relnomearquivo,'
      '  relarquivo,'
      '  relorigem'
      'FROM rel where relcodigo=:relcodigo')
    Left = 248
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object rw: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  relorigem,'
      '  reltipo,'
      '  if (reltipo=0,'#39'Normal'#39','#39'Customizado'#39') as reltipodescri,'
      '  if (relsituacao=1,'#39'Ativo'#39','#39'Inativo'#39') as relsituacaodescri,'
      '  relnomearquivo'
      'FROM rel')
    Left = 832
    Top = 208
    object rwrelcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'relcodigo'
      Size = 11
    end
    object rwrelidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'relidentificacao'
      Size = 80
    end
    object rwreltitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'reltitulo'
      Size = 80
    end
    object rwreltipodescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'reltipodescri'
      Size = 15
    end
    object rwrelsituacaodescri: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'relsituacaodescri'
      Size = 15
    end
    object rwrelnomearquivo: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'relnomearquivo'
      Size = 80
    end
    object rwrelorigem: TStringField
      FieldName = 'relorigem'
      Size = 8
    end
    object rwreltipo: TIntegerField
      FieldName = 'reltipo'
    end
  end
  object rl: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  relcodigo,'
      '  relidentificacao,'
      '  reltitulo,'
      '  relorigem,'
      '  reltipo,'
      '  if (reltipo=0,'#39'Normal'#39','#39'Customizado'#39') as reltipodescri,'
      '  if (relsituacao=1,'#39'Ativo'#39','#39'Inativo'#39') as relsituacaodescri,'
      '  relnomearquivo'
      'FROM rel')
    Left = 288
    Top = 200
    object rlrelcodigo: TStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'relcodigo'
    end
    object rlrelidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'relidentificacao'
      Size = 80
    end
    object rlreltitulo: TStringField
      DisplayLabel = 'T'#237'tulo'
      FieldName = 'reltitulo'
      Size = 80
    end
    object rlreltipodescri: TStringField
      DisplayLabel = 'Tipo'
      FieldName = 'reltipodescri'
      Size = 15
    end
    object rlrelsituacaodescri: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'relsituacaodescri'
      Size = 15
    end
    object rlrelnomearquivo: TStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'relnomearquivo'
      Size = 80
    end
    object rlrelorigem: TStringField
      FieldName = 'relorigem'
      Size = 8
    end
    object rlreltipo: TIntegerField
      FieldName = 'reltipo'
    end
  end
  object lreloc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lreregistro,'
      '  clb.clbidentificacao'
      
        'FROM lre, clb where lre.clbcodigo=clb.clbcodigo and lre.relcodig' +
        'o=:relcodigo '
      'order by lreregistro desc '
      'limit 1')
    Left = 192
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object lreweb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lreregistro,'
      '  clb.clbidentificacao'
      
        'FROM lre, clb where lre.clbcodigo=clb.clbcodigo and lre.relcodig' +
        'o=:relcodigo '
      'order by lreregistro desc '
      'limit 1')
    Left = 704
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'relcodigo'
        Value = nil
      end>
  end
  object lrloc: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lrechave,'
      '  relcodigo,'
      '  clbcodigo,'
      '  lreregistro,'
      '  relarquivo'
      'FROM lre limit 0')
    Left = 288
    Top = 312
    object lrloclrechave: TIntegerField
      FieldName = 'lrechave'
    end
    object lrlocrelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
    object lrlocclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object lrloclreregistro: TDateTimeField
      FieldName = 'lreregistro'
    end
    object lrlocrelarquivo: TBlobField
      FieldName = 'relarquivo'
    end
  end
  object lrweb: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  lrechave,'
      '  relcodigo,'
      '  clbcodigo,'
      '  lreregistro,'
      '  relarquivo'
      'FROM lre limit 0')
    Left = 768
    Top = 328
    object lrweblrechave: TIntegerField
      FieldName = 'lrechave'
    end
    object lrwebrelcodigo: TStringField
      FieldName = 'relcodigo'
      Size = 11
    end
    object lrwebclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object lrweblreregistro: TDateTimeField
      FieldName = 'lreregistro'
    end
    object lrwebrelarquivo: TBlobField
      FieldName = 'relarquivo'
    end
  end
  object Dlreweb: TDataSource
    DataSet = lreweb
    Left = 707
    Top = 376
  end
  object Dlreloc: TDataSource
    DataSet = lreloc
    Left = 195
    Top = 360
  end
  object cfg: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  etd.etddoc1,'
      '  cfgmcfg.cfgcodigo'
      'FROM cfgmcfg'
      '  INNER JOIN etd'
      '    ON cfgmcfg.cfgetdempresa = etd.etdcodigo')
    Left = 468
    Top = 100
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      Size = 25
    end
  end
  object bpls: TUniQuery
    SQL.Strings = (
      'select bplcodigo, bplidentificacao from bpl')
    Left = 440
    Top = 328
  end
end
