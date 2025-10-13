inherited ftrc: Tftrc
  ActiveControl = trcdescricao
  Caption = 'Tr'#226'mite'
  ClientHeight = 444
  ClientWidth = 913
  ExplicitWidth = 929
  ExplicitHeight = 483
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 415
    Width = 913
    ExplicitTop = 415
    ExplicitWidth = 913
    inherited bconfirma: TBitBtn
      Left = 759
      ExplicitLeft = 759
    end
    inherited bcancela: TBitBtn
      Left = 834
      ExplicitLeft = 834
    end
    inherited bfechar: TBitBtn
      Left = 694
      ExplicitLeft = 694
    end
  end
  inherited paginas: TPageControl
    Width = 913
    Height = 415
    ExplicitWidth = 913
    ExplicitHeight = 415
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 22
      ExplicitWidth = 905
      ExplicitHeight = 387
      object Label1: TLabel
        Left = 8
        Top = 3
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = trcchave
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 46
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o'
        FocusControl = trcchave
      end
      object Label3: TLabel
        Left = 8
        Top = 248
        Width = 36
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Anexos'
        FocusControl = trcchave
      end
      object trcdescricao: TDBMemo
        Left = 136
        Top = 30
        Width = 465
        Height = 187
        CustomHint = BalloonHint
        DataField = 'trcdescricao'
        DataSource = DSRegistro
        TabOrder = 0
        OnKeyDown = trcdescricaoKeyDown
        OnKeyPress = trcdescricaoKeyPress
        OnKeyUp = trcdescricaoKeyUp
      end
      object trcchave: TDBEdit
        Left = 136
        Top = 3
        Width = 89
        Height = 21
        CustomHint = BalloonHint
        DataField = 'trcchave'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object DBGridAnc: TDBGrid
        Left = 136
        Top = 240
        Width = 465
        Height = 97
        CustomHint = BalloonHint
        DataSource = DSAnc
        DrawingStyle = gdsGradient
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'ancidentificacao'
            Title.Caption = 'Arquivo'
            Width = 450
            Visible = True
          end>
      end
      object btIncluir: TBitBtn
        Left = 136
        Top = 343
        Width = 75
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Incluir'
        TabOrder = 3
        OnClick = btIncluirClick
      end
      object btExcluir: TBitBtn
        Left = 217
        Top = 343
        Width = 75
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Excluir'
        TabOrder = 4
        OnClick = btExcluirClick
      end
      object btDonwload: TBitBtn
        Left = 298
        Top = 343
        Width = 75
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Download'
        TabOrder = 5
        OnClick = btDonwloadClick
      end
      object plregimetributario: TPanel
        Left = 613
        Top = 30
        Width = 285
        Height = 147
        CustomHint = BalloonHint
        BorderWidth = 4
        TabOrder = 6
        Visible = False
        object ctdidentificacao: TDBEdit
          Left = 5
          Top = 25
          Width = 275
          Height = 21
          CustomHint = BalloonHint
          Align = alTop
          DataField = 'ctdidentificacao'
          DataSource = Dclr
          ReadOnly = True
          TabOrder = 0
        end
        object pltopregimetribitario: TPanel
          Left = 5
          Top = 5
          Width = 275
          Height = 20
          CustomHint = BalloonHint
          Align = alTop
          Caption = ' Dados Tribut'#225'rios'
          TabOrder = 1
        end
        object crtidentificacao: TDBEdit
          Left = 5
          Top = 46
          Width = 275
          Height = 21
          CustomHint = BalloonHint
          Align = alTop
          DataField = 'crtidentificacao'
          DataSource = Dclr
          ReadOnly = True
          TabOrder = 2
        end
        object talidentificacao: TDBEdit
          Left = 5
          Top = 67
          Width = 275
          Height = 21
          CustomHint = BalloonHint
          Align = alTop
          DataField = 'talidentificacao'
          DataSource = Dclr
          ReadOnly = True
          TabOrder = 3
        end
        object Panel1: TPanel
          Left = 5
          Top = 102
          Width = 275
          Height = 19
          CustomHint = BalloonHint
          Align = alBottom
          Caption = 'Vencimento do CERTIFICADO'
          TabOrder = 4
          ExplicitTop = 104
          ExplicitWidth = 187
        end
        object clrvencimentocertificado: TDBEdit
          Left = 5
          Top = 121
          Width = 275
          Height = 21
          CustomHint = BalloonHint
          Align = alBottom
          DataField = 'clrvencimentocertificado'
          DataSource = Dclr
          ReadOnly = True
          TabOrder = 5
          ExplicitTop = 123
          ExplicitWidth = 187
        end
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  trcchave,'
      '  chdchave,'
      '  trcregistro,'
      '  clbcodigo,'
      '  trcdescricao'
      'FROM trc where trcchave=:trcchave and chdchave=:chdchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trcchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'chdchave'
        Value = nil
      end>
    object registrotrcchave: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'Chave'
      FieldName = 'trcchave'
    end
    object registrochdchave: TIntegerField
      FieldName = 'chdchave'
    end
    object registrotrcregistro: TDateTimeField
      FieldName = 'trcregistro'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registrotrcdescricao: TStringField
      FieldName = 'trcdescricao'
      Required = True
      Size = 5000
    end
  end
  inherited ImgBusca: TPngImageList
    Left = 52
    Top = 136
    Bitmap = {}
  end
  inherited dau: TUniQuery
    Left = 204
    Top = 228
  end
  inherited lou: TUniQuery
    Left = 512
    Top = 24
  end
  object anc: TUniQuery
    SQL.Strings = (
      
        'select ancchave, trcchave, ancanexo, ancidentificacao from anc w' +
        'here trcchave=:trcchave')
    Left = 248
    Top = 224
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'trcchave'
        Value = nil
      end>
    object ancancchave: TIntegerField
      FieldName = 'ancchave'
    end
    object anctrcchave: TIntegerField
      FieldName = 'trcchave'
    end
    object ancancanexo: TBlobField
      FieldName = 'ancanexo'
    end
    object ancancidentificacao: TStringField
      FieldName = 'ancidentificacao'
      Size = 200
    end
  end
  object DSAnc: TUniDataSource
    DataSet = anc
    Left = 616
    Top = 184
  end
  object OpenDialog: TOpenDialog
    Left = 636
    Top = 144
  end
  object clr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  clr.clrchave,'
      '  clr.etdcodigo,'
      '  clr.crtcodigo,'
      '  clr.talcodigo,'
      '  clr.ctdcodigo,'
      '  clr.clrcnaeprincipal,'
      '  crt.crtidentificacao,'
      '  etd.etdidentificacao,'
      '  tal.talidentificacao,'
      '  ctd.ctdidentificacao,'
      '  clrvencimentocertificado '
      'FROM etd'
      '  INNER JOIN clr'
      '    ON etd.etdcodigo = clr.etdcodigo'
      '  INNER JOIN crt'
      '    ON crt.crtcodigo = clr.crtcodigo'
      '  INNER JOIN tal'
      '    ON tal.talcodigo = clr.talcodigo'
      '  INNER JOIN ctd'
      '    ON ctd.ctdcodigo = clr.ctdcodigo'
      ' where clr.etdcodigo=:etdcodigo')
    Left = 348
    Top = 65528
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object clrclrchave: TIntegerField
      DisplayLabel = 'Registro'
      FieldName = 'clrchave'
    end
    object clretdcodigo: TIntegerField
      DisplayLabel = 'Cd.Cliente'
      FieldName = 'etdcodigo'
    end
    object clrcrtcodigo: TIntegerField
      DisplayLabel = 'Cd.Regime'
      FieldName = 'crtcodigo'
    end
    object clrtalcodigo: TIntegerField
      DisplayLabel = 'Cd.Apura'#231#227'o'
      FieldName = 'talcodigo'
    end
    object clrctdcodigo: TIntegerField
      DisplayLabel = 'Cd.Contador'
      FieldName = 'ctdcodigo'
    end
    object clrclrcnaeprincipal: TStringField
      DisplayLabel = 'CNAE Principal'
      FieldName = 'clrcnaeprincipal'
      Size = 30
    end
    object clrcrtidentificacao: TStringField
      DisplayLabel = 'Regime Tribut'#225'rio'
      FieldName = 'crtidentificacao'
      Size = 50
    end
    object clretdidentificacao: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object clrtalidentificacao: TStringField
      DisplayLabel = 'Apura'#231#227'o do Lucro'
      FieldName = 'talidentificacao'
      Size = 50
    end
    object clrctdidentificacao: TStringField
      DisplayLabel = 'Contabilidade'
      FieldName = 'ctdidentificacao'
      Size = 50
    end
    object clrclrvencimentocertificado: TDateField
      FieldName = 'clrvencimentocertificado'
    end
  end
  object Dclr: TDataSource
    DataSet = clr
    Left = 392
    Top = 8
  end
end
