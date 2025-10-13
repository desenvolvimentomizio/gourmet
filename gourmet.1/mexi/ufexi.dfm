inherited fexi: Tfexi
  ActiveControl = exbcodigo
  Caption = 'Imagens para Evento'
  ClientHeight = 287
  ClientWidth = 548
  ExplicitWidth = 564
  ExplicitHeight = 326
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 258
    Width = 548
    ExplicitTop = 219
    ExplicitWidth = 548
    inherited bconfirma: TBitBtn
      Left = 394
      ExplicitLeft = 394
    end
    inherited bcancela: TBitBtn
      Left = 469
      ExplicitLeft = 469
    end
    inherited bfechar: TBitBtn
      Left = 329
      ExplicitLeft = 329
    end
  end
  inherited paginas: TPageControl
    Width = 548
    Height = 258
    ExplicitWidth = 548
    ExplicitHeight = 219
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 540
      ExplicitHeight = 191
      object lbcodigo: TLabel
        Left = 8
        Top = 6
        Width = 37
        Height = 13
        CustomHint = BalloonHint
        Caption = 'C'#243'digo:'
        FocusControl = exicodigo
      end
      object lbevento: TLabel
        Left = 8
        Top = 36
        Width = 38
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Evento:'
        FocusControl = exbcodigo
      end
      object lbimagem: TLabel
        Left = 8
        Top = 63
        Width = 42
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Imagem:'
        FocusControl = imscodigo
      end
      object lbsegundos: TLabel
        Left = 322
        Top = 117
        Width = 3
        Height = 13
        CustomHint = BalloonHint
      end
      object Label1: TLabel
        Left = 8
        Top = 117
        Width = 70
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Periodo Inicial:'
        FocusControl = exiinicio
      end
      object Label2: TLabel
        Left = 8
        Top = 144
        Width = 65
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Periodo Final:'
        FocusControl = paginas
      end
      object Label3: TLabel
        Left = 8
        Top = 90
        Width = 100
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Programa'#231#227'o do Dia:'
        FocusControl = bcancela
      end
      object Label4: TLabel
        Left = 8
        Top = 171
        Width = 88
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Frase de Exibi'#231#227'o:'
        FocusControl = exifra
      end
      object exicodigo: TDBEdit
        Left = 142
        Top = 6
        Width = 99
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exicodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object exbcodigo: TDBEdit
        Left = 142
        Top = 33
        Width = 99
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exbcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object imscodigo: TDBEdit
        Left = 142
        Top = 60
        Width = 99
        Height = 21
        CustomHint = BalloonHint
        DataField = 'imscodigo'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object exiinicio: TDBEdit
        Left = 142
        Top = 114
        Width = 174
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exiinicio'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object exifinal: TDBEdit
        Left = 142
        Top = 141
        Width = 174
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exifinal'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object exhidentificacao: TDBEdit
        Left = 142
        Top = 87
        Width = 99
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exhcodigo'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object exifra: TDBEdit
        Left = 142
        Top = 168
        Width = 379
        Height = 21
        CustomHint = BalloonHint
        DataField = 'exifra'
        DataSource = DSRegistro
        MaxLength = 50
        TabOrder = 6
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 404
    Top = 64
  end
  inherited consulta: TUniQuery
    Top = 92
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select exicodigo,exbcodigo,imscodigo,exhcodigo,exiregistro,exiin' +
        'icio,exifinal,exifra from exi where exicodigo =:exicodigo')
    Left = 316
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'exicodigo'
        Value = nil
      end>
    object registroexicodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'exicodigo'
    end
    object registroexbcodigo: TIntegerField
      DisplayLabel = 'Evento'
      FieldName = 'exbcodigo'
      Required = True
    end
    object registroexbidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'exbidentificacao'
      LookupDataSet = exb
      LookupKeyFields = 'exbcodigo'
      LookupResultField = 'exbidentificacao'
      KeyFields = 'exbcodigo'
      Size = 5
      Lookup = True
    end
    object registroimscodigo: TIntegerField
      DisplayLabel = 'Imagem'
      FieldName = 'imscodigo'
      Required = True
    end
    object registroimsidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'imsidentificacao'
      LookupDataSet = ims
      LookupKeyFields = 'imscodigo'
      LookupResultField = 'imsidentificacao'
      KeyFields = 'imscodigo'
      Size = 5
      Lookup = True
    end
    object registroexhcodigo: TIntegerField
      FieldName = 'exhcodigo'
      Required = True
    end
    object registroexhidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'exhidentificacao'
      LookupDataSet = exh
      LookupKeyFields = 'exhcodigo'
      LookupResultField = 'exhidentificacao'
      KeyFields = 'exhcodigo'
      Size = 5
      Lookup = True
    end
    object registroexiinicio: TDateField
      DisplayLabel = 'Periodo de Inicio'
      FieldName = 'exiinicio'
      Required = True
    end
    object registroexifinal: TDateField
      DisplayLabel = 'Periodo Final'
      FieldName = 'exifinal'
      Required = True
    end
    object registroexiregistro: TDateField
      FieldName = 'exiregistro'
      Required = True
    end
    object registroexifra: TStringField
      DisplayLabel = 'Frase de Exibi'#231#227'o'
      FieldName = 'exifra'
      Required = True
      Size = 50
    end
  end
  inherited BalloonHint: TBalloonHint
    Left = 444
    Top = 136
  end
  inherited acoesfrm: TActionList
    Left = 380
    Top = 20
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object exb: TUniQuery
    SQL.Strings = (
      
        'select exbcodigo,exbidentificacao from exb where exbcodigo =:exb' +
        'codigo')
    Left = 112
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'exbcodigo'
        Value = nil
      end>
    object exbexbcodigo: TIntegerField
      FieldName = 'exbcodigo'
    end
    object exbexbidentificacao: TStringField
      FieldName = 'exbidentificacao'
      Size = 50
    end
  end
  object ims: TUniQuery
    SQL.Strings = (
      'select imscodigo,imsidentificacao from ims')
    Left = 80
    Top = 24
    object imsimscodigo: TIntegerField
      FieldName = 'imscodigo'
    end
    object imsimsidentificacao: TStringField
      FieldName = 'imsidentificacao'
      Size = 200
    end
  end
  object exh: TUniQuery
    SQL.Strings = (
      
        'select exhcodigo,exhidentificacao from exh where exbcodigo =:exb' +
        'codigo')
    Left = 32
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'exbcodigo'
        Value = nil
      end>
    object exhexhcodigo: TIntegerField
      FieldName = 'exhcodigo'
    end
    object exhexhidentificacao: TStringField
      FieldName = 'exhidentificacao'
      Size = 50
    end
  end
end
