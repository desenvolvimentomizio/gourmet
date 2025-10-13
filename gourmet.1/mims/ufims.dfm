inherited fims: Tfims
  ActiveControl = imsidentificacao
  Caption = 'Cadastro de imagens'
  ClientHeight = 354
  ClientWidth = 491
  ExplicitWidth = 507
  ExplicitHeight = 393
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 325
    Width = 491
    ExplicitTop = 325
    ExplicitWidth = 491
    inherited bconfirma: TBitBtn
      Left = 337
      ExplicitLeft = 337
    end
    inherited bcancela: TBitBtn
      Left = 412
      ExplicitLeft = 412
    end
    inherited bfechar: TBitBtn
      Left = 272
      ExplicitLeft = 272
    end
  end
  inherited paginas: TPageControl
    Width = 491
    Height = 325
    ExplicitWidth = 491
    ExplicitHeight = 325
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 483
      ExplicitHeight = 297
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 37
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo:'
        FocusControl = imscodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 50
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Descri'#231#227'o:'
        FocusControl = imsidentificacao
      end
      object Label3: TLabel
        Left = 8
        Top = 60
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Imagem:'
        FocusControl = imsimagem
      end
      object Label4: TLabel
        Left = 136
        Top = 268
        Width = 170
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tamanho m'#237'nimo: 1280 x 768 pixels'
      end
      object imscodigo: TDBEdit
        Left = 136
        Top = 6
        Width = 134
        Height = 21
        CustomHint = BalloonHint
        DataField = 'imscodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object imsidentificacao: TDBEdit
        Left = 136
        Top = 33
        Width = 329
        Height = 21
        CustomHint = BalloonHint
        DataField = 'imsidentificacao'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object imsimagem: TDBImage
        Left = 136
        Top = 60
        Width = 329
        Height = 197
        CustomHint = BalloonHint
        DataField = 'imsimagem'
        DataSource = DSRegistro
        ReadOnly = True
        Stretch = True
        TabOrder = 3
      end
      object btCarregaImagem: TButton
        Left = 345
        Top = 263
        Width = 120
        Height = 25
        CustomHint = BalloonHint
        Caption = 'Carrega Imagem'
        TabOrder = 2
        OnClick = btCarregaImagemClick
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 220
    Top = 96
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select imscodigo,imsidentificacao,clbcodigo,imsregistro,imsimage' +
        'm from ims where imscodigo=:imscodigo')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'imscodigo'
        Value = nil
      end>
    object registroimscodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'imscodigo'
    end
    object registroimsidentificacao: TStringField
      FieldName = 'imsidentificacao'
      Required = True
      Size = 200
    end
    object registroimsimagem: TBlobField
      FieldName = 'imsimagem'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object registroimsregistro: TDateField
      FieldName = 'imsregistro'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object OpenPictureDialog: TOpenPictureDialog
    Left = 44
    Top = 112
  end
end
