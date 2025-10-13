object frmxml: Tfrmxml
  Left = 393
  Top = 163
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  BorderWidth = 1
  Caption = 'Manifesta'#231#227'o e Download de XML'
  ClientHeight = 551
  ClientWidth = 1013
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelLeft: TPanel
    Left = 0
    Top = 0
    Width = 181
    Height = 528
    Align = alLeft
    BevelOuter = bvNone
    Color = 14671839
    ParentBackground = False
    TabOrder = 0
    object btnConfiguracoes: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 489
      Width = 175
      Height = 36
      Align = alBottom
      Caption = 'Configura'#231#245'es'
      OnClick = btnConfiguracoesClick
    end
    object btnXMLsBaixados: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 129
      Width = 175
      Height = 36
      Align = alTop
      Caption = 'XML'#39's Baixados'
      OnClick = btnXMLsBaixadosClick
    end
    object btnManifestarNotas: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 87
      Width = 175
      Height = 36
      Align = alTop
      Caption = 'Manifestar Notas'
      OnClick = btnManifestarNotasClick
    end
    object btnAtualizarLista: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 45
      Width = 175
      Height = 36
      Align = alTop
      Caption = 'Atualizar Lista'
      OnClick = btnAtualizarListaClick
    end
    object btnConsultarSefaz: TSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 175
      Height = 36
      Align = alTop
      Caption = 'Consultar SEFAZ'
      Spacing = 1
      OnClick = btnConsultarSefazClick
    end
  end
  object PanelNbk: TPanel
    Left = 181
    Top = 0
    Width = 832
    Height = 528
    Align = alClient
    BevelOuter = bvNone
    Caption = 'PanelNbk'
    Color = 16119285
    ParentBackground = False
    ShowCaption = False
    TabOrder = 1
    object edtERROR: TLabel
      Left = 0
      Top = 398
      Width = 832
      Height = 20
      Align = alBottom
      Caption = 'Lista de mensagens'
      Color = 14671839
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Arial Narrow'
      Font.Pitch = fpVariable
      Font.Style = []
      Font.Quality = fqDraft
      ParentColor = False
      ParentFont = False
      Transparent = False
    end
    object ListBoxError: TListBox
      Left = 0
      Top = 418
      Width = 832
      Height = 110
      Align = alBottom
      ItemHeight = 13
      TabOrder = 1
    end
    object Notebook1: TNotebook
      Left = 0
      Top = 0
      Width = 832
      Height = 398
      Align = alClient
      TabOrder = 0
      TabStop = True
      object PageParams: TPage
        Left = 0
        Top = 0
        Caption = 'Page_0'
        object Label3: TLabel
          Left = 138
          Top = 44
          Width = 59
          Height = 13
          Caption = #218'ltimo NSU :'
          Color = 16119285
          ParentColor = False
        end
        object Label4: TLabel
          Left = 107
          Top = 71
          Width = 90
          Height = 13
          Caption = 'UF do Certificado :'
          Color = 16119285
          ParentColor = False
        end
        object Label5: TLabel
          Left = 110
          Top = 98
          Width = 86
          Height = 13
          Caption = 'N'#250'mero de S'#233'rie :'
          Color = 16119285
          ParentColor = False
        end
        object Label7: TLabel
          Left = 160
          Top = 152
          Width = 37
          Height = 13
          Caption = 'Senha :'
          Color = 16119285
          ParentColor = False
        end
        object Label8: TLabel
          Left = 106
          Top = 17
          Width = 91
          Height = 13
          Caption = #218'ltimo AutoInc ID :'
          Color = 16119285
          ParentColor = False
        end
        object Label10: TLabel
          Left = 24
          Top = 236
          Width = 173
          Height = 13
          Caption = 'Tempo p/ Auto Execu'#231#227'o Processo :'
          Color = 16119285
          ParentColor = False
        end
        object Label13: TLabel
          Left = 202
          Top = 257
          Width = 518
          Height = 32
          AutoSize = False
          Caption = 
            'N'#227'o defina intervalo de minutos curtos, isso poder'#227'o ocasionar l' +
            'entid'#227'o no computador, use o bom senso, aconselho o tempo ser ma' +
            'ior que 30 minutos.'
          Color = 16119285
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentColor = False
          ParentFont = False
          WordWrap = True
        end
        object Label1: TLabel
          Left = 110
          Top = 125
          Width = 86
          Height = 13
          Caption = 'N'#250'mero de S'#233'rie :'
          Color = 16119285
          ParentColor = False
        end
        object edtultNSU: TDBEdit
          Left = 202
          Top = 41
          Width = 100
          Height = 21
          DataField = 'ultNSU'
          DataSource = dscfg
          TabOrder = 2
        end
        object edtNumeroSerie: TDBEdit
          Left = 202
          Top = 95
          Width = 484
          Height = 21
          DataField = 'NumeroSerie'
          DataSource = dscfg
          TabOrder = 4
        end
        object btnPesquisarCertificado: TButton
          Left = 692
          Top = 94
          Width = 32
          Height = 23
          Caption = '. . .'
          TabOrder = 5
          OnClick = btnPesquisarCertificadoClick
        end
        object edtUF: TDBComboBox
          Left = 202
          Top = 68
          Width = 55
          Height = 21
          Style = csDropDownList
          DataField = 'UF'
          DataSource = dscfg
          Items.Strings = (
            'AC'
            'AL'
            'AM'
            'AP'
            'BA'
            'CE'
            'DF'
            'ES'
            'GO'
            'MA'
            'MG'
            'MS'
            'MT'
            'PA'
            'PB'
            'PE'
            'PI'
            'PR'
            'RJ'
            'RN'
            'RO'
            'RR'
            'RS'
            'SC'
            'SE'
            'SP'
            'TO')
          TabOrder = 3
        end
        object edtSenha: TDBEdit
          Left = 202
          Top = 149
          Width = 250
          Height = 21
          DataField = 'Senha'
          DataSource = dscfg
          TabOrder = 8
        end
        object edtidDFeAutoInc: TDBEdit
          Left = 202
          Top = 14
          Width = 100
          Height = 21
          DataField = 'idDFeAutoInc'
          DataSource = dscfg
          TabOrder = 0
        end
        object btnPost: TBitBtn
          Left = 593
          Top = 354
          Width = 153
          Height = 30
          Caption = 'Salvar Altera'#231#245'es'
          TabOrder = 12
          OnClick = btnPostClick
        end
        object edtAutoExecute: TDBCheckBox
          Left = 202
          Top = 206
          Width = 250
          Height = 23
          BiDiMode = bdLeftToRight
          Caption = 'Automatizar o processo de Consulta no SEFAZ'
          DataField = 'AutoExecute'
          DataSource = dscfg
          ParentBiDiMode = False
          TabOrder = 9
          ValueChecked = '1'
          ValueUnchecked = '0'
          OnClick = edtAutoExecuteClick
        end
        object edtAutoTimer: TDBEdit
          Left = 202
          Top = 233
          Width = 80
          Height = 21
          DataField = 'AutoTimer'
          DataSource = dscfg
          Enabled = False
          TabOrder = 10
        end
        object btnLimparBaseDados: TBitBtn
          Left = 13
          Top = 354
          Width = 153
          Height = 30
          Caption = 'Limpar base de dados'
          TabOrder = 11
          OnClick = btnLimparBaseDadosClick
        end
        object SSLLib: TDBRadioGroup
          Left = 460
          Top = 14
          Width = 265
          Height = 61
          Caption = 'Modo de uso do Certificado'
          Columns = 2
          DataField = 'SSLLib'
          DataSource = dscfg
          Items.Strings = (
            'Nativo Windows'
            'OpenSSL')
          TabOrder = 1
          Values.Strings = (
            '01'
            '02')
          OnChange = SSLLibChange
        end
        object edtArquivoPFX: TDBEdit
          Left = 202
          Top = 122
          Width = 484
          Height = 21
          DataField = 'ArquivoPFX'
          DataSource = dscfg
          TabOrder = 6
        end
        object btnPesquisarArquivoPFX: TButton
          Left = 692
          Top = 121
          Width = 32
          Height = 23
          Caption = '. . .'
          TabOrder = 7
          OnClick = btnPesquisarArquivoPFXClick
        end
      end
      object PageDFe: TPage
        Left = 0
        Top = 0
        Caption = 'Page_1'
        object DBGrid2: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 826
          Height = 392
          Align = alClient
          Ctl3D = True
          DataSource = dsres
          Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentCtl3D = False
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'xNumeroNFE'
              Title.Caption = 'N'#250'mero NFe'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'tpNF'
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dhEmi'
              Title.Caption = 'Emiss'#227'o'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'xNome'
              Title.Caption = 'Emitente'
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chNFe'
              Title.Caption = 'Chave'
              Width = 300
              Visible = True
            end>
        end
      end
      object PageXML: TPage
        Left = 0
        Top = 0
        Caption = 'Page_2'
        object DBGrid3: TDBGrid
          AlignWithMargins = True
          Left = 3
          Top = 97
          Width = 826
          Height = 298
          Align = alClient
          DataSource = dtsXml
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ReadOnly = True
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          Columns = <
            item
              Expanded = False
              FieldName = 'xNumeroNFE'
              Title.Caption = 'N'#250'mero NFe'
              Width = 85
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'dhEmi'
              Title.Caption = 'Emiss'#227'o'
              Width = 75
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'xNome'
              Title.Caption = 'Emitente'
              Width = 260
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'chNFe'
              Title.Caption = 'Chave'
              Width = 300
              Visible = True
            end>
        end
        object GroupBox1: TGroupBox
          AlignWithMargins = True
          Left = 3
          Top = 3
          Width = 826
          Height = 88
          Align = alTop
          Caption = 'Op'#231#245'es'
          TabOrder = 0
          DesignSize = (
            826
            88)
          object Label2: TLabel
            Left = 13
            Top = 30
            Width = 66
            Height = 13
            Caption = 'N'#250'mero NFe :'
            Color = 16119285
            ParentColor = False
          end
          object Label11: TLabel
            Left = 171
            Top = 30
            Width = 60
            Height = 13
            Caption = 'Data Inicial :'
            Color = 16119285
            ParentColor = False
          end
          object Label12: TLabel
            Left = 352
            Top = 30
            Width = 55
            Height = 13
            Caption = 'Data Final :'
            Color = 16119285
            ParentColor = False
          end
          object btnNFePesquisar: TButton
            Left = 527
            Top = 24
            Width = 70
            Height = 25
            Caption = 'Pesquisar'
            TabOrder = 2
            OnClick = btnNFePesquisarClick
          end
          object edtNumeroNFe: TSpinEdit
            Left = 80
            Top = 26
            Width = 80
            Height = 22
            Anchors = [akTop, akRight]
            MaxValue = 999999999
            MinValue = 0
            TabOrder = 5
            Value = 0
          end
          object edtDataInicial: TDateTimePicker
            Left = 235
            Top = 26
            Width = 110
            Height = 21
            Date = 42463.419280231480000000
            Time = 42463.419280231480000000
            TabOrder = 0
          end
          object edtDataFinal: TDateTimePicker
            Left = 410
            Top = 26
            Width = 110
            Height = 21
            Date = 42463.419569270830000000
            Time = 42463.419569270830000000
            TabOrder = 1
          end
          object btnNFePreview: TButton
            Left = 599
            Top = 24
            Width = 70
            Height = 25
            Caption = 'Visualizar'
            TabOrder = 3
            OnClick = btnNFePreviewClick
          end
          object btnNFeImprimir: TButton
            Left = 671
            Top = 24
            Width = 70
            Height = 25
            Caption = 'Imprimir'
            TabOrder = 4
            OnClick = btnNFeImprimirClick
          end
          object btnNFeGerarPDF: TButton
            Left = 527
            Top = 55
            Width = 70
            Height = 25
            Caption = 'Gerar PDFs'
            TabOrder = 6
            OnClick = btnNFeGerarPDFClick
          end
        end
      end
    end
  end
  object StatusShow: TStatusBar
    Left = 0
    Top = 528
    Width = 1013
    Height = 23
    Panels = <
      item
        Alignment = taCenter
        Text = 'Certificado :'
        Width = 75
      end
      item
        Alignment = taCenter
        Style = psOwnerDraw
        Width = 30
      end
      item
        Text = 'Empresa :'
        Width = 60
      end
      item
        Width = 350
      end
      item
        Text = 'CNPJ :'
        Width = 50
      end
      item
        Width = 150
      end
      item
        Text = 'Validade :'
        Width = 60
      end
      item
        Width = 100
      end>
    SizeGrip = False
  end
  object dscfg: TDataSource
    DataSet = dtmxml.XmlCfg
    OnStateChange = dscfgStateChange
    Left = 257
    Top = 458
  end
  object dsres: TDataSource
    AutoEdit = False
    DataSet = dtmxml.XmlDfe
    Left = 338
    Top = 458
  end
  object dtsXml: TDataSource
    AutoEdit = False
    DataSet = dtmxml.XmlNfe
    Left = 297
    Top = 459
  end
  object OpenDialog: TOpenDialog
    DefaultExt = '.pfx '
    Filter = 'Arquivo Certificado A1|*.pfx'
    Left = 381
    Top = 459
  end
end
