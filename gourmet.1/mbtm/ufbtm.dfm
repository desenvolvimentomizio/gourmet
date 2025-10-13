inherited fbtm: Tfbtm
  ActiveControl = btmidentificacao
  Caption = 'Item do Menu'
  ClientHeight = 697
  ClientWidth = 773
  ExplicitWidth = 789
  ExplicitHeight = 736
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 668
    Width = 773
    ExplicitTop = 668
    ExplicitWidth = 773
    inherited bconfirma: TBitBtn
      Left = 619
      ExplicitLeft = 619
    end
    inherited bcancela: TBitBtn
      Left = 694
      ExplicitLeft = 694
    end
    inherited bfechar: TBitBtn
      Left = 554
      ExplicitLeft = 554
    end
  end
  inherited paginas: TPageControl
    Width = 773
    Height = 668
    ExplicitWidth = 773
    ExplicitHeight = 668
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 765
      ExplicitHeight = 640
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 33
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo'
        FocusControl = btmcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 87
        Width = 72
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Arquivo da BPL'
        FocusControl = bplcodigo
      end
      object Label3: TLabel
        Left = 8
        Top = 33
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identifica'#231#227'o'
        FocusControl = btmidentificacao
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Dica do Menu'
        FocusControl = btmdica
      end
      object Label5: TLabel
        Left = 8
        Top = 167
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Imagem'
      end
      object Label7: TLabel
        Left = 17
        Top = 252
        Width = 3
        Height = 13
        CustomHint = BalloonHint
      end
      object Label8: TLabel
        Left = 8
        Top = 141
        Width = 29
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Grupo'
        FocusControl = grmcodigo
      end
      object imgAplicacion: TImage
        Left = 136
        Top = 165
        Width = 105
        Height = 105
        CustomHint = BalloonHint
        Center = True
      end
      object Label6: TLabel
        Left = 8
        Top = 60
        Width = 32
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ordem'
        FocusControl = btmordem
      end
      object Bevel1: TBevel
        Left = 0
        Top = 0
        Width = 765
        Height = 445
        CustomHint = BalloonHint
        Align = alTop
      end
      object btmcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 64
        Height = 21
        CustomHint = BalloonHint
        DataField = 'btmcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object bplcodigo: TDBEdit
        Left = 136
        Top = 84
        Width = 64
        Height = 21
        CustomHint = BalloonHint
        DataField = 'bplcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object btmidentificacao: TDBEdit
        Left = 136
        Top = 30
        Width = 361
        Height = 21
        CustomHint = BalloonHint
        DataField = 'btmidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object btmdica: TDBEdit
        Left = 136
        Top = 111
        Width = 609
        Height = 21
        CustomHint = BalloonHint
        DataField = 'btmdica'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object grmcodigo: TDBEdit
        Left = 136
        Top = 138
        Width = 64
        Height = 21
        CustomHint = BalloonHint
        DataField = 'grmcodigo'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object btmformaabe: TDBRadioGroup
        Left = 136
        Top = 276
        Width = 185
        Height = 57
        CustomHint = BalloonHint
        Caption = ' Forma de Emiss'#227'o '
        Columns = 2
        DataField = 'btmformaabe'
        DataSource = DSRegistro
        Items.Strings = (
          'Lista'
          'P'#225'gina')
        TabOrder = 6
        Values.Strings = (
          '1'
          '2')
      end
      object btmtipobotao: TDBRadioGroup
        Left = 352
        Top = 276
        Width = 185
        Height = 57
        CustomHint = BalloonHint
        Caption = ' Tipo de Bot'#227'o '
        Columns = 2
        DataField = 'btmtipobotao'
        DataSource = DSRegistro
        Items.Strings = (
          'Normal'
          'Pequeno')
        TabOrder = 7
        Values.Strings = (
          '1'
          '2')
      end
      object btCarregaImagem: TButton
        Left = 247
        Top = 245
        Width = 122
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Carrega Imagem'
        TabOrder = 8
        TabStop = False
        OnClick = btCarregaImagemClick
      end
      object btmordem: TDBEdit
        Left = 136
        Top = 57
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'btmordem'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object WebBrowser: TWebBrowser
        Left = 0
        Top = 471
        Width = 765
        Height = 169
        CustomHint = BalloonHint
        Align = alClient
        TabOrder = 9
        ExplicitTop = 416
        ExplicitHeight = 224
        ControlData = {
          4C000000114F0000771100000000000000000000000000000000000000000000
          000000004C000000000000000000000001000000E0D057007335CF11AE690800
          2B2E126208000000000000004C0000000114020000000000C000000000000046
          8000000000000000000000000000000000000000000000000000000000000000
          00000000000000000100000000000000000000000000000000000000}
      end
      object PlTitulo: TPanel
        Left = 0
        Top = 445
        Width = 765
        Height = 26
        CustomHint = BalloonHint
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        BorderWidth = 2
        Caption = 'Ajuda'
        Color = 12615680
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentBackground = False
        ParentFont = False
        TabOrder = 10
        object btCarregaArquivo: TButton
          Left = 641
          Top = 2
          Width = 122
          Height = 22
          CustomHint = BalloonHint
          Align = alRight
          Caption = 'Carrega Arquivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnClick = btCarregaArquivoClick
        end
        object btSalvaArquivo: TButton
          Left = 519
          Top = 2
          Width = 122
          Height = 22
          CustomHint = BalloonHint
          Align = alRight
          Caption = 'Salva Arquivo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          OnClick = btSalvaArquivoClick
        end
      end
      object DBRadioGroup1: TDBRadioGroup
        Left = 136
        Top = 339
        Width = 609
        Height = 102
        CustomHint = BalloonHint
        Caption = '  Uilizado nos Seguintes ramos de atividade '
        Columns = 5
        DataField = 'btmatividade'
        DataSource = DSRegistro
        Items.Strings = (
          'Todos'
          'Mercado'
          'Varejo'
          'Restaurante'
          'Financeiro'
          'Advocacia'
          'Imobiliaria'
          'Mecanica')
        TabOrder = 11
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 604
    Top = 40
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  btmcodigo,'
      '  bplcodigo,'
      '  btmidentificacao,'
      '  btmdica,'
      '  btmimagem,'
      '  btmformaabe,'
      '  btmtipobotao,'
      '  grmcodigo,'
      '  btmordem,'
      '  btmajuda,'
      '  btmatividade '
      'FROM btm where btmcodigo=:btmcodigo')
    Left = 532
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'btmcodigo'
        Value = nil
      end>
    object registrobtmcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'C'#243'digo'
      FieldName = 'btmcodigo'
    end
    object registrobplcodigo: TIntegerField
      DisplayLabel = 'Arquivo da BPL'
      FieldName = 'bplcodigo'
      Required = True
    end
    object registrobplidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'bplidentificacao'
      LookupDataSet = bpl
      LookupKeyFields = 'bplcodigo'
      LookupResultField = 'bplidentificacao'
      KeyFields = 'bplcodigo'
      Size = 50
      Lookup = True
    end
    object registrobtmidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'btmidentificacao'
      Required = True
      Size = 50
    end
    object registrobtmdica: TStringField
      DisplayLabel = 'Dica do Menu'
      FieldName = 'btmdica'
      Size = 250
    end
    object registrobtmimagem: TBlobField
      DisplayLabel = 'Imagem'
      FieldName = 'btmimagem'
    end
    object registrobtmformaabe: TIntegerField
      DisplayLabel = 'Forma de Abertura'
      FieldName = 'btmformaabe'
      Required = True
    end
    object registrobtmtipobotao: TIntegerField
      DisplayLabel = 'Tipo de Bot'#227'o'
      FieldName = 'btmtipobotao'
      Required = True
    end
    object registrogrmcodigo: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'grmcodigo'
      Required = True
    end
    object registrogrmidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'grmidentificacao'
      LookupDataSet = grm
      LookupKeyFields = 'grmcodigo'
      LookupResultField = 'grmidentificacao'
      KeyFields = 'grmcodigo'
      Size = 50
      Lookup = True
    end
    object registrobtmordem: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'btmordem'
      Required = True
    end
    object registrobtmajuda: TBlobField
      FieldName = 'btmajuda'
    end
    object registrobtmatividade: TIntegerField
      FieldName = 'btmatividade'
    end
  end
  inherited dcp: TUniQuery
    Left = 648
    Top = 140
  end
  inherited dtb: TUniQuery
    Left = 604
    Top = 140
  end
  inherited coa: TUniQuery
    Left = 352
    Top = 188
  end
  inherited cau: TUniQuery
    Left = 568
    Top = 144
  end
  inherited acoesfrm: TActionList
    Left = 596
    Top = 292
  end
  inherited cpg: TUniQuery
    Left = 84
    Top = 224
  end
  inherited cpc: TUniQuery
    Left = 725
    Top = 129
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object OpenPictureDialog: TOpenDialog
    DefaultExt = 'png'
    Filter = 'Imagens|*.png'
    Title = 'Selecione a Logo Marca da Empresa'
    Left = 468
    Top = 147
  end
  object bpl: TUniQuery
    SQL.Strings = (
      'select bplcodigo, bplidentificacao from bpl')
    Constraints = <>
    Left = 640
    Top = 176
    object bplbplcodigo: TIntegerField
      FieldName = 'bplcodigo'
    end
    object bplbplidentificacao: TStringField
      FieldName = 'bplidentificacao'
      Size = 50
    end
  end
  object grm: TUniQuery
    SQL.Strings = (
      'select grmcodigo, grmidentificacao from grm')
    Constraints = <>
    Left = 632
    Top = 224
    object grmgrmcodigo: TIntegerField
      FieldName = 'grmcodigo'
    end
    object grmgrmidentificacao: TStringField
      FieldName = 'grmidentificacao'
      Size = 50
    end
  end
  object AbreArquivo: TFileOpenDialog
    DefaultExtension = '*.mht'
    FavoriteLinks = <>
    FileTypes = <
      item
        DisplayName = 'Arquivo do tipo Help em Html do Word'
        FileMask = '*.mht'
      end>
    OkButtonLabel = 'Confirma'
    Options = []
    Title = 'Carrega Arquivo de Ajuda'
    Left = 684
    Top = 416
  end
  object SalvaArquivo: TSaveTextFileDialog
    DefaultExt = 'mht'
    Filter = 'Ajuda do mizio|*.mht'
    Title = 'Salvar arquivo de ajuda'
    Left = 708
    Top = 288
  end
end
