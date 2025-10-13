inherited fflhcalcular: Tfflhcalcular
  ActiveControl = bCalcular
  Caption = 'Calcular Folha Gerencial'
  ClientHeight = 574
  ClientWidth = 906
  ExplicitWidth = 922
  ExplicitHeight = 613
  PixelsPerInch = 96
  TextHeight = 13
  inherited pbotoes: TPanel
    Top = 545
    Width = 906
    ExplicitTop = 545
    ExplicitWidth = 906
    inherited bconfirma: TBitBtn
      Left = 752
      Enabled = False
      ExplicitLeft = 752
    end
    inherited bcancela: TBitBtn
      Left = 827
      ExplicitLeft = 827
    end
    inherited bfechar: TBitBtn
      Left = 687
      ExplicitLeft = 687
    end
  end
  inherited paginas: TPageControl
    Width = 906
    Height = 545
    ExplicitWidth = 906
    ExplicitHeight = 545
    inherited Principal: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 898
      ExplicitHeight = 517
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
        DataField = 'flhchave'
        DataSource = DSRegistro
        TabOrder = 0
      end
      object tflcodigo: TDBEdit
        Left = 136
        Top = 30
        Width = 49
        Height = 21
        CustomHint = BalloonHint
        DataField = 'tflcodigo'
        DataSource = DSRegistro
        TabOrder = 1
      end
      object flhmes: TDBEdit
        Left = 136
        Top = 57
        Width = 30
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhmes'
        DataSource = DSRegistro
        TabOrder = 2
      end
      object flhano: TDBEdit
        Left = 228
        Top = 57
        Width = 56
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhano'
        DataSource = DSRegistro
        TabOrder = 3
      end
      object flhIdentificacao: TDBEdit
        Left = 413
        Top = 57
        Width = 148
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhIdentificacao'
        DataSource = DSRegistro
        TabOrder = 4
      end
      object flhdtinicial: TDBEdit
        Left = 136
        Top = 84
        Width = 95
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhdtinicial'
        DataSource = DSRegistro
        TabOrder = 5
      end
      object flhdtfinal: TDBEdit
        Left = 312
        Top = 84
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhdtfinal'
        DataSource = DSRegistro
        TabOrder = 6
      end
      object flhdtpgto: TDBEdit
        Left = 467
        Top = 84
        Width = 94
        Height = 21
        CustomHint = BalloonHint
        DataField = 'flhdtpgto'
        DataSource = DSRegistro
        TabOrder = 7
      end
      object bCalcular: TBitBtn
        Left = 584
        Top = 117
        Width = 68
        Height = 21
        CustomHint = BalloonHint
        Caption = 'Calcular'
        TabOrder = 8
        OnClick = bCalcularClick
      end
      object plDetalhe: TPanel
        Left = 0
        Top = 144
        Width = 898
        Height = 373
        CustomHint = BalloonHint
        Align = alBottom
        BevelOuter = bvNone
        BorderWidth = 2
        TabOrder = 9
        object plColaboradores: TPanel
          Left = 2
          Top = 2
          Width = 260
          Height = 369
          CustomHint = BalloonHint
          Align = alLeft
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'plColaboradores'
          TabOrder = 0
          object DBGListaEtd: TDBGrid
            Left = 0
            Top = 26
            Width = 256
            Height = 339
            CustomHint = BalloonHint
            Align = alClient
            BorderStyle = bsNone
            DataSource = Defg
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGListaEtdDrawColumnCell
            OnTitleClick = DBGListaEtdTitleClick
            Columns = <
              item
                Expanded = False
                FieldName = 'etdcodigo'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'etdidentificacao'
                Width = 180
                Visible = True
              end>
          end
          object plTitColaboradores: TPanel
            Left = 0
            Top = 0
            Width = 256
            Height = 26
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
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
        end
        object plEventos: TPanel
          Left = 262
          Top = 2
          Width = 634
          Height = 369
          CustomHint = BalloonHint
          Align = alClient
          BevelKind = bkTile
          BevelOuter = bvNone
          Caption = 'plEventos'
          TabOrder = 1
          object plTitEventos: TPanel
            Left = 0
            Top = 0
            Width = 630
            Height = 26
            CustomHint = BalloonHint
            Align = alTop
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BorderWidth = 2
            Caption = 'Lan'#231'amentos do Colaborador'
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
          object plTotalLanca: TPanel
            Left = 0
            Top = 324
            Width = 630
            Height = 41
            CustomHint = BalloonHint
            Align = alBottom
            BevelOuter = bvNone
            TabOrder = 1
            object GBRecebidos: TGroupBox
              Left = 510
              Top = 0
              Width = 120
              Height = 41
              CustomHint = BalloonHint
              Align = alRight
              Caption = 'Cr'#233'ditos R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 0
              object plCreditos: TPanel
                Left = 2
                Top = 15
                Width = 116
                Height = 24
                CustomHint = BalloonHint
                Align = alClient
                Alignment = taRightJustify
                BevelOuter = bvNone
                BorderWidth = 2
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object GBEmAberto: TGroupBox
              Left = 270
              Top = 0
              Width = 120
              Height = 41
              CustomHint = BalloonHint
              Align = alRight
              Caption = 'Saldo R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 1
              object plSaldo: TPanel
                Left = 2
                Top = 15
                Width = 116
                Height = 24
                CustomHint = BalloonHint
                Align = alClient
                Alignment = taRightJustify
                BevelOuter = bvNone
                BorderWidth = 2
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object GBTotal: TGroupBox
              Left = 390
              Top = 0
              Width = 120
              Height = 41
              CustomHint = BalloonHint
              Align = alRight
              Caption = 'D'#233'bitos R$'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 2
              object plDebitos: TPanel
                Left = 2
                Top = 15
                Width = 116
                Height = 24
                CustomHint = BalloonHint
                Align = alClient
                Alignment = taRightJustify
                BevelOuter = bvNone
                BorderWidth = 2
                Caption = '0,00'
                Color = 12615680
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWhite
                Font.Height = -12
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
          end
          object DBGListaEva: TDBGrid
            Left = 0
            Top = 26
            Width = 630
            Height = 298
            CustomHint = BalloonHint
            Align = alClient
            BorderStyle = bsNone
            DataSource = Devaetd
            Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
            TabOrder = 2
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            OnDrawColumnCell = DBGListaEvaDrawColumnCell
            Columns = <
              item
                Expanded = False
                FieldName = 'evfcodigo'
                Width = 40
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'evfidentificacao'
                Width = 180
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'evahistorico'
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'evavalor'
                Width = 75
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'cedidentificacao'
                Width = 60
                Visible = True
              end>
          end
        end
      end
      object plcalculandofolha: TPanel
        Left = 136
        Top = 118
        Width = 425
        Height = 22
        CustomHint = BalloonHint
        Alignment = taLeftJustify
        BorderWidth = 3
        TabOrder = 10
        object mostra: TProgressBar
          Left = 206
          Top = 4
          Width = 215
          Height = 14
          CustomHint = BalloonHint
          Align = alRight
          TabOrder = 0
        end
      end
    end
  end
  inherited DSRegistro: TUniDataSource
    Left = 468
    Top = 8
  end
  inherited cfg: TUniQuery
    Left = 484
    Top = 212
  end
  inherited consulta: TUniQuery
    Left = 440
    Top = 212
  end
  inherited registro: TUniQuery
    SQL.Strings = (
      
        'select flhchave,eflcodigo, tflcodigo,flhidentificacao,flhmes,flh' +
        'ano,flhdtinicial,flhdtfinal,flhdtpgto, flhcriacao,clbcodigo from' +
        ' flh where flh.flhchave=:flhchave')
    Left = 292
    Top = 224
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
  inherited pfr: TUniQuery
    Left = 688
    Top = 276
  end
  inherited psf: TUniQuery
    Left = 648
    Top = 308
  end
  inherited dcl: TUniQuery
    Left = 620
    Top = 208
  end
  inherited BalloonHint: TBalloonHint
    Left = 484
    Top = 328
  end
  inherited acoesfrm: TActionList
    Left = 780
    Top = 68
  end
  inherited ImgBusca: TPngImageList
    Bitmap = {}
  end
  object tfl: TUniQuery
    SQL.Strings = (
      'select tflcodigo, tflidentificacao from tfl')
    Left = 688
    Top = 232
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
    Left = 720
    Top = 224
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
      'SELECT efgchave'
      '     , flhchave'
      '     , etdcodigo'
      '     , eflcodigo'
      'FROM efg'
      'WHERE flhchave = :flhchave'
      'AND eflcodigo IN (1, 2)')
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
      FieldKind = fkLookup
      FieldName = 'etdidentificacao'
      LookupDataSet = etd
      LookupKeyFields = 'etdcodigo'
      LookupResultField = 'etdidentificacao'
      KeyFields = 'etdcodigo'
      Size = 50
      Lookup = True
    end
    object efgeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
  end
  object Defg: TDataSource
    DataSet = efg
    OnDataChange = DefgDataChange
    Left = 252
    Top = 256
  end
  object etd: TUniQuery
    SQL.Strings = (
      'select etdcodigo, etdidentificacao from etd')
    Left = 208
    Top = 320
    object etdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdetdidentificacao: TStringField
      FieldName = 'etdidentificacao'
      Size = 50
    end
  end
  object Devaetd: TDataSource
    DataSet = evaetd
    Left = 357
    Top = 329
  end
  object evaetd: TUniQuery
    SQL.Strings = (
      'SELECT eva.flhchave'
      '     , eva.evachave'
      '     , eva.tevcodigo'
      '     , eva.etdcodigo'
      '     , eva.evfcodigo'
      '     , sum( eva.evavalor) evavalor'
      '     , eva.evahistorico'
      '     , eva.clbcodigo'
      '     , evf.evfidentificacao'
      '     , eva.evacriacao'
      '     , evf.cedcodigo'
      '     , ced.cedidentificacao'
      'FROM eva'
      '   , evf'
      '   , ced'
      'WHERE eva.evfcodigo = evf.evfcodigo'
      'AND evf.cedcodigo = ced.cedcodigo'
      'AND eva.eflcodigo <> 9'
      'AND flhchave = :flhchave'
      'AND etdcodigo = :etdcodigo'
      'group by eva.evfcodigo'
      'order by evf.cedcodigo desc')
    Left = 304
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object evaetdevachave: TIntegerField
      FieldName = 'evachave'
    end
    object evaetdflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object evaetdevfcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'evfcodigo'
    end
    object evaetdetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object evaetdtevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object evaetdevavalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'evavalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object evaetdevahistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'evahistorico'
      Size = 50
    end
    object evaetdclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object evaetdevacriacao: TDateTimeField
      FieldName = 'evacriacao'
    end
    object evaetdevfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object evaetdcedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'cedidentificacao'
      Size = 15
    end
    object evaetdcedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
  end
  object efi: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  evfcodigo,'
      '  etdcodigo,'
      '  efidtinicial,'
      '  efidtfinal,'
      '  efivalor,'
      '  clbcodigo'
      'FROM efi WHERE  evfcodigo=:evfcodigo and etdcodigo=:etdcodigo')
    Left = 178
    Top = 411
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'evfcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
  end
  object etdevf: TUniQuery
    SQL.Strings = (
      'select etdcodigo, evfcodigo from efi')
    Left = 322
    Top = 403
    object etdevfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object etdevfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
  end
  object eva: TUniQuery
    Left = 426
    Top = 435
  end
  object verieva: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  eva.flhchave,'
      '  eva.evachave,'
      '  eva.tevcodigo,'
      '  eva.etdcodigo,'
      '  eva.evfcodigo,'
      '  eva.evavalor,'
      '  eva.evahistorico,'
      '  eva.clbcodigo,'
      '  evf.evfidentificacao,'
      '  eva.evacriacao,'
      '  evf.cedcodigo,'
      '  ced.cedidentificacao'
      'FROM eva, evf, ced'
      ' where eva.evfcodigo=evf.evfcodigo and '
      'evf.cedcodigo=ced.cedcodigo and'
      'eva.eflcodigo<>9 and'
      'flhchave=:flhchave and'
      'etdcodigo=:etdcodigo'
      'order by eva.evacriacao')
    Left = 491
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object verievaevachave: TIntegerField
      FieldName = 'evachave'
    end
    object verievaflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object verievaevfcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'evfcodigo'
    end
    object verievaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object verievatevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object verievaevavalor: TFloatField
      DisplayLabel = 'Valor R$'
      FieldName = 'evavalor'
      DisplayFormat = '#,##0.00'
      EditFormat = '#,##0.00'
    end
    object verievaevahistorico: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'evahistorico'
      Size = 50
    end
    object verievaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object verievaevacriacao: TDateTimeField
      FieldName = 'evacriacao'
    end
    object verievaevfidentificacao: TStringField
      DisplayLabel = 'Identifica'#231#227'o'
      FieldName = 'evfidentificacao'
      Size = 50
    end
    object verievacedidentificacao: TStringField
      DisplayLabel = 'Natureza'
      FieldName = 'cedidentificacao'
      Size = 15
    end
    object verievacedcodigo: TIntegerField
      FieldName = 'cedcodigo'
    end
  end
  object calcpfh: TUniQuery
    SQL.Strings = (
      'SET @pFlhChave=:pFlhChave;'
      ''
      'SELECT'
      '      pfh.flhchave,'
      '      fcl.evfcodigo,'
      '      vhf.etdcodigo,'
      '      (SELECT'
      '          flh.eflcodigo'
      '        FROM efl,'
      '             flh'
      '        WHERE efl.eflcodigo = flh.eflcodigo'
      '        AND flh.flhchave = pfh.flhchave) eflcodigo,'
      '      3 tevcodigo,'
      ''
      '      (SELECT'
      '          phgcodigo'
      '        FROM fcl f'
      '        WHERE f.fclcodigo = fcl.fclcodigo) phgcodigo,'
      ''
      ''
      '      ((valorhora((SELECT'
      '          tthcodigo'
      '        FROM vhf v,'
      '             fcl f'
      '        WHERE v.fclcodigo = f.fclcodigo'
      
        '        AND pfh.vhfcodigo = v.vhfcodigo),@pFlhChave, pfh.vhfcodi' +
        'go)'
      '      * (SELECT'
      '          pfhhoras'
      '        FROM pfh'
      '        WHERE pfh.vhfcodigo = vhf.vhfcodigo'
      '        AND pfh.flhchave = @pFlhChave))) evavalor,'
      ''
      ''
      '      (SELECT'
      '          fclidentificacao'
      '        FROM fcl'
      '        WHERE vhf.fclcodigo = fcl.fclcodigo) evahistorico,'
      '      pfh.clbcodigo,'
      '      pfh.pfhregistro evacriacao,'
      '     '
      ''
      '  format( ROUND('
      '      (SELECT'
      '          pfhhoras'
      '        FROM pfh'
      '        WHERE pfh.vhfcodigo = vhf.vhfcodigo'
      '        AND pfh.flhchave = @pFlhChave) * IF((SELECT'
      '          vhfvalor'
      '        FROM vhf v,'
      '             pfh p,'
      '             fcl f'
      '        WHERE f.fclcodigo = v.fclcodigo'
      '        AND v.vhfcodigo = p.vhfcodigo'
      '        AND p.flhchave = @pflhchave'
      
        '        AND v.vhfcodigo = vhf.vhfcodigo) = 0, 4.5, 1), 2),2)    ' +
        'evabase,'
      ''
      '      0.000 evapercentual,'
      ''
      '      valorhora((SELECT'
      '          tthcodigo'
      '        FROM vhf v,'
      '             fcl f'
      '        WHERE v.fclcodigo = f.fclcodigo'
      
        '        AND pfh.vhfcodigo = v.vhfcodigo), @pFlhChave, pfh.vhfcod' +
        'igo) / IF((SELECT'
      '          vhfvalor'
      '        FROM vhf v,'
      '             pfh p,'
      '             fcl f'
      '        WHERE f.fclcodigo = v.fclcodigo'
      '        AND v.vhfcodigo = p.vhfcodigo'
      '        AND p.flhchave = @pflhchave'
      
        '        AND v.vhfcodigo = vhf.vhfcodigo) = 0, 4.5, 1) evavalorun' +
        'itario,'
      ''
      '       fcl.fclcodigo,'
      
        '   (SELECT evfresumida from evf e WHERE e.evfcodigo=fcl.evfcodig' +
        'o) evaresumido,'
      '       pfh.vhfcodigo '
      ''
      '    FROM pfh,'
      '         vhf,'
      '         fcl'
      '    WHERE pfh.vhfcodigo = vhf.vhfcodigo'
      '    AND vhf.fclcodigo = fcl.fclcodigo'
      '    AND pfh.flhchave = @pFlhChave')
    Left = 818
    Top = 235
    ParamData = <
      item
        DataType = ftInteger
        Name = 'pFlhChave'
        Value = nil
      end>
    object calcpfhflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calcpfhevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calcpfhetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calcpfheflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calcpfhtevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calcpfhphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calcpfhevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calcpfhevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object calcpfhclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calcpfhevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calcpfhevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calcpfhevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calcpfhevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calcpfhfclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calcpfhevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
    object calcpfhvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
  end
  object regeva: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  evachave,'
      '  flhchave,'
      '  evfcodigo,'
      '  etdcodigo,'
      '  eflcodigo,'
      '  tevcodigo,'
      '  phgcodigo,'
      '  evavalor,'
      '  evahistorico,'
      '  clbcodigo,'
      '  evacriacao,'
      '  evabase,'
      '  evapercentual,'
      '  evavalorunitario,'
      '  fclcodigo,'
      '  evaresumido'
      'FROM eva'
      
        '  where flhchave=:flhchave and evfcodigo=:evfcodigo and evavalor' +
        '=:evavalor and etdcodigo=:etdcodigo')
    Left = 770
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'evfcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'evavalor'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'etdcodigo'
        Value = nil
      end>
    object regevaflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object regevaevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
    end
    object regevaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object regevaeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
    end
    object regevatevcodigo: TIntegerField
      FieldName = 'tevcodigo'
    end
    object regevaphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
    end
    object regevaevavalor: TFloatField
      FieldName = 'evavalor'
    end
    object regevaevahistorico: TStringField
      FieldName = 'evahistorico'
      Size = 50
    end
    object regevaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object regevaevacriacao: TDateTimeField
      FieldName = 'evacriacao'
    end
    object regevaevabase: TStringField
      FieldName = 'evabase'
      Size = 50
    end
    object regevaevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object regevaevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object regevafclcodigo: TIntegerField
      FieldName = 'fclcodigo'
    end
    object regevaevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
  end
  object calcevf: TUniQuery
    SQL.Strings = (
      'SELECT'
      '      eva.evachave,'
      '      :pFlhChave AS flhchave,'
      '      efi.evfcodigo,'
      '      efi.etdcodigo,'
      '      2 AS eflcodigo,'
      '      1 AS tevcodigo,'
      '      efi.phgcodigo,'
      '      efi.efivalor evavalor,'
      '      '#39#39' AS evahistorico,'
      '      :pClbCodigo AS clbcodigo,'
      '      NOW() AS evacriacao,'
      '      '#39'0'#39' evabase,'
      '      0.000 evapercentual,'
      '      00.00 evavalorunitario,'
      '      0 fclcodigo,'
      
        '      (SELECT evfresumida from evf e WHERE e.evfcodigo=efi.evfco' +
        'digo) evaresumido,'
      '      efi.efidtfinal '
      ''
      '    FROM efi'
      '      LEFT JOIN eva'
      '        ON efi.evfcodigo = eva.evfcodigo'
      '        AND efi.etdcodigo = eva.etdcodigo'
      '        AND efi.phgcodigo = eva.phgcodigo'
      '        AND eva.flhchave = :pFlhChave'
      '    WHERE efi.efidtinicial <= (:pDtFinal)'
      '    AND ((efi.efidtfinal IS NULL)'
      '    OR (efi.efidtfinal >= :pDtFinal))'
      '    AND efi.tflcodigo = :ptflcodigo')
    Left = 818
    Top = 179
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pFlhChave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pClbCodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pDtFinal'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'ptflcodigo'
        Value = nil
      end>
    object calcevfflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calcevfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calcevfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calcevfeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calcevftevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calcevfphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calcevfevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calcevfevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 65530
    end
    object calcevfclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calcevfevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calcevfevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calcevfevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calcevfevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calcevffclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calcevfevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
    object calcevfefidtfinal: TDateField
      FieldName = 'efidtfinal'
    end
  end
  object calcats: TUniQuery
    SQL.Strings = (
      'SET @pFlhChave=:pFlhChave;'
      'SET @pClbCodigo=:pClbCodigo;'
      ''
      'SELECT DISTINCT'
      '      '
      '      @pFlhChave flhchave,'
      ''
      '      (SELECT'
      '          evfcodigo'
      '        FROM ats'
      '        WHERE (PERIOD_DIFF(DATE_FORMAT((SELECT'
      '            flhdtfinal'
      '          FROM flh'
      
        '          WHERE flhchave = @pflhchave), '#39'%Y%m'#39'), DATE_FORMAT((SE' +
        'LECT'
      '            dtr.dtrdataadmissao'
      '          FROM dtr'
      
        '          WHERE etdcodigo = vhf.etdcodigo), '#39'%Y%m'#39')) BETWEEN ats' +
        'mesesinicial AND atsmeses)) evfcodigo,'
      ''
      '      vhf.etdcodigo,'
      ''
      '      (SELECT'
      '          flh.eflcodigo'
      '        FROM efl,'
      '             flh'
      '        WHERE efl.eflcodigo = flh.eflcodigo'
      '        AND flh.flhchave = @pflhchave) eflcodigo,'
      ''
      '      3 tevcodigo,'
      ''
      '      (SELECT'
      '          phgcodigo'
      '        FROM ats'
      '        WHERE (PERIOD_DIFF(DATE_FORMAT((SELECT'
      '            flhdtfinal'
      '          FROM flh'
      
        '          WHERE flhchave = @pflhchave), '#39'%Y%m'#39'), DATE_FORMAT((SE' +
        'LECT'
      '            dtr.dtrdataadmissao'
      '          FROM dtr'
      
        '          WHERE etdcodigo = vhf.etdcodigo), '#39'%Y%m'#39')) BETWEEN ats' +
        'mesesinicial AND atsmeses)) phgcodigo,'
      ''
      ''
      '  ROUND(    (valorhora((SELECT'
      '          tthcodigo'
      '        FROM vhf v,'
      '             fcl f'
      '        WHERE v.fclcodigo = f.fclcodigo'
      
        '        AND pfh.vhfcodigo = v.vhfcodigo), @pflhchave, pfh.vhfcod' +
        'igo) * (SELECT'
      '          atspercentual'
      '        FROM ats'
      '        WHERE (PERIOD_DIFF(DATE_FORMAT((SELECT'
      '            flhdtfinal'
      '          FROM flh'
      
        '          WHERE flhchave = @pflhchave), '#39'%Y%m'#39'), DATE_FORMAT((SE' +
        'LECT'
      '            dtr.dtrdataadmissao'
      '          FROM dtr'
      
        '          WHERE etdcodigo = vhf.etdcodigo), '#39'%Y%m'#39')) BETWEEN ats' +
        'mesesinicial AND atsmeses)) / 100) * (SELECT'
      '          p.pfhhoras'
      '        FROM pfh p'
      '        WHERE p.flhchave = @pflhchave'
      '        AND p.vhfcodigo = vhf.vhfcodigo) +'
      '      ((valorhora((SELECT'
      '          tthcodigo'
      '        FROM vhf v,'
      '             fcl f'
      '        WHERE v.fclcodigo = f.fclcodigo'
      
        '        AND pfh.vhfcodigo = v.vhfcodigo), @pflhchave, pfh.vhfcod' +
        'igo) * (SELECT'
      '          atspercentual'
      '        FROM ats'
      '        WHERE (PERIOD_DIFF(DATE_FORMAT((SELECT'
      '            flhdtfinal'
      '          FROM flh'
      
        '          WHERE flhchave = @pflhchave), '#39'%Y%m'#39'), DATE_FORMAT((SE' +
        'LECT'
      '            dtr.dtrdataadmissao'
      '          FROM dtr'
      
        '          WHERE etdcodigo = vhf.etdcodigo), '#39'%Y%m'#39')) BETWEEN ats' +
        'mesesinicial AND atsmeses)) / 100) * (SELECT'
      '          p.pfhhoras'
      '        FROM pfh p'
      '        WHERE p.flhchave = @pflhchave'
      '        AND p.vhfcodigo = vhf.vhfcodigo) / 6) ,2) evavalor,'
      ''
      ''
      ''
      '      CONCAT('#39'QUINQUENIO '#39', (SELECT'
      '          atspercentual'
      '        FROM ats'
      '        WHERE (PERIOD_DIFF(DATE_FORMAT((SELECT'
      '            flhdtfinal'
      '          FROM flh'
      
        '          WHERE flhchave = @pflhchave), '#39'%Y%m'#39'), DATE_FORMAT((SE' +
        'LECT'
      '            dtr.dtrdataadmissao'
      '          FROM dtr'
      
        '          WHERE etdcodigo = vhf.etdcodigo), '#39'%Y%m'#39')) BETWEEN ats' +
        'mesesinicial AND atsmeses)), '#39' %'#39') evahistorico,'
      ''
      '      @pClbCodigo clbcodigo,'
      '      NOW() evacriacao,'
      ''
      ' FORMAT( ROUND(    (valorhora((SELECT'
      '          tthcodigo'
      '        FROM vhf v,'
      '             fcl f'
      '        WHERE v.fclcodigo = f.fclcodigo'
      
        '        AND pfh.vhfcodigo = v.vhfcodigo), @pflhchave, pfh.vhfcod' +
        'igo) * (SELECT'
      '          atspercentual'
      '        FROM ats'
      '        WHERE (PERIOD_DIFF(DATE_FORMAT((SELECT'
      '            flhdtfinal'
      '          FROM flh'
      
        '          WHERE flhchave = @pflhchave), '#39'%Y%m'#39'), DATE_FORMAT((SE' +
        'LECT'
      '            dtr.dtrdataadmissao'
      '          FROM dtr'
      
        '          WHERE etdcodigo = vhf.etdcodigo), '#39'%Y%m'#39')) BETWEEN ats' +
        'mesesinicial AND atsmeses)) / 100) * (SELECT'
      '          p.pfhhoras'
      '        FROM pfh p'
      '        WHERE p.flhchave = @pflhchave'
      '        AND p.vhfcodigo = vhf.vhfcodigo) +'
      '      ((valorhora((SELECT'
      '          tthcodigo'
      '        FROM vhf v,'
      '             fcl f'
      '        WHERE v.fclcodigo = f.fclcodigo'
      
        '        AND pfh.vhfcodigo = v.vhfcodigo), @pflhchave, pfh.vhfcod' +
        'igo) ) * (SELECT'
      '          p.pfhhoras'
      '        FROM pfh p'
      '        WHERE p.flhchave = @pflhchave'
      '        AND p.vhfcodigo = vhf.vhfcodigo) / 6) ,2), 2) evabase,'
      ''
      '  (SELECT'
      '          atspercentual'
      '        FROM ats'
      '        WHERE (PERIOD_DIFF(DATE_FORMAT((SELECT'
      '            flhdtfinal'
      '          FROM flh'
      
        '          WHERE flhchave = @pflhchave), '#39'%Y%m'#39'), DATE_FORMAT((SE' +
        'LECT'
      '            dtr.dtrdataadmissao'
      '          FROM dtr'
      
        '          WHERE etdcodigo = vhf.etdcodigo), '#39'%Y%m'#39')) BETWEEN ats' +
        'mesesinicial AND atsmeses)) evapercentual,'
      ''
      '  0.00 evavalorunitario,'
      '     '
      ''
      ''
      '    vhf.fclcodigo,'
      
        '   (SELECT evfresumida from evf e WHERE e.evfcodigo=fcl.evfcodig' +
        'o) evaresumido '
      ''
      ''
      '    FROM fcl,'
      '         vhf,'
      '         pfh'
      '    WHERE vhf.vhfcodigo = pfh.vhfcodigo'
      '    AND fcl.fclcodigo = vhf.fclcodigo'
      '    AND (SELECT'
      '        atspercentual'
      '      FROM ats'
      '      WHERE (PERIOD_DIFF(DATE_FORMAT((SELECT'
      '          flhdtfinal'
      '        FROM flh'
      
        '        WHERE flhchave = @pflhchave), '#39'%Y%m'#39'), DATE_FORMAT((SELE' +
        'CT'
      '          dtr.dtrdataadmissao'
      '        FROM dtr'
      
        '        WHERE etdcodigo = vhf.etdcodigo), '#39'%Y%m'#39')) BETWEEN atsme' +
        'sesinicial AND atsmeses)) > 0')
    Left = 818
    Top = 291
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pFlhChave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pClbCodigo'
        Value = nil
      end>
    object calcatsflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calcatsevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calcatsetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calcatseflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calcatstevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calcatsphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calcatsevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calcatsevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object calcatsclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calcatsevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calcatsevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calcatsevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calcatsevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calcatsfclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calcatsevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
  end
  object calcscl: TUniQuery
    SQL.Strings = (
      'SET @pFlhChave = :pFlhChave;'
      ''
      'SELECT'
      '  scl.flhchave,'
      ''
      '  (SELECT'
      '      tth.evfcodigo'
      '    FROM tth'
      '         '
      '    WHERE '
      '     tthcodigo = 7) evfcodigo,'
      ''
      ''
      '  (SELECT'
      '      etdcodigo'
      '    FROM vhf'
      '    WHERE vhf.vhfcodigo = scl.vhfsubstituto) etdcodigo,'
      ''
      '  (SELECT'
      '      flh.eflcodigo'
      '    FROM efl,'
      '         flh'
      '    WHERE efl.eflcodigo = flh.eflcodigo'
      '    AND flh.flhchave = @pflhchave) eflcodigo,'
      ''
      ''
      '  3 tevcodigo,'
      '  scl.phgcodigo,'
      ''
      ''
      ''
      '  ((valorhora((SELECT'
      '      tthcodigo'
      '    FROM vhf v,'
      '         fcl f'
      '    WHERE v.fclcodigo = f.fclcodigo'
      
        '    AND scl.vhfsubstituto = v.vhfcodigo), @pFlhChave, scl.vhfsub' +
        'stituto) / 4.5) * SUM(scl.sclhoras)) +'
      '  ((valorhora((SELECT'
      '      tthcodigo'
      '    FROM vhf v,'
      '         fcl f'
      '    WHERE v.fclcodigo = f.fclcodigo'
      
        '    AND scl.vhfsubstituto = v.vhfcodigo), @pFlhChave, scl.vhfsub' +
        'stituto) / 4.5) * SUM(scl.sclhoras) / 6) evavalor,'
      '  CONCAT('#39'SUBST. '#39', (SELECT'
      '      fcl.fclidentificacao'
      '    FROM fcl,'
      '         vhf v'
      '    WHERE vhf.fclcodigo = fcl.fclcodigo'
      '    AND v.vhfcodigo = vhf.vhfcodigo)) evahistorico,'
      '  scl.clbcodigo,'
      '  scl.sclregistro evacriacao,'
      ''
      ' format( SUM(scl.sclhoras),1) evabase,'
      '  0.00 evapercentual,'
      '  ((valorhora((SELECT'
      '      tthcodigo'
      '    FROM vhf v,'
      '         fcl f'
      '    WHERE v.fclcodigo = f.fclcodigo'
      
        '    AND scl.vhfsubstituto = v.vhfcodigo), @pFlhChave, scl.vhfsub' +
        'stituto) / 4.5) * SUM(scl.sclhoras)) +'
      '  ((valorhora((SELECT'
      '      tthcodigo'
      '    FROM vhf v,'
      '         fcl f'
      '    WHERE v.fclcodigo = f.fclcodigo'
      
        '    AND scl.vhfsubstituto = v.vhfcodigo), @pFlhChave, scl.vhfsub' +
        'stituto) / 4.5) * SUM(scl.sclhoras) / 6) evavalorunitario,'
      ''
      '  vhf.fclcodigo,'
      '  (SELECT'
      '      evfresumida'
      '    FROM evf e'
      '    WHERE e.evfcodigo = (SELECT'
      '        fcl.evfcodigo'
      '      FROM fcl,'
      '           vhf v'
      '      WHERE vhf.fclcodigo = fcl.fclcodigo'
      '      AND v.vhfcodigo = vhf.vhfcodigo)) evaresumido'
      ''
      ''
      ''
      'FROM scl,'
      '     vhf'
      'WHERE scl.vhfsubstituto = vhf.vhfcodigo'
      'AND scl.flhchave = @pFlhChave'
      'GROUP BY (SELECT'
      '             fclidentificacao'
      '           FROM fcl'
      '           WHERE vhf.fclcodigo = fcl.fclcodigo),'
      '         vhf.etdcodigo')
    Left = 816
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pFlhChave'
        Value = nil
      end>
    object calcsclflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calcsclevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calcscletdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calcscleflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calcscltevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calcsclphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calcsclevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calcsclevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object calcsclclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calcsclevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calcsclevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calcsclevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calcsclevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calcsclfclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calcsclevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
  end
  object calcata: TUniQuery
    SQL.Strings = (
      'SET @pFlhChave = :pFlhChave;'
      'SELECT'
      '      ata.flhchave,'
      '      tta.evfcodigo,'
      '      vhf.etdcodigo,'
      ''
      ''
      '      (SELECT'
      '          flh.eflcodigo'
      '        FROM efl,'
      '             flh'
      '        WHERE efl.eflcodigo = flh.eflcodigo'
      '        AND flh.flhchave = @pflhchave) eflcodigo,'
      '      3 tevcodigo,'
      '      tta.phgcodigo,'
      '      SUM((valorhora((SELECT'
      '          tthcodigo'
      '        FROM vhf v,'
      '             fcl f'
      '        WHERE v.fclcodigo = f.fclcodigo'
      
        '        AND ata.vhfcodigo = v.vhfcodigo), @pFlhChave, ata.vhfcod' +
        'igo) / 4.5) * atahoras) evavalor,'
      ''
      ''
      ''
      '      CONCAT(tta.ttaidentificacao, '#39' '#39', (SELECT'
      '          fclidentificacao'
      '        FROM fcl'
      '        WHERE vhf.fclcodigo = fcl.fclcodigo)) evahistorico,'
      ''
      '      ata.clbcodigo,'
      '      ata.ataregistro evacriacao,'
      '      '
      '     format( atahoras,1) evabase,'
      '      0.00 evapercentual,'
      '      SUM((valorhora((SELECT'
      '          tthcodigo'
      '        FROM vhf v,'
      '             fcl f'
      '        WHERE v.fclcodigo = f.fclcodigo'
      
        '        AND ata.vhfcodigo = v.vhfcodigo), @pFlhChave, ata.vhfcod' +
        'igo) / 4.5) * atahoras) evavalorunitario,'
      '    fcl.fclcodigo,'
      '  (SELECT'
      '      evfresumida'
      '    FROM evf e'
      '    WHERE e.evfcodigo = fcl.evfcodigo) evaresumido'
      ''
      '    FROM ata,'
      '         vhf,'
      '         tta,'
      '         fcl'
      '    WHERE vhf.fclcodigo = fcl.fclcodigo'
      '    AND ata.ttacodigo = tta.ttacodigo'
      '    AND vhf.vhfcodigo = ata.vhfcodigo'
      '    AND ata.flhchave = @pFlhChave'
      '    GROUP BY (SELECT'
      '                 fclidentificacao'
      '               FROM fcl'
      '               WHERE vhf.fclcodigo = fcl.fclcodigo),'
      '             vhf.etdcodigo')
    Left = 818
    Top = 395
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pFlhChave'
        Value = nil
      end>
    object calcataflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calcataevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calcataetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calcataeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calcatatevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calcataphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calcataevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calcataevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object calcataclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calcataevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calcataevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calcataevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calcataevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calcatafclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calcataevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
  end
  object calcehf: TUniQuery
    SQL.Strings = (
      'SET @pflhchave = :pflhchave;'
      'set @pcedcodigo =:pcedcodigo;'
      ''
      'SELECT'
      '  ehf.flhchave,'
      '  tth.evfcodigo,'
      '  vhf.etdcodigo,'
      '  (SELECT'
      '      flh.eflcodigo'
      '    FROM efl,'
      '         flh'
      '    WHERE efl.eflcodigo = flh.eflcodigo'
      '    AND flh.flhchave = ehf.flhchave) eflcodigo,'
      ''
      '  3 tevcodigo,'
      '  tth.phgcodigo,'
      ''
      ''
      ''
      '  (TIME_TO_SEC(ehfhoras) / 3600) * (('
      '  ((valorhora((SELECT'
      '      tthcodigo'
      '    FROM vhf v,'
      '         fcl f'
      '    WHERE v.fclcodigo = f.fclcodigo'
      
        '    AND ehf.vhfcodigo = v.vhfcodigo), @pflhchave, ehf.vhfcodigo)' +
        ') /'
      '  IF((SELECT'
      '      vhfvalor'
      '    FROM vhf v,'
      '         pfh p,'
      '         fcl f'
      '    WHERE f.fclcodigo = v.fclcodigo'
      '    AND v.vhfcodigo = p.vhfcodigo'
      '    AND p.flhchave = @pflhchave'
      '    AND v.vhfcodigo = vhf.vhfcodigo) = 0, 4.5, 1)'
      ''
      '  )'
      ''
      '  * (IF(tthsomar = 1, 1, 0) + (SELECT'
      '      tthpercentual'
      '    FROM tth'
      '    WHERE tthcodigo = ehf.tthcodigo) / 100))'
      ''
      '  ) evavalor,'
      ''
      ''
      ''
      '  (SELECT'
      '      tthidentificacao'
      '    FROM tth'
      '    WHERE tthcodigo = ehf.tthcodigo) evahistorico,'
      '  ehf.clbcodigo,'
      '  ehf.ehfregistro evacriacao,'
      ''
      '  ehfhoras  evabase,'
      '  ((SELECT'
      '        tthpercentual'
      '      FROM tth'
      '      WHERE tthcodigo = ehf.tthcodigo)) evapercentual,'
      '  (TIME_TO_SEC(ehfhoras) / 3600) * ((valorhora((SELECT'
      '      tthcodigo'
      '    FROM vhf v,'
      '         fcl f'
      '    WHERE v.fclcodigo = f.fclcodigo'
      
        '    AND ehf.vhfcodigo = v.vhfcodigo), @pflhchave, ehf.vhfcodigo)' +
        ' / IF((SELECT'
      '      vhfvalor'
      '    FROM vhf v,'
      '         pfh p,'
      '         fcl f'
      '    WHERE f.fclcodigo = v.fclcodigo'
      '    AND v.vhfcodigo = p.vhfcodigo'
      '    AND p.flhchave = @pflhchave'
      
        '    AND v.vhfcodigo = vhf.vhfcodigo) = 0, 4.5, 1)) * (IF(tthsoma' +
        'r = 1, 1, 0) + (SELECT'
      '      tthpercentual'
      '    FROM tth'
      '    WHERE tthcodigo = ehf.tthcodigo) / 100)) evavalorunitario,'
      '  vhf.fclcodigo,'
      '  (SELECT'
      '      evfresumida'
      '    FROM evf e'
      '    WHERE e.evfcodigo = tth.evfcodigo) evaresumido'
      ''
      'FROM ehf,'
      '     vhf,'
      '     tth'
      'WHERE ehf.vhfcodigo = vhf.vhfcodigo'
      'AND ehf.tthcodigo = tth.tthcodigo'
      'AND tth.tthnatureza = @pcedcodigo'
      'AND ehf.flhchave = @pflhchave')
    Left = 818
    Top = 451
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pflhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pcedcodigo'
        Value = nil
      end>
    object calcehfflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calcehfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calcehfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calcehfeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calcehftevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calcehfphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calcehfevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calcehfevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object calcehfclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calcehfevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calcehfevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calcehfevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calcehfevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calcehffclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calcehfevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
  end
  object calcmja: TUniQuery
    SQL.Strings = (
      'SET @pFlhChave = :pFlhChave;'
      'SELECT'
      '  mja.flhchave,'
      '  (SELECT'
      '      evfcodigo'
      '    FROM tja t'
      '    WHERE t.tjacodigo = tja.tjacodigo) evfcodigo,'
      '  mja.etdcodigo,'
      '  1 eflcodigo,'
      '  3 tevcodigo,'
      '  (SELECT'
      '      phgcodigo'
      '    FROM tja t'
      '    WHERE t.tjacodigo = tja.tjacodigo) phgcodigo,'
      '  SUM(mjatotal) evavalor,'
      '  tja.tjaidentificacao evahistorico,'
      '  mja.clbcodigo,'
      '  mjaregistro evacriacao,'
      '  FORMAT(SUM(mjatotal), 2) evabase,'
      '  0.0 evapercentual,'
      '  0.00 evavalorunitario,'
      '  0 fclcodigo,'
      '  (SELECT'
      '      evfresumida'
      '    FROM evf e'
      '    WHERE e.evfcodigo = evf.evfcodigo) evaresumido'
      ''
      ''
      ''
      'FROM mja,'
      '     tja,'
      '     evf'
      'WHERE mja.tjacodigo = tja.tjacodigo'
      'AND tja.evfcodigo = evf.evfcodigo and mja.flhchave=:pFlhChave'
      'GROUP BY mja.etdcodigo,'
      '         tja.tjaidentificacao')
    Left = 858
    Top = 179
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pFlhChave'
        Value = nil
      end>
    object calcmjaflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calcmjaevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calcmjaetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calcmjaeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calcmjatevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calcmjaphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calcmjaevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calcmjaevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object calcmjaclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calcmjaevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calcmjaevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calcmjaevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calcmjaevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calcmjafclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calcmjaevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
  end
  object calcanf: TUniQuery
    SQL.Strings = (
      'SET @pflhchave = :pflhchave;'
      'SET @pClbCodigo = :pclbcodigo;'
      ''
      ''
      'SELECT'
      ''
      '  @pflhchave flhchave,'
      '  (SELECT'
      '      evfcodigo'
      '    FROM anf f'
      '    WHERE f.anfcodigo = anf.anfcodigo) evfcodigo,'
      '  vhf.etdcodigo,'
      '  1 eflcodigo,'
      '  3 tevcodigo,'
      '  (SELECT'
      '      phgcodigo'
      '    FROM anf f'
      '    WHERE f.anfcodigo = anf.anfcodigo) phgcodigo,'
      ''
      '  ((valorhora((SELECT'
      '      tthcodigo'
      '    FROM vhf v,'
      '         fcl f'
      '    WHERE v.fclcodigo = f.fclcodigo'
      '    AND anf.anfcodigo = v.anfcodigo'
      '    AND v.fclcodigo = f.fclcodigo'
      
        '    AND v.vhfcodigo = vhf.vhfcodigo), @pflhchave, vhf.vhfcodigo)' +
        ' * (SELECT'
      '      pfhhoras'
      '    FROM pfh'
      '    WHERE pfh.vhfcodigo = vhf.vhfcodigo'
      '    AND pfh.flhchave = @pflhchave))) * (SELECT'
      '      anfpercentual / 100'
      '    FROM anf'
      '    WHERE anf.anfcodigo = vhf.anfcodigo) evavalor,'
      ''
      ''
      ''
      ''
      
        '  CONCAT(anf.anfidentificacao, '#39' '#39', fcl.fclidentificacao) evahis' +
        'torico,'
      '  @pClbCodigo clbcodigo,'
      '  NOW() evacriacao,'
      '  vhf.fclcodigo,'
      '  FORMAT(valorhora((SELECT'
      '      tthcodigo'
      '    FROM vhf v,'
      '         fcl f'
      '    WHERE v.fclcodigo = f.fclcodigo'
      '    AND anf.anfcodigo = v.anfcodigo'
      '    AND v.fclcodigo = f.fclcodigo'
      
        '    AND v.vhfcodigo = vhf.vhfcodigo), @pflhchave, vhf.vhfcodigo)' +
        ', 2) evabase,'
      '  (SELECT'
      '      anfpercentual'
      '    FROM anf'
      '    WHERE anf.anfcodigo = vhf.anfcodigo) evapercentual,'
      '  0.00 evavalorunitario,'
      ' vhf.fclcodigo,'
      '  (SELECT'
      '      evfresumida'
      '    FROM evf e'
      '    WHERE e.evfcodigo = anf.evfcodigo) evaresumido'
      ''
      ''
      ''
      'FROM vhf,'
      '     anf,'
      '     fcl,'
      '     evf'
      'WHERE anf.evfcodigo = evf.evfcodigo'
      'AND vhf.fclcodigo = fcl.fclcodigo'
      'AND vhf.anfcodigo = anf.anfcodigo'
      'AND anf.anfpercentual <> 0')
    Left = 858
    Top = 227
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pflhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pclbcodigo'
        Value = nil
      end>
    object calcanfflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calcanfevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calcanfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calcanfeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calcanftevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calcanfphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calcanfevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calcanfevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object calcanfclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calcanfevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calcanfevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calcanfevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calcanfevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calcanffclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calcanfevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
  end
  object calcdsr: TUniQuery
    SQL.Strings = (
      'SELECT'
      '  dsr.dsrcodigo'
      'FROM pfh,'
      '     vhf,'
      '     fcl,'
      '     tth,'
      '     dsr'
      'WHERE pfh.vhfcodigo = vhf.vhfcodigo'
      'AND vhf.fclcodigo = fcl.fclcodigo'
      'AND fcl.tthcodigo = tth.tthcodigo'
      'AND tth.dsrcodigo = dsr.dsrcodigo'
      'AND fcl.fclpagadsr = 1'
      'AND pfh.vhfcodigo=:vhfcodigo')
    Left = 626
    Top = 427
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'vhfcodigo'
        Value = nil
      end>
    object calcdsrdsrcodigo: TIntegerField
      FieldName = 'dsrcodigo'
    end
  end
  object calcins: TUniQuery
    SQL.Strings = (
      'SET @pflhchave = :pflhchave;'
      'SET @petdcodigo = :petdcodigo;'
      'SET @pclbcodigo = :pclbcodigo;'
      ''
      'SELECT'
      ''
      '  @pFlhChave flhchave,'
      '  (SELECT'
      '      evfcodigo'
      '    FROM tin,'
      '         iti'
      '    WHERE tin.tincodigo = iti.tincodigo LIMIT 1) evfcodigo,'
      '  @pEtdCodigo etdcodigo,'
      '  1 eflcodigo,'
      '  3 tevcodigo,'
      '  (SELECT'
      '      phgcodigo'
      '    FROM tin,'
      '         iti'
      '    WHERE tin.tincodigo = iti.tincodigo LIMIT 1) phgcodigo,'
      ''
      ''
      ''
      ''
      ''
      
        '  ROUND(((IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))' +
        ' >= (SELECT'
      '      itivalorinicial'
      '    FROM iti'
      
        '    WHERE itichave = 1) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1)) <= (SELECT'
      '      itivalorfinal'
      '    FROM iti'
      '    WHERE itichave = 1), (SELECT'
      '      itipercentual'
      '    FROM iti'
      '    WHERE itichave = 1),'
      
        '  IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1)) >= (SEL' +
        'ECT'
      '      itivalorinicial'
      '    FROM iti'
      
        '    WHERE itichave = 2) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1)) <= (SELECT'
      '      itivalorfinal'
      '    FROM iti'
      '    WHERE itichave = 2), (SELECT'
      '      itipercentual'
      '    FROM iti'
      '    WHERE itichave = 2),'
      
        '  IF((SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1)) >= (SE' +
        'LECT'
      '      itivalorinicial'
      '    FROM iti'
      
        '    WHERE itichave = 3) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1)) <= (SELECT'
      '      itivalorfinal'
      '    FROM iti'
      
        '    WHERE itichave = 3)) OR SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1)) >= (SELECT'
      '      itivalorfinal'
      '    FROM iti'
      '    WHERE itichave = 3), (SELECT'
      '      itipercentual'
      '    FROM iti'
      '    WHERE itichave = 3), 0)))'
      
        '  ) / 100) * SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))' +
        ', 2) evavalor,'
      '  '#39'INSS'#39' evahistorico,'
      '  @pClbCodigo clbcodigo,'
      '  NOW() evacriacao,'
      
        '  FORMAT(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1)), 2)' +
        ' evabase,'
      ''
      ''
      ''
      ''
      
        '  IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1)) >= (SEL' +
        'ECT'
      '      itivalorinicial'
      '    FROM iti'
      
        '    WHERE itichave = 1) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1)) <= (SELECT'
      '      itivalorfinal'
      '    FROM iti'
      '    WHERE itichave = 1), (SELECT'
      '      itipercentual'
      '    FROM iti'
      '    WHERE itichave = 1),'
      
        '  IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1)) >= (SEL' +
        'ECT'
      '      itivalorinicial'
      '    FROM iti'
      
        '    WHERE itichave = 2) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1)) <= (SELECT'
      '      itivalorfinal'
      '    FROM iti'
      '    WHERE itichave = 2), (SELECT'
      '      itipercentual'
      '    FROM iti'
      '    WHERE itichave = 2),'
      
        '  IF((SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1)) >= (SE' +
        'LECT'
      '      itivalorinicial'
      '    FROM iti'
      
        '    WHERE itichave = 3) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1)) <= (SELECT'
      '      itivalorfinal'
      '    FROM iti'
      
        '    WHERE itichave = 3)) OR SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1)) >= (SELECT'
      '      itivalorfinal'
      '    FROM iti'
      '    WHERE itichave = 3), (SELECT'
      '      itipercentual'
      '    FROM iti'
      '    WHERE itichave = 3), 0))) evapercentual,'
      '  0.00 evavalorunitario,'
      '  0 fclcodigo,'
      '  (SELECT'
      '      evfresumida'
      '    FROM evf e'
      '    WHERE e.evfcodigo = evf.evfcodigo) evaresumido'
      ''
      'FROM eva,'
      '     evf'
      'WHERE eva.evfcodigo = evf.evfcodigo'
      'AND etdcodigo = @pEtdCodigo'
      'AND flhchave = @pFlhChave'
      'AND evf.evfcodigo IN (SELECT'
      '    bci.evfcodigo'
      '  FROM bci)')
    Left = 738
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pflhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'petdcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pclbcodigo'
        Value = nil
      end>
    object calcinsflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calcinsevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calcinsetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calcinseflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calcinstevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calcinsphgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calcinsevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calcinsevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object calcinsclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calcinsevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calcinsevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calcinsevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calcinsevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calcinsfclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calcinsevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
  end
  object rfh: TUniQuery
    SQL.Strings = (
      'drop table if exists trfh;'
      ''
      'CREATE TABLE IF NOT EXISTS trfh ('
      '  etdcodigo int(11) DEFAULT NULL,'
      '  evfcodigo varchar(50) DEFAULT NULL,'
      '  evahistorico varchar(5000) DEFAULT NULL,'
      '  fclcodigo varchar(50) DEFAULT NULL,'
      '  evavalor decimal(10, 2) DEFAULT NULL,'
      '  flhchave int(11) DEFAULT 0, '
      '  cedcodigo int(1) default 0,'
      '  evfordem int(11) DEFAULT 0,'
      '  rlichave int(11) DEFAULT 0'
      ')'
      'ENGINE = INNODB'
      'CHARACTER SET latin1'
      'COLLATE latin1_swedish_ci;'
      ''
      'delete from trfh where flhchave=:flhchave;'
      ''
      'INSERT INTO trfh'
      
        '(select etdcodigo,evfcodigo,  CONCAT((select evfidentificacao fr' +
        'om evf WHERE evf.evfcodigo=eva.evfcodigo),'#39' '#39',evahistorico )  ev' +
        'ahistorico,fclcodigo, SUM(evavalor) evavalor, :flhchave /* eva.f' +
        'lhchave */,  (select cedcodigo from evf WHERE evf.evfcodigo=eva.' +
        'evfcodigo) cedcodigo , (select evfordem from evf WHERE evf.evfco' +
        'digo=eva.evfcodigo) evfordem,   IFNULL((SELECT rlichave FROM rli' +
        ' WHERE rli.etdcodigo=eva.etdcodigo order BY rlichave DESC LIMIT ' +
        '1), 0) rlichave   from eva WHERE eva.flhchave=:flhchave GROUP by' +
        ' etdcodigo, IF(evahistorico<>'#39#39',evahistorico ,(select evfidentif' +
        'icacao from evf where evfcodigo=eva.evfcodigo))  ORDER BY evford' +
        'em, cedcodigo desc);'
      ''
      ''
      ''
      
        'SET SESSION group_concat_max_len = 15000000; -- replace value wi' +
        'th an int'
      ''
      'SET @sql = NULL;'
      
        'SELECT GROUP_CONCAT(DISTINCT CONCAT('#39'GROUP_CONCAT((CASE evfcodig' +
        'o when '#39', evfcodigo, '#39' then evavalor  else NULL END)) AS '#39#39#39',  C' +
        'ONCAT((select evfcodigo from evf WHERE evf.evfcodigo=trfh.evfcod' +
        'igo),'#39' '#39' ) ,'#39#39#39#39'  )) INTO @sql'
      'FROM trfh;'
      ''
      ''
      
        'SET @sql = CONCAT('#39'SELECT trfh.flhchave, (select flhidentificaca' +
        'o from flh where flh.flhchave=trfh.flhchave  ) flhidentificacao,' +
        ' trfh.etdcodigo,etdidentificacao , (select fclidentificacao from' +
        ' fcl f where   f.fclcodigo=(SELECT fclcodigo FROM vhf  WHERE vhf' +
        '.etdcodigo=trfh.etdcodigo ORDER BY vhfcodigo desc limit 1 )) fcl' +
        'identificacao, (select tloidentificacao from fcl f, tlo t WHERE ' +
        'f.tlocodigo=t.tlocodigo  and f.fclcodigo=(SELECT fclcodigo FROM ' +
        'vhf  WHERE vhf.etdcodigo=trfh.etdcodigo ORDER BY vhfcodigo desc ' +
        'limit 1 )) tloidentificacao ,fclcodigo,  (select fclcor from fcl' +
        ' f  WHERE  f.fclcodigo=(SELECT fclcodigo FROM vhf  WHERE vhf.etd' +
        'codigo=trfh.etdcodigo ORDER BY vhfcodigo desc limit 1 )) fclcor ' +
        '   ,  trfh.rlichave ,  '#39', @sql, '#39'  FROM trfh,etd where trfh.etdc' +
        'odigo=etd.etdcodigo GROUP BY etdcodigo,concat(evfcodigo,fclcodig' +
        'o,evahistorico)  '#39');'
      ''
      'PREPARE stmt FROM @sql;'
      'EXECUTE stmt;'
      'DEALLOCATE PREPARE stmt;'
      ''
      ''
      '')
    Left = 370
    Top = 459
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end>
  end
  object evavhf: TUniQuery
    SQL.Strings = (
      
        'select evachave,etdcodigo, vhfcodigo, fclcodigo from eva where e' +
        'va.flhchave=:flhchave')
    Left = 458
    Top = 470
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'flhchave'
        Value = nil
      end>
    object evavhfevachave: TIntegerField
      FieldName = 'evachave'
    end
    object evavhfvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object evavhfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object evavhffclcodigo: TIntegerField
      FieldName = 'fclcodigo'
    end
  end
  object vhf: TUniQuery
    SQL.Strings = (
      'select vhfcodigo, etdcodigo, fclcodigo from vhf')
    Left = 506
    Top = 475
    object vhfvhfcodigo: TIntegerField
      FieldName = 'vhfcodigo'
    end
    object vhfetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
    end
    object vhffclcodigo: TIntegerField
      FieldName = 'fclcodigo'
    end
  end
  object calcirp: TUniQuery
    SQL.Strings = (
      'SET @pflhchave = :pflhchave;'
      'SET @petdcodigo = :petdcodigo;'
      'SET @pclbcodigo = :pclbcodigo;'
      ''
      'SELECT'
      ''
      '  @pFlhChave flhchave,'
      '  '
      '  (SELECT'
      '      itr.evfcodigo'
      '    FROM tir,'
      '         itr'
      '    WHERE tir.tircodigo = itr.tircodigo LIMIT 1) evfcodigo,'
      '  '
      '  '
      ''
      '  @pEtdCodigo etdcodigo,'
      '  1 eflcodigo,'
      '  3 tevcodigo,'
      '  '
      '  (SELECT'
      '      itr.phgcodigo'
      '    FROM tir,'
      '         itr'
      '    WHERE tir.tircodigo = itr.tircodigo LIMIT 1) phgcodigo,'
      ''
      ''
      ''
      ''
      ''
      
        '  (ROUND(((IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1)' +
        ')-(SELECT evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcod' +
        'igo=50 AND etdcodigo=@petdcodigo)   >= (SELECT'
      '      itrvalorinicial'
      '    FROM itr'
      
        '    WHERE itrchave = 1) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  <= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      '    WHERE itrchave = 1), (SELECT'
      '      itrpercentual'
      '    FROM itr'
      '    WHERE itrchave = 1),'
      
        '  IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))-(SELECT' +
        ' evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcodigo=50 AN' +
        'D etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorinicial'
      '    FROM itr'
      
        '    WHERE itrchave = 2) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  <= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      '    WHERE itrchave = 2), (SELECT'
      '      itrpercentual'
      '    FROM itr'
      '    WHERE itrchave = 2),'
      
        '  IF((SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))-(SELEC' +
        'T evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcodigo=50 A' +
        'ND etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorinicial'
      '    FROM itr'
      
        '    WHERE itrchave = 3) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  <= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      
        '    WHERE itrchave = 3)) OR SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      '    WHERE itrchave = 3), (SELECT'
      '      itrpercentual'
      '    FROM itr'
      '    WHERE itrchave = 3), 0)))'
      
        '  ) / 100) * (SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1)' +
        ')-(SELECT evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcod' +
        'igo=50 AND etdcodigo=@petdcodigo) )   , 2))-'
      
        '  IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))-(SELECT' +
        ' evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcodigo=50 AN' +
        'D etdcodigo=@petdcodigo)   >= (SELECT'
      '      itrvalorinicial'
      '    FROM itr'
      
        '    WHERE itrchave = 1) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  <= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      '    WHERE itrchave = 1), (SELECT'
      '      itrpercentual'
      '    FROM itr'
      '    WHERE itrchave = 1),'
      
        '  IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))-(SELECT' +
        ' evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcodigo=50 AN' +
        'D etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorinicial'
      '    FROM itr'
      
        '    WHERE itrchave = 2) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  <= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      '    WHERE itrchave = 2), (SELECT'
      '      itrpercentual'
      '    FROM itr'
      '    WHERE itrchave = 2),'
      
        '  IF((SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))-(SELEC' +
        'T evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcodigo=50 A' +
        'ND etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorinicial'
      '    FROM itr'
      
        '    WHERE itrchave = 3) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  <= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      
        '    WHERE itrchave = 3)) OR SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      '    WHERE itrchave = 3), (SELECT'
      '      itrdeducao'
      '    FROM itr'
      '    WHERE itrchave = 3), 0)))  evavalor,'
      ''
      ''
      '    '
      '  '
      ''
      ''
      ''
      ''
      '  '#39'IRPF'#39' evahistorico,'
      ''
      '  @pClbCodigo clbcodigo,'
      ''
      '  NOW() evacriacao,'
      ''
      
        '  FORMAT(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))-(SE' +
        'LECT evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcodigo=5' +
        '0 AND etdcodigo=@petdcodigo)   , 2)    evabase,'
      ''
      
        '  IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))-(SELECT' +
        ' evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcodigo=50 AN' +
        'D etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorinicial'
      '    FROM itr'
      
        '    WHERE itrchave = 1) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  <= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      '    WHERE itrchave = 1), (SELECT'
      '      itrpercentual'
      '    FROM itr'
      '    WHERE itrchave = 1),'
      
        '  IF(SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))-(SELECT' +
        ' evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcodigo=50 AN' +
        'D etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorinicial'
      '    FROM itr'
      
        '    WHERE itrchave = 2) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  <= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      '    WHERE itrchave = 2), (SELECT'
      '      itrpercentual'
      '    FROM itr'
      '    WHERE itrchave = 2),'
      
        '  IF((SUM(IF(evf.cedcodigo = 1, evavalor, evavalor * -1))-(SELEC' +
        'T evavalor FROM eva WHERE flhchave=@pFlhChave AND evfcodigo=50 A' +
        'ND etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorinicial'
      '    FROM itr'
      
        '    WHERE itrchave = 3) AND SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  <= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      
        '    WHERE itrchave = 3)) OR SUM(IF(evf.cedcodigo = 1, evavalor, ' +
        'evavalor * -1))-(SELECT evavalor FROM eva WHERE flhchave=@pFlhCh' +
        'ave AND evfcodigo=50 AND etdcodigo=@petdcodigo)  >= (SELECT'
      '      itrvalorfinal'
      '    FROM itr'
      '    WHERE itrchave = 3), (SELECT'
      '      itrpercentual'
      '    FROM itr'
      '    WHERE itrchave = 3), 0))) evapercentual,'
      ''
      '  0.00 evavalorunitario,'
      ''
      '  0 fclcodigo,'
      ''
      '  (SELECT'
      '      evfresumida'
      '    FROM evf e'
      '    WHERE e.evfcodigo = evf.evfcodigo) evaresumido'
      ''
      'FROM eva,'
      '     evf'
      'WHERE eva.evfcodigo = evf.evfcodigo'
      'AND etdcodigo = @pEtdCodigo'
      'AND flhchave = @pFlhChave'
      'AND evf.evfcodigo IN (SELECT bci.evfcodigo FROM bci)')
    Left = 738
    Top = 427
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pflhchave'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'petdcodigo'
        Value = nil
      end
      item
        DataType = ftUnknown
        Name = 'pclbcodigo'
        Value = nil
      end>
  end
  object calctco: TUniQuery
    SQL.Strings = (
      'SET @pFlhChave = :pFlhChave;'
      ''
      'SELECT'
      '  tco.flhchavesegunda flhchave,'
      '  '
      '  (SELECT'
      '      evfcodigo'
      '    FROM ttb t'
      '    WHERE t.ttbcodigo = ttb.ttbcodigo) evfcodigo,'
      
        '  (SELECT etdcodigo FROM vhf v WHERE v.vhfcodigo=tco.vhfcodigo L' +
        'IMIT 1) etdcodigo,'
      '  1 eflcodigo,'
      '  3 tevcodigo,'
      '  '
      '  (SELECT'
      '      phgcodigo'
      '    FROM ttb t'
      '    WHERE t.ttbcodigo = ttb.ttbcodigo) phgcodigo,'
      ''
      ''
      
        '  tcovalorhora* (TIME_TO_SEC(tcohoras) / 3600)* ((100/(((flhchav' +
        'esegunda-flhchaveprimeira))+1) )/100)  evavalor,'
      '  ttb.ttbidentificacao evahistorico,'
      '  tco.clbcodigo,'
      '  tcoregistro evacriacao,'
      ''
      '  CAST( tcohoras as CHAR)evabase,'
      ''
      ''
      '   100/(((flhchavesegunda-flhchaveprimeira))+1)  evapercentual,'
      '  tcovalorhora evavalorunitario,'
      
        '  (select fclcodigo from vhf v where v.vhfcodigo=tco.vhfcodigo) ' +
        'fclcodigo,'
      '  (SELECT'
      '      evfresumida'
      '    FROM evf e'
      '    WHERE e.evfcodigo = evf.evfcodigo) evaresumido'
      ''
      ''
      'FROM tco,'
      '     ttb,'
      '     evf'
      'WHERE tco.ttbcodigo = ttb.ttbcodigo'
      
        'AND ttb.evfcodigo = evf.evfcodigo and tco.flhchaveprimeira IN (2' +
        ',3)'
      ' GROUP BY tco.vhfcodigo -- ,, ttb.ttbidentificacao')
    Left = 858
    Top = 290
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'pFlhChave'
        Value = nil
      end>
    object calctcoflhchave: TIntegerField
      FieldName = 'flhchave'
    end
    object calctcoevfcodigo: TIntegerField
      FieldName = 'evfcodigo'
      ReadOnly = True
      Required = True
    end
    object calctcoetdcodigo: TIntegerField
      FieldName = 'etdcodigo'
      ReadOnly = True
      Required = True
    end
    object calctcoeflcodigo: TIntegerField
      FieldName = 'eflcodigo'
      ReadOnly = True
      Required = True
    end
    object calctcotevcodigo: TIntegerField
      FieldName = 'tevcodigo'
      ReadOnly = True
      Required = True
    end
    object calctcophgcodigo: TIntegerField
      FieldName = 'phgcodigo'
      ReadOnly = True
      Required = True
    end
    object calctcoevavalor: TFloatField
      FieldName = 'evavalor'
      ReadOnly = True
      Required = True
    end
    object calctcoevahistorico: TStringField
      FieldName = 'evahistorico'
      ReadOnly = True
      Required = True
      Size = 50
    end
    object calctcoclbcodigo: TIntegerField
      FieldName = 'clbcodigo'
    end
    object calctcoevacriacao: TDateTimeField
      FieldName = 'evacriacao'
      ReadOnly = True
      Required = True
    end
    object calctcoevabase: TStringField
      FieldName = 'evabase'
      ReadOnly = True
      Required = True
      Size = 1
    end
    object calctcoevapercentual: TFloatField
      FieldName = 'evapercentual'
    end
    object calctcoevavalorunitario: TFloatField
      FieldName = 'evavalorunitario'
    end
    object calctcofclcodigo: TIntegerField
      FieldName = 'fclcodigo'
      ReadOnly = True
      Required = True
    end
    object calctcoevaresumido: TStringField
      FieldName = 'evaresumido'
      Size = 50
    end
  end
  object iti: TUniQuery
    Left = 674
    Top = 370
  end
  object calcefg: TUniQuery
    SQL.Strings = (
      '  INSERT INTO efg (efgchave, flhchave, etdcodigo, eflcodigo)'
      '    SELECT'
      '      efg.efgchave,'
      '      eva.flhchave,'
      '      eva.etdcodigo,'
      '      2 AS eflcodigo'
      '    FROM eva'
      '      LEFT JOIN efg'
      '        ON eva.flhchave = efg.flhchave'
      '        AND eva.etdcodigo = efg.etdcodigo'
      '    WHERE eva.flhchave = :FlhChave'
      '    GROUP BY eva.flhchave,'
      '             eva.etdcodigo'
      
        '  ON DUPLICATE KEY UPDATE flhchave = VALUES(flhchave), etdcodigo' +
        ' = VALUES(etdcodigo);')
    Left = 730
    Top = 306
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'FlhChave'
        Value = nil
      end>
  end
end
