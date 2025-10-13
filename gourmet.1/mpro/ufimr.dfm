inherited fimr: Tfimr
  ActiveControl = imrdataprimeiroconsumo
  Caption = 'Hist'#243'rico de Consultas'
  ClientHeight = 715
  ClientWidth = 881
  ExplicitWidth = 897
  ExplicitHeight = 754
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 686
    Width = 881
    ExplicitTop = 686
    ExplicitWidth = 881
    object Label8: TLabel [0]
      Left = 105
      Top = 6
      Width = 560
      Height = 13
      CustomHint = BalloonHint
      AutoSize = False
      Caption = 
        'Motivo:  CV (falha no C'#243'digo Verificador) - SC (Sem C'#243'digo) - DI' +
        ' (Descri'#231#227'o Insuficiente)'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    inherited bconfirma: TBitBtn
      Left = 727
      Visible = False
      ExplicitLeft = 727
    end
    inherited bcancela: TBitBtn
      Left = 802
      Visible = False
      ExplicitLeft = 802
    end
    inherited bfechar: TBitBtn
      Left = 662
      Visible = True
      ExplicitLeft = 662
    end
  end
  inherited paginas: TPageControl
    Width = 881
    Height = 686
    ExplicitWidth = 881
    ExplicitHeight = 686
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 873
      ExplicitHeight = 658
      object Label1: TLabel
        Left = 12
        Top = 6
        Width = 83
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Primeira Consulta'
        FocusControl = imrdataprimeiroconsumo
      end
      object Label2: TLabel
        Left = 640
        Top = 6
        Width = 74
        Height = 13
        CustomHint = BalloonHint
        Caption = #218'ltima Consulta'
        FocusControl = imrdataultimoconsumo
      end
      object Label3: TLabel
        Left = 12
        Top = 33
        Width = 141
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pendente com c'#243'digo Interno'
        FocusControl = imrprodutospendentes_interno
      end
      object Label4: TLabel
        Left = 618
        Top = 33
        Width = 96
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pendentes com EAN'
        FocusControl = imrprodutospendentes_ean
      end
      object Label5: TLabel
        Left = 12
        Top = 60
        Width = 106
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Pendentes Devolvidos'
        FocusControl = imrprodutospendentes_devolvidos
      end
      object Label6: TLabel
        Left = 552
        Top = 60
        Width = 144
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data mais antiga de Pendente'
        FocusControl = imrprodutospendentes_datainicio
      end
      object Label7: TLabel
        Left = 12
        Top = 104
        Width = 154
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Resumo de Consultas realizadas'
        FocusControl = imrprodutospendentes_devolvidos
      end
      object imrdataprimeiroconsumo: TDBEdit
        Left = 184
        Top = 3
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'imrdataprimeiroconsumo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object imrdataultimoconsumo: TDBEdit
        Left = 720
        Top = 3
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'imrdataultimoconsumo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object imrprodutospendentes_interno: TDBEdit
        Left = 184
        Top = 30
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'imrprodutospendentes_interno'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 2
      end
      object imrprodutospendentes_ean: TDBEdit
        Left = 720
        Top = 30
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'imrprodutospendentes_ean'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 3
      end
      object imrprodutospendentes_devolvidos: TDBEdit
        Left = 184
        Top = 57
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'imrprodutospendentes_devolvidos'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 4
      end
      object imrprodutospendentes_datainicio: TDBEdit
        Left = 720
        Top = 57
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'imrprodutospendentes_datainicio'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 5
      end
      object DBGimd: TDBGrid
        Left = 12
        Top = 120
        Width = 842
        Height = 161
        CustomHint = BalloonHint
        DataSource = Dimd
        DrawingStyle = gdsGradient
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDrawColumnCell = DBGimdDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'imddata'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imdmetodo'
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imdmsg'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imdrequisicoes'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imdenviados'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'imdretornados'
            Visible = True
          end>
      end
      object GroupBox1: TGroupBox
        Left = 3
        Top = 304
        Width = 851
        Height = 351
        CustomHint = BalloonHint
        Anchors = [akLeft, akTop, akBottom]
        Caption = 'Situa'#231#227'o dos Produtos'
        TabOrder = 7
        object DBGLista: TDBGrid
          Left = 2
          Top = 54
          Width = 847
          Height = 295
          CustomHint = BalloonHint
          Align = alClient
          DataSource = DStabela
          DrawingStyle = gdsGradient
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGListaDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'imsid'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'imscodigo'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'imsdtinclusao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'imsdescricao'
              Width = 300
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'imsdtdevolucao'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'imsmotivodevolucao'
              Width = 100
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'imsremover'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Tahoma'
              Font.Style = []
              Title.Caption = '  '
              Width = 20
              Visible = True
            end>
        end
        object Panel1: TPanel
          AlignWithMargins = True
          Left = 5
          Top = 18
          Width = 841
          Height = 33
          CustomHint = BalloonHint
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 1
          object spmarcar: TSpeedButton
            AlignWithMargins = True
            Left = 543
            Top = 3
            Width = 195
            Height = 27
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Marcar selecionado para remo'#231#227'o'
            OnClick = spmarcarClick
            ExplicitLeft = 528
          end
          object SpeedButton2: TSpeedButton
            AlignWithMargins = True
            Left = 744
            Top = 3
            Width = 94
            Height = 27
            CustomHint = BalloonHint
            Align = alRight
            Caption = 'Remover'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton2Click
          end
        end
      end
    end
  end
  inherited cfg: TUniQuery
    SQL.Strings = (
      'SELECT cfgmsai.cfgcodigo'
      '     , cfgmsai.cfgbalanca'
      '     , cfgmsai.cfgnrseriepro'
      '     , cfgmsai.cfgrefepro'
      '     , cfgmsai.cfgcompro'
      '     , cfgmsai.cfgunitrib'
      '     , cfgmsai.cfgdoisprecos'
      '     , cfgmsai.cfgusagrade'
      '     , cfgmsai.cfgusaenderecamento'
      '     , cfgmsai.cfgprodefineicms'
      '     , cfgmsai.cfgextratosegmentado'
      '     , cfgmsai.cfgusaprecobase'
      '     , cfgmsai.cfgtabelasaux'
      '     , cfgmsai.cfgproinativsaldozero'
      '     , cfgmsai.cfgtributacaoimendes'
      '     , etd.etddoc1'
      ''
      'FROM cfgmsai'
      '  INNER join cfgmcfg  ON cfgmsai.cfgcodigo = cfgmcfg.cfgcodigo'
      '  INNER JOIN etd on etd.etdcodigo = cfgmcfg.cfgetdempresa')
    object cfgcfgcodigo: TIntegerField
      FieldName = 'cfgcodigo'
    end
    object cfgcfgrefepro: TIntegerField
      DisplayLabel = 'Utiliza refer'#234'ncia'
      FieldName = 'cfgrefepro'
    end
    object cfgcfgdoisprecos: TIntegerField
      DisplayLabel = 'Utiliza pre'#231'o a Vista e a Prazo'
      FieldName = 'cfgdoisprecos'
    end
    object cfgcfgusagrade: TIntegerField
      FieldName = 'cfgusagrade'
    end
    object cfgcfgusaenderecamento: TIntegerField
      FieldName = 'cfgusaenderecamento'
    end
    object cfgcfgprodefineicms: TIntegerField
      FieldName = 'cfgprodefineicms'
    end
    object cfgcfgbalanca: TIntegerField
      FieldName = 'cfgbalanca'
    end
    object cfgcfgextratosegmentado: TIntegerField
      FieldName = 'cfgextratosegmentado'
    end
    object cfgcfgusaprecobase: TIntegerField
      FieldName = 'cfgusaprecobase'
    end
    object cfgcfgtabelasaux: TIntegerField
      FieldName = 'cfgtabelasaux'
    end
    object cfgcfgproinativsaldozero: TIntegerField
      FieldName = 'cfgproinativsaldozero'
    end
    object cfgcfgtributacaoimendes: TIntegerField
      FieldName = 'cfgtributacaoimendes'
    end
    object cfgetddoc1: TStringField
      FieldName = 'etddoc1'
      Size = 50
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      'select'
      '  imrchave,'
      '  imrdataprimeiroconsumo,'
      '  imrdataultimoconsumo,'
      '  imrprodutospendentes_interno,'
      '  imrprodutospendentes_ean,'
      '  imrprodutospendentes_devolvidos,'
      '  imrprodutospendentes_datainicio'
      'from imr'
      '  where imrchave=:imrchave')
    Left = 516
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'imrchave'
        Value = nil
      end>
    object registroimrchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'imrchave'
    end
    object registroimrdataprimeiroconsumo: TDateField
      DisplayLabel = 'Primeira Consulta'
      FieldName = 'imrdataprimeiroconsumo'
    end
    object registroimrdataultimoconsumo: TDateField
      DisplayLabel = #218'ltima Consulta'
      FieldName = 'imrdataultimoconsumo'
    end
    object registroimrprodutospendentes_interno: TIntegerField
      DisplayLabel = 'Pendente com c'#243'digo Interno'
      FieldName = 'imrprodutospendentes_interno'
    end
    object registroimrprodutospendentes_ean: TIntegerField
      DisplayLabel = 'Pendentes com EAN'
      FieldName = 'imrprodutospendentes_ean'
    end
    object registroimrprodutospendentes_devolvidos: TIntegerField
      DisplayLabel = 'Pendentes Devolvidos'
      FieldName = 'imrprodutospendentes_devolvidos'
    end
    object registroimrprodutospendentes_datainicio: TDateField
      DisplayLabel = 'Data mais antiga de Pendente'
      FieldName = 'imrprodutospendentes_datainicio'
    end
  end
  inherited dcp: TUniQuery
    Left = 216
    Top = 252
  end
  inherited dtb: TUniQuery
    Left = 132
  end
  inherited coa: TUniQuery
    Left = 56
    Top = 220
  end
  inherited cau: TUniQuery
    Left = 488
    Top = 256
  end
  inherited acoesfrm: TActionList
    Left = 436
    Top = 284
  end
  inherited cpg: TUniQuery
    Left = 76
    Top = 168
  end
  inherited cpc: TUniQuery
    Left = 253
    Top = 217
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object imd: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  imdchave,'
      '  imrchave,'
      '  imddata,'
      '  imdmetodo,'
      '  imdmsg,'
      '  imdrequisicoes,'
      '  imdenviados,'
      '  imdretornados'
      '  FROM'
      '  imd'
      'where imrchave=:imrchave'
      'order by imddata desc')
    Left = 748
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'imrchave'
        Value = nil
      end>
    object imdimddata: TDateField
      DisplayLabel = 'Data'
      FieldName = 'imddata'
      ReadOnly = True
    end
    object imdimdmetodo: TStringField
      DisplayLabel = 'M'#233'todo da Consulta'
      FieldName = 'imdmetodo'
      ReadOnly = True
      Size = 200
    end
    object imdimdmsg: TStringField
      DisplayLabel = 'Mensagem'
      FieldName = 'imdmsg'
      ReadOnly = True
      Size = 200
    end
    object imdimdrequisicoes: TIntegerField
      DisplayLabel = 'Requisi'#231#245'es'
      FieldName = 'imdrequisicoes'
      ReadOnly = True
    end
    object imdimdenviados: TIntegerField
      DisplayLabel = 'Enviados'
      FieldName = 'imdenviados'
      ReadOnly = True
    end
    object imdimdretornados: TIntegerField
      DisplayLabel = 'Retornador'
      FieldName = 'imdretornados'
      ReadOnly = True
    end
  end
  object Dimd: TDataSource
    DataSet = imd
    Left = 796
    Top = 160
  end
  object imt: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  imtchave,'
      '  imtid,'
      '  imtcodigo,'
      '  imtdescricao,'
      '  imtdtinclusao,'
      '  imtdtdevolucao,'
      '  imtmotivodevolucao,'
      '  imtremover'
      '  FROM'
      ' imt'
      'order by imtdescricao')
    Left = 764
    Top = 224
    object imtimtid: TStringField
      DisplayLabel = 'C'#243'digo IMENDES'
      FieldName = 'imtid'
      Size = 200
    end
    object imtimtcodigo: TStringField
      DisplayLabel = 'EAN'
      FieldName = 'imtcodigo'
      Size = 200
    end
    object imtimtdescricao: TStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'imtdescricao'
      Size = 200
    end
    object imtimtdtinclusao: TDateField
      DisplayLabel = 'Inclus'#227'o'
      FieldName = 'imtdtinclusao'
    end
    object imtimtdtdevolucao: TDateField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'imtdtdevolucao'
    end
    object imtimtmotivodevolucao: TStringField
      DisplayLabel = 'Motivo'
      FieldName = 'imtmotivodevolucao'
    end
    object imtimtremover: TIntegerField
      FieldName = 'imtremover'
    end
  end
  object DStabela: TDataSource
    DataSet = imt
    Left = 820
    Top = 232
  end
  object RESTClientBase: TRESTClient
    BaseURL = 'http://localhost:9191/grp'
    Params = <
      item
        Kind = pkHTTPHEADER
        name = 'login'
        Options = [poDoNotEncode]
        Value = '14477548000131'
        ContentType = ctAPPLICATION_JSON
      end
      item
        Kind = pkHTTPHEADER
        name = 'senha'
        Options = [poDoNotEncode]
        Value = 'HPoLD9OmFOHb'
        ContentType = ctAPPLICATION_JSON
      end>
    HandleRedirects = True
    Left = 88
    Top = 376
  end
  object RESTResponseBase: TRESTResponse
    Left = 88
    Top = 432
  end
  object RESTRequestBase: TRESTRequest
    Client = RESTClientBase
    Method = rmPOST
    Params = <>
    Response = RESTResponseBase
    SynchronizedEvents = False
    Left = 96
    Top = 480
  end
end
