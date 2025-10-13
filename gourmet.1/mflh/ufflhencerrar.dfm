inherited fflhencerrar: Tfflhencerrar
  ActiveControl = bconfirma
  Caption = 'Fechar Folha Gerencial'
  ClientHeight = 540
  ClientWidth = 890
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 511
    Width = 890
    inherited bconfirma: TBitBtn
      Left = 736
    end
    inherited bcancela: TBitBtn
      Left = 811
    end
    inherited bfechar: TBitBtn
      Left = 671
    end
  end
  inherited paginas: TPageControl
    Width = 890
    Height = 511
    inherited Principal: TTabSheet
      object Label1: TLabel
        Left = 3
        Top = 6
        Width = 31
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Chave'
        FocusControl = flhchave
      end
      object Label9: TLabel
        Left = 3
        Top = 33
        Width = 64
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Tipo de Folha'
        FocusControl = tflcodigo
      end
      object Label4: TLabel
        Left = 3
        Top = 60
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'M'#234's'
        FocusControl = flhmes
      end
      object Label5: TLabel
        Left = 203
        Top = 60
        Width = 19
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Ano'
        FocusControl = flhano
      end
      object Label3: TLabel
        Left = 345
        Top = 60
        Width = 62
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Identificacao'
        FocusControl = flhIdentificacao
      end
      object Label6: TLabel
        Left = 3
        Top = 87
        Width = 53
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Inicial'
        FocusControl = flhdtinicial
      end
      object Label7: TLabel
        Left = 244
        Top = 87
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Final'
        FocusControl = flhdtfinal
      end
      object Label8: TLabel
        Left = 413
        Top = 87
        Width = 48
        Height = 13
        CustomHint = BalloonHint
        Caption = 'Data Pgto'
        FocusControl = flhdtpgto
      end
      object flhchave: TDBEdit
        Left = 136
        Top = 3
        Width = 75
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhchave'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 0
      end
      object tflcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'tflcodigo'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 1
      end
      object flhmes: TDBEdit
        Left = 136
        Top = 57
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhmes'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 2
      end
      object flhano: TDBEdit
        Left = 228
        Top = 57
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhano'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 3
      end
      object flhIdentificacao: TDBEdit
        Left = 413
        Top = 57
        Width = 148
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhIdentificacao'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 4
      end
      object flhdtinicial: TDBEdit
        Left = 136
        Top = 84
        Width = 95
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhdtinicial'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 5
      end
      object flhdtfinal: TDBEdit
        Left = 312
        Top = 84
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhdtfinal'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 6
      end
      object flhdtpgto: TDBEdit
        Left = 467
        Top = 84
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        TabStop = False
        DataField = 'flhdtpgto'
        DataSource = DSRegistro
        ReadOnly = True
        TabOrder = 7
      end
      object plDetalhes: TPanel
        Left = 0
        Top = 111
        Width = 882
        Height = 372
        CustomHint = BalloonHint
        Align = alBottom
        TabOrder = 8
        object plTitColaboradores: TPanel
          Left = 1
          Top = 1
          Width = 880
          Height = 26
          CustomHint = BalloonHint
          Align = alTop
          Alignment = taLeftJustify
          BorderWidth = 2
          Caption = 'Colaboradores'
          Color = 12615680
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWhite
          Font.Height = -15
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentBackground = False
          ParentFont = False
          TabOrder = 0
        end
        object DBGListaEtd: TDBGrid
          Left = 1
          Top = 27
          Width = 880
          Height = 344
          CustomHint = BalloonHint
          Align = alClient
          DataSource = Defg
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDrawColumnCell = DBGListaEtdDrawColumnCell
          Columns = <
            item
              Expanded = False
              FieldName = 'etdcodigo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'etdidentificacao'
              Width = 350
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'evavalor'
              Width = 85
              Visible = True
            end>
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 308
    Top = 192
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select flhchave,eflcodigo, tflcodigo,flhidentificacao,flhmes,flh' +
        'ano,flhdtinicial,flhdtfinal,flhdtpgto, flhcriacao,clbcodigo from' +
        ' flh where flh.flhchave=:flhchave')
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end>
    object registroflhchave: TIntegerField
      AutoGenerateValue = arAutoInc
      FieldName = 'flhchave'
    end
    object registrotflcodigo: TIntegerField
      DisplayLabel = 'Tipo de Folha'
      FieldName = 'tflcodigo'
      Required = True
    end
    object registrotflidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'tflidentificacao'
      LookupDataSet = tfl
      LookupKeyFields = 'tflcodigo'
      LookupResultField = 'tflidentificacao'
      KeyFields = 'tflcodigo'
      Size = 50
      Lookup = True
    end
    object registroeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      Required = True
    end
    object registroeflidentificacao: TStringField
      FieldKind = fkLookup
      FieldName = 'eflidentificacao'
      LookupDataSet = efl
      LookupKeyFields = 'eflcodigo'
      LookupResultField = 'eflidentificacao'
      KeyFields = 'eflcodigo'
      Required = True
      Size = 35
      Lookup = True
    end
    object registroflhIdentificacao: TStringField
      FieldName = 'flhIdentificacao'
      Required = True
      Size = 35
    end
    object registroflhmes: TStringField
      FieldName = 'flhmes'
      Required = True
      EditMask = '00;1;_'
      Size = 2
    end
    object registroflhano: TStringField
      FieldName = 'flhano'
      Required = True
      EditMask = '0000;1;_'
      Size = 4
    end
    object registroflhdtinicial: TDateField
      FieldName = 'flhdtinicial'
      Required = True
    end
    object registroflhdtfinal: TDateField
      FieldName = 'flhdtfinal'
      Required = True
    end
    object registroflhdtpgto: TDateField
      FieldName = 'flhdtpgto'
      Required = True
    end
    object registroflhcriacao: TDateTimeField
      FieldName = 'flhcriacao'
    end
    object registroclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tfl: TUniQuery
    SQL.Strings = (
      'select tflcodigo, tflidentificacao from tfl')
    Left = 656
    Top = 88
    object tfltflcodigo: TIntegerField
      FieldName = 'tflcodigo'
    end
    object tfltflidentificacao: TStringField
      FieldName = 'tflidentificacao'
      Size = 35
    end
  end
  object efl: TUniQuery
    SQL.Strings = (
      'select eflcodigo,eflidentificacao from efl')
    Left = 712
    Top = 88
    object e: TIntegerField
      FieldName = 'eflcodigo'
    end
    object efleflidentificacao: TStringField
      FieldName = 'eflidentificacao'
      Size = 35
    end
  end
  object efg: TUniQuery
    SQL.Strings = (
      'SELECT e.efgchave'
      '     , e.flhchave'
      '     , e.etdcodigo'
      '     , e.eflcodigo'
      '     , (SELECT'
      '           etd.etdidentificacao'
      '         FROM etd'
      '         WHERE etd.etdcodigo = e.etdcodigo) AS etdidentificacao'
      '     , (SELECT'
      
        '           SUM(IF(evf.cedcodigo = 1, eva.evavalor, eva.evavalor ' +
        '* -1)) AS evavalor'
      '         FROM eva'
      '            , evf'
      '            , ced'
      '         WHERE eva.evfcodigo = evf.evfcodigo'
      '         AND evf.cedcodigo = ced.cedcodigo'
      '         AND eva.flhchave = e.flhchave'
      '         AND eva.etdcodigo = e.etdcodigo'
      '         AND eva.eflcodigo <> 9'
      '         GROUP BY eva.etdcodigo) AS evavalor'
      'FROM efg e'
      'WHERE flhchave = :flhchave'
      'AND e.eflcodigo IN (1, 2)')
    Left = 208
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end>
    object efgefgchave: TIntegerField
      FieldName = 'efgchave'
    end
    object efgflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object efgetdcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'etdcodigo'
    end
    object efgetdidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'etdidentificacao'
      Size = 50
    end
    object efgeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
    object efgevavalor: TFloatField
      DisplayLabel = 'Saldo R$'
      FieldName = 'evavalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
  end
  object Defg: TDataSource
    DataSet = efg
    Left = 252
    Top = 256
  end
end
