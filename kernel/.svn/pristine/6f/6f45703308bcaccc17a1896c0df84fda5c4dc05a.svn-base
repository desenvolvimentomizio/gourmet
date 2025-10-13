inherited fdtmcpr: Tfdtmcpr
  ActiveControl = etdcodigo
  Caption = 'fdtmcpr'
  ClientHeight = 223
  ClientWidth = 774
  ExplicitWidth = 790
  ExplicitHeight = 262
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 194
    Width = 774
    ExplicitTop = 194
    ExplicitWidth = 774
    inherited bconfirma: TBitBtn
      Left = 620
      ExplicitLeft = 620
    end
    inherited bcancela: TBitBtn
      Left = 695
      ExplicitLeft = 695
    end
    inherited bfechar: TBitBtn
      Left = 555
      ExplicitLeft = 555
    end
  end
  inherited paginas: TPageControl
    Width = 774
    Height = 194
    ExplicitWidth = 774
    ExplicitHeight = 194
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 8
        Top = 6
        Width = 69
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Transportador'
        FocusControl = etdcodigo
      end
      object Label2: TLabel
        Left = 8
        Top = 33
        Width = 76
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Estado da Placa'
        FocusControl = ufscodigo
      end
      object Label3: TLabel
        Left = 293
        Top = 33
        Width = 25
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Placa'
        FocusControl = dtmplaca
      end
      object etdcodigo: TDBEdit
        Left = 136
        Top = 3
        Width = 69
        Height = 21
        CustomHint = BalloonHint
        DataField = 'etdcodigo'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object ufscodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 33
        Height = 21
        CustomHint = BalloonHint
        DataField = 'ufscodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object dtmplaca: TDBEdit
        Left = 324
        Top = 30
        Width = 73
        Height = 21
        CustomHint = BalloonHint
        DataField = 'dtmplaca'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object GBEmbalagens: TGroupBox
        Left = 8
        Top = 68
        Width = 697
        Height = 85
        CustomHint = BalloonHint
        Caption = ' Dados Embalagens '
        TabOrder = 3
        object Label7: TLabel
          Left = 17
          Top = 27
          Width = 113
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Quantidade de Volumes'
        end
        object Label8: TLabel
          Left = 249
          Top = 27
          Width = 66
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Esp'#233'cie / Tipo'
        end
        object Label9: TLabel
          Left = 478
          Top = 27
          Width = 29
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Marca'
        end
        object Label10: TLabel
          Left = 78
          Top = 54
          Width = 52
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Peso Bruto'
        end
        object Label11: TLabel
          Left = 255
          Top = 54
          Width = 59
          Height = 13
          CustomHint = BalloonHint
          Caption = 'Peso L'#237'quido'
        end
        object dtmvolumes: TDBEdit
          Left = 136
          Top = 24
          Width = 89
          Height = 21
          CustomHint = BalloonHint
          DataField = 'dtmvolumes'
          DataSource = DSRegistro
          TabOrder = 0
        end
        object dtmespecie: TDBEdit
          Left = 327
          Top = 24
          Width = 134
          Height = 21
          CustomHint = BalloonHint
          DataField = 'dtmespecie'
          DataSource = DSRegistro
          TabOrder = 1
        end
        object dtmmarcas: TDBEdit
          Left = 520
          Top = 24
          Width = 149
          Height = 21
          CustomHint = BalloonHint
          DataField = 'dtmmarcas'
          DataSource = DSRegistro
          TabOrder = 2
        end
        object dtmpesobruto: TDBEdit
          Left = 136
          Top = 51
          Width = 89
          Height = 21
          CustomHint = BalloonHint
          DataField = 'dtmpesobruto'
          DataSource = DSRegistro
          TabOrder = 3
        end
        object dtmpesoliq: TDBEdit
          Left = 327
          Top = 51
          Width = 89
          Height = 21
          CustomHint = BalloonHint
          DataField = 'dtmpesoliq'
          DataSource = DSRegistro
          TabOrder = 4
        end
      end
    end
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select dtmchave, meschave, dtmplaca, dtmvolumes, dtmpesobruto, d' +
        'tmpesoliq, etdcodigo, ufscodigo, dtmespecie, dtmmarcas from dtm ' +
        'where dtmchave=:dtmchave and meschave=:meschave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'dtmchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object registrodtmchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'dtmchave'
    end
    object registromeschave: TIntegerField
      FieldName = 'meschave'
      Required = True
    end
    object registrodtmplaca: TStringField
      DisplayLabel = 'Placa'
      FieldName = 'dtmplaca'
      Required = True
      EditMask = '!LLL-9999;1;_'
      Size = 10
    end
    object registrodtmvolumes: TFloatField
      DisplayLabel = 'Volumes'
      FieldName = 'dtmvolumes'
      Required = True
    end
    object registrodtmpesobruto: TFloatField
      DisplayLabel = 'Peso Bruto'
      FieldName = 'dtmpesobruto'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object registrodtmpesoliq: TFloatField
      DisplayLabel = 'Peso L'#237'quido'
      FieldName = 'dtmpesoliq'
      Required = True
      DisplayFormat = '#,#0.0'
      EditFormat = '#,#0.0'
    end
    object registroetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      Required = True
    end
    object registroetdidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object registroufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object registroufssigla: TStringField
      FieldKind = fkLookup
      FieldName = 'ufssigla'
      LookupDataSet = ufs
      LookupKeyFields = 'ufscodigo'
      LookupResultField = 'ufssigla'
      KeyFields = 'ufscodigo'
      Size = 5
      Lookup = True
    end
    object registrodtmespecie: TStringField
      DisplayLabel = 'Esp'#233'cie da Embalagens'
      FieldName = 'dtmespecie'
      Size = 50
    end
    object registrodtmmarcas: TStringField
      DisplayLabel = 'Marca'
      FieldName = 'dtmmarcas'
      Size = 50
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 636
    Top = 28
    object etdetdcodigo: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Required = True
      Size = 50
    end
  end
  object ufs: TUniQuery
    SQL.Strings = (
      'select ufscodigo, ufssigla from ufs')
    Left = 676
    Top = 28
    object ufsufscodigo: TStringField
      FieldName = 'ufscodigo'
      Required = True
      Size = 10
    end
    object ufsufssigla: TStringField
      FieldName = 'ufssigla'
      Required = True
      Size = 3
    end
  end
  object mes: TUniQuery
    SQL.Strings = (
      'select refcodigo,etdcodigo from mes where meschave=:meschave')
    Left = 728
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'meschave'
        Value = nil
      end>
    object mesrefcodigo: TIntegerField
      FieldName = 'refcodigo'
    end
    object mesetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
  end
end
